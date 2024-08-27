struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_2(abs(firstTrailingBit(~vec4<i32>(0i, -1i, 3666i, -1i))), true);
    let var_1 = min(var_0.a.wy, ~var_0.a.xy);
    var var_2 = ~vec3<u32>(abs(u_input.a.x), max((3706u << (0u % 32u)) << (u_input.a.x % 32u), _wgslsmith_add_u32(u_input.a.x >> (u_input.a.x % 32u), 50015u)), ~(~4294967295u));
    var_2 = _wgslsmith_clamp_vec3_u32((vec3<u32>(abs(0u), var_2.x, 9919u | u_input.a.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), select(vec3<u32>(var_2.x, 7094u, 1u), vec3<u32>(u_input.a.x, 4294967295u, var_2.x), vec3<bool>(false, true, true)))) & vec3<u32>(~_wgslsmith_mod_u32(var_2.x, 17970u), var_2.x, var_2.x), vec3<u32>(firstLeadingBit(1u) >> (var_2.x % 32u), u_input.a.x, min(3852u, var_2.x)), vec3<u32>(~u_input.a.x, ((77560u << (u_input.a.x % 32u)) | abs(var_2.x)) & 32769u, u_input.a.x ^ 0u));
    let var_3 = -2147483647i;
    return all(vec2<bool>(false, var_0.b));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_mod_vec4_i32(select(-vec4<i32>(29660i, 1i, -15328i, -2147483647i), vec4<i32>(-1i, -54298i, 41347i, -2147483647i), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)) | vec4<i32>(-1i, 2656i, firstLeadingBit(1i), -949i), ~select(vec4<i32>(2147483647i, 1i, 0i, 1i), ~vec4<i32>(-469i, 34015i, -2147483647i, 2147483647i), vec4<bool>(false, false, false, true))), true);
    let var_1 = !select(vec2<bool>(true, func_3()), vec2<bool>(any(select(vec3<bool>(false, var_0.b, true), vec3<bool>(false, var_0.b, true), vec3<bool>(true, var_0.b, var_0.b))), all(vec3<bool>(true, true, true))), (~var_0.a.x ^ (var_0.a.x & 0i)) < _wgslsmith_add_i32(firstTrailingBit(var_0.a.x), _wgslsmith_dot_vec3_i32(var_0.a.xyw, var_0.a.xzy)));
    var var_2 = select(max(u_input.a, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), u_input.a, u_input.a)) >> (vec2<u32>(~u_input.a.x, select(u_input.a.x, u_input.a.x, var_0.b)) % vec2<u32>(32u))), abs(firstLeadingBit(~u_input.a)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(916u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), u_input.a) % vec2<u32>(32u)), var_1.x);
    var var_3 = vec3<u32>(9716u, u_input.a.x, var_2.x);
    let var_4 = !select(!select(!vec4<bool>(var_1.x, var_1.x, var_0.b, var_0.b), vec4<bool>(var_1.x, false, true, false), select(vec4<bool>(true, var_0.b, var_1.x, var_1.x), vec4<bool>(var_0.b, true, false, false), vec4<bool>(var_1.x, true, false, true))), select(vec4<bool>(!var_1.x, var_1.x, var_0.b | var_0.b, !var_0.b), vec4<bool>(var_1.x, true, all(var_1), var_0.b), vec4<bool>(var_0.b, !var_0.b, var_0.a.x == 8406i, !var_0.b)), !vec4<bool>(var_0.b, any(vec3<bool>(var_0.b, false, var_0.b)), func_3(), true));
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    let var_0 = arg_0.a && !any(select(vec4<bool>(arg_1.c.a, arg_1.d.c.a, true, true), vec4<bool>(arg_0.a, arg_0.a, arg_1.c.a, true), 1000f <= arg_1.d.d.c.x));
    let var_1 = ~vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -7132i, -57404i, 0i), vec4<i32>(1i, -1i, -1i, 1i), vec4<i32>(-2147483647i, -2147483647i, -29020i, 31174i)), vec4<i32>(-12903i, 1i, 5290i, -2147483647i) >> (vec4<u32>(arg_1.d.a.x, 4294967295u, 3327u, 0u) % vec4<u32>(32u))), min(2147483647i, 1i), abs(~1i));
    var var_2 = arg_1;
    let var_3 = !func_2();
    let var_4 = var_3.yz;
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> u32 {
    let var_0 = func_1(func_1(arg_1.c, arg_1).c, Struct_4(true, ~(_wgslsmith_add_u32(0u, 36346u) & u_input.a.x), func_1(arg_1.c, Struct_4(func_1(arg_1.d.d, Struct_4(arg_1.d.c.a, 1u, Struct_1(true, 319f, arg_1.d.c.c, vec2<u32>(u_input.a.x, 0u), vec3<f32>(-1000f, arg_1.c.b, -521f)), Struct_3(vec3<u32>(u_input.a.x, 1119u, u_input.a.x), u_input.a.x, arg_1.c, Struct_1(arg_1.d.d.a, arg_0, vec4<f32>(arg_0, arg_0, 702f, arg_1.d.d.b), u_input.a, vec3<f32>(-730f, -1510f, -885f))))).a, ~arg_1.d.a.x, func_1(arg_1.c, Struct_4(arg_1.d.c.a, 0u, arg_1.d.d, Struct_3(vec3<u32>(arg_1.b, 47655u, arg_1.b), u_input.a.x, arg_1.c, arg_1.d.c))).c, Struct_3(arg_1.d.a, 4294967295u, Struct_1(arg_1.c.a, arg_1.c.e.x, vec4<f32>(arg_0, 674f, 1000f, arg_1.d.d.e.x), u_input.a, arg_1.c.c.ywy), Struct_1(true, arg_1.d.d.c.x, vec4<f32>(arg_1.d.c.e.x, 1027f, arg_0, -1552f), vec2<u32>(u_input.a.x, arg_1.c.d.x), vec3<f32>(798f, arg_0, 107f))))).d.c, Struct_3(firstLeadingBit(arg_1.d.a) << (reverseBits(vec3<u32>(1u, arg_1.d.d.d.x, u_input.a.x)) % vec3<u32>(32u)), u_input.a.x, arg_1.c, arg_1.d.d))).c;
    let var_1 = 1i;
    let var_2 = !(!var_0.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.d.d.c.xw);
    var var_4 = vec3<i32>(var_1 | -var_1, ~var_1, -var_1);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 13716i, 1i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), -14805i, 1i, firstTrailingBit(firstLeadingBit(4424i))), true);
    var var_1 = vec3<u32>(u_input.a.x, u_input.a.x, func_4(_wgslsmith_f_op_f32(trunc(985f)), func_1(Struct_1(var_0.b, -789f, vec4<f32>(-1162f, 953f, 125f, 234f), u_input.a, vec3<f32>(-827f, -110f, 1094f)), Struct_4(var_0.b, u_input.a.x, Struct_1(true, -696f, vec4<f32>(1502f, 229f, 964f, -509f), u_input.a, vec3<f32>(854f, 2422f, -474f)), Struct_3(vec3<u32>(53968u, 11407u, u_input.a.x), u_input.a.x, Struct_1(var_0.b, 250f, vec4<f32>(1450f, 1325f, -568f, -842f), vec2<u32>(u_input.a.x, 1u), vec3<f32>(-956f, -1779f, 845f)), Struct_1(true, 217f, vec4<f32>(368f, 805f, -1077f, 1412f), vec2<u32>(u_input.a.x, u_input.a.x), vec3<f32>(-445f, 536f, -666f)))))) ^ _wgslsmith_div_u32(4294967295u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(999f, -363f)), _wgslsmith_div_f32(2659f, -1314f))))), -var_0.a.x);
}

