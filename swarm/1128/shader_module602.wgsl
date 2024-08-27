struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<f32>(-132f, 262f, 814f), 5271u, 257f, -28000i), Struct_4(vec3<f32>(-963f, -262f, 379f), 39330u, -370f, 2147483647i), Struct_4(vec3<f32>(693f, -1032f, 437f), 1u, -573f, 59332i), Struct_4(vec3<f32>(-503f, 1364f, 2053f), 4294967295u, 700f, -4903i), Struct_4(vec3<f32>(-624f, -230f, 417f), 0u, 1680f, 1i), Struct_4(vec3<f32>(-417f, -171f, -589f), 35601u, -1106f, 2147483647i), Struct_4(vec3<f32>(1113f, -1094f, 1064f), 88773u, 943f, 26745i), Struct_4(vec3<f32>(270f, -259f, 755f), 3113u, -1014f, 2147483647i), Struct_4(vec3<f32>(340f, -364f, 840f), 0u, -536f, 0i), Struct_4(vec3<f32>(-2403f, 1313f, -171f), 1u, -1103f, 16622i), Struct_4(vec3<f32>(271f, 1000f, -248f), 1u, 536f, 1i), Struct_4(vec3<f32>(465f, 866f, -937f), 17449u, -1350f, -29714i), Struct_4(vec3<f32>(407f, -1771f, -535f), 6655u, 153f, -33529i), Struct_4(vec3<f32>(1000f, -2076f, 1636f), 4294967295u, 1052f, 33218i), Struct_4(vec3<f32>(438f, 419f, -1257f), 14063u, -1225f, -30829i), Struct_4(vec3<f32>(1000f, -376f, -1000f), 1u, -1000f, 2147483647i), Struct_4(vec3<f32>(-435f, -885f, 891f), 1u, -1000f, 0i), Struct_4(vec3<f32>(338f, 190f, 2244f), 69770u, 589f, 56503i), Struct_4(vec3<f32>(1029f, 614f, -218f), 27947u, -253f, 1i), Struct_4(vec3<f32>(882f, -694f, 1530f), 70689u, 656f, 93893i), Struct_4(vec3<f32>(-250f, -1000f, 674f), 15843u, -856f, 1829i), Struct_4(vec3<f32>(2044f, 636f, -1368f), 35003u, -856f, 29465i), Struct_4(vec3<f32>(-944f, -424f, -1000f), 8364u, 245f, -30972i), Struct_4(vec3<f32>(325f, -403f, 256f), 0u, 1017f, 1137i));

var<private> global1: array<vec3<bool>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(~(~(vec3<i32>(6653i, u_input.b, 1590i) >> ((vec3<u32>(8912u, 18834u, 1u) | vec3<u32>(34112u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 54054i, ~u_input.b), -(vec3<i32>(-55898i, -1i, 6197i) ^ -vec3<i32>(u_input.b, 2147483647i, u_input.b))));
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<bool>, 18>();
    var var_0 = -_wgslsmith_div_vec3_i32(firstTrailingBit(func_2()), vec3<i32>(-2147483647i ^ u_input.b, 2147483647i, -u_input.b));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(u_input.a << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), ~u_input.a), vec2<u32>(0u, reverseBits(~u_input.a.x))), 24u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(50729u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(var_1.b, var_1.b, 4294967295u, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(77522u, 80426u, u_input.a.x, u_input.a.x), ~vec4<u32>(var_1.b, var_1.b, 0u, 0u))), ~(~vec4<u32>(1u, u_input.a.x, 1u, 4294967295u))), ~_wgslsmith_clamp_u32(var_1.b, select(u_input.a.x & 43875u, 1u, true), ~u_input.a.x | ~101354u)), 24u)];
    var var_3 = 61912u;
    return Struct_1(-1083f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~max(24783u, 20471u), 1u >> (1u % 32u)), abs(42251u)), 18u)], _wgslsmith_f_op_f32(f32(-1f) * -499f), countOneBits(~(_wgslsmith_sub_u32(var_1.b, 33213u) << (~1u % 32u))), ~abs(vec3<u32>(var_2.b << (2155u % 32u), 1u, _wgslsmith_clamp_u32(u_input.a.x, 1u, 59218u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 24>();
    var var_0 = func_1();
    let var_1 = abs(-(2147483647i | _wgslsmith_clamp_i32(u_input.b, -1i, ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))))));
}

