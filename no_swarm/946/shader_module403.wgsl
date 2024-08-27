struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(9235u, 1u, 20392u, 0u), vec4<u32>(4294967295u, 90290u, 70008u, 4294967295u), vec4<u32>(15808u, 8494u, 48318u, 4294967295u), vec4<u32>(10155u, 4294967295u, 7499u, 98631u), vec4<u32>(24565u, 49082u, 49930u, 1u), vec4<u32>(2235u, 4294967295u, 10186u, 40667u), vec4<u32>(1u, 18866u, 4294967295u, 1599u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(85761u, 5132u, 4294967295u, 10102u), vec4<u32>(4294967295u, 1u, 17041u, 68030u), vec4<u32>(20638u, 4294967295u, 1u, 59289u), vec4<u32>(1u, 15821u, 10680u, 4294967295u), vec4<u32>(55934u, 63043u, 4294967295u, 0u), vec4<u32>(0u, 6307u, 0u, 31926u), vec4<u32>(31501u, 0u, 108637u, 4294967295u), vec4<u32>(0u, 22022u, 130357u, 4294967295u), vec4<u32>(4294967295u, 1u, 18832u, 54778u), vec4<u32>(0u, 32827u, 0u, 4294967295u), vec4<u32>(38819u, 15440u, 4294967295u, 7415u), vec4<u32>(71365u, 4294967295u, 13162u, 0u), vec4<u32>(1u, 34430u, 4294967295u, 12654u), vec4<u32>(10155u, 49255u, 13122u, 5765u), vec4<u32>(4294967295u, 1u, 1u, 4547u), vec4<u32>(7129u, 1u, 1u, 4294967295u), vec4<u32>(9349u, 0u, 33109u, 4294967295u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global0 = array<vec4<u32>, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.d.x, 2142f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.d.x, arg_0.d.x, 782f))))) - arg_0.d.wyy);
    var var_1 = arg_0;
    let var_2 = ~arg_1;
    global0 = array<vec4<u32>, 25>();
    return arg_0.b.d;
}

fn func_2() -> StorageBuffer {
    global0 = array<vec4<u32>, 25>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(u_input.a.x, u_input.b)), u_input.a.zx, reverseBits(vec2<u32>(u_input.d.x, u_input.b))), vec3<bool>(true, true, true), ~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), func_3(Struct_2(Struct_1(vec2<u32>(u_input.b, 1u), vec3<bool>(false, false, false), u_input.a.x, true), Struct_1(u_input.a.xy, vec3<bool>(true, false, true), u_input.d.x, true), ~vec2<i32>(-2665i, -23961i), vec4<f32>(1058f, 246f, 104f, 345f), true), ~0u)), Struct_1(u_input.d.yx >> (~(~vec2<u32>(u_input.d.x, 1334u)) % vec2<u32>(32u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true), vec3<bool>(true, true, u_input.c <= u_input.c)), ~u_input.a.x, any(vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, -2147483647i)) | ~(vec2<i32>(u_input.c, 0i) ^ vec2<i32>(-43624i, u_input.c)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-34242i, u_input.c), vec2<i32>(1i, u_input.c)) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(17209u, 812u), vec2<u32>(88279u, 0u), true), ~u_input.d.xz) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-1417f * -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2537f, 1379f, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1995f + _wgslsmith_div_f32(-133f, -1137f)))), -622f), !func_3(Struct_2(Struct_1(u_input.d.xx, vec3<bool>(false, false, true), u_input.a.x, true), Struct_1(u_input.a.yx, vec3<bool>(false, true, true), u_input.b, false), vec2<i32>(u_input.c, u_input.c), vec4<f32>(1244f, -394f, 457f, 267f), true), u_input.a.x) | true);
    let var_1 = false;
    global0 = array<vec4<u32>, 25>();
    let var_2 = _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 4294967295u, 17479u, var_0.a.a.x), ~global0[_wgslsmith_index_u32(var_0.b.c, 25u)]) ^ vec4<u32>(1u, ~_wgslsmith_sub_u32(4294967295u, var_0.b.c), _wgslsmith_mod_u32(0u, ~var_0.b.a.x), var_0.b.a.x));
    return StorageBuffer(_wgslsmith_sub_vec2_u32(select(vec2<u32>(8215u ^ u_input.a.x, var_0.b.c), var_0.b.a, vec2<bool>(var_0.e, !var_1)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.a.x, u_input.b | var_0.a.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, u_input.b), var_2.xz))), select(~_wgslsmith_sub_vec3_u32(var_2.xzx, firstTrailingBit(vec3<u32>(var_0.a.a.x, 64814u, var_2.x))), var_2.www, select(select(select(var_0.a.b, vec3<bool>(var_0.e, var_1, true), var_1), var_0.b.b, vec3<bool>(var_0.b.d, false, var_1)), select(!var_0.a.b, vec3<bool>(true, false, false), var_0.a.d), vec3<bool>(var_0.c.x > var_0.c.x, true, all(vec4<bool>(var_1, false, false, false))))), var_0.c.x);
}

fn func_1() -> StorageBuffer {
    global0 = array<vec4<u32>, 25>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 25>();
    let x = u_input.a;
    s_output = func_1();
}

