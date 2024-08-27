struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<Struct_5, 20>;

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_1(vec3<bool>(true, true, false)), vec2<i32>(-58887i, -2034i), Struct_2(vec3<i32>(-18792i, 32625i, -51485i), Struct_1(vec3<bool>(false, false, true))), vec2<i32>(-49469i, 78500i)), Struct_4(Struct_1(vec3<bool>(false, false, false)), vec2<i32>(1i, 39795i), Struct_2(vec3<i32>(i32(-2147483648), -23589i, i32(-2147483648)), Struct_1(vec3<bool>(true, false, true))), vec2<i32>(1i, 2147483647i)), Struct_4(Struct_1(vec3<bool>(true, true, false)), vec2<i32>(-1i, 2147483647i), Struct_2(vec3<i32>(2147483647i, 79908i, -93193i), Struct_1(vec3<bool>(false, false, true))), vec2<i32>(20909i, 2147483647i)), Struct_4(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(1i, 5856i), Struct_2(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), Struct_1(vec3<bool>(true, false, true))), vec2<i32>(-125i, i32(-2147483648))), Struct_4(Struct_1(vec3<bool>(false, true, true)), vec2<i32>(-11777i, i32(-2147483648)), Struct_2(vec3<i32>(0i, i32(-2147483648), 24872i), Struct_1(vec3<bool>(true, true, true))), vec2<i32>(-20417i, 1i)), Struct_4(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(-1i, 0i), Struct_2(vec3<i32>(0i, 1i, 1i), Struct_1(vec3<bool>(true, true, false))), vec2<i32>(i32(-2147483648), 1i)), Struct_4(Struct_1(vec3<bool>(false, false, false)), vec2<i32>(-22298i, -1i), Struct_2(vec3<i32>(1i, 46580i, -1i), Struct_1(vec3<bool>(true, true, false))), vec2<i32>(1103i, 3623i)), Struct_4(Struct_1(vec3<bool>(true, true, false)), vec2<i32>(27101i, -73978i), Struct_2(vec3<i32>(-1i, 10101i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, false))), vec2<i32>(2739i, -32339i)), Struct_4(Struct_1(vec3<bool>(false, true, true)), vec2<i32>(853i, -12397i), Struct_2(vec3<i32>(-10732i, 0i, -21600i), Struct_1(vec3<bool>(true, false, true))), vec2<i32>(-1i, 18683i)), Struct_4(Struct_1(vec3<bool>(false, false, true)), vec2<i32>(45755i, -94361i), Struct_2(vec3<i32>(-1i, 2460i, -37607i), Struct_1(vec3<bool>(false, true, true))), vec2<i32>(41026i, 23321i)), Struct_4(Struct_1(vec3<bool>(false, false, true)), vec2<i32>(42698i, -29545i), Struct_2(vec3<i32>(i32(-2147483648), 0i, -51413i), Struct_1(vec3<bool>(false, true, true))), vec2<i32>(1i, 0i)), Struct_4(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(1i, 0i), Struct_2(vec3<i32>(14507i, 0i, 1i), Struct_1(vec3<bool>(false, false, false))), vec2<i32>(1i, -14252i)), Struct_4(Struct_1(vec3<bool>(false, false, false)), vec2<i32>(-1i, 0i), Struct_2(vec3<i32>(i32(-2147483648), -37883i, 0i), Struct_1(vec3<bool>(true, false, false))), vec2<i32>(-3139i, i32(-2147483648))), Struct_4(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(1i, -51355i), Struct_2(vec3<i32>(2147483647i, 0i, -11584i), Struct_1(vec3<bool>(true, true, false))), vec2<i32>(-37344i, 17568i)), Struct_4(Struct_1(vec3<bool>(true, true, true)), vec2<i32>(7932i, 0i), Struct_2(vec3<i32>(-15028i, -25655i, 13006i), Struct_1(vec3<bool>(false, true, true))), vec2<i32>(-1i, -11691i)), Struct_4(Struct_1(vec3<bool>(false, false, true)), vec2<i32>(-36106i, 9478i), Struct_2(vec3<i32>(10990i, i32(-2147483648), 0i), Struct_1(vec3<bool>(true, false, false))), vec2<i32>(23073i, -1i)), Struct_4(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(-64526i, 0i), Struct_2(vec3<i32>(0i, 20338i, i32(-2147483648)), Struct_1(vec3<bool>(false, true, true))), vec2<i32>(0i, 3981i)), Struct_4(Struct_1(vec3<bool>(true, true, true)), vec2<i32>(2147483647i, -1i), Struct_2(vec3<i32>(-12585i, 2147483647i, -10405i), Struct_1(vec3<bool>(false, true, true))), vec2<i32>(0i, -41390i)), Struct_4(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(9597i, 13360i), Struct_2(vec3<i32>(0i, 0i, -12213i), Struct_1(vec3<bool>(true, true, false))), vec2<i32>(2147483647i, -41971i)), Struct_4(Struct_1(vec3<bool>(false, true, true)), vec2<i32>(0i, -1i), Struct_2(vec3<i32>(2147483647i, -1i, 0i), Struct_1(vec3<bool>(true, false, true))), vec2<i32>(22503i, 0i)), Struct_4(Struct_1(vec3<bool>(true, true, false)), vec2<i32>(i32(-2147483648), -26729i), Struct_2(vec3<i32>(i32(-2147483648), -3672i, 9820i), Struct_1(vec3<bool>(false, false, false))), vec2<i32>(-59495i, -28799i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 4>();
    let var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, !(u_input.a == 0u), any(vec3<bool>(true, true, true)))));
    let var_1 = false;
    global1 = array<Struct_2, 4>();
    let var_2 = -941f;
    return _wgslsmith_sub_i32(countOneBits(-u_input.c.x), 8507i);
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> bool {
    global1 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(24676i, 4252i)), _wgslsmith_clamp_i32(i32(-1i) * -1i, -u_input.c.x, ~(-2147483647i))), 2147483647i, 2147483647i), vec4<i32>(func_3(), 8701i, 0i, 1i));
    let var_1 = vec2<i32>(u_input.c.x, ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(12776i, 50118i, u_input.c.x, 1i), vec4<i32>(-1i, -7514i, u_input.c.x, 1i)) | firstTrailingBit(u_input.c.x), u_input.c.x));
    var var_2 = global2[_wgslsmith_index_u32(3548u, 20u)];
    var var_3 = func_3();
    return select(true, arg_0, arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(true, false, func_2(all(vec2<bool>(true, false)), Struct_5(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true), true, vec2<f32>(311f, -240f)))));
    global0 = array<vec2<bool>, 15>();
    let var_1 = 45674i;
    global0 = array<vec2<bool>, 15>();
    let var_2 = var_1 << (27709u % 32u);
    return Struct_1(select(!select(var_0.a, select(var_0.a, vec3<bool>(true, true, var_0.a.x), var_0.a), false & var_0.a.x), var_0.a, select(!select(var_0.a, vec3<bool>(var_0.a.x, true, false), true), !var_0.a, !vec3<bool>(var_0.a.x, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 4>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 20u)];
    let var_1 = !var_0.a.x;
    let var_2 = -1i;
    let var_3 = func_1();
    let var_4 = vec4<bool>(true, var_0.a.x & false, true, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.d.x, -1074f))))), _wgslsmith_f_op_f32(192f - 363f), var_0.d.x), ~(~vec4<u32>(u_input.b, 4294967295u, 77352u, u_input.a) | ~vec4<u32>(31580u, u_input.a, 98766u, u_input.b)) << ((~abs(vec4<u32>(16997u, u_input.a, u_input.b, u_input.a)) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.b), vec3<u32>(0u, u_input.a, 0u)), 1u, u_input.a << (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(61882u, 90089u), vec2<u32>(u_input.a, u_input.a)))) % vec4<u32>(32u)), u_input.c.zy, -141f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.d.x, 2060f))))))));
}

