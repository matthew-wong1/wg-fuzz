struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_2(vec2<u32>(1u, 1u), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_4(Struct_2(vec2<u32>(90803u, 13361u), false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), Struct_4(Struct_2(vec2<u32>(34368u, 48119u), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_4(Struct_2(vec2<u32>(1u, 1u), true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), Struct_4(Struct_2(vec2<u32>(46849u, 13171u), false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), Struct_4(Struct_2(vec2<u32>(128996u, 1u), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_4(Struct_2(vec2<u32>(1u, 0u), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), Struct_4(Struct_2(vec2<u32>(4294967295u, 59277u), false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), Struct_4(Struct_2(vec2<u32>(0u, 52037u), true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_4(Struct_2(vec2<u32>(24067u, 15937u), true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_4(Struct_2(vec2<u32>(4294967295u, 0u), true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)));

var<private> global2: u32;

var<private> global3: f32 = -918f;

var<private> global4: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1761f)) * _wgslsmith_f_op_f32(1566f - _wgslsmith_f_op_f32(abs(261f)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-2169f - 636f), _wgslsmith_f_op_f32(f32(-1f) * -2116f), 493f, _wgslsmith_f_op_f32(trunc(-1874f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1946f, -215f, -1699f) + vec4<f32>(-1326f, 623f, -1000f, 150f)) * vec4<f32>(-508f, -3119f, -802f, 100f))))), vec4<f32>(1201f, -961f, 457f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-849f + _wgslsmith_f_op_f32(497f + -1000f)))))));
    var var_1 = Struct_2(firstLeadingBit(u_input.c.wx) | ~(vec2<u32>(0u, u_input.b) | u_input.c.wz), true);
    global4 = ~13537i;
    var var_2 = Struct_5(839f);
    return vec2<bool>(false, var_1.b);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = func_3();
    var var_1 = Struct_1(_wgslsmith_clamp_i32(-1i, max(select(u_input.a.x, 13099i, var_0.x), u_input.a.x), _wgslsmith_clamp_i32(-44851i, u_input.a.x, u_input.a.x)));
    global2 = 66987u;
    let var_2 = _wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0 >> (u_input.b % 32u), 68050u), 1u | arg_2));
    global0 = array<Struct_3, 9>();
    return 2147483647i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: i32) -> f32 {
    global2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~arg_0.x, arg_2.a.a.x), abs(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.a.x, 0u, arg_0.x), arg_0))), 1u);
    global2 = u_input.b;
    var var_0 = i32(-1i) * -func_2(arg_2.a.a.x, false, ~50400u);
    var_0 = ~_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a.x, 2147483647i), 1i));
    global2 = u_input.b;
    return 759f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(reverseBits(u_input.a.x)) | -1i), abs(4294967295u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.c.x, 7219u, 13295u), vec2<i32>(u_input.a.x, 1i), Struct_4(Struct_2(u_input.c.xy, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1606f, 425f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(177f, -1000f) * vec2<f32>(-944f, 1095f)), true))), vec4<u32>(~(u_input.c.x << (countOneBits(u_input.c.x) % 32u)), _wgslsmith_add_u32(~(~125574u), ~u_input.c.x), _wgslsmith_add_u32(3552u, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.b, u_input.c.x))), 16916u));
}

