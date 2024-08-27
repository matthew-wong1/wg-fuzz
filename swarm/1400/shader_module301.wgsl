struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, false, false, false, true, false, false, false, true, false, true, true, false);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec4<f32>(-1899f, -306f, 256f, 237f))), Struct_2(Struct_1(vec4<f32>(1087f, 2256f, 1000f, 769f))), Struct_2(Struct_1(vec4<f32>(334f, 1006f, -490f, -408f))), Struct_2(Struct_1(vec4<f32>(274f, -1015f, 376f, -1249f))), Struct_2(Struct_1(vec4<f32>(583f, 395f, 1000f, 350f))), Struct_2(Struct_1(vec4<f32>(679f, -674f, 514f, 1182f))), Struct_2(Struct_1(vec4<f32>(257f, 865f, 1196f, 1049f))), Struct_2(Struct_1(vec4<f32>(599f, -1534f, 850f, -293f))), Struct_2(Struct_1(vec4<f32>(-2144f, 513f, -910f, 2359f))), Struct_2(Struct_1(vec4<f32>(-1099f, 881f, 1204f, 1248f))), Struct_2(Struct_1(vec4<f32>(-1000f, 243f, 609f, -190f))), Struct_2(Struct_1(vec4<f32>(869f, 165f, -1780f, -1614f))), Struct_2(Struct_1(vec4<f32>(2192f, 145f, 695f, 774f))), Struct_2(Struct_1(vec4<f32>(-220f, -2680f, 139f, -233f))), Struct_2(Struct_1(vec4<f32>(584f, 734f, 615f, 1832f))), Struct_2(Struct_1(vec4<f32>(607f, 1000f, 1527f, -1115f))), Struct_2(Struct_1(vec4<f32>(-1000f, 1764f, -100f, -281f))), Struct_2(Struct_1(vec4<f32>(-1000f, 2148f, -953f, -617f))));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1026f, 1003f, 761f, -1096f)));

var<private> global3: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(12454u, 1u, 72934u, 28926u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(1u, 48208u, 63828u, 1u), vec4<u32>(27589u, 1u, 10741u, 1u), vec4<u32>(1u, 3172u, 27872u, 45298u), vec4<u32>(35212u, 1u, 0u, 39572u), vec4<u32>(0u, 53721u, 14152u, 4294967295u), vec4<u32>(27028u, 1u, 22641u, 52196u), vec4<u32>(40817u, 3817u, 1u, 19205u), vec4<u32>(1u, 0u, 11344u, 4294967295u), vec4<u32>(1u, 1u, 57757u, 60529u), vec4<u32>(4294967295u, 7079u, 4294967295u, 35318u), vec4<u32>(73935u, 1u, 4294967295u, 21577u), vec4<u32>(4294967295u, 34326u, 1u, 60340u), vec4<u32>(55472u, 1u, 4294967295u, 44651u), vec4<u32>(1u, 1u, 4294967295u, 11038u), vec4<u32>(4294967295u, 95617u, 0u, 4294967295u), vec4<u32>(18955u, 0u, 4294967295u, 4294967295u), vec4<u32>(22507u, 65687u, 19849u, 5088u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 43172u), vec4<u32>(3976u, 37049u, 75748u, 65979u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(18184u, 99605u, 4294967295u, 0u), vec4<u32>(1u, 50129u, 0u, 14131u), vec4<u32>(4294967295u, 0u, 28858u, 14371u), vec4<u32>(1634u, 30955u, 0u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1421f, _wgslsmith_f_op_f32(ceil(arg_0)), global2.a.a.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, 128f, -635f), vec4<f32>(-1690f, 644f, -1637f, arg_2.a.a.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(22399u, 14u)], true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1792f, arg_0, 630f, arg_2.a.a.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2.a.a)) * _wgslsmith_f_op_vec4_f32(-var_0.a)) + _wgslsmith_f_op_vec4_f32(-arg_2.a.a))));
    let var_2 = arg_2.a;
    var_1 = arg_2.a;
    var var_3 = Struct_1(vec4<f32>(var_1.a.x, global2.a.a.x, global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.a.x, var_1.a.x)))));
    return vec3<bool>(true && (all(vec3<bool>(global0[_wgslsmith_index_u32(18171u, 14u)], global0[_wgslsmith_index_u32(arg_1.x, 14u)], global0[_wgslsmith_index_u32(arg_1.x, 14u)])) != false), !(global0[_wgslsmith_index_u32(~abs(74851u), 14u)] && !any(vec2<bool>(true, global0[_wgslsmith_index_u32(39994u, 14u)]))), false);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec3_u32(select(arg_0, arg_0, !func_3(-1323f, arg_0, Struct_2(Struct_1(global2.a.a)))), _wgslsmith_clamp_vec3_u32(arg_0, ~select(vec3<u32>(arg_0.x, arg_0.x, 81130u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(47753u, 74920u), 14u)]), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), vec3<u32>(_wgslsmith_div_u32(30458u, arg_0.x), 68907u, _wgslsmith_clamp_u32(arg_0.x, 22756u, 19167u)))));
    let var_2 = global2.a;
    var var_3 = Struct_2(global2.a);
    let var_4 = reverseBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(56424u, arg_0.x), 35858u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(var_1.x, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)]), abs(arg_0.x)), firstLeadingBit(vec4<u32>(4294967295u, 29499u, var_1.x, arg_0.x)))));
    return firstTrailingBit(51101u);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 1u, 4294967295u), arg_1), vec3<u32>(1u, 1250u, 1u)), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 0u, 16902u)), _wgslsmith_div_f32(1163f, arg_0.a.x)), _wgslsmith_div_u32(4294967295u, 8885u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(10999u, 85890u), vec2<u32>(1u, 0u)) % 32u)) >> (~vec3<u32>(~0u, _wgslsmith_div_u32(1u, 13047u), _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(38206u, 26u)], vec4<u32>(4294967295u, 73242u, 30393u, 1u))) % vec3<u32>(32u)));
    var var_1 = u_input.a.x;
    global3 = array<vec4<u32>, 26>();
    global0 = array<bool, 14>();
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.yyy, min(u_input.a.zzy, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 27779i)))), u_input.a.yyw);
    return global1[_wgslsmith_index_u32(29041u, 18u)];
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    let var_0 = firstTrailingBit(~_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(abs(1u), 26u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 53856u, 0u, 4294967295u), global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)]))) & ~(~3499u);
    global2 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.a.a, arg_2) * arg_2) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(774f, arg_1.a.a.x, 1778f, 207f)), vec4<f32>(arg_2.x, -1000f, 293f, 1391f), all(vec2<bool>(true, true)))))), func_3(arg_1.a.a.x, ~vec3<u32>(1u, 0u, firstTrailingBit(1u)), func_1(global2.a, global0[_wgslsmith_index_u32(~min(var_0, 0u), 14u)])).x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = -79573i;
    var var_2 = !func_4(false, func_1(global2.a, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, global2.a.a.x, -104f, global2.a.a.x))));
    global1 = array<Struct_2, 18>();
    var var_3 = select(~(~abs(~vec3<u32>(0u, 1u, 1u))), abs(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(110702u, 1u, 60933u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1851u, 43396u, 71606u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), max(vec3<u32>(4294967295u, 1u, 5128u), vec3<u32>(39759u, 1u, 4294967295u)))), !vec3<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 24466u), 14u)], global0[_wgslsmith_index_u32(~(~32470u), 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.a.x, _wgslsmith_mod_u32(26197u, var_3.x << (42804u % 32u)), firstLeadingBit(~(-1i)));
}

