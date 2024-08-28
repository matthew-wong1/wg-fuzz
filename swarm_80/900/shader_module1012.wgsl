struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-37220i, 0i), vec2<i32>(-48051i, 6411i), vec2<i32>(-431i, 0i), vec2<i32>(2147483647i, 74452i), vec2<i32>(0i, -5159i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), 32524i), vec2<i32>(-68695i, 5636i), vec2<i32>(-19141i, 2147483647i), vec2<i32>(-16152i, 51808i), vec2<i32>(49i, -1605i), vec2<i32>(22849i, 50746i), vec2<i32>(31449i, 1i), vec2<i32>(29828i, 38760i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(0i, -8976i), vec2<i32>(2147483647i, -10478i), vec2<i32>(7613i, 18687i), vec2<i32>(20872i, 1i), vec2<i32>(70317i, -21451i), vec2<i32>(1323i, -11110i), vec2<i32>(-1i, -22889i), vec2<i32>(7607i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    global2 = array<vec2<i32>, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2510f))), -1718f, -198f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-526f, 841f), _wgslsmith_f_op_f32(-1000f * 1235f), -770f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(516f, 490f, 803f), vec3<f32>(-769f, 989f, -348f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1191f, -703f, -1710f)))))));
    var var_1 = !(!(!(!any(vec3<bool>(true, true, true)))));
    global2 = array<vec2<i32>, 24>();
    var var_2 = 44101u;
    return u_input.d;
}

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(vec3<i32>(u_input.b, _wgslsmith_div_i32(abs(-2147483647i), ~(33104i << (u_input.a % 32u))), max(1i, global1.x)), Struct_1(vec3<i32>(u_input.b, global1.x, -2147483647i) | ~(-vec3<i32>(global1.x, u_input.b, global1.x)), vec4<u32>(4294967295u, (u_input.c | u_input.c) >> (0u % 32u), _wgslsmith_sub_u32(countOneBits(u_input.d), ~47876u), ~u_input.a), select(vec2<u32>(~u_input.d, _wgslsmith_sub_u32(88636u, 49985u)), firstLeadingBit(~vec2<u32>(1u, 1u)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1361f, 833f), vec2<f32>(757f, -1704f), vec2<bool>(arg_0, true))))))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, _wgslsmith_div_i32(arg_2.b.a.x, -2147483647i) & (i32(-1i) * -34061i), arg_1), arg_0.a), arg_2.b);
    var var_1 = all(vec2<bool>(true, !all(vec4<bool>(true, false, false, false))));
    var_1 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(26381u, 28424u) << (~vec2<u32>(u_input.d, 12788u) % vec2<u32>(32u)), arg_0.b.c) > var_0.b.c.x;
    var var_2 = arg_2.b;
    return func_2(all(vec2<bool>(true, false))).b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(-2147483647i);
    let var_1 = func_2(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), _wgslsmith_add_u32(1u, u_input.d) != ~u_input.d))).b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f)) + _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-561f, arg_0.d.x, true))) + 995f)));
    var_0 = -33486i;
    global2 = array<vec2<i32>, 24>();
    return Struct_1(~(~countOneBits(abs(arg_0.a))), arg_0.b, vec2<u32>(u_input.a, firstLeadingBit(~arg_0.c.x)), _wgslsmith_f_op_vec2_f32(var_1.d * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1637f + var_1.d.x) + func_2(false).b.d.x), -307f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 24>();
    let var_0 = reverseBits(firstLeadingBit(vec2<i32>(global1.x, -select(0i, u_input.b, false))));
    var var_1 = (var_0 >> (vec2<u32>(1u, ~func_1()) % vec2<u32>(32u))) & vec2<i32>(global1.x, u_input.b);
    let var_2 = func_4(func_3(func_2(all(vec4<bool>(true, true, true, true))), ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global1.x, u_input.b, 22795i, 15762i)), vec4<i32>(-14610i, u_input.b, u_input.b, -2147483647i)), func_2(false), firstLeadingBit((u_input.c << (u_input.c % 32u)) & ~u_input.c)));
    var var_3 = -_wgslsmith_div_vec4_i32(vec4<i32>(-5817i, ~(-2147483647i), -2147483647i, var_2.a.x), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, u_input.b), vec4<i32>(-2147483647i, 2147483647i, -33159i, 1i))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.d))) - func_2(true).b.d)));
    var var_5 = func_2(false);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.c.x);
}

