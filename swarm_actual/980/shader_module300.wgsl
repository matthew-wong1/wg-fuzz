struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: f32 = -1467f;

var<private> global4: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1000f, -1000f, 1062f), vec3<f32>(328f, -435f, 1710f), vec3<f32>(-769f, -642f, -655f), vec3<f32>(182f, -124f, -561f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    var var_0 = arg_2;
    var var_1 = firstTrailingBit(1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.c.e.a.xyw)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.e.a.x, arg_0.c.b.c, arg_0.b.c) + vec3<f32>(-309f, arg_0.b.c, 1000f)), vec3<f32>(arg_0.c.e.b, arg_0.b.c, arg_0.b.c)))))));
    var var_3 = vec2<u32>(~firstLeadingBit(u_input.b.x), firstLeadingBit(~0u));
    let var_4 = arg_0.c.a;
    return _wgslsmith_f_op_f32(abs(var_2.x));
}

fn func_2() -> Struct_3 {
    var var_0 = abs(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), -(vec2<i32>(-2147483647i, u_input.d.x) | u_input.d.zy)), -(~(vec2<i32>(1i, 1193i) & vec2<i32>(u_input.d.x, 50055i)))));
    let var_1 = Struct_5(select(false, true, !(!select(true, false, true))));
    var_0 = ~countOneBits(u_input.d.yz);
    let var_2 = Struct_4(vec4<i32>(abs(u_input.d.x), 1i & -(2147483647i ^ u_input.d.x), u_input.d.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-2147483647i), ~u_input.d.x), ~countOneBits(8300i))), Struct_1(!(!select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, var_1.a, true), false)), u_input.c.x, _wgslsmith_f_op_f32(-134f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(u_input.d.x, u_input.d.x, var_0.x, u_input.d.x), Struct_1(vec3<bool>(false, false, var_1.a), u_input.b.x, 993f, u_input.d.x), Struct_3(vec4<bool>(var_1.a, var_1.a, var_1.a, false), Struct_1(vec3<bool>(var_1.a, var_1.a, var_1.a), 1u, 470f, -1i), 0i, Struct_1(vec3<bool>(false, var_1.a, var_1.a), 34264u, -604f, 2147483647i), Struct_2(vec4<f32>(1060f, -2930f, -1141f, 365f), 1000f, var_1.a, u_input.d.x))), vec2<bool>(var_1.a, var_1.a), u_input.d.x)) + -340f)), ~var_0.x), Struct_3(select(!vec4<bool>(true, var_1.a, var_1.a, var_1.a), !vec4<bool>(false, false, var_1.a, var_1.a), vec4<bool>(u_input.c.x != u_input.a.x, var_1.a && true, u_input.d.x <= 27342i, true)), Struct_1(!select(vec3<bool>(false, var_1.a, true), vec3<bool>(true, true, true), vec3<bool>(true, var_1.a, false)), select(firstLeadingBit(3813u), 1u, !var_1.a), -1072f, u_input.d.x), 8801i, Struct_1(select(select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, true, true), var_1.a), select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.a, var_1.a), var_1.a), false), 1u, _wgslsmith_f_op_f32(select(379f, -961f, var_1.a)), -9732i), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, -483f, -3353f, -1713f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f - 171f) + _wgslsmith_f_op_f32(455f * 705f)), false, 1i)));
    var var_3 = !var_2.c.d.a.zz;
    return Struct_3(vec4<bool>(!(_wgslsmith_div_u32(1320u, 4294967295u) < ~u_input.b.x), !any(vec4<bool>(var_3.x, var_3.x, var_2.c.d.a.x, var_3.x)), var_2.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.d.c)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + var_2.c.e.b)))), Struct_1(var_2.c.b.a, var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f), var_2.c.d.c)), min(_wgslsmith_mult_i32(~(-1i), _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), var_0.x)), ~u_input.d.x, Struct_1(vec3<bool>(false, any(var_2.b.a.yz), any(vec4<bool>(true, true, var_1.a, var_2.b.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(7611u, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 27686u), ~u_input.a.x, u_input.c.x), max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.c.x), vec4<u32>(u_input.b.x, var_2.c.d.b, 6003u, var_2.c.d.b)), countOneBits(vec4<u32>(20751u, 0u, 1u, 4947u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.b.c) - _wgslsmith_div_f32(1000f, 1326f)))), ~(-25201i)), var_2.c.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    global3 = -1709f;
    let var_0 = min(~reverseBits(~(vec3<u32>(44137u, 17153u, u_input.c.x) | vec3<u32>(arg_0.d.b, u_input.c.x, 1u))), abs(u_input.c));
    global3 = arg_0.d.c;
    let var_1 = Struct_5(false);
    var var_2 = _wgslsmith_f_op_f32(abs(-1561f));
    return arg_0.a.x & arg_1.x;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    global4 = array<vec3<f32>, 4>();
    var var_0 = vec4<i32>(countOneBits(-1i), u_input.d.x, select(arg_1, countOneBits(15280i), ((arg_0 | arg_0) | !arg_0) | func_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 17514u, 0u), 6u)], !vec2<bool>(arg_0, arg_0), func_2())), _wgslsmith_div_i32(i32(-1i) * -u_input.d.x, 2147483647i));
    var var_1 = !(!select(select(vec4<bool>(arg_0, arg_0, false, false), !vec4<bool>(true, true, true, arg_0), arg_0), !(!vec4<bool>(arg_0, arg_0, true, arg_0)), func_2().a));
    var var_2 = u_input.d.yy;
    var var_3 = any(!vec3<bool>(true, !all(vec2<bool>(var_1.x, false)), !var_1.x));
    return func_2().b;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = u_input.d.x ^ var_0.c;
    let var_2 = var_0.a.wz;
    let var_3 = ~_wgslsmith_mult_i32(var_0.d.d, arg_1.d);
    global2 = select(~firstTrailingBit(arg_0.x), abs(~var_0.d.b), var_2.x);
    return Struct_4(~reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_3, -24678i, -34320i), vec4<i32>(var_3, u_input.d.x, -20351i, arg_1.d) << (vec4<u32>(43785u, 72060u, arg_0.x, u_input.a.x) % vec4<u32>(32u)))), Struct_1(!arg_1.a, ~func_1(any(var_0.a), _wgslsmith_sub_i32(20419i, 0i), u_input.a).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1623f + 468f) - _wgslsmith_f_op_f32(-arg_2.x)) - var_0.e.a.x), arg_1.d), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-806f, -1475f), _wgslsmith_f_op_f32(floor(296f)), -260f, -170f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 855f, -227f, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, -1241f, -1368f, 583f) + vec4<f32>(127f, -630f, -311f, -630f)) - vec4<f32>(-547f, -404f, 1233f, 716f))))));
    var var_1 = 2147483647i;
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, 1000f))) * -765f), -2126f), -1000f);
    let var_2 = 0u;
    var var_3 = func_5(~vec2<u32>(u_input.c.x, 28823u), func_1(u_input.b.x > ~_wgslsmith_div_u32(63330u, u_input.a.x), u_input.d.x, firstTrailingBit(~vec3<u32>(3198u, 17022u, 0u))), global4[_wgslsmith_index_u32(~0u, 4u)]);
    global3 = _wgslsmith_f_op_f32(-var_3.c.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(var_3.b.d, 1i, var_3.b.d, var_3.b.d));
}

