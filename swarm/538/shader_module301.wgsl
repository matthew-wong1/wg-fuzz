struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_4) -> vec3<i32> {
    return min(vec3<i32>(_wgslsmith_mult_i32(1i, u_input.c), _wgslsmith_mod_i32(-(~u_input.a.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-5422i, -61864i, 1i, 35748i)), ~vec4<i32>(u_input.c, 1i, -2147483647i, -2147483647i))), 0i), ~(vec3<i32>(-u_input.a.x, firstLeadingBit(-9088i), u_input.d) << (vec3<u32>(72488u >> (1u % 32u), reverseBits(0u), 1u) % vec3<u32>(32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = -max(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 2147483647i), vec3<i32>(-1i, u_input.d, u_input.c)), vec3<i32>(-8268i, 0i, -56741i) ^ (vec3<i32>(2147483647i, u_input.a.x, u_input.b) << (vec3<u32>(1u, 42098u, 20092u) % vec3<u32>(32u))), vec3<i32>(1i, u_input.c, 65769i) & _wgslsmith_div_vec3_i32(vec3<i32>(-29815i, 1i, u_input.d), vec3<i32>(u_input.d, 0i, 0i))), _wgslsmith_mult_vec3_i32(func_2(Struct_4(false, vec3<f32>(-1000f, 1881f, -1048f), vec4<u32>(33289u, 90914u, 40900u, 4294967295u), Struct_3(vec4<bool>(false, true, false, false)))), vec3<i32>(u_input.b, reverseBits(u_input.d), -u_input.a.x)));
    let var_1 = Struct_4(true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, 519f, 1351f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1348f, 463f, 352f) + vec3<f32>(481f, -213f, 920f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, 117f, -823f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1509f, 1450f, 180f)))), vec3<f32>(-239f, 1510f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1243f, 1732f, true)), _wgslsmith_f_op_f32(f32(-1f) * -586f))))), ~_wgslsmith_sub_vec4_u32(max(~vec4<u32>(21199u, 24508u, 52583u, 33903u), max(vec4<u32>(11001u, 22828u, 0u, 30576u), vec4<u32>(4294967295u, 0u, 44939u, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 27606u, 0u, 28058u), _wgslsmith_clamp_vec4_u32(vec4<u32>(50082u, 0u, 0u, 51404u), vec4<u32>(4294967295u, 1u, 0u, 9975u), vec4<u32>(1u, 10031u, 50804u, 4294967295u)))), Struct_3(!vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true)));
    let var_2 = Struct_3(!select(!(!var_1.d.a), !(!var_1.d.a), var_1.d.a.x));
    var var_3 = ~abs(vec4<i32>(var_0.x & 0i, 56276i & var_0.x, u_input.d, firstTrailingBit(var_0.x))) >> (var_1.c % vec4<u32>(32u));
    var var_4 = _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.x ^ var_1.c.x, var_1.c.x >> (_wgslsmith_sub_u32(var_1.c.x, 0u) % 32u)) & var_1.c.ww, ~var_1.c.zz);
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_sub_i32(var_3.x, -70212i >> (var_4.x % 32u))), u_input.a), ~var_4.x, var_3.x, reverseBits(-vec4<i32>(var_3.x >> (var_1.c.x % 32u), 1i, ~11493i, -7299i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    var var_0 = !arg_0.a.zww;
    var var_1 = arg_3.c.zzy;
    var_0 = vec3<bool>(all(!arg_0.a) && false, true, arg_0.a.x);
    let var_2 = ~(~reverseBits(~arg_3.c.zzw) | (firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, arg_2.b, arg_2.b), vec3<u32>(24070u, arg_3.c.x, 85698u))) >> (select(vec3<u32>(1u, arg_2.b, arg_3.c.x), abs(vec3<u32>(0u, 0u, var_1.x)), arg_0.a.xxy) % vec3<u32>(32u))));
    let var_3 = arg_3;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(true, select(false, false, true), all(vec3<bool>(true, true, false)))));
    var var_1 = Struct_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-103f, 823f, -1139f)))))), vec4<u32>(~1u, ~_wgslsmith_sub_u32(reverseBits(80353u), abs(0u)), _wgslsmith_mult_u32(~1u, 1u), countOneBits(reverseBits(4294967295u))), Struct_3(vec4<bool>(true, func_3(Struct_3(vec4<bool>(var_0, true, false, false)), u_input.a, func_1(), Struct_4(var_0, vec3<f32>(162f, -434f, -464f), vec4<u32>(32213u, 15308u, 1u, 1u), Struct_3(vec4<bool>(var_0, var_0, var_0, var_0)))), true, all(select(vec2<bool>(false, false), vec2<bool>(var_0, false), var_0)))));
    var var_2 = vec3<u32>(~8481u, ~var_1.c.x, 47380u);
    var_2 = var_1.c.zwy & _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(~var_1.c.x), 4294967295u, ~countOneBits(var_2.x)), vec3<u32>(var_2.x ^ ~4294967295u, var_2.x & countOneBits(var_2.x), 73290u));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec3<i32>(-6728i, u_input.b, var_3.c) << (vec3<u32>(var_3.b, 68620u, 71397u) % vec3<u32>(32u))), _wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(f32(-1f) * -1430f)), _wgslsmith_f_op_vec2_f32(min(var_1.b.zz, _wgslsmith_f_op_vec2_f32(sign(var_1.b.zx)))), 391f);
}

