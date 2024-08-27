struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(1u, Struct_1(162f, vec4<bool>(false, true, true, true), vec2<bool>(true, false), vec2<i32>(-1i, -1i)), Struct_1(-1667f, vec4<bool>(false, true, true, true), vec2<bool>(true, false), vec2<i32>(-23381i, i32(-2147483648))), Struct_1(-264f, vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -23274i)), vec2<bool>(true, true)), Struct_2(10171u, Struct_1(-989f, vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<i32>(41189i, i32(-2147483648))), Struct_1(642f, vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec2<i32>(17959i, -8469i)), Struct_1(-1000f, vec4<bool>(false, true, true, true), vec2<bool>(true, true), vec2<i32>(-1i, 0i)), vec2<bool>(false, true)), Struct_2(53172u, Struct_1(1118f, vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec2<i32>(2147483647i, 1i)), Struct_1(-2010f, vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<i32>(-1754i, 2147483647i)), Struct_1(-1102f, vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec2<i32>(0i, 4687i)), vec2<bool>(true, true)), Struct_2(50218u, Struct_1(-1104f, vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec2<i32>(-28277i, -6089i)), Struct_1(-738f, vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec2<i32>(-33026i, -4220i)), Struct_1(764f, vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec2<i32>(-64323i, 36709i)), vec2<bool>(true, false)), Struct_2(65309u, Struct_1(-893f, vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<i32>(8256i, 1i)), Struct_1(324f, vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<i32>(2147483647i, 0i)), Struct_1(271f, vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec2<i32>(-1i, 5955i)), vec2<bool>(true, true)), Struct_2(4294967295u, Struct_1(-992f, vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec2<i32>(2147483647i, 14101i)), Struct_1(-294f, vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec2<i32>(-25844i, 0i)), Struct_1(-1757f, vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec2<i32>(2147483647i, 13985i)), vec2<bool>(false, false)), Struct_2(0u, Struct_1(807f, vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec2<i32>(-40571i, -32790i)), Struct_1(-534f, vec4<bool>(true, false, false, true), vec2<bool>(true, true), vec2<i32>(-1i, -27089i)), Struct_1(342f, vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<i32>(0i, 0i)), vec2<bool>(true, true)), Struct_2(1u, Struct_1(1651f, vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(1i, 640i)), Struct_1(-1614f, vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec2<i32>(-25678i, 2147483647i)), Struct_1(-856f, vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec2<i32>(1i, i32(-2147483648))), vec2<bool>(false, true)), Struct_2(1u, Struct_1(211f, vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 2057i)), Struct_1(1000f, vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<i32>(2623i, 1i)), Struct_1(582f, vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec2<i32>(-1i, -44639i)), vec2<bool>(false, true)), Struct_2(0u, Struct_1(-1026f, vec4<bool>(false, false, true, true), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i)), Struct_1(-839f, vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -19999i)), Struct_1(-1845f, vec4<bool>(false, false, true, true), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -438i)), vec2<bool>(false, false)), Struct_2(0u, Struct_1(214f, vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<i32>(1i, -24776i)), Struct_1(-1644f, vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec2<i32>(1i, i32(-2147483648))), Struct_1(-1913f, vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec2<i32>(-59235i, -15808i)), vec2<bool>(false, true)), Struct_2(29109u, Struct_1(1951f, vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec2<i32>(45146i, 22576i)), Struct_1(-1359f, vec4<bool>(false, true, true, true), vec2<bool>(true, false), vec2<i32>(1i, 650i)), Struct_1(802f, vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec2<i32>(-49i, -28665i)), vec2<bool>(true, false)));

var<private> global1: u32 = 4294967295u;

var<private> global2: u32;

var<private> global3: array<Struct_3, 10>;

var<private> global4: Struct_2 = Struct_2(8777u, Struct_1(808f, vec4<bool>(true, true, false, false), vec2<bool>(true, false), vec2<i32>(1i, i32(-2147483648))), Struct_1(1000f, vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec2<i32>(-1i, i32(-2147483648))), Struct_1(956f, vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec2<i32>(2147483647i, 1i)), vec2<bool>(false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.a | ~vec4<i32>(global4.c.d.x, abs(2885i), _wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(15212i, 1i)), _wgslsmith_mult_i32(0i, -27237i)), vec4<i32>(-2147483647i, abs(_wgslsmith_dot_vec2_i32(u_input.a.xy, abs(vec2<i32>(-2147483647i, 2147483647i)))), ~(-2147483647i), _wgslsmith_mod_i32(1i, 21536i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global4.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.a * -255f)))))));
}

