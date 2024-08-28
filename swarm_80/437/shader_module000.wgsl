struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(44752u, 22884u, 1u, 1u, 0u, 0u, 0u, 0u, 40745u, 5192u, 0u, 126064u, 41821u, 2211u, 42065u);

var<private> global1: i32 = 5346i;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(28377i, vec4<bool>(true, false, true, false), 853f), Struct_1(-25804i, vec4<bool>(true, true, false, true), 865f), Struct_1(2147483647i, vec4<bool>(false, true, true, true), -187f), Struct_1(-1i, vec4<bool>(true, true, false, true), 245f), Struct_1(-52268i, vec4<bool>(true, false, true, false), 1375f), Struct_1(1i, vec4<bool>(true, false, false, true), -978f), Struct_1(-31217i, vec4<bool>(false, false, true, true), 124f), Struct_1(87072i, vec4<bool>(false, true, true, false), -901f), Struct_1(1i, vec4<bool>(false, true, true, false), 939f), Struct_1(-26837i, vec4<bool>(false, true, true, true), -890f), Struct_1(-11833i, vec4<bool>(true, true, true, false), 1449f), Struct_1(i32(-2147483648), vec4<bool>(false, true, true, true), -789f), Struct_1(12231i, vec4<bool>(true, true, false, false), -1090f), Struct_1(-1i, vec4<bool>(true, false, true, true), 2311f), Struct_1(48377i, vec4<bool>(false, true, true, true), -227f), Struct_1(0i, vec4<bool>(true, true, false, false), -604f), Struct_1(2103i, vec4<bool>(false, true, false, true), 461f), Struct_1(-1i, vec4<bool>(false, false, true, true), 468f), Struct_1(38903i, vec4<bool>(true, false, true, true), -1116f), Struct_1(0i, vec4<bool>(true, false, false, true), -459f), Struct_1(-1i, vec4<bool>(true, false, false, true), 883f), Struct_1(-1i, vec4<bool>(false, true, true, true), 115f), Struct_1(2147483647i, vec4<bool>(false, true, true, true), -1023f), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, false), 948f), Struct_1(2147483647i, vec4<bool>(false, false, true, false), 2068f), Struct_1(-7953i, vec4<bool>(true, false, false, false), -1442f), Struct_1(2147483647i, vec4<bool>(false, true, false, true), 804f), Struct_1(36849i, vec4<bool>(false, true, false, false), 301f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    global1 = ~arg_0.x;
    global0 = array<u32, 15>();
    return ~(~min(vec4<i32>(-6645i, firstLeadingBit(arg_0.x), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), -arg_0.x), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, arg_0.x, arg_0.x, 2147483647i)), max(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(2147483647i, arg_0.x, 1i, arg_0.x)))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, ~(-arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, -6514i, arg_0), vec4<i32>(arg_0, 0i, arg_0, arg_0)) << (firstLeadingBit(u_input.a.x) % 32u), -13416i), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(func_3(vec3<i32>(16125i, arg_0, arg_0)), vec4<i32>(arg_0, arg_0, 1i, arg_0), vec4<i32>(1i, -42148i, 22006i, arg_0) << (vec4<u32>(87907u, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(30624u, 15u)]) % vec4<u32>(32u))), select(min(vec4<i32>(-9019i, arg_0, 15451i, 1i), vec4<i32>(arg_0, 7365i, -2147483647i, 19694i)), ~vec4<i32>(arg_0, 0i, arg_0, 2147483647i), any(vec4<bool>(true, false, true, false)))));
    global1 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-54806i, -19345i, var_0, var_0), vec4<i32>(5296i, arg_0, -14502i, 1i)), var_0), min(select(var_0, -5781i, true), -1i)), arg_0);
    global0 = array<u32, 15>();
    var var_1 = global2[_wgslsmith_index_u32(~26890u, 28u)];
    global1 = min(-1i, -1i);
    return vec2<f32>(var_1.c, _wgslsmith_f_op_f32(var_1.c - var_1.c));
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.xyx);
    var var_1 = -221f;
    var var_2 = 260f;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_2(1i));
    global0 = array<u32, 15>();
    return !(!vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), any(vec2<bool>(true, false)), select(false, select(false, false, false), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(14220u, 28u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2011f, 1200f)))) * vec2<f32>(_wgslsmith_f_op_f32(820f - -304f), _wgslsmith_f_op_f32(-var_0.c)))))));
    let var_2 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -440f, var_0.c, _wgslsmith_div_f32(var_0.c, 1000f)))), any(!var_0.b) && var_0.b.x);
    global1 = ~var_0.a;
    global1 = abs(64240i);
    var var_3 = ~(abs(vec4<u32>(~4294967295u, 1u, 98362u << (global0[_wgslsmith_index_u32(55044u, 15u)] % 32u), u_input.a.x)) | ~vec4<u32>(4516u, u_input.a.x, ~24880u, global0[_wgslsmith_index_u32(0u, 15u)] & global0[_wgslsmith_index_u32(1u, 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 13067u, max(0i, var_0.a));
}

