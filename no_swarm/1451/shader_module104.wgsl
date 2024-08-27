struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(30746i, 107090i), false, -19519i, vec4<i32>(-1i, -1i, 0i, 0i)), Struct_1(vec2<i32>(9668i, i32(-2147483648)), true, 2147483647i, vec4<i32>(6333i, 2147483647i, 19147i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -5035i), true, 0i, vec4<i32>(8811i, i32(-2147483648), 1i, 0i)), Struct_1(vec2<i32>(-1i, 0i), true, 0i, vec4<i32>(i32(-2147483648), -10360i, i32(-2147483648), 1i)), Struct_1(vec2<i32>(1i, i32(-2147483648)), true, -1i, vec4<i32>(-11050i, -28892i, -10024i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), -4104i), true, 20999i, vec4<i32>(-4452i, 1i, i32(-2147483648), 60751i)), Struct_1(vec2<i32>(-26505i, -2267i), true, 48670i, vec4<i32>(-21565i, -1i, i32(-2147483648), -16302i)), Struct_1(vec2<i32>(0i, 24787i), false, -55023i, vec4<i32>(2147483647i, 43777i, -29913i, 38362i)), Struct_1(vec2<i32>(-20309i, -5625i), false, 2147483647i, vec4<i32>(-63662i, -1i, -41580i, 8815i)), Struct_1(vec2<i32>(-18091i, 56181i), true, 2147483647i, vec4<i32>(-1i, -23755i, i32(-2147483648), 20079i)), Struct_1(vec2<i32>(-1i, -1i), true, 2147483647i, vec4<i32>(-5234i, i32(-2147483648), 0i, -29409i)), Struct_1(vec2<i32>(-23641i, i32(-2147483648)), true, -1i, vec4<i32>(-3320i, -38614i, 1i, 2186i)), Struct_1(vec2<i32>(17207i, 0i), false, 0i, vec4<i32>(35297i, i32(-2147483648), -2252i, -6331i)), Struct_1(vec2<i32>(-34534i, 0i), false, 0i, vec4<i32>(-2558i, 2147483647i, -15523i, 0i)), Struct_1(vec2<i32>(0i, -11979i), true, -13641i, vec4<i32>(1i, -60636i, i32(-2147483648), 17060i)), Struct_1(vec2<i32>(-11259i, 1i), false, i32(-2147483648), vec4<i32>(1i, i32(-2147483648), 36982i, -1i)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec4<u32> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = arg_0.b;
    global0 = array<Struct_1, 16>();
    var_0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-365f)))))) > _wgslsmith_f_op_f32(ceil(-356f));
    return vec4<u32>(arg_2, u_input.c, 54452u, ~(~u_input.c));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec4<u32> {
    let var_0 = arg_1;
    global0 = array<Struct_1, 16>();
    let var_1 = arg_1;
    global0 = array<Struct_1, 16>();
    let var_2 = var_0;
    return func_3(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], true, u_input.a);
}

fn func_1() -> i32 {
    let var_0 = func_2(true, global0[_wgslsmith_index_u32(~63910u, 16u)], ~(~(~(~81324u))), false);
    global0 = array<Struct_1, 16>();
    var var_1 = !select(vec4<bool>(true, false, select(true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), false), vec4<bool>(true, true, false, var_0.x > 1u)), true);
    let var_2 = u_input.b;
    global0 = array<Struct_1, 16>();
    return -16360i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_1(~(~vec2<i32>(firstLeadingBit(20642i), func_1())), true, 1i, vec4<i32>(min(~(-54963i), -(i32(-1i) * -49772i)), ~_wgslsmith_sub_i32(1i, ~(-45300i)), _wgslsmith_add_i32((1i << (0u % 32u)) >> (firstTrailingBit(16712u) % 32u), 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, 0i, 8474i), min(vec4<i32>(-26506i, 0i, 18335i, 2147483647i), vec4<i32>(-20096i, 22199i, 1i, -2147483647i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 1i, 0i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))));
    let var_1 = vec3<bool>(true, true, !(73703u > select(abs(u_input.a), 40463u, any(vec2<bool>(var_0.b, true)))));
    var var_2 = var_1;
    let var_3 = false;
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)), -763f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-101f, -841f, -1699f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, -1165f, -493f) - vec3<f32>(1410f, -1184f, 1852f)) + vec3<f32>(199f, 631f, -1280f))))));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(select(u_input.b.xxw & vec3<u32>(u_input.c, u_input.b.x, 4294967295u), vec3<u32>(u_input.a, u_input.c, 0u), var_4.x <= var_4.x), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.c, 1u, u_input.c), u_input.b.wzz), u_input.b.xyz)), u_input.a ^ u_input.d, u_input.c), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.yzy, u_input.b.wyw)), firstTrailingBit(~(~(u_input.c << (u_input.a % 32u)))), 1i, _wgslsmith_f_op_f32(-var_4.x));
}

