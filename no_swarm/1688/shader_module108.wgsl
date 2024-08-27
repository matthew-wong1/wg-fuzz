struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1i, vec2<i32>(-21823i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(-16574i, vec2<i32>(16800i, 4100i), vec3<bool>(false, true, false)), Struct_1(1i, vec2<i32>(2147483647i, 39910i), vec3<bool>(false, false, false)), Struct_1(-1i, vec2<i32>(-5145i, 1i), vec3<bool>(true, true, false)), Struct_1(55650i, vec2<i32>(-27043i, 1i), vec3<bool>(true, false, true)), Struct_1(-31053i, vec2<i32>(-5569i, 34090i), vec3<bool>(true, true, true)), Struct_1(-38258i, vec2<i32>(2147483647i, -60808i), vec3<bool>(false, true, false)), Struct_1(-1i, vec2<i32>(9180i, 0i), vec3<bool>(false, true, true)), Struct_1(0i, vec2<i32>(55588i, 1i), vec3<bool>(false, true, true)), Struct_1(-14051i, vec2<i32>(-2501i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_1(1i, vec2<i32>(-10096i, 67168i), vec3<bool>(true, true, false)), Struct_1(13820i, vec2<i32>(1i, 0i), vec3<bool>(true, false, true)), Struct_1(0i, vec2<i32>(1i, 2147483647i), vec3<bool>(true, true, true)), Struct_1(2147483647i, vec2<i32>(-43514i, 41525i), vec3<bool>(false, false, true)), Struct_1(17215i, vec2<i32>(0i, 1i), vec3<bool>(true, false, true)), Struct_1(-37019i, vec2<i32>(21589i, -14803i), vec3<bool>(false, true, false)), Struct_1(52647i, vec2<i32>(9503i, 29462i), vec3<bool>(false, false, false)), Struct_1(10230i, vec2<i32>(-362i, -1i), vec3<bool>(true, true, true)), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), 1269i), vec3<bool>(true, false, true)), Struct_1(0i, vec2<i32>(6744i, -41644i), vec3<bool>(false, false, true)), Struct_1(2147483647i, vec2<i32>(17383i, 0i), vec3<bool>(false, true, true)), Struct_1(8590i, vec2<i32>(-36767i, -43017i), vec3<bool>(false, true, false)), Struct_1(22608i, vec2<i32>(-3320i, 50222i), vec3<bool>(false, true, false)), Struct_1(-48353i, vec2<i32>(23344i, -1657i), vec3<bool>(false, true, true)), Struct_1(42746i, vec2<i32>(0i, -1i), vec3<bool>(false, true, true)), Struct_1(678i, vec2<i32>(6166i, 17385i), vec3<bool>(false, true, false)), Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), -6419i), vec3<bool>(true, true, true)), Struct_1(-2335i, vec2<i32>(4413i, -20118i), vec3<bool>(false, false, true)), Struct_1(2147483647i, vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, true, true)));

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(26633u, 46048u, 595u, 0u), vec4<u32>(0u, 2444u, 0u, 1u), vec4<u32>(1u, 2459u, 0u, 62019u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(81090u, 1967u, 21043u, 36546u), vec4<u32>(0u, 4294967295u, 6575u, 0u), vec4<u32>(28316u, 80516u, 15250u, 4294967295u), vec4<u32>(1u, 62440u, 4502u, 4294967295u), vec4<u32>(34644u, 27571u, 15259u, 9859u));

var<private> global3: vec2<i32> = vec2<i32>(-18545i, -191i);

var<private> global4: array<i32, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, true, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1272f, 363f), -1387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -593f), -1780f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1018f - 1139f) * _wgslsmith_f_op_f32(max(-358f, 685f)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, -112f, 1050f, -740f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 263f, 1534f, 1000f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1794f, -666f, 147f, -867f), vec4<f32>(-416f, 357f, 354f, 740f))))))));
    let var_2 = 4294967295u;
    let var_3 = vec4<u32>(select(~22160u, global1.x, false), ~5148u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_2, u_input.b.x << (39497u % 32u)), global1.x), reverseBits(u_input.a)), 4294967295u);
    let var_4 = ~vec4<i32>(-1i, ~69264i, u_input.c, 1i);
    global2 = array<vec4<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

