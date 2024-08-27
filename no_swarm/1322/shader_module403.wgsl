struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<f32>(-165f, 352f, -729f), 129904u), Struct_3(vec3<f32>(-1327f, 384f, 946f), 0u), Struct_3(vec3<f32>(-959f, 123f, -542f), 3930u), Struct_3(vec3<f32>(860f, -1000f, 1762f), 1u), Struct_3(vec3<f32>(-2026f, 507f, 1465f), 0u), Struct_3(vec3<f32>(-2308f, -1087f, 1073f), 31294u), Struct_3(vec3<f32>(636f, -870f, 642f), 1u), Struct_3(vec3<f32>(-332f, -351f, 473f), 9328u), Struct_3(vec3<f32>(305f, -1000f, 155f), 33407u), Struct_3(vec3<f32>(-1150f, 1234f, 1083f), 1u), Struct_3(vec3<f32>(242f, -1034f, -1316f), 0u), Struct_3(vec3<f32>(353f, -482f, 395f), 4294967295u), Struct_3(vec3<f32>(742f, 284f, -226f), 59337u), Struct_3(vec3<f32>(426f, 1117f, -1548f), 4294967295u), Struct_3(vec3<f32>(-1000f, -1222f, -1000f), 54993u), Struct_3(vec3<f32>(698f, 1097f, 104f), 0u), Struct_3(vec3<f32>(840f, 1024f, 520f), 1u), Struct_3(vec3<f32>(769f, 1049f, 158f), 4294967295u), Struct_3(vec3<f32>(-1121f, 626f, -1407f), 0u), Struct_3(vec3<f32>(-1488f, -219f, 1444f), 6704u), Struct_3(vec3<f32>(716f, -871f, -121f), 1u), Struct_3(vec3<f32>(811f, -238f, -1356f), 18419u), Struct_3(vec3<f32>(572f, 500f, -964f), 1u), Struct_3(vec3<f32>(-224f, -481f, 264f), 0u), Struct_3(vec3<f32>(665f, 1789f, -924f), 4294967295u), Struct_3(vec3<f32>(-647f, -518f, 1588f), 4294967295u), Struct_3(vec3<f32>(-452f, 240f, 264f), 16915u), Struct_3(vec3<f32>(682f, -184f, -400f), 68737u), Struct_3(vec3<f32>(-1460f, -1000f, 2638f), 4294967295u), Struct_3(vec3<f32>(237f, 1291f, -1188f), 98351u), Struct_3(vec3<f32>(-1191f, 280f, 148f), 53945u));

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(735f, -1000f, -205f), 20682u);

var<private> global3: array<f32, 8> = array<f32, 8>(859f, 510f, 1000f, -112f, -204f, 1000f, -325f, -618f);

var<private> global4: array<u32, 25> = array<u32, 25>(10212u, 4294967295u, 66076u, 0u, 4294967295u, 1u, 0u, 0u, 1u, 0u, 18441u, 1u, 0u, 2773u, 0u, 0u, 64844u, 0u, 4927u, 40148u, 1u, 0u, 57423u, 3452u, 29666u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global3 = array<f32, 8>();
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(4294967295u, 25u)] | global4[_wgslsmith_index_u32(87526u, 25u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.b, 25u)], 25u)], 4294967295u) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 103982u, global2.b), vec4<u32>(6609u, arg_0.b, u_input.a, arg_0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, global4[_wgslsmith_index_u32(61944u, 25u)], 17804u, arg_0.b), vec4<u32>(global2.b, 9565u, arg_0.b, 0u)) << (vec4<u32>(global4[_wgslsmith_index_u32(global2.b, 25u)], global4[_wgslsmith_index_u32(25250u, 25u)], u_input.b.x, 103138u) % vec4<u32>(32u)))) & ~(~select(~76703u, 50787u, true)), 25u)];
    let var_1 = _wgslsmith_sub_vec3_i32(select(max(_wgslsmith_div_vec3_i32(-vec3<i32>(-21962i, 19026i, 7996i), vec3<i32>(2147483647i, -2147483647i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(5043i, -5154i, 0i)))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), -reverseBits(vec3<i32>(1i, 2147483647i, 32471i))), false == (any(arg_0.e.a.zy) != any(arg_0.d.a.yx))), ~(-vec3<i32>(1i, 1i, 1i)));
    var var_2 = global3[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(71227u, 24985u & ~u_input.a)), 8u)];
    var var_3 = arg_0.a.a;
    return -firstTrailingBit(var_1.x) << (1u % 32u);
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = vec4<i32>(abs(1i), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, 67568i, 38983i, -2147483647i)), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 32523i), vec2<i32>(-16734i, -14271i)), func_3(Struct_2(Struct_1(vec3<bool>(false, true, arg_0)), u_input.b.x, 1157f, Struct_1(vec3<bool>(arg_0, arg_0, true)), Struct_1(vec3<bool>(false, false, true)))), abs(_wgslsmith_mult_i32(-28086i, 37072i)), _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, -1i), _wgslsmith_mult_i32(-5323i, -1i)))), _wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(2147483647i, 19451i, 0i))), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(83908i, 4321i, 1i)), vec3<i32>(-24502i, 8964i, -21742i)), -reverseBits(77821i))), -2147483647i);
    var var_1 = 628f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2081u, 25u)], 8u)])), 1f, 11059i > var_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 8u)], global2.a.x)) + global3[_wgslsmith_index_u32(firstTrailingBit(9284u) | u_input.a, 8u)])) < _wgslsmith_f_op_f32(-848f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1564f + global2.a.x))));
    let var_3 = Struct_2(Struct_1(!select(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, true, false), vec3<bool>(true, arg_0, true)), select(vec3<bool>(true, true, false), vec3<bool>(arg_0, arg_0, arg_0), true), select(vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29584u, 18005u, 0u, 0u), vec4<u32>(u_input.a, 8788u, global4[_wgslsmith_index_u32(u_input.b.x, 25u)], global4[_wgslsmith_index_u32(global2.b, 25u)])), 8u)]))), global2.a.x), Struct_1(!(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, false), vec3<bool>(arg_0, false, arg_0)))), Struct_1(select(select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false))), vec3<bool>(true, true, true), arg_0)));
    var var_4 = var_3.b;
    return var_0.yw;
}

fn func_1() -> vec4<f32> {
    global4 = array<u32, 25>();
    global4 = array<u32, 25>();
    var var_0 = func_2(true);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(1595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3034f) + _wgslsmith_f_op_f32(f32(-1f) * -747f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650f + _wgslsmith_f_op_f32(trunc(-449f))) * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.b, 8u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b, 8u)]))), 1098f);
    global2 = global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.b ^ abs(u_input.b), abs(~(vec3<u32>(global4[_wgslsmith_index_u32(global2.b, 25u)], global4[_wgslsmith_index_u32(1u, 25u)], global4[_wgslsmith_index_u32(0u, 25u)]) ^ vec3<u32>(27423u, global2.b, u_input.a)))), ~select(u_input.b, ~vec3<u32>(0u, 1u, 0u), (global4[_wgslsmith_index_u32(4294967295u, 25u)] <= u_input.b.x) | (var_0.x != var_0.x))), 25u)], 31u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, global2.a.x, -1000f, var_1.x)) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1094f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -210f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -780f, global2.a.x, 281f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(global2.b, 8u)], global2.a.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -352f), global2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 25>();
    global0 = array<Struct_3, 31>();
    var var_0 = -1773f;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    global1 = array<vec2<u32>, 12>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~global2.b, 0u), ~reverseBits(4294967295u), 4294967295u) >> (~vec3<u32>(abs(u_input.a), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 17052u, u_input.b.x), 25u)], u_input.a & 81883u) % vec3<u32>(32u)), u_input.b), 31u)];
    global4 = array<u32, 25>();
    var var_2 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-940f, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]))) * vec2<f32>(636f, 1583f)) - var_1.wz))), 0i >> (0u % 32u), var_1.x);
}

