struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 5> = array<u32, 5>(52934u, 1u, 0u, 23882u, 26602u);

var<private> global2: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(1u, 40178u, 1u), vec3<u32>(50901u, 3121u, 4294967295u));

var<private> global3: vec4<f32> = vec4<f32>(1182f, 821f, 980f, -663f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<bool> {
    global0 = Struct_2(global0.a, arg_3.b);
    var var_0 = Struct_1(-558f, _wgslsmith_f_op_vec4_f32(ceil(arg_3.a.b)), 1i, true, _wgslsmith_mult_i32(u_input.c.x, arg_3.a.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.a.b.yyx);
    var var_2 = Struct_1(_wgslsmith_div_f32(-1075f, -1883f), _wgslsmith_div_vec4_f32(arg_3.a.b, vec4<f32>(140f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.b.x, -1000f)))), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -706f))), _wgslsmith_div_i32(var_0.e, _wgslsmith_dot_vec4_i32(arg_3.b | vec4<i32>(global0.b.x, u_input.c.x, u_input.c.x, arg_3.a.c), vec4<i32>(global0.b.x, arg_1.x, global0.a.c, -1i)) >> (min(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4110u, 5u)], 0u), 1u) % 32u)), _wgslsmith_f_op_f32(var_1.x + global0.a.b.x) == 704f, -(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.a.c, -1i), u_input.c))));
    var var_3 = var_1.x;
    return arg_2;
}

fn func_2() -> Struct_2 {
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1634f, -1813f, _wgslsmith_f_op_f32(-592f - global0.a.b.x), global3.x));
    global2 = array<vec3<u32>, 2>();
    var var_0 = true;
    global3 = global0.a.b;
    var var_1 = select(func_3(true, global0.b.zx, vec2<bool>(true, false), Struct_2(global0.a, max(global0.b, vec4<i32>(1i, global0.b.x, u_input.c.x, -7276i)))), vec2<bool>(true, true), !(!func_3(true, abs(global0.b.wx), !vec2<bool>(global0.a.d, false), Struct_2(Struct_1(global3.x, vec4<f32>(global3.x, -369f, global0.a.b.x, global3.x), 2147483647i, global0.a.d, -492i), global0.b))));
    return Struct_2(Struct_1(global0.a.b.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1235f, global3.x, -1000f, -1744f))), _wgslsmith_mult_i32(countOneBits(~(-1446i)), u_input.b.x), true, -2147483647i ^ u_input.b.x), vec4<i32>(min(~u_input.b.x, u_input.b.x), u_input.c.x, i32(-1i) * -u_input.c.x, -global0.a.c ^ u_input.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    global2 = array<vec3<u32>, 2>();
    var var_0 = abs(vec4<i32>(abs(i32(-1i) * -54161i), arg_0.a.e, 2147483647i, arg_0.b.x));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f + -779f) - _wgslsmith_f_op_f32(-global0.a.a)) - global0.a.a) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3.x, 116f, arg_0.a.b.x);
    let var_1 = arg_0;
    let var_2 = ~u_input.d;
    return 553f;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(func_4(func_2(), select(!vec2<bool>(global0.a.d, false), func_3(global0.a.d, vec2<i32>(global0.a.c, 35091i), vec2<bool>(true, true), Struct_2(global0.a, vec4<i32>(-2147483647i, 6764i, -3197i, -1i))), any(vec2<bool>(true, false))), func_2(), u_input.b.zy))), vec4<f32>(_wgslsmith_f_op_f32(sign(-949f)), _wgslsmith_f_op_f32(-122f + global0.a.a), global3.x, arg_0.x), -u_input.c.x, any(vec2<bool>(!any(vec2<bool>(false, true)), global3.x != -1000f)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(firstLeadingBit(vec4<i32>(-8862i, u_input.c.x, global0.a.e, -20397i)), global0.b), vec4<i32>(5209i & global0.a.c, 1i, global0.b.x, 2147483647i), vec4<i32>(max(34280i, global0.b.x), 1i, func_2().a.c, _wgslsmith_mult_i32(global0.a.e, global0.b.x))), firstLeadingBit(global0.b)));
    global2 = array<vec3<u32>, 2>();
    return func_2();
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<f32> {
    global3 = vec4<f32>(1969f, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a.b.x, _wgslsmith_div_f32(917f, global3.x)))), _wgslsmith_f_op_f32(floor(-336f)));
    var var_0 = Struct_2(Struct_1(-1308f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1782f, -812f, 1720f, -766f) * global0.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, -313f, -886f, -304f) * vec4<f32>(global3.x, global3.x, -836f, 1419f))) - _wgslsmith_f_op_vec4_f32(-arg_2.a.b)), select(~(-31756i), -(9325i & arg_2.b.x), all(!vec4<bool>(arg_3.x, true, global0.a.d, arg_2.a.d))), arg_3.x && true, -9427i), countOneBits(-global0.b));
    let var_1 = global0.b.x;
    let var_2 = vec3<u32>(global1[_wgslsmith_index_u32(0u, 5u)], max(1u, abs(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(u_input.d.x, 0u, 74030u)))) ^ arg_1.x, arg_1.x);
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, arg_2.a.a, 875f, -997f), _wgslsmith_div_vec4_f32(global0.a.b, vec4<f32>(global0.a.a, var_0.a.a, -526f, arg_2.a.a)), select(vec4<bool>(false, arg_3.x, arg_2.a.d, false), vec4<bool>(arg_2.a.d, true, var_0.a.d, var_0.a.d), global0.a.d)))))), !arg_3.x).a.b.wzy;
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(931f, arg_2.a.a, 1044f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.b.x, global0.a.a, global3.x, -698f), vec4<f32>(global0.a.b.x, arg_2.a.a, 407f, var_0.a.b.x), false)), any(arg_3)).a.a + global3.x))));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-855f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(func_4(Struct_2(global0.a, global0.b), vec2<bool>(global0.a.d, false), Struct_2(arg_2, global0.b), global0.b.yx)), _wgslsmith_div_f32(global0.a.b.x, -1103f), _wgslsmith_f_op_f32(-1457f - arg_2.b.x))), _wgslsmith_dot_vec2_i32(u_input.c.zy, func_1(global0.a.b, any(vec2<bool>(global0.a.d, global0.a.d))).b.yz), arg_2.d, 18090i), func_1(arg_0, global0.a.d || false).b | ~_wgslsmith_mod_vec4_i32(-global0.b, _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.c, 2147483647i, 1i, arg_2.c), vec4<i32>(u_input.c.x, arg_2.c, -1i, u_input.c.x))));
    let var_1 = 49911u;
    let var_2 = Struct_1(731f, _wgslsmith_f_op_vec4_f32(var_0.a.b + _wgslsmith_f_op_vec4_f32(-var_0.a.b)), 1i, !arg_2.d, ~(-26846i));
    let var_3 = false;
    var var_4 = func_2();
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-global0.a.a)), global0.a.b.x, 1515f);
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, _wgslsmith_f_op_f32(global3.x + global0.a.a), _wgslsmith_f_op_f32(global0.a.a * -2392f), _wgslsmith_div_f32(413f, global0.a.a))) - _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x) << ((global1[_wgslsmith_index_u32(1u, 5u)] << (0u % 32u)) % 32u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(1u, 5u)], u_input.d.x) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 63726u, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(48761u, u_input.a.x, 48794u, 0u)), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1300f, 422f, global3.x, global0.a.b.x), global0.a.b), global0.a.d & global0.a.d), vec2<bool>(global0.a.d && true, all(vec2<bool>(global0.a.d, false)))))), global0.a.a, Struct_1(global3.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.a.b * global0.a.b))))), -51456i, false, abs(u_input.b.x)));
    global0 = Struct_2(func_2().a, global0.b);
    let var_1 = Struct_2(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), var_0.b.x, _wgslsmith_f_op_f32(round(-152f)), _wgslsmith_f_op_f32(step(-244f, global0.a.b.x)))), -1813f, func_2().a), ~global0.b);
    let var_2 = var_1;
    var var_3 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_vec4_f32(-global0.a.b), var_1.b.x, var_1.a.d, ~(~func_6(var_1.a.b, global0.a.b.x, Struct_1(-2407f, global0.a.b, -1i, global0.a.d, 31545i)).e)), global0.b);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-func_6(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_5(u_input.b.x, vec4<u32>(1u, 1u, 0u, u_input.a.x), var_2, vec2<bool>(true, false))).x, -236f, global3.x, -1073f), var_3.a.a, Struct_1(677f, vec4<f32>(var_0.b.x, var_3.a.b.x, 334f, global3.x), var_2.b.x, global3.x > global0.a.a, _wgslsmith_clamp_i32(-1i, var_2.b.x, -2147483647i))).a), 469f);
    let x = u_input.a;
    s_output = StorageBuffer((reverseBits(~vec3<i32>(var_3.b.x, 2147483647i, global0.b.x)) << (abs(global2[_wgslsmith_index_u32(1u, 2u)]) % vec3<u32>(32u))) << (global2[_wgslsmith_index_u32((u_input.a.x | 1u) << (~(~u_input.d.x) % 32u), 2u)] % vec3<u32>(32u)), vec4<i32>(-var_2.a.e, reverseBits(-34265i), _wgslsmith_add_i32(-(2089i << (global1[_wgslsmith_index_u32(u_input.a.x, 5u)] % 32u)), var_1.b.x), var_3.b.x), global2[_wgslsmith_index_u32(35040u, 2u)]);
}

