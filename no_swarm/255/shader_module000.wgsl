struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: Struct_3 = Struct_3(Struct_1(false, vec4<i32>(-71027i, -43837i, i32(-2147483648), 10150i)));

var<private> global2: array<bool, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec4_u32(max(min(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x >> (0u % 32u), u_input.a), max(_wgslsmith_mult_vec4_u32(vec4<u32>(29718u, u_input.a, u_input.b.x, u_input.a), vec4<u32>(1u, 22848u, 4294967295u, u_input.a)), vec4<u32>(43630u, 12631u, u_input.a, u_input.b.x))), ~select(vec4<u32>(4294967295u, u_input.a, 4294967295u, 42035u), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.b.x), true)), ~(vec4<u32>(17867u, 96009u, 58480u, 24729u) & ~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a)) ^ ~(~vec4<u32>(91u, u_input.a, u_input.a, 110132u) << (~vec4<u32>(4294967295u, 67406u, 0u, u_input.a) % vec4<u32>(32u))));
    var var_1 = var_0;
    var var_2 = u_input.b;
    global0 = array<vec3<bool>, 31>();
    var_2 = var_1.wz;
    return ~global1.a.b.zzx;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> bool {
    let var_0 = arg_3;
    global1 = arg_3;
    let var_1 = Struct_4(Struct_1(countOneBits(arg_1) >= -(var_0.a.b.x ^ var_0.a.b.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(global1.a.b), ~vec4<i32>(-34775i, var_0.a.b.x, 2147483647i, 0i)), var_0.a.b)), var_0.a, -1i);
    let var_2 = ~select(_wgslsmith_add_i32(var_1.c, -global1.a.b.x), -(~var_1.c), all(vec2<bool>(arg_3.a.a, false)) == true) >> (~arg_0 % 32u);
    var var_3 = Struct_2(Struct_1(true, firstLeadingBit(~(~arg_3.a.b))));
    return arg_3.a.a;
}

fn func_4(arg_0: bool) -> bool {
    let var_0 = 0i < (_wgslsmith_dot_vec2_i32(global1.a.b.yx, vec2<i32>(~(-2147483647i), 37371i & global1.a.b.x)) & _wgslsmith_mult_i32(10455i, global1.a.b.x));
    global0 = array<vec3<bool>, 31>();
    var var_1 = global1.a;
    let var_2 = ~firstTrailingBit(~(~vec3<u32>(u_input.a, u_input.a, u_input.b.x)) | _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(16135u, u_input.b.x, 0u)), ~vec3<u32>(63351u, u_input.a, 4294967295u)));
    let var_3 = Struct_2(global1.a);
    return arg_0;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 31>();
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(global1.a.b.x ^ -1i, countOneBits(countOneBits(1i))), -_wgslsmith_add_vec2_i32(vec2<i32>(global1.a.b.x, global1.a.b.x), vec2<i32>(firstTrailingBit(42235i), 0i)));
    var var_1 = Struct_2(global1.a);
    var var_2 = vec2<bool>(func_4(func_3(~firstLeadingBit(u_input.a), -(~var_0.x), _wgslsmith_f_op_f32(-1712f - _wgslsmith_f_op_f32(-797f - -1000f)), Struct_3(Struct_1(true, vec4<i32>(-62834i, var_0.x, 1i, global1.a.b.x))))), global1.a.a);
    let var_3 = vec3<i32>(~var_1.a.b.x, 3523i, _wgslsmith_mult_i32(var_0.x, var_1.a.b.x));
    return Struct_2(global1.a);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_4(func_2().a, Struct_1(false, arg_0.b ^ countOneBits(-arg_2.a.b)), 3652i);
    global0 = array<vec3<bool>, 31>();
    var var_1 = vec4<f32>(1500f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1705f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1095f * -335f), _wgslsmith_f_op_f32(ceil(577f)))), 1490f)), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f - -1877f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(471f, 823f), _wgslsmith_f_op_f32(f32(-1f) * -835f)))))));
    let var_2 = !vec4<bool>(false, false, false, arg_2.a.a);
    global2 = array<bool, 12>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    var var_0 = func_5(Struct_1(true, ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(50367i, -45553i, global1.a.b.x, -90662i), global1.a.b))), _wgslsmith_dot_vec3_i32(global1.a.b.zxw, _wgslsmith_div_vec3_i32(select(global1.a.b.xzz, func_1(global2[_wgslsmith_index_u32(1u, 12u)], -493f, vec4<f32>(-1843f, -523f, 445f, 1762f), -623f), global2[_wgslsmith_index_u32(69965u | u_input.a, 12u)]), vec3<i32>(-2147483647i, -11327i, -21352i))), func_2());
    global0 = array<vec3<bool>, 31>();
    var var_1 = !vec3<bool>(u_input.b.x != ~(~0u), func_2().a.a, any(vec4<bool>(true, func_3(u_input.b.x, var_0.a.b.x, -1000f, Struct_3(var_0.a)), true, var_0.a.a)));
    var var_2 = global1.a.a;
    let var_3 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(28614u, u_input.a)), vec3<f32>(745f, _wgslsmith_f_op_f32(abs(-273f)), 1f), u_input.a);
}

