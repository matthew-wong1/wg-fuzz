struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(0u);

var<private> global2: array<i32, 2>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(~1u);
    let var_1 = ~abs(~13326i);
    let var_2 = var_0;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-231f * -461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1420f, 632f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(524f, 1047f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f)), 1982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f + 1922f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 336f))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(sign(1074f)), arg_0.x, ~59241u, select(true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(78685u, 1u, 1u, 7339u), vec4<u32>(0u, 4294967295u, 85390u, var_2.a)) == 1u, true), Struct_2(0i, _wgslsmith_div_vec4_u32(~(~vec4<u32>(global3.a, 41167u, var_2.a, u_input.a)), ~(vec4<u32>(26891u, 101868u, 662u, 1u) << (vec4<u32>(global3.a, 4294967295u, var_0.a, 1u) % vec4<u32>(32u)))), vec2<bool>(true, true)));
    return ~var_0.a;
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(firstTrailingBit(global3.a) >> (4294967295u % 32u));
    global0 = true;
    let var_1 = min(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(func_3(vec3<i32>(global2[_wgslsmith_index_u32(var_0.a, 2u)], global2[_wgslsmith_index_u32(global1.a, 2u)], global2[_wgslsmith_index_u32(global1.a, 2u)]))), global3.a), ~1u, select(var_0.a, 25780u, !(arg_0.x & false))), vec3<u32>(1u, u_input.a, func_3(vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.a, 2u)] & -2147483647i, 20309i))));
    let var_2 = Struct_2(_wgslsmith_mod_i32(5119i, global2[_wgslsmith_index_u32(29724u ^ (_wgslsmith_clamp_u32(u_input.a, var_0.a, 43145u) ^ ~0u), 2u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, ~global3.a, 116964u, 52041u) ^ abs(vec4<u32>(global1.a, var_0.a, 1u, 48414u)), vec4<u32>((global1.a >> (114468u % 32u)) | _wgslsmith_sub_u32(global3.a, global3.a), 34345u, firstLeadingBit(~global3.a), u_input.a)), select(arg_0, select(vec2<bool>(arg_0.x, true), select(select(vec2<bool>(false, arg_0.x), arg_0, arg_0), !arg_0, arg_0), arg_0), all(arg_0)));
    let var_3 = Struct_1(u_input.a);
    return !vec4<bool>(!arg_0.x, !select(var_2.c.x & arg_0.x, false, false == var_2.c.x), any(var_2.c), ~(~var_3.a) >= 4175u);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(~11692u);
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(~(-(vec2<i32>(global2[_wgslsmith_index_u32(var_0.a, 2u)], global2[_wgslsmith_index_u32(global1.a, 2u)]) >> (vec2<u32>(var_0.a, var_0.a) % vec2<u32>(32u)))), select(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 2u)]), vec2<i32>(1981i, global2[_wgslsmith_index_u32(global3.a, 2u)]), true), vec2<i32>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(global3.a, 2u)])), ~(~vec2<i32>(global2[_wgslsmith_index_u32(global3.a, 2u)], global2[_wgslsmith_index_u32(global1.a, 2u)])), vec2<bool>(true, true))), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, ~select(var_0.a, 22650u, false), _wgslsmith_add_u32(~u_input.a, 58554u), 4294967295u), ~(~(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 64926u)))), vec2<bool>(false, false));
    global2 = array<i32, 2>();
    let var_2 = func_2(!select(vec2<bool>(true, true), var_1.c, (var_1.c.x & var_1.c.x) & (var_1.c.x || true)));
    let var_3 = Struct_1(firstTrailingBit(global3.a));
    return vec2<bool>(var_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 69637u), abs(_wgslsmith_mod_vec2_u32(var_1.b.xy, var_1.b.xz))) <= ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~1u);
    var var_1 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), global2[_wgslsmith_index_u32(28152u, 2u)] != global2[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(false, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)))), func_1());
    var var_2 = max(-_wgslsmith_div_i32(-19761i, abs(8658i)), ~(-1i) ^ abs(~(global2[_wgslsmith_index_u32(var_0.a, 2u)] >> (56679u % 32u))));
    var var_3 = Struct_2(max(1i, -45396i), vec4<u32>(0u, global3.a, ~1u, min(_wgslsmith_sub_u32(~94601u, 4628u), var_0.a)), func_2(!func_2(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), false)).zx).yy);
    var_2 = ~(~var_3.a);
    var var_4 = true;
    var var_5 = ~abs(_wgslsmith_div_u32(~4294967295u >> (_wgslsmith_mod_u32(1u, var_3.b.x) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(global3.a, global1.a), global1.a)));
    var var_6 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(abs(var_3.b.zwz)), var_3.b.wxx), _wgslsmith_div_vec3_u32(max(_wgslsmith_add_vec3_u32(var_3.b.xxy, var_3.b.wyy), ~var_3.b.xzy), ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.a, 1u, 29355u), vec3<u32>(3603u, global3.a, 39945u)))) ^ vec3<u32>(1u, 8976u, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(var_0.a, var_6.x, u_input.a)) | ~_wgslsmith_add_u32(1u, 0u), 1u, _wgslsmith_sub_u32(var_0.a, ~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1066f, -1340f)), -1603f, _wgslsmith_f_op_f32(401f - -426f)) * vec3<f32>(1f, 1f, 1f))), i32(-1i) * -28199i);
}

