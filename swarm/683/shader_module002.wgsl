struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, false, false, false, false, true, true, false, true, true, true, false, true, false, false, false, true, true, true, false, false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<i32, 32>;

var<private> global3: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(596f, -257f, -525f, -3130f), vec4<f32>(1111f, 824f, 2183f, -1060f), vec4<f32>(-1154f, 121f, -1505f, -1510f), vec4<f32>(1000f, 1480f, 978f, 2422f), vec4<f32>(-1000f, -1127f, 1000f, -461f), vec4<f32>(1937f, 783f, 168f, 480f), vec4<f32>(246f, 1406f, -731f, -1731f), vec4<f32>(1524f, 810f, 501f, -724f), vec4<f32>(1040f, 317f, -854f, 1654f), vec4<f32>(-292f, -856f, -625f, -928f), vec4<f32>(1221f, -276f, -462f, 1000f), vec4<f32>(319f, -774f, -1000f, 634f), vec4<f32>(551f, -1348f, -933f, -793f), vec4<f32>(114f, -645f, 345f, -789f), vec4<f32>(1000f, -749f, -1256f, 848f), vec4<f32>(-685f, 2277f, -1000f, 773f), vec4<f32>(1795f, 948f, 1231f, -1738f), vec4<f32>(-1000f, -117f, 691f, 739f), vec4<f32>(891f, -1164f, -141f, 1520f), vec4<f32>(373f, -1183f, 164f, 403f), vec4<f32>(426f, -1000f, -503f, -438f), vec4<f32>(-671f, -1000f, 617f, 703f), vec4<f32>(-867f, -1332f, 1324f, -988f));

var<private> global4: vec4<f32> = vec4<f32>(-219f, 1019f, -1074f, 351f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = min(-abs(~2242i), -(~(-4776i))) > _wgslsmith_dot_vec2_i32(u_input.a.xy >> (vec2<u32>(18413u, 1u) % vec2<u32>(32u)), u_input.a.zx);
    var var_1 = 27644u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, global4.x, global4.x), global4.yww, false))))), global4.zww, true)));
    global3 = array<vec4<f32>, 23>();
    let var_3 = Struct_1(vec2<bool>(any(!select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], false), vec2<bool>(global0[_wgslsmith_index_u32(79852u, 25u)], global1.a.x), vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global1.a.x))), true));
    return u_input.b;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = reverseBits(func_3());
    global1 = Struct_1(!vec2<bool>(!global0[_wgslsmith_index_u32(16148u, 25u)], global0[_wgslsmith_index_u32(~abs(33084u), 25u)]));
    global4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(9098u, 35166u)), 23u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(1416f, 531f, 510f, arg_0) + _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(5753u, 23u)]))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 + -2052f), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) + global4.x), _wgslsmith_f_op_f32(-global4.x))), 408f);
    var var_2 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(select(max(87325u, 26870u), ~120493u, global1.a.x || false), ~(~1u), 6521u), ~(~vec3<u32>(1u, 1u, 1u))), 25u)], true);
    return Struct_2(~countOneBits(vec3<u32>(1u, firstTrailingBit(104u), _wgslsmith_clamp_u32(95298u, 1u, 4294967295u))), vec4<bool>(global1.a.x && global0[_wgslsmith_index_u32(1u, 25u)], false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(18957u, 0u, 4294967295u, 4294967295u)), min(vec4<u32>(4294967295u, 48021u, 48043u, 30910u), vec4<u32>(50918u, 1u, 1u, 1u))), ~countOneBits(0u)), 25u)], true), !all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(52959u, 25u)], false, false), vec4<bool>(var_2.x, true, global0[_wgslsmith_index_u32(4294967295u, 25u)], false), global0[_wgslsmith_index_u32(0u, 25u)])) && var_2.x, Struct_1(vec2<bool>(!global1.a.x, !all(vec4<bool>(true, var_2.x, true, true)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = ~vec2<u32>(arg_3, _wgslsmith_clamp_u32(18620u, arg_3 << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 1u, arg_2.a.x, arg_3), vec4<u32>(arg_2.a.x, 4294967295u, arg_2.a.x, arg_3)) % 32u), 11402u));
    let var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global4.x, 484f)), _wgslsmith_f_op_f32(ceil(global4.x)))))).b.xx);
    let var_2 = ~vec3<i32>(u_input.a.x, abs(-1i), _wgslsmith_div_i32(-max(2147483647i, -1i), 34267i));
    global2 = array<i32, 32>();
    let var_3 = _wgslsmith_div_u32(func_2(arg_0.x).a.x, 4294967295u) >= var_0.x;
    return 2147483647i;
}

fn func_5(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = func_2(-1327f).d;
    return any(!select(select(func_2(global4.x).b, vec4<bool>(var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], false, var_0.a.x), true), !select(vec4<bool>(global0[_wgslsmith_index_u32(21140u, 25u)], false, false, false), vec4<bool>(var_0.a.x, true, global0[_wgslsmith_index_u32(0u, 25u)], global1.a.x), false), func_2(_wgslsmith_f_op_f32(global4.x + -1079f)).b));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    global3 = array<vec4<f32>, 23>();
    global1 = Struct_1(global1.a);
    let var_0 = _wgslsmith_mult_vec2_u32(min(~abs(abs(vec2<u32>(701u, 70769u))), vec2<u32>(countOneBits(4294967295u), 1u)), countOneBits(_wgslsmith_sub_vec2_u32(~min(vec2<u32>(42663u, 4294967295u), vec2<u32>(4294967295u, 74290u)), vec2<u32>(0u, 1u))));
    global1 = Struct_1(!global1.a);
    var var_1 = func_5(false || global0[_wgslsmith_index_u32(countOneBits(var_0.x), 25u)], _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-9863i, u_input.b, arg_0), global2[_wgslsmith_index_u32(~52036u, 32u)]) & _wgslsmith_add_i32(u_input.b, -11146i), min(_wgslsmith_mod_i32(arg_1.x, 2147483647i >> (var_0.x % 32u)), arg_0), func_4(global4.zz, -u_input.b, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1167u)));
    return 0i;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(!(!(!(!var_0.b.zw))));
    var var_2 = any(var_0.d.a);
    let var_3 = _wgslsmith_div_vec4_i32(select(firstLeadingBit(vec4<i32>(1i, firstTrailingBit(global2[_wgslsmith_index_u32(3001u, 32u)]), global2[_wgslsmith_index_u32(arg_1.a.x, 32u)], 1i)), vec4<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(46483u, 32u)], -4265i), _wgslsmith_dot_vec4_i32(vec4<i32>(-59597i, 2147483647i, u_input.a.x, arg_0.x), vec4<i32>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(var_0.a.x, 32u)], 5256i, -21250i)), 1i, arg_0.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) ^ vec4<u32>(var_0.a.x, 0u, arg_1.a.x, arg_1.a.x), max(vec4<u32>(0u, 0u, 22534u, 1u), vec4<u32>(arg_1.a.x, var_0.a.x, 12285u, arg_1.a.x))) % vec4<u32>(32u)), any(vec2<bool>(var_0.c, arg_1.c))), firstLeadingBit(vec4<i32>(33885i, arg_0.x, 1i, firstTrailingBit(-arg_0.x))));
    global1 = Struct_1(select(global1.a, vec2<bool>(all(vec2<bool>(var_0.b.x, true)), arg_1.d.a.x), vec2<bool>(!global1.a.x, false)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_sub_vec3_i32(-vec3<i32>(-11440i, func_1(9579i, u_input.a), u_input.a.x), u_input.a), Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(30708u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<bool>(global0[_wgslsmith_index_u32(63816u, 25u)], global1.a.x, true)), ~vec3<u32>(20071u, 19040u, 0u)), vec3<u32>(_wgslsmith_div_u32(0u, 4294967295u), ~0u, ~0u)), select(select(func_2(global4.x).b, select(vec4<bool>(global1.a.x, true, global0[_wgslsmith_index_u32(15341u, 25u)], global0[_wgslsmith_index_u32(77068u, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true, global0[_wgslsmith_index_u32(4294967295u, 25u)], true), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)), u_input.a.x != 0i), select(select(vec4<bool>(global0[_wgslsmith_index_u32(78017u, 25u)], false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(77650u, 25u)], false, global0[_wgslsmith_index_u32(41974u, 25u)], true), global1.a.x), !vec4<bool>(false, global0[_wgslsmith_index_u32(5804u, 25u)], false, true), vec4<bool>(global1.a.x, global1.a.x, true, global0[_wgslsmith_index_u32(50042u, 25u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(39614u, 25u)], global1.a.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], true), func_2(-1417f).b, select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(true, true, global1.a.x, global1.a.x), global0[_wgslsmith_index_u32(44556u, 25u)]))), ~1u >= select(0u, reverseBits(49933u), global1.a.x), Struct_1(global1.a)));
    var var_1 = (u_input.a.xy | u_input.a.xy) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_add_i32(5445i, 31196i)), select(u_input.b, u_input.a.x, global1.a.x) ^ select(-31484i, 1063i, false)), ~abs(~vec2<i32>(-77220i, 0i)));
    var var_2 = Struct_2(vec3<u32>(countOneBits(_wgslsmith_mod_u32(4294967295u, abs(4294967295u))), 0u, 1u), vec4<bool>(any(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(128470u, 25u)], true)), any(vec2<bool>(global1.a.x, false)), true, all(vec3<bool>(false, true, true)))), false, all(!vec2<bool>(global1.a.x, global0[_wgslsmith_index_u32(40698u, 25u)])), global0[_wgslsmith_index_u32(max(abs(1u), 1u), 25u)]), true != global0[_wgslsmith_index_u32(reverseBits(~81385u) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(76509u, 4294967295u, 60883u)), 25u)], func_2(_wgslsmith_f_op_f32(global4.x + -332f)).d);
    global3 = array<vec4<f32>, 23>();
    global3 = array<vec4<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(40308u, 1u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(global4.x, 159f), _wgslsmith_f_op_f32(f32(-1f) * -489f), global4.x))))), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.a, var_2.a), var_2.a.x) % vec2<u32>(32u))), -68342i, (vec4<i32>(~var_1.x, u_input.a.x, global2[_wgslsmith_index_u32(var_2.a.x, 32u)], 40401i) | (reverseBits(vec4<i32>(var_1.x, global2[_wgslsmith_index_u32(0u, 32u)], var_1.x, u_input.b)) >> (vec4<u32>(1u, var_2.a.x, var_2.a.x, var_2.a.x) % vec4<u32>(32u)))) | _wgslsmith_add_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-6117i, var_1.x, -20101i, u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(var_2.a.x, 32u)], var_1.x, 1i, global2[_wgslsmith_index_u32(var_2.a.x, 32u)]))), select(-vec4<i32>(u_input.a.x, 7817i, -2147483647i, 61158i), vec4<i32>(-2147483647i, 27488i, -43002i, -8712i) & vec4<i32>(1i, -35749i, u_input.b, -41632i), all(global1.a))));
}

