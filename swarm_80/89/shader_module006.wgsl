struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-261f, -1000f, 621f, -333f, 862f, 175f, -413f, 960f, 320f, 983f, 475f, -933f, -1434f, -1000f, -1652f, -1000f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_1(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), all(vec2<bool>(false, false))), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -1648f, 1504f), vec4<f32>(150f, 339f, 875f, arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -803f, global0[_wgslsmith_index_u32(1u, 16u)], arg_0)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1578f, _wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(trunc(arg_0)), -1119f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0[_wgslsmith_index_u32(103642u, 16u)], -397f, 1913f)))))));
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(14342u, 15816u, _wgslsmith_add_u32(0u, 4294967295u)), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(0u, 17543u, 4294967295u), _wgslsmith_sub_u32(97239u, 58885u), 0u))));
    let var_3 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(~(~vec4<u32>(var_2.x, 4294967295u, 36112u, var_2.x))), ~_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(0u, var_2.x, 49795u, var_2.x)), ~(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) | vec4<u32>(var_2.x, 16201u, 35241u, var_2.x))));
    var_2 = vec3<u32>(var_3, _wgslsmith_dot_vec4_u32(~min(select(vec4<u32>(var_2.x, 4294967295u, 17492u, var_3), vec4<u32>(var_3, var_3, var_3, var_3), vec4<bool>(false, false, false, true)), vec4<u32>(1u, var_2.x, var_3, 4294967295u)), ~max(vec4<u32>(4294967295u, var_3, 0u, var_2.x), vec4<u32>(0u, var_3, var_2.x, 6817u)) >> (vec4<u32>(1u, 12855u, 1u, firstLeadingBit(1u)) % vec4<u32>(32u))), var_3);
    return !vec3<bool>(all(select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, var_0.a.x), var_0.a)) & !var_0.a.x, var_0.a.x, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32) -> vec2<bool> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(53984u, 75961u, arg_1.x, 25949u)), vec4<u32>(45965u << (1u % 32u), ~arg_1.x, 41214u, ~8352u) >> (~vec4<u32>(1u, 6587u, arg_0.x, arg_0.x) % vec4<u32>(32u)));
    return select(vec2<bool>(true, all(vec4<bool>(any(vec2<bool>(false, true)), true, true, true))), !vec2<bool>(true, ~arg_1.x <= abs(arg_2)), false | !all(func_3(global0[_wgslsmith_index_u32(19590u, 16u)])));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 16>();
    var var_0 = countOneBits(vec2<i32>(u_input.a.x, select(min(2147483647i, abs(u_input.a.x)), u_input.a.x, arg_1.a.x)));
    let var_1 = abs(-15711i);
    let var_2 = ~(~(~(-vec4<i32>(var_1, var_1, 1i, -1i)))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(68293u, 4294967295u, 0u, 42998u)), vec4<u32>(1u, 1u, 1u, 1u), false), min(vec4<u32>(15558u, 0u, 1u, 4294967295u), select(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 16213u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<bool>(arg_3.a.x, false, true, arg_3.a.x)))), 25061u, 1u, 1u) % vec4<u32>(32u));
    var var_3 = -705f;
    return arg_3;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = arg_1;
    var var_1 = func_4(Struct_1(!arg_0.zy), arg_2, Struct_1(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_3, arg_3) << (vec3<u32>(0u, 28101u, 0u) % vec3<u32>(32u)), ~vec3<u32>(arg_3, arg_3, 23131u)), ~vec3<u32>(arg_3, 132335u, arg_3), (0u & arg_3) | _wgslsmith_mult_u32(4294967295u, arg_3))), arg_2);
    var var_2 = ~(~_wgslsmith_div_u32(abs(arg_3) & _wgslsmith_clamp_u32(arg_3, arg_3, arg_3), arg_3));
    var_2 = arg_3;
    var_0 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(-2147483647i, var_0.x)), arg_1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yx), -u_input.a.zy), firstTrailingBit(arg_1.x)), 1125i);
    return ~countOneBits(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    global0 = array<f32, 16>();
    let var_1 = any(vec2<bool>(var_0.a.x, !(!(!var_0.a.x))));
    let var_2 = var_0;
    var var_3 = vec3<i32>(4518i, 1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, func_1(select(vec3<bool>(var_0.a.x, true, var_2.a.x), vec3<bool>(var_2.a.x, true, var_1), vec3<bool>(var_2.a.x, true, false)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -37011i), var_2, 1u)), u_input.a.x));
    var_3 = min(u_input.a, vec3<i32>(func_1(vec3<bool>(var_2.a.x, !var_2.a.x, -107f != global0[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_3.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, var_3.x, var_3.x)) >> (reverseBits(vec4<u32>(0u, 0u, 25544u, 11958u)) % vec4<u32>(32u)), var_0, 1u), -2147483647i, -5865i));
    global0 = array<f32, 16>();
    var var_4 = Struct_1(var_0.a);
    var_3 = vec3<i32>(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_3.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 7867i, var_3.x & u_input.a.x)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_3.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, 1u, 24540u, 0u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, -6808i, u_input.a.x, -2147483647i))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(max(-var_3.x, 1i), -firstLeadingBit(1i), -(u_input.a.x | var_3.x)), min(vec3<i32>(u_input.a.x, 871i, u_input.a.x) ^ ~vec3<i32>(var_3.x, u_input.a.x, u_input.a.x), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-vec3<i32>(var_3.x, 1i, firstLeadingBit(var_3.x)), -u_input.a));
}

