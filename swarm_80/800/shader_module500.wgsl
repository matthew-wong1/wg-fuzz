struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(35760i, 2147483647i, 42684i), vec3<i32>(-1i, 9724i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -80791i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(19763i, -1i, 1i), vec3<i32>(-30868i, -13478i, 1i), vec3<i32>(-35395i, i32(-2147483648), -1i), vec3<i32>(-10764i, 0i, 141i), vec3<i32>(-12870i, 52679i, -16132i), vec3<i32>(-12083i, 2147483647i, 0i), vec3<i32>(0i, -72486i, 1i), vec3<i32>(2147483647i, 17639i, 1i), vec3<i32>(42113i, 1i, -13452i), vec3<i32>(0i, 0i, 47641i), vec3<i32>(4249i, -1i, -38794i), vec3<i32>(1501i, 4404i, i32(-2147483648)), vec3<i32>(-1i, -16262i, -11078i), vec3<i32>(-41046i, 33530i, 1144i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 3320i), vec3<i32>(1i, 1i, 38599i), vec3<i32>(34639i, 0i, -1i), vec3<i32>(33108i, i32(-2147483648), 0i), vec3<i32>(-26091i, -27396i, 0i), vec3<i32>(-14771i, -1398i, 17890i), vec3<i32>(-4793i, 8564i, 41915i), vec3<i32>(0i, 37364i, -36465i), vec3<i32>(-47673i, -34638i, 7291i), vec3<i32>(0i, i32(-2147483648), 21261i), vec3<i32>(7387i, 2147483647i, 33968i), vec3<i32>(30380i, i32(-2147483648), 7827i), vec3<i32>(45608i, -1i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    global0 = array<vec3<i32>, 32>();
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(min(-8302i, 0i));
    global0 = array<vec3<i32>, 32>();
    var var_1 = Struct_1(min(u_input.a, u_input.a), vec4<bool>(true, true, true, true), reverseBits(u_input.b.x), abs(abs(~vec4<i32>(30106i, -1i, u_input.a, 2147483647i)) << (~vec4<u32>(u_input.b.x, 9330u, 26841u, u_input.b.x) % vec4<u32>(32u))), (vec2<u32>(14494u, 91611u) << (u_input.b.wx % vec2<u32>(32u))) ^ u_input.b.xx);
    var_1 = Struct_1(~(~(~_wgslsmith_mod_i32(u_input.a, -15106i))), !select(vec4<bool>(any(var_1.b), any(var_1.b.wy), any(var_1.b.xw), true), !var_1.b, var_1.b), _wgslsmith_mod_u32(1125u, abs(~73150u)), _wgslsmith_mult_vec4_i32(var_1.d, func_1(Struct_1(~var_1.a, select(var_1.b, var_1.b, var_1.b.x), ~46487u, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, var_1.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), vec2<u32>(var_1.e.x, 0u)), ~min(vec2<u32>(31425u, 0u), vec2<u32>(0u, u_input.b.x)))), vec2<u32>(_wgslsmith_mult_u32(59705u, 0u), 4294967295u));
    global0 = array<vec3<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1257f * -341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-193f))), -449f, _wgslsmith_f_op_f32(sign(-180f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, -133f, -665f, -509f)) + vec4<f32>(-795f, 791f, -708f, 1334f))))), firstTrailingBit(u_input.b), ~(~vec2<u32>(0u, ~var_1.c)));
}

