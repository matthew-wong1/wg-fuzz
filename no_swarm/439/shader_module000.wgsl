struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(160f, 22750i, -26450i, true), Struct_1(-120f, -16632i, 21381i, false), Struct_1(-466f, 10287i, 0i, true), Struct_1(-206f, -25399i, -1i, false), Struct_1(-858f, 1i, 38361i, true), Struct_1(-1293f, -1i, 1i, false), Struct_1(1084f, -35477i, 23248i, true), Struct_1(712f, -1i, 1i, true), Struct_1(2099f, -34818i, 0i, true), Struct_1(480f, 50347i, -12912i, true), Struct_1(-773f, 0i, -1i, false), Struct_1(441f, 65596i, -39960i, false), Struct_1(1371f, i32(-2147483648), -1i, false), Struct_1(-2225f, 2147483647i, i32(-2147483648), true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> vec3<u32> {
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.c.x), ~(~max(u_input.c.x, 2797u)), 1u), min(vec3<u32>(22824u, ~(u_input.c.x >> (u_input.c.x % 32u)), min(min(11171u, 1u), u_input.c.x)), select(vec3<u32>(~1u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u), 4294967295u), vec3<u32>(u_input.c.x, 1u, 0u) ^ vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(true, true, true))));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<Struct_1, 14>();
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(abs(-1i), u_input.a.x & -21333i), min(u_input.a.x, 28313i ^ -_wgslsmith_add_i32(-7112i, u_input.b.x)));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), 0i, firstTrailingBit(u_input.b.x), true);
    var var_1 = func_3(((u_input.c.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 0u), vec3<u32>(110326u, 0u, 17123u)) % 32u)) ^ ~(~u_input.c.x)) << (28184u % 32u));
    let var_2 = global0[_wgslsmith_index_u32(2040u | ~_wgslsmith_add_u32(func_1().x, countOneBits(~u_input.c.x)), 14u)];
    global0 = array<Struct_1, 14>();
    let var_3 = Struct_1(var_2.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, var_0.b, 1i) ^ countOneBits(vec4<i32>(-1i, 29190i, -1i, -6275i)), vec4<i32>(~u_input.a.x, -1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(11068i, 2147483647i, u_input.b.x)), u_input.a >> (vec3<u32>(u_input.c.x, 9396u, 1338u) % vec3<u32>(32u))), ~_wgslsmith_sub_i32(33872i, var_0.b))), var_0.b, select(any(vec2<bool>(true, true)) && any(vec2<bool>(var_2.d, false)), true, firstTrailingBit(abs(var_2.c)) > -40732i));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, 1000f) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(199f, var_0.a)))), -2147483647i, 2147483647i ^ countOneBits(_wgslsmith_mult_i32(u_input.a.x, 1i)), true);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~(1u >> (u_input.c.x % 32u)) >> ((~select(u_input.c.x >> (u_input.c.x % 32u), 1u, arg_0.b != -1i) << (~(~(~u_input.c.x)) % 32u)) % 32u);
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-743f * _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f))))) - arg_0.a);
    var var_2 = vec3<f32>(525f, arg_0.a, var_1);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz));
    return _wgslsmith_sub_u32(~u_input.c.x | abs(~(~u_input.c.x)), abs(33406u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~vec3<u32>(u_input.c.x, 1u, u_input.c.x))));
    var var_1 = func_1();
    var_1 = ~vec3<u32>(countOneBits(0u) ^ max(0u, var_1.x), var_0.x ^ 59347u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, var_1.x), vec3<u32>(28893u, var_1.x, u_input.c.x)))) & vec3<u32>(0u, u_input.c.x, select(~42289u, func_4(func_2()), u_input.b.x != u_input.b.x));
    let var_2 = func_2();
    var var_3 = var_2;
    var_1 = reverseBits(firstTrailingBit(~vec3<u32>(var_0.x, 66711u, 4294967295u))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0.x, 0u, var_1.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_0.x, 0u), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))), ~(~vec3<u32>(4294967295u, 1u, 126470u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, vec3<f32>(631f, var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, -263f)), var_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_2.a, -156f)), var_3.a)));
}

