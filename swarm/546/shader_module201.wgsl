struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = arg_0;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f + arg_0.a.b.b.x) + _wgslsmith_f_op_f32(select(var_0.a.a, arg_0.a.a, true))), -456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + 422f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.b.b.x + 2438f), -1550f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.b.b), _wgslsmith_f_op_vec4_f32(-var_0.a.b.b)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_1(abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -14683i, arg_0.x, -18098i), vec4<i32>(arg_0.x, 16718i, arg_0.x, -2147483647i)))) >> (((vec4<u32>(arg_1, arg_1, arg_1, 1u) & max(vec4<u32>(arg_1, arg_1, arg_1, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 46984u, 62913u))) | vec4<u32>(~arg_1, u_input.a.x >> (36848u % 32u), ~u_input.a.x, 25752u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-869f, -330f, 476f, -1143f), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_3(-933f, Struct_1(vec4<i32>(arg_0.x, -6539i, 1i, -2147483647i), vec4<f32>(-1000f, 535f, 528f, 274f), vec4<i32>(arg_0.x, arg_0.x, -1i, arg_0.x)))), Struct_4(true, arg_0.x, -1i, u_input.a.x, vec2<i32>(-26383i, -44628i))))))))), vec4<i32>(abs(max(arg_0.x, arg_0.x) ^ arg_0.x), -arg_0.x, _wgslsmith_add_i32(~(-74564i << (u_input.a.x % 32u)), arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, firstLeadingBit(arg_0.x), arg_0.x, _wgslsmith_mod_i32(-29642i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(49340i, -2147483647i, arg_0.x, 62897i)), vec4<i32>(-12518i, arg_0.x, arg_0.x, 8748i)))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(abs(select(_wgslsmith_mod_vec2_u32(vec2<u32>(16005u, 10316u), vec2<u32>(47214u, u_input.a.x)), select(u_input.a.xx, u_input.a.xx, true), vec2<bool>(true, true))), abs(vec2<u32>(countOneBits(0u), ~1u)));
    var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(90709u, ~(~min(55205u, 4294967295u))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(~1u, 1u ^ u_input.a.x), _wgslsmith_mult_u32(~0u, arg_1 ^ arg_1)));
    var var_2 = _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(~arg_1, arg_1), 0u), ~u_input.a.zx);
    var var_3 = -350f;
    return Struct_3(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_3(-186f, Struct_1(vec4<i32>(1i, arg_0.x, arg_0.x, -1i), vec4<f32>(var_0.b.x, var_0.b.x, -942f, var_0.b.x), var_0.c))), Struct_4(true, arg_0.x, arg_0.x >> (u_input.a.x % 32u), u_input.a.x & u_input.a.x, var_0.c.xz))).x), var_0);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = func_2(~(-arg_2.b.c.xy), u_input.a.x >> (0u % 32u));
    var var_1 = !(!vec2<bool>(!all(vec2<bool>(false, true)), true));
    var_1 = select(select(!(!(!vec2<bool>(true, var_1.x))), select(vec2<bool>(true, true), vec2<bool>(select(true, true, var_1.x), var_1.x), false), false || (var_1.x | (0u < u_input.a.x))), vec2<bool>(true, true), true);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.b.x * -1454f), 960f);
    var_2 = arg_2.a;
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = u_input.a.x >> (u_input.a.x % 32u);
    var_0 = 2147483647i;
    var_0 = _wgslsmith_sub_i32(-1i, -reverseBits(func_1(Struct_3(671f, Struct_1(vec4<i32>(-2147483647i, 1i, 1i, -43826i), vec4<f32>(-116f, 778f, -253f, -196f), vec4<i32>(2147483647i, -20811i, -38890i, 0i))), Struct_1(vec4<i32>(0i, -2147483647i, 0i, 2147483647i), vec4<f32>(1004f, 362f, -227f, -461f), vec4<i32>(1i, -40891i, 1i, 2147483647i)), Struct_3(-442f, Struct_1(vec4<i32>(-25327i, -19518i, 5456i, 2147483647i), vec4<f32>(879f, 932f, -812f, 1000f), vec4<i32>(-36774i, -1i, 1i, 38139i))))) & 2147483647i);
    var_0 = func_2(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, -25371i), vec2<i32>(-8942i, 1i) >> (u_input.a.zx % vec2<u32>(32u)), select(vec2<i32>(69921i, 1i), vec2<i32>(31647i, -1i), false)), 16557u).b.a.x >> (u_input.a.x % 32u);
    var var_2 = func_2(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-17667i, 10312i << (u_input.a.x % 32u))), -(~vec2<i32>(-2147483647i, -1i))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.a.zx, ~vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x));
    let var_3 = vec3<f32>(-1310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3041f * var_2.a) - _wgslsmith_f_op_f32(exp2(var_2.b.b.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1983f))), func_2(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_2.b.a.x, 2147483647i), min(var_2.b.c.xz, var_2.b.c.yw)), u_input.a.x).a);
    var var_4 = Struct_5(Struct_3(481f, func_2(min(firstTrailingBit(var_2.b.a.wx), vec2<i32>(var_2.b.c.x, var_2.b.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30308u, 0u, u_input.a.x, 41012u), vec4<u32>(0u, u_input.a.x, 68473u, u_input.a.x)), 0u, u_input.a.x)).b));
    let var_5 = Struct_5(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_5.a.b.b.wy), 4294967295u, select(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 9027u, u_input.a.x, 30043u), vec4<u32>(0u, u_input.a.x, 55595u, 4294967295u)))), countOneBits(vec4<u32>(4294967295u, _wgslsmith_add_u32(59026u, 65248u), max(55562u, 23455u), 9480u)), select(vec4<bool>(true, true, 875f == var_5.a.a, true), vec4<bool>(false, u_input.a.x >= u_input.a.x, true, all(vec3<bool>(false, false, false))), vec4<bool>(-762f <= var_4.a.b.b.x, true, true, true))));
}

