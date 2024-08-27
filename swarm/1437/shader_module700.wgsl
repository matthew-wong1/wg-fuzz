struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 31>;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(-707f, 912f, -823f), vec4<bool>(false, true, false, false), 1002f, Struct_1(true)), Struct_4(vec3<f32>(-154f, -3011f, -2289f), vec4<bool>(true, true, false, true), 1486f, Struct_1(true)), Struct_4(vec3<f32>(-763f, 222f, 596f), vec4<bool>(false, false, true, true), -283f, Struct_1(false)), Struct_4(vec3<f32>(139f, 1435f, -794f), vec4<bool>(false, true, false, true), -2252f, Struct_1(true)), Struct_4(vec3<f32>(-363f, -1172f, 604f), vec4<bool>(false, true, false, true), 517f, Struct_1(true)), Struct_4(vec3<f32>(-1292f, 1196f, 1557f), vec4<bool>(false, true, true, false), 523f, Struct_1(false)), Struct_4(vec3<f32>(-1106f, 1000f, 291f), vec4<bool>(true, false, true, true), -528f, Struct_1(true)), Struct_4(vec3<f32>(524f, 133f, 595f), vec4<bool>(false, true, true, false), 991f, Struct_1(false)), Struct_4(vec3<f32>(-1000f, 1444f, 534f), vec4<bool>(true, true, false, true), 720f, Struct_1(true)), Struct_4(vec3<f32>(1430f, 625f, 174f), vec4<bool>(true, true, false, true), 172f, Struct_1(false)), Struct_4(vec3<f32>(-1640f, -110f, -581f), vec4<bool>(false, true, false, true), 1083f, Struct_1(true)), Struct_4(vec3<f32>(-657f, 1067f, 242f), vec4<bool>(false, false, true, false), -396f, Struct_1(true)), Struct_4(vec3<f32>(-548f, -678f, -1000f), vec4<bool>(false, false, false, false), -1952f, Struct_1(false)), Struct_4(vec3<f32>(1000f, -408f, 353f), vec4<bool>(false, true, true, false), -406f, Struct_1(true)), Struct_4(vec3<f32>(-1680f, 355f, 1284f), vec4<bool>(false, false, false, true), -272f, Struct_1(true)), Struct_4(vec3<f32>(-1000f, -602f, -861f), vec4<bool>(true, true, false, true), 551f, Struct_1(true)), Struct_4(vec3<f32>(354f, 1732f, 1000f), vec4<bool>(true, false, true, false), 1859f, Struct_1(false)), Struct_4(vec3<f32>(226f, 1000f, 886f), vec4<bool>(false, true, false, false), -584f, Struct_1(false)), Struct_4(vec3<f32>(468f, 735f, 160f), vec4<bool>(true, true, true, false), 785f, Struct_1(false)), Struct_4(vec3<f32>(2039f, -896f, 283f), vec4<bool>(true, true, true, false), -1153f, Struct_1(false)), Struct_4(vec3<f32>(-1628f, 199f, 424f), vec4<bool>(true, false, false, true), 500f, Struct_1(false)), Struct_4(vec3<f32>(1186f, -518f, -645f), vec4<bool>(true, false, true, false), 1010f, Struct_1(false)), Struct_4(vec3<f32>(330f, -1548f, -1000f), vec4<bool>(false, false, false, true), -1877f, Struct_1(false)), Struct_4(vec3<f32>(-1235f, -188f, 724f), vec4<bool>(true, false, true, true), -445f, Struct_1(true)), Struct_4(vec3<f32>(-1125f, -1220f, 371f), vec4<bool>(false, true, true, true), -227f, Struct_1(false)), Struct_4(vec3<f32>(796f, -855f, -554f), vec4<bool>(false, false, true, true), -1000f, Struct_1(false)), Struct_4(vec3<f32>(-502f, -805f, -1152f), vec4<bool>(false, true, true, true), 1451f, Struct_1(true)), Struct_4(vec3<f32>(449f, 1224f, 747f), vec4<bool>(true, false, false, true), 562f, Struct_1(true)), Struct_4(vec3<f32>(823f, 1064f, 292f), vec4<bool>(true, false, false, false), 602f, Struct_1(false)), Struct_4(vec3<f32>(636f, 1000f, -357f), vec4<bool>(false, true, false, true), -715f, Struct_1(true)), Struct_4(vec3<f32>(717f, -1111f, 1930f), vec4<bool>(false, true, false, true), 210f, Struct_1(true)), Struct_4(vec3<f32>(605f, 1000f, 916f), vec4<bool>(true, true, true, false), -892f, Struct_1(true)));

var<private> global3: u32;

var<private> global4: array<vec2<bool>, 16>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    let var_0 = -31585i;
    var var_1 = arg_1;
    var_1 = arg_0.d;
    global3 = global0.a.x;
    global4 = array<vec2<bool>, 16>();
    return 1u;
}

fn func_3() -> i32 {
    let var_0 = global0.c.a;
    let var_1 = global0.d.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -105f);
    var var_3 = false && global0.d.x;
    var var_4 = ~global1[_wgslsmith_index_u32(~(~global0.a.x & 1u), 31u)] ^ u_input.c;
    return abs(u_input.c);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: u32) -> u32 {
    global0 = Struct_3(~global0.a, arg_2, global0.c, !vec4<bool>(!any(vec2<bool>(true, global0.d.x)), select(all(global0.d), !global0.d.x, global0.d.x), false, !(!global0.d.x)));
    let var_0 = true;
    global0 = Struct_3(~global0.a, ~(-7785i >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(global0.a.x, global0.a.x), 0u) % 32u)), Struct_2(_wgslsmith_f_op_f32(ceil(arg_1))), !global0.d);
    global4 = array<vec2<bool>, 16>();
    global0 = Struct_3(~abs(vec3<u32>(_wgslsmith_sub_u32(global0.a.x, arg_3), ~global0.a.x, ~global0.a.x)), func_3(), global0.c, select(!(!(!vec4<bool>(global0.d.x, true, false, global0.d.x))), !global0.d, !(!global0.d)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 54491u;
    global3 = ~func_2(global0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) - 1960f), reverseBits(global0.b) ^ global0.b, func_1(Struct_4(vec3<f32>(global0.c.a, global0.c.a, global0.c.a), global0.d, -328f, Struct_1(false)), Struct_1(false))) & 4294967295u;
    global3 = 1u;
    let var_1 = -((u_input.c >> (_wgslsmith_add_u32(global0.a.x << (global0.a.x % 32u), _wgslsmith_add_u32(var_0, u_input.b)) % 32u)) ^ (~(-global1[_wgslsmith_index_u32(u_input.a, 31u)]) << (~min(u_input.a, 0u) % 32u)));
    global0 = Struct_3(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~global0.a.x), global0.a.zz), 4294967295u, 58715u ^ var_0), abs(~(-2147483647i)), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.c.a)), -299f))), vec4<bool>(true, true, !select(all(vec3<bool>(global0.d.x, true, global0.d.x)), true, true), any(!(!global0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(func_3(), 70170i << (global0.a.x % 32u), select(global0.b, -29691i, global0.d.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, -44770i, -2147483647i), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(var_0, 31u)], global0.b, var_1)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, 9546i), firstTrailingBit(-13997i)), var_1, var_1)));
}

