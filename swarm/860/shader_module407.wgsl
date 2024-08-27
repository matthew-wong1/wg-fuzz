struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 0u, 18297u), vec3<u32>(79351u, 22721u, 1u), vec3<u32>(4294967295u, 38943u, 75611u), vec3<u32>(23191u, 26328u, 0u), vec3<u32>(20969u, 0u, 0u), vec3<u32>(46805u, 1u, 4294967295u));

var<private> global2: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = vec2<u32>(firstTrailingBit(1u), arg_0.x);
    return true;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = !global0.d.x;
    var_0 = select(global0.d.x, true, global0.d.x);
    let var_1 = Struct_1(~(~vec2<u32>(0u, 35908u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u & global0.a.x, 4294967295u), global0.b.yx) % vec2<u32>(32u)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1704f)))) - 296f), !(!vec4<bool>(4294967295u <= arg_0, func_3(global1[_wgslsmith_index_u32(12308u, 6u)], false, Struct_1(u_input.d.zx, global0.b, 673f, vec4<bool>(global0.d.x, global0.d.x, false, true), u_input.d.x)), true, -1i < u_input.a)), _wgslsmith_mult_u32(select(1u, ~61611u, global0.d.x), _wgslsmith_div_u32(arg_0 ^ 16597u, 0u)));
    return -((-223i << (~var_1.e % 32u)) ^ ~u_input.a) << (_wgslsmith_add_u32(~max(0u, ~101992u), reverseBits(30916u)) % 32u);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = true;
    let var_1 = u_input.a;
    global0 = Struct_1(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(18058u, global0.b.x)) | vec2<u32>(u_input.c, firstLeadingBit(arg_0))), ~global0.b, 954f, vec4<bool>(var_1 >= ~countOneBits(var_1), !global0.d.x, all(!(!global0.d.wzw)), !any(vec2<bool>(true, true))), ~(~u_input.c ^ arg_0));
    var var_2 = -func_2(countOneBits(~4294967295u));
    global0 = Struct_1(u_input.d.zz, ~select(_wgslsmith_sub_vec3_u32(countOneBits(global0.b), ~global1[_wgslsmith_index_u32(arg_0, 6u)]), ~u_input.d.zyz, global0.d.x), _wgslsmith_f_op_f32(837f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1152f, _wgslsmith_f_op_f32(-821f + global0.c))))), global0.d, ~91137u);
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!vec4<bool>(all(global0.d.zy), false, !global0.d.x, select(global0.d.x, true, global0.d.x)), global0.d, all(select(!global0.d, select(global0.d, vec4<bool>(global0.d.x, false, false, global0.d.x), global0.d), select(false, global0.d.x, global0.d.x)))), select(global0.d, !select(global0.d, select(global0.d, vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), true), true), vec4<bool>(select(global0.d.x, true, !global0.d.x), false, global0.d.x, u_input.a > _wgslsmith_sub_i32(0i, u_input.a))), func_1(4179u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-592f, 134f, _wgslsmith_f_op_f32(f32(-1f) * -829f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-731f, 576f, global0.c))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(global0.c)), global0.c, 1434f)))), countOneBits(abs(vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a ^ 34385i, _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.c)), _wgslsmith_f_op_f32(abs(global0.c))), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c, global0.c), vec2<f32>(global0.c, 559f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, global0.c) + vec2<f32>(global0.c, -1640f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, 337f) - vec2<f32>(global0.c, global0.c)))), func_3(min(global1[_wgslsmith_index_u32(1u, 6u)], max(global1[_wgslsmith_index_u32(14959u, 6u)], vec3<u32>(4294967295u, u_input.d.x, u_input.b))), true, Struct_1(u_input.d.yz, global0.b, -464f, global0.d, ~u_input.c)))), ~vec3<i32>(_wgslsmith_sub_i32(0i, -1467i), u_input.a, firstLeadingBit(-1i)) >> (vec3<u32>(_wgslsmith_div_u32(global0.a.x ^ 37244u, ~1u), 28876u, _wgslsmith_dot_vec2_u32(global0.b.yz, vec2<u32>(1u, 4294967295u))) % vec3<u32>(32u)), abs(~(~(global0.e >> (global0.b.x % 32u)))));
}

