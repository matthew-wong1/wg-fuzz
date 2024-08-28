struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: vec2<u32> = vec2<u32>(52285u, 58729u);

var<private> global3: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec4<bool> {
    global3 = Struct_1(_wgslsmith_f_op_f32(round(global3.a)), global3.b, vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(-2147483647i, u_input.b), _wgslsmith_sub_i32((global3.c.x | u_input.a) ^ ~0i, -countOneBits(global3.c.x)), ~abs(_wgslsmith_div_i32(u_input.b, 690i)), global3.c.x), ~(global2.x & global0[_wgslsmith_index_u32(44368u, 14u)]), vec4<bool>(max(_wgslsmith_clamp_i32(-2664i, 2147483647i, global3.c.x), _wgslsmith_div_i32(-35392i, -4390i)) >= -2147483647i, global3.b.x, false || !(0i != u_input.a), true));
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(arg_1.yy));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(162f))), global1[_wgslsmith_index_u32(~global2.x, 5u)], -(~select(~vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2867i, global3.c.x, u_input.a, -2147483647i), vec4<i32>(global3.c.x, global3.c.x, u_input.a, global3.c.x)), !global1[_wgslsmith_index_u32(3606u, 5u)])), _wgslsmith_add_u32(~abs(countOneBits(global3.d)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 14u)], 1u, 34948u), vec3<u32>(0u, global2.x, global2.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(global2.x, global3.d, 28371u), vec3<u32>(1u, global2.x, global2.x)))), select(vec4<bool>(global3.b.x, all(vec4<bool>(global3.e.x, true, true, global3.b.x)) == true, global3.b.x, global3.b.x), vec4<bool>(all(global3.e.zx) || (41025i <= global3.c.x), any(global1[_wgslsmith_index_u32(4294967295u, 5u)]), false, true), select(!vec4<bool>(global3.e.x, global3.b.x, false, false), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(60404u, 8243u), vec2<u32>(35645u, global0[_wgslsmith_index_u32(global3.d, 14u)])), 14u)], 5u)], false)));
    var var_2 = u_input.b | abs(var_1.c.x);
    global1 = array<vec4<bool>, 5>();
    return !(!vec4<bool>(any(!global3.e.xwy), true, !all(vec4<bool>(global3.e.x, global3.b.x, true, var_1.b.x)), var_1.e.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> bool {
    var var_0 = 1136f;
    let var_1 = arg_1.c.yz;
    let var_2 = global3.b.x;
    var var_3 = ~reverseBits(~abs(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 14u)], 1u, global3.d)));
    var var_4 = Struct_1(-221f, !vec4<bool>(!global3.b.x, true, true, all(!global3.e.wyw)), firstTrailingBit(vec4<i32>(arg_3, arg_2.x, min(reverseBits(arg_3), _wgslsmith_sub_i32(-19740i, -38118i)), countOneBits(_wgslsmith_add_i32(global3.c.x, -1i)))), ~4294967295u, !(!select(select(vec4<bool>(global3.b.x, global3.b.x, true, false), vec4<bool>(global3.b.x, false, arg_1.e.x, global3.e.x), global3.b), vec4<bool>(global3.e.x, arg_1.e.x, false, true), vec4<bool>(arg_1.b.x, false, true, global3.e.x))));
    return !(_wgslsmith_f_op_f32(abs(var_4.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.a)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(1489f, -403f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(619f))))), vec4<bool>(!(_wgslsmith_mod_i32(2147483647i, u_input.b) <= -8560i), !all(select(vec4<bool>(false, true, global3.e.x, global3.e.x), global1[_wgslsmith_index_u32(arg_2, 5u)], false)), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-328f)), _wgslsmith_f_op_f32(global3.a + arg_1.x), arg_1.x >= arg_1.x)), Struct_1(_wgslsmith_f_op_f32(abs(-414f)), func_3(vec2<f32>(global3.a, global3.a), vec4<f32>(540f, -1099f, global3.a, arg_1.x), vec2<f32>(arg_1.x, 1789f)), _wgslsmith_sub_vec4_i32(global3.c, global3.c), ~global0[_wgslsmith_index_u32(global3.d, 14u)], global1[_wgslsmith_index_u32(0u, 5u)]), global3.c.yy, -(i32(-1i) * -27669i)), all(func_3(vec2<f32>(arg_1.x, arg_1.x), vec4<f32>(global3.a, global3.a, 1476f, -534f), vec2<f32>(-2460f, 1000f)).xww) & !(true & arg_0)), abs(abs(vec4<i32>(global3.c.x, u_input.a, -13276i, 0i) & (global3.c | vec4<i32>(-14950i, -1i, global3.c.x, -1i)))), 1u, vec4<bool>(global3.b.x, false, global3.e.x, !(!global3.e.x)));
    let var_1 = arg_1.x;
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2150f))), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), var_1) * arg_1.yz), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-150f)), _wgslsmith_f_op_f32(-arg_1.x))), -918f, _wgslsmith_div_f32(-2300f, global3.a), _wgslsmith_f_op_f32(-var_1)), vec2<f32>(-485f, global3.a)), abs(reverseBits(vec4<i32>(u_input.b, _wgslsmith_sub_i32(23793i, 51290i), _wgslsmith_dot_vec2_i32(global3.c.yw, global3.c.zw), -u_input.b))), 1u, func_3(vec2<f32>(var_1, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(var_1, arg_1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1263f, var_0.a, var_0.a) * vec4<f32>(var_0.a, 429f, arg_1.x, global3.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, -1300f, 986f, global3.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-452f, -301f), vec2<f32>(global3.a, arg_1.x))))))));
    global1 = array<vec4<bool>, 5>();
    var var_2 = global3.b;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1480f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1610f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -405f))))), select(!func_3(_wgslsmith_f_op_vec2_f32(abs(arg_1.yz)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1266f, -1071f, var_0.a, global3.a), vec4<f32>(189f, var_1, -1000f, -978f), false)), arg_1.yy), vec4<bool>(arg_0 || any(vec4<bool>(true, global3.b.x, true, true)), any(var_2.wyy), _wgslsmith_div_u32(var_0.d, var_0.d) >= 0u, all(vec2<bool>(var_2.x, arg_0))), var_2.x), ~global3.c, ~9680u, select(func_3(arg_1.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 231f, arg_1.x, global3.a)) * vec4<f32>(-141f, var_1, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, -841f)) * vec2<f32>(-1000f, -246f))), !vec4<bool>(true, any(global1[_wgslsmith_index_u32(var_0.d, 5u)]), global2.x >= 33979u, any(vec3<bool>(arg_0, false, global3.b.x))), !vec4<bool>(true, any(vec3<bool>(global3.b.x, false, false)), !var_0.b.x, all(vec2<bool>(true, true)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    global3 = arg_1;
    var var_0 = func_2(arg_3 & func_2(arg_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 1582f, global3.a) + vec3<f32>(global3.a, 887f, 304f)), global2.x).e.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, arg_1.a, global3.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-688f, arg_1.a, global3.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a, arg_1.a, 1390f))))))), 0u << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global3.d) ^ vec2<u32>(arg_2, arg_2), vec2<u32>(arg_1.d, arg_1.d), ~vec2<u32>(68835u, 11887u)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(11119u, 4294967295u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 14u)])), vec2<u32>(arg_2, global2.x))) % 32u));
    global1 = array<vec4<bool>, 5>();
    var var_1 = 1u < global3.d;
    var var_2 = Struct_1(-1525f, vec4<bool>(false, var_0.e.x, all(func_3(vec2<f32>(386f, global3.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 621f, var_0.a, 2391f)), vec2<f32>(-211f, arg_1.a)).wyz), !(!global3.b.x)), vec4<i32>(_wgslsmith_add_i32(arg_0.x, ~firstTrailingBit(1i)), 26753i, abs(arg_0.x) & -(2147483647i | arg_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.c.xxy, vec3<i32>(-1i, arg_1.c.x, arg_0.x)), _wgslsmith_mod_i32(arg_1.c.x, -2147483647i))), abs(abs(firstLeadingBit(var_0.d))), !global3.e);
    return Struct_1(var_2.a, !(!vec4<bool>(func_2(var_0.e.x, vec3<f32>(2995f, 1000f, -266f), 65053u).b.x, false, all(vec4<bool>(global3.b.x, true, true, global3.b.x)), any(vec4<bool>(var_0.b.x, false, true, arg_3)))), var_0.c, firstTrailingBit(~_wgslsmith_div_u32(firstTrailingBit(22793u), var_0.d << (arg_1.d % 32u))), func_2(~(-43367i) <= _wgslsmith_mult_i32(_wgslsmith_sub_i32(62810i, -17345i), ~u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a, 1026f, -464f)))))), min(min(global3.d, arg_2), var_0.d) << (~(var_2.d << (arg_2 % 32u)) % 32u)).e);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = func_5(global3.c.yw, func_2(true, vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - 1543f) + _wgslsmith_f_op_f32(max(global3.a, arg_0.a))), -319f), 7868u), ~min(16534u, 1u), true);
    var var_1 = _wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.d), _wgslsmith_sub_vec3_u32(vec3<u32>(10451u, global0[_wgslsmith_index_u32(1u, 14u)], arg_0.d), vec3<u32>(4294967295u, 0u, global3.d))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(19946u, 4473u, 44713u), vec3<u32>(global0[_wgslsmith_index_u32(3563u, 14u)], 0u, 43739u))) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, 54777u, global0[_wgslsmith_index_u32(1u, 14u)]) | vec3<u32>(arg_0.d, 68781u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global2.x, global2.x), vec3<u32>(0u, global3.d, arg_0.d))), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~var_0.d, 14u)], 14u)], max(48715u, 0u), ~4294967295u)) % vec3<u32>(32u)), ~(~(~vec3<u32>(4294967295u, 10807u, global2.x) ^ vec3<u32>(global0[_wgslsmith_index_u32(43845u, 14u)], global0[_wgslsmith_index_u32(var_0.d, 14u)], 48450u))));
    let var_2 = abs(vec2<u32>(~1u, global3.d));
    let var_3 = func_2(false, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1927f, _wgslsmith_f_op_f32(sign(1201f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(global3.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(1191f, -800f, global3.a), vec3<f32>(arg_0.a, var_0.a, global3.a))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.a - var_0.a), -242f, 307f)))), 35969u);
    var var_4 = func_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, func_2(false, vec3<f32>(-1686f, 1000f, 483f), 4294967295u).a, -690f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, var_0.a, 1067f) + vec3<f32>(2071f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(569f, arg_0.a, 1280f), vec3<f32>(1699f, -959f, arg_0.a), false)), func_5(vec2<i32>(-2779i, var_0.c.x), Struct_1(1979f, arg_0.e, vec4<i32>(arg_0.c.x, 38846i, 2147483647i, var_3.c.x), 27608u, vec4<bool>(var_0.b.x, var_3.b.x, false, var_3.b.x)), global2.x, true).e.ywz)), true))), select(~select(global2.x | 11215u, ~18972u, true), 1u << (_wgslsmith_sub_u32(global3.d, global3.d) % 32u), false));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(global3.a, _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(round(-188f))), global3.e.x));
    global2 = _wgslsmith_clamp_vec2_u32(~countOneBits(_wgslsmith_add_vec2_u32(max(vec2<u32>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<u32>(global0[_wgslsmith_index_u32(global3.d, 14u)], 1u)), abs(vec2<u32>(34785u, global2.x)))), vec2<u32>(25199u, 13714u), firstTrailingBit(_wgslsmith_sub_vec2_u32((vec2<u32>(1u, global3.d) ^ vec2<u32>(0u, global3.d)) & ~vec2<u32>(global3.d, global0[_wgslsmith_index_u32(1u, 14u)]), func_1(Struct_1(-855f, vec4<bool>(false, true, global3.b.x, global3.b.x), vec4<i32>(-489i, global3.c.x, 1i, -1i), global2.x, global1[_wgslsmith_index_u32(24972u, 5u)])) ^ firstLeadingBit(vec2<u32>(4294967295u, 96901u)))));
    global1 = array<vec4<bool>, 5>();
    let var_1 = Struct_1(-271f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(12073u, 21929u, 4294967295u))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 14u)], global3.d, global2.x), vec3<u32>(1u, 44692u, global3.d)))), 5u)], -max(global3.c, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-57184i, u_input.b, u_input.b, 0i), global3.c))), 1u, !vec4<bool>(343f == _wgslsmith_f_op_f32(-var_0), global3.b.x, global3.e.x, all(global1[_wgslsmith_index_u32(global2.x, 5u)])));
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(~0i, ~(var_1.c.x | 0i), -u_input.b >> (global2.x % 32u)), firstTrailingBit(-(~vec3<i32>(-12089i, -37449i, -20641i)) ^ ~vec3<i32>(global3.c.x, global3.c.x, 2147483647i)));
    var var_4 = var_3.x;
    global1 = array<vec4<bool>, 5>();
    let var_5 = ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(~(vec4<u32>(global2.x, global0[_wgslsmith_index_u32(18615u, 14u)], 1u, var_1.d) & vec4<u32>(global3.d, 27270u, global3.d, global3.d))), vec4<u32>(_wgslsmith_div_u32(0u, ~global2.x), ~(~4294967295u), ~_wgslsmith_mod_u32(0u, global2.x), ~_wgslsmith_div_u32(global2.x, global3.d)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, global3.d, 51041u, 24942u) >> (vec4<u32>(1u, 0u, 20410u, 1u) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, var_1.d, global2.x, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(reverseBits(~var_5.ww), vec2<u32>(global2.x, var_5.x), vec2<u32>(var_1.d, 1u)), ~var_5.wyy);
}

