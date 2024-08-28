struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(2147483647i, -4018i, 52870i), vec3<i32>(-50480i, 32630i, -11251i), vec3<i32>(i32(-2147483648), 18282i, i32(-2147483648)), vec3<i32>(39421i, 1i, 2147483647i), vec3<i32>(-20790i, 2147483647i, -1i), vec3<i32>(-20312i, 1i, 12338i), vec3<i32>(90394i, 69247i, 0i), vec3<i32>(33467i, -40031i, -1i), vec3<i32>(-42256i, i32(-2147483648), -34739i), vec3<i32>(1i, -1i, 1i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-12916i, 1i, 10744i), vec3<i32>(1i, 36918i, 0i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 46013i, 24041i), vec3<i32>(13464i, 5616i, 2147483647i), vec3<i32>(-2540i, 0i, 8116i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(1i, 0i, -15005i), vec3<i32>(-73106i, 1i, -93234i), vec3<i32>(2147483647i, -32272i, 28017i), vec3<i32>(0i, 40179i, 1i), vec3<i32>(2147483647i, 7861i, 0i), vec3<i32>(i32(-2147483648), 8271i, -3935i), vec3<i32>(5401i, 0i, 23039i));

var<private> global1: array<i32, 15> = array<i32, 15>(2147483647i, 8149i, 2147483647i, 0i, i32(-2147483648), 1i, i32(-2147483648), -1i, 2147483647i, -33235i, 8224i, -1i, i32(-2147483648), 1i, i32(-2147483648));

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(-34337i, 21912i, -19025i), -1i, vec2<f32>(-511f, -267f), true), Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i), 1i, vec2<f32>(-583f, 754f), true), Struct_1(vec3<i32>(-1i, 0i, -10009i), 14910i, vec2<f32>(1724f, -422f), true), Struct_1(vec3<i32>(-1i, -28311i, 1i), 14216i, vec2<f32>(-1000f, -1000f), true), Struct_1(vec3<i32>(-1i, -611i, -1i), 0i, vec2<f32>(511f, 438f), true), Struct_1(vec3<i32>(-25244i, 2147483647i, -1i), 15716i, vec2<f32>(1676f, -914f), true), Struct_1(vec3<i32>(0i, 0i, 1408i), 1i, vec2<f32>(1000f, -618f), true), Struct_1(vec3<i32>(i32(-2147483648), -30429i, -1i), 12979i, vec2<f32>(-118f, 458f), false), Struct_1(vec3<i32>(-20730i, 2147483647i, -17501i), -1i, vec2<f32>(-1743f, 1556f), true), Struct_1(vec3<i32>(-1i, 1i, -34747i), -1i, vec2<f32>(-714f, -373f), true), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), -2634i, vec2<f32>(1573f, -652f), true));

var<private> global3: vec3<f32> = vec3<f32>(701f, 1000f, -2627f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = 75251i;
    global2 = array<Struct_1, 11>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(116f, 680f), _wgslsmith_f_op_f32(select(1406f, global3.x, false))))) * vec3<f32>(556f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -415f))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c.x)) - 628f))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2268f, global3.x), vec2<f32>(global3.x, -1609f), arg_2)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-697f, global3.x) * vec2<f32>(arg_1.c.x, -116f)))));
    return min(26954i, var_0);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = ~abs(~(~(~u_input.b.x)));
    var_0 = 32086u;
    var var_1 = -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, -2147483647i, u_input.e), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 22930i, global1[_wgslsmith_index_u32(42638u, 15u)], 49510i)) & func_3(true, Struct_1(global0[_wgslsmith_index_u32(0u, 25u)], 29855i, vec2<f32>(global3.x, global3.x), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), false))) << (~_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, u_input.a, u_input.d), u_input.b), ~u_input.b)) % 32u);
    let var_2 = select(max(~firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 15u)], u_input.e, u_input.e, global1[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 2147483647i, 14196i, -1i) ^ vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.d, 15u)], u_input.e, u_input.e)), max(vec4<i32>(39550i, -6954i, u_input.e, 1i), countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 27377i, u_input.e, -28911i))))), vec4<i32>(-4421i, ~(-1i), global1[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.e), !select(!vec4<bool>(arg_0, false, true, false), select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, false, false)), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), false), !vec4<bool>(arg_0, arg_0, true, arg_0)), vec4<bool>(true, true, arg_0, true)));
    let var_3 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 25u)], reverseBits(var_2.wxw) >> (~vec3<u32>(1u, 39846u, u_input.c) % vec3<u32>(32u))), _wgslsmith_mult_i32(~1i, global1[_wgslsmith_index_u32(21591u, 15u)]));
    return global1[_wgslsmith_index_u32(min(u_input.b.x, min(28623u, _wgslsmith_sub_u32(~u_input.d, 1u))), 15u)];
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.e, firstLeadingBit(func_2(false))), ~_wgslsmith_mult_i32(-2147483647i, u_input.e) & func_2(any(vec3<bool>(true, false, true)))), vec2<i32>(global1[_wgslsmith_index_u32(abs(var_0), 15u)], _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(15558u >> (0u % 32u), 15u)], ~56208i)));
    let var_2 = !(!all(vec3<bool>(false, any(vec3<bool>(true, true, true)), true)));
    let var_3 = true;
    let var_4 = Struct_1(firstLeadingBit(vec3<i32>(-20836i, var_1.x, 1i)), global1[_wgslsmith_index_u32(1u, 15u)], global3.yz, any(vec3<bool>(true, var_2, false)));
    return Struct_3(-1145f, var_4, Struct_1(min(var_4.a, vec3<i32>(-24558i, var_4.a.x, var_1.x) ^ global0[_wgslsmith_index_u32(1u, 25u)]), countOneBits(1i) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.b, var_1.x), abs(vec2<i32>(54786i, var_1.x))), var_4.c, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.c.x, _wgslsmith_f_op_f32(-var_4.c.x), -594f, global3.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), global3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global3.x, var_4.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * var_4.c.x)))), Struct_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(~4294967295u, 15u)], -60613i, 40090i), 1501i, _wgslsmith_f_op_vec2_f32(min(var_4.c, var_4.c)), any(vec2<bool>(var_2, var_2))), global2[_wgslsmith_index_u32(var_0, 11u)], var_3, all(vec3<bool>(all(vec2<bool>(false, var_2)), false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> StorageBuffer {
    global0 = array<vec3<i32>, 25>();
    let var_0 = Struct_2(func_1().c, Struct_1(arg_1.b.a, -2147483647i, global3.yx, !(u_input.a <= u_input.d) & arg_0.d), false, arg_3.b.d, _wgslsmith_f_op_f32(func_1().a - arg_3.c.c.x));
    global2 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_1.c.c.x));
    global0 = array<vec3<i32>, 25>();
    return StorageBuffer(-arg_3.e.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-421f, _wgslsmith_f_op_f32(-arg_1.e.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(394f)) - _wgslsmith_f_op_f32(ceil(global3.x))), _wgslsmith_f_op_f32(min(1472f, arg_3.e.a.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 984f, _wgslsmith_f_op_f32(max(func_1().c.c.x, _wgslsmith_f_op_f32(-global3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(-vec3<i32>(max(-3964i, u_input.e), 0i, -2147483647i), global1[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.d)), 15u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1049f, global3.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.x, global3.x))))), !(80648u >= ~u_input.a)), func_1(), _wgslsmith_f_op_f32(-1190f * global3.x), func_1());
}

