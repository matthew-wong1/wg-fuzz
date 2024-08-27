struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, vec3<bool>(true, false, false), false, vec4<f32>(342f, -856f, -1108f, -1452f), false), Struct_1(false, vec3<bool>(true, false, false), true, vec4<f32>(-546f, 1727f, -229f, 735f), false), Struct_1(false, vec3<bool>(true, false, false), false, vec4<f32>(265f, -1030f, -549f, -770f), true), Struct_1(false, vec3<bool>(false, true, true), true, vec4<f32>(436f, -1000f, 406f, 1089f), false), Struct_1(true, vec3<bool>(true, false, false), false, vec4<f32>(-529f, -1376f, 1047f, -138f), false), Struct_1(true, vec3<bool>(true, true, false), true, vec4<f32>(1378f, 429f, -1547f, 1158f), false), Struct_1(true, vec3<bool>(true, false, true), true, vec4<f32>(-449f, -1635f, -954f, 465f), true), Struct_1(false, vec3<bool>(true, true, false), true, vec4<f32>(-754f, -401f, -1107f, 1036f), false), Struct_1(false, vec3<bool>(false, false, false), true, vec4<f32>(360f, 658f, 101f, 175f), false), Struct_1(false, vec3<bool>(true, true, true), true, vec4<f32>(-632f, 2170f, 1020f, 385f), false), Struct_1(true, vec3<bool>(true, true, false), true, vec4<f32>(1420f, 263f, 401f, 1604f), true), Struct_1(true, vec3<bool>(false, true, false), true, vec4<f32>(700f, 207f, -531f, -785f), true), Struct_1(false, vec3<bool>(true, true, false), false, vec4<f32>(512f, -566f, 763f, -590f), true));

var<private> global3: array<vec4<u32>, 4>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 13>();
    global0 = (u_input.e.yy | reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(60380u, 43587u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(0u, u_input.b.x))))) << (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(~global1.c, _wgslsmith_mod_u32(30073u, global0.x))), u_input.d) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.d.zy, _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mod_i32(32842i, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(-59483i, 1i, 0i) | vec3<i32>(-14052i, u_input.c, u_input.c))), ~(~(~0i))), ~select(vec2<i32>(-13212i, 43362i) << (u_input.e.xx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(2175i, -1i)), -vec2<i32>(1i, u_input.c), ~vec2<i32>(u_input.c, 33910i)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.a.d.ywx)))), vec3<f32>(288f, -734f, 2255f)));
}

