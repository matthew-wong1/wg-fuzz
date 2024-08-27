struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(678f)) - _wgslsmith_f_op_f32(abs(281f)))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_dot_vec4_i32(u_input.b, u_input.d) << (_wgslsmith_dot_vec2_u32(~u_input.a.yy, select(select(u_input.a.zz, vec2<u32>(46903u, 0u), vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(3192u, 5u)])), arg_3, -35999i >= u_input.c)) % 32u));
    global0 = array<bool, 5>();
    let var_1 = vec2<bool>(true, global0[_wgslsmith_index_u32(abs(select(abs(1u), u_input.a.x, global0[_wgslsmith_index_u32(arg_0, 5u)] != global0[_wgslsmith_index_u32(firstLeadingBit(65880u), 5u)])), 5u)]);
    let var_2 = arg_0;
    global0 = array<bool, 5>();
    return min(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.d.xy, u_input.d.yz), 1i), (u_input.b.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.e, arg_3.x), vec4<u32>(var_2, 0u, arg_0, 23009u)), vec4<u32>(var_2, arg_3.x, u_input.a.x, 26975u)) % 32u)) << (arg_3.x % 32u));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_2 {
    global0 = array<bool, 5>();
    return Struct_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(-7353i, min(u_input.b.x, u_input.c)), -u_input.c), _wgslsmith_sub_i32(func_3(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.b.x, 10471i), vec2<bool>(arg_0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, arg_0.a.x, arg_0.a.x, arg_0.a.x)), arg_0.c.yz), 2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1507f, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.a.zwx + vec3<f32>(arg_0.a.x, arg_1.x, arg_0.a.x)), arg_1.yyz)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<f32> {
    global0 = array<bool, 5>();
    var var_0 = !(!select(vec2<bool>(!arg_1.b.x, all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false))), !select(arg_1.b.yz, arg_1.b.xw, vec2<bool>(false, false)), vec2<bool>(select(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, true), -2147483647i == arg_0.a)));
    global0 = array<bool, 5>();
    var_0 = select(!arg_1.b.wx, arg_1.b.zy, arg_1.b.wy);
    global0 = array<bool, 5>();
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, arg_1.a.x, -178f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(767f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, 1589f, _wgslsmith_f_op_f32(-1421f - arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -685f)))), all(arg_1.b.ywz) || true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_1.a.b.zzx;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_1 = select(!(!vec2<bool>(any(arg_1.a.b), false)), vec2<bool>(arg_1.a.b.x, true), !select(select(select(arg_1.a.b.xz, vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 5u)], var_0.x), true), select(arg_1.a.b.wx, vec2<bool>(arg_1.a.b.x, true), arg_1.a.b.zx), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec2<bool>(true, true), false));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a);
    return _wgslsmith_dot_vec2_u32(arg_1.a.c.yz, ~select(firstTrailingBit(u_input.a.zy), vec2<u32>(0u, u_input.a.x), vec2<bool>(var_0.x, false)) >> (arg_1.a.c.zy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.zy, vec2<bool>(false, true))), _wgslsmith_f_op_f32(trunc(-136f)), _wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(-715f * -1629f))), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.e, 5u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(8220u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.e, 5u)])), u_input.a));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_1 = 33385u;
    let var_2 = firstTrailingBit(~(~max(var_0.a.c.x, ~20376u)));
    let var_3 = max(_wgslsmith_add_u32(func_5(Struct_1(_wgslsmith_f_op_f32(-var_0.a.a.x)), Struct_4(var_0.a), _wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_3(vec4<f32>(-269f, var_0.a.a.x, var_0.a.a.x, 577f), var_0.a.b, var_0.a.c), var_0.a.a), Struct_3(var_0.a.a, var_0.a.b, vec3<u32>(u_input.e, u_input.a.x, 4294967295u)), _wgslsmith_div_vec2_f32(var_0.a.a.zz, vec2<f32>(-119f, var_0.a.a.x))))), 4294967295u), ~(~(~(~var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(557f, var_0.a.a.x, -1757f, 201f) + var_0.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.a.a + var_0.a.a))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, var_0.a.a.x, 1325f, -235f))))))), countOneBits(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_2, 60134u, 1u, u_input.a.x) & vec4<u32>(0u, var_0.a.c.x, 1u, u_input.e)), firstTrailingBit(vec4<u32>(0u, 1u, var_2, 75219u) | vec4<u32>(0u, u_input.a.x, var_2, 4294967295u)))), max(u_input.d.x, 42128i));
}

