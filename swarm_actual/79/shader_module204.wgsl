struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = Struct_1(arg_0, -1485f, vec3<u32>(~(~88031u), arg_0.x, 1u), arg_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -265f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(arg_1, -251f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-676f, arg_1)))));
    var var_1 = ~var_0.c.yz;
    var var_2 = _wgslsmith_f_op_f32(trunc(1206f));
    let var_3 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.b.x), u_input.a), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b))) ^ u_input.b.x);
    let var_4 = Struct_1(var_0.a | ~vec3<u32>(select(arg_0.x, 1u, false), _wgslsmith_mult_u32(6711u, 0u), arg_0.x), var_0.d, vec3<u32>(~u_input.c.x, var_1.x, _wgslsmith_div_u32(u_input.c.x, countOneBits(arg_0.x))), -2481f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, var_0.e.x)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1474f) * vec2<f32>(-440f, -755f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-177f, 919f) - var_0.e))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(2000f)), -745f))));
    return u_input.c.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = vec2<i32>(u_input.a, arg_3);
    return _wgslsmith_add_vec4_u32(~max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, arg_1.a.x, u_input.c.x), vec4<u32>(arg_1.c.x, 1u, 10461u, 4294967295u)) & vec4<u32>(arg_1.a.x, 4294967295u, var_0.a.x, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(57164u, 1u, 0u, var_0.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, arg_1.a.x, 1u), ~vec4<u32>(arg_1.c.x, arg_1.a.x, 0u, var_0.a.x))), ~max(max(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, arg_1.c.x, 1u, arg_1.a.x)), vec4<u32>(firstLeadingBit(arg_1.c.x), arg_1.c.x, 1u, func_3(vec3<u32>(61848u, 0u, var_0.c.x), var_0.e.x))));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u)), ~max(vec4<u32>(u_input.c.x, 54530u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x))), min(~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec4_u32(func_2(vec2<i32>(1i, 0i), Struct_1(u_input.c, 1647f, vec3<u32>(86707u, u_input.c.x, u_input.c.x), 710f, vec2<f32>(429f, -2732f)), true, u_input.a), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), max(vec4<u32>(15824u, 79047u, u_input.c.x, u_input.c.x), vec4<u32>(18110u, 7879u, 1u, 15036u))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(624u, u_input.c.x, 6896u, 0u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), false), ~vec4<u32>(35286u, u_input.c.x, 1u, 4294967295u)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)))) & vec4<u32>(~u_input.c.x, ~countOneBits(~u_input.c.x), 1u, u_input.c.x);
    let var_1 = var_0.ww;
    var var_2 = Struct_1(abs(vec3<u32>(2107u, ~u_input.c.x, var_0.x) << (abs(~vec3<u32>(1u, u_input.c.x, var_1.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2044f)), _wgslsmith_mult_vec3_u32(reverseBits(~var_0.wwz), ~vec3<u32>(abs(27509u), ~1u, 0u << (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, 1414f) - vec2<f32>(1000f, -229f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1486f, 142f)))))));
    var var_3 = -2147483647i;
    var_3 = abs(-2147483647i);
    return vec2<u32>(_wgslsmith_clamp_u32(75876u, ~u_input.c.x, 4294967295u), ~_wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec3_u32(var_2.c, vec3<u32>(0u, var_1.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() ^ select(_wgslsmith_sub_vec2_u32(min(u_input.c.yx, u_input.c.yz), func_2(u_input.b, Struct_1(u_input.c, 980f, u_input.c, 1242f, vec2<f32>(-658f, -328f)), true, -u_input.b.x).yz), u_input.c.xz, u_input.c.x >= _wgslsmith_mult_u32(u_input.c.x, u_input.c.x));
    var var_1 = Struct_1(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(28757u, var_0.x, 3089u), abs(u_input.c)), vec3<u32>(~8142u, 4294967295u >> (u_input.c.x % 32u), _wgslsmith_add_u32(48212u, u_input.c.x))), _wgslsmith_f_op_f32(1129f * _wgslsmith_f_op_f32(floor(1377f))), u_input.c, -769f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1200f, -181f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 204f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, -996f)), var_0.x >= 26955u)))));
    var_1 = Struct_1(var_1.c, -373f, ~abs(vec3<u32>(4294967295u, func_1().x, _wgslsmith_add_u32(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(1413f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1744f + -109f))), var_1.e);
    var var_2 = Struct_1(vec3<u32>(abs(_wgslsmith_sub_u32(1u >> (var_0.x % 32u), u_input.c.x)), _wgslsmith_div_u32(~abs(27808u), ~var_1.a.x), var_0.x ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.x, 8493u), u_input.c)), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, ~_wgslsmith_mult_u32(var_0.x, 1u)), vec3<u32>(u_input.c.x >> (1u % 32u), _wgslsmith_mult_u32(~33701u, func_1().x), u_input.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))), var_1.e);
    var var_3 = ~_wgslsmith_div_u32(33055u, _wgslsmith_sub_u32(0u, ~_wgslsmith_clamp_u32(4294967295u, 101745u, 52433u)));
    var var_4 = !(all(vec3<bool>(true, true, true)) && !select(all(vec2<bool>(true, true)), true, true));
    var var_5 = all(vec3<bool>(false, true, true)) || select((false | any(vec4<bool>(true, true, false, false))) | true, true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), any(vec2<bool>(false, false)))));
    let var_6 = u_input.a;
    var var_7 = var_6 & -_wgslsmith_mod_i32(~var_6, var_6 ^ _wgslsmith_mult_i32(u_input.b.x, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1806f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_2.e.x, 214f)), _wgslsmith_f_op_f32(var_1.b * var_2.b), all(vec2<bool>(false, false)))))), ~(-12203i | u_input.a), _wgslsmith_add_vec3_u32(u_input.c, u_input.c), reverseBits(0i) & abs(firstLeadingBit(var_6)));
}

