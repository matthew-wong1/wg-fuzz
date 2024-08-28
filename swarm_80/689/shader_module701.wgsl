struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<vec2<i32>, 5>;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(false, false), 2147483647i, Struct_2(vec2<i32>(-55366i, 26343i)));

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    global0 = array<i32, 11>();
    let var_0 = Struct_4(global2.c, Struct_1(vec3<u32>(~global3.a.x, firstLeadingBit(0u), global3.a.x)), Struct_3(select(global2.a, vec2<bool>(any(vec3<bool>(false, global2.a.x, global2.a.x)), 1i >= u_input.a), global2.a), ~(~(-7698i)), Struct_2(vec2<i32>(31470i, global2.b))));
    var var_1 = Struct_3(select(select(!vec2<bool>(true, global2.a.x), !global2.a, any(select(vec3<bool>(global2.a.x, var_0.c.a.x, true), vec3<bool>(global2.a.x, false, var_0.c.a.x), vec3<bool>(true, global2.a.x, false)))), !global2.a, !var_0.c.a.x), -70291i, Struct_2(-_wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(var_0.b.a.x << (1u % 32u), 5u)], firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(var_0.b.a.x, 11u)], 2147483647i)))));
    var var_2 = select(vec4<bool>(~0u >= _wgslsmith_sub_u32(~76760u, _wgslsmith_sub_u32(var_0.b.a.x, global3.a.x)), (global3.a.x ^ min(var_0.b.a.x, var_0.b.a.x)) > min(var_0.b.a.x, 1u), any(!(!var_1.a)), var_0.c.a.x), vec4<bool>(((var_1.a.x && var_1.a.x) || true) != global2.a.x, var_1.a.x, any(vec4<bool>(!var_0.c.a.x, global2.a.x, true, true)), select((2147483647i != var_1.b) || all(vec2<bool>(var_1.a.x, var_0.c.a.x)), global2.a.x, true)), var_0.c.a.x);
    var var_3 = u_input.a;
    return ~reverseBits(vec3<u32>(31588u, global3.a.x | 11050u, _wgslsmith_clamp_u32(var_0.b.a.x, 4294967295u, var_0.b.a.x))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global3.a >> (vec3<u32>(global3.a.x, 1u, 41207u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~var_0.b.a, vec3<u32>(var_0.b.a.x, 153571u, var_0.b.a.x))), var_0.b.a) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> Struct_5 {
    global2 = Struct_3(global2.a, global2.b, Struct_2(countOneBits(vec2<i32>(global2.b, -31846i) | min(vec2<i32>(28765i, -1i), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_1.x, 11u)])))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(986f - 1331f)) - -2280f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2102f, 694f)) - _wgslsmith_f_op_f32(f32(-1f) * -862f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(383f, 211f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(682f, 170f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-127f - -1776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(886f, -270f, global2.a.x))))));
    var var_1 = Struct_5(Struct_1(abs(max(_wgslsmith_div_vec3_u32(global3.a, global3.a), global3.a))), global2.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2097f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(-204f * _wgslsmith_f_op_f32(201f - 1490f)))));
    var var_2 = true;
    return Struct_5(Struct_1(firstLeadingBit(func_3())), var_1.b);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = vec4<bool>(true, global2.a.x, true, true);
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global4 = ~(~func_2(select(0u, global3.a.x, false), ~global3.a.yz, ~arg_0.b.a.x).a.a.x & arg_0.a.a.x);
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-33222i, global2.c.a.x) << (vec2<u32>(52501u, 0u) % vec2<u32>(32u)), global2.c.a), -arg_0.b.a.x), 0i, (u_input.a << (reverseBits(firstTrailingBit(17812u)) % 32u)) << (arg_0.a.a.x % 32u), u_input.a);
    return var_0.wwx;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = any(func_4(func_2(4294967295u, firstTrailingBit(~global3.a.zz), arg_0 & (global2.c.a.x ^ u_input.a)), 46850i & (-1726i >> (reverseBits(global3.a.x) % 32u)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global2.c.a.x, 0i), vec3<i32>(-1i, global0[_wgslsmith_index_u32(32847u, 11u)], global2.b))) << (global3.a % vec3<u32>(32u))));
    let var_1 = Struct_3(func_4(func_2(~(~0u), ~(~vec2<u32>(global3.a.x, global3.a.x)), -(i32(-1i) * -2823i)), 67546i, firstTrailingBit(-vec3<i32>(u_input.a, arg_0, 32667i))).zz, abs(countOneBits(global0[_wgslsmith_index_u32(149587u, 11u)])), Struct_2(_wgslsmith_mod_vec2_i32(firstLeadingBit(global1[_wgslsmith_index_u32(global3.a.x, 5u)] >> (global3.a.zy % vec2<u32>(32u))), -func_2(19312u, global3.a.yx, -2147483647i).b.a)));
    let var_2 = Struct_4(Struct_2(-abs(global2.c.a) << (global3.a.yz % vec2<u32>(32u))), Struct_1(reverseBits(global3.a)), var_1);
    var_0 = !var_2.c.a.x;
    global0 = array<i32, 11>();
    return 0i;
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> Struct_5 {
    var var_0 = global2.c;
    let var_1 = abs(arg_0);
    var var_2 = any(vec3<bool>(global2.a.x || global2.a.x, global2.a.x, true));
    let var_3 = Struct_4(Struct_2(abs(vec2<i32>(-var_0.a.x, ~(-34871i)))), Struct_1(_wgslsmith_clamp_vec3_u32(global3.a, ~(~vec3<u32>(14124u, 1u, global3.a.x)), ~global3.a << (global3.a % vec3<u32>(32u)))), Struct_3(vec2<bool>(true, !(-47925i == arg_0.x)), -1i, global2.c));
    global4 = global3.a.x;
    return func_2(_wgslsmith_mult_u32(~global3.a.x, ~1u), vec2<u32>(1u, abs(_wgslsmith_sub_u32(0u, var_3.b.a.x))), ~(-1i));
}

fn func_6(arg_0: Struct_5) -> Struct_3 {
    global0 = array<i32, 11>();
    var var_0 = Struct_3(vec2<bool>(all(!vec4<bool>(true, global2.a.x, false, false)), !all(global2.a)), arg_0.b.a.x, func_5(~vec3<i32>(-6802i, global2.b, _wgslsmith_dot_vec2_i32(global2.c.a, arg_0.b.a)), -430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-240f + _wgslsmith_f_op_f32(f32(-1f) * -1335f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1955f - -626f)))).b);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1351f, 671f, 668f) * vec3<f32>(295f, -365f, 738f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1278f + -236f)), _wgslsmith_f_op_f32(-1f)))));
    var var_2 = ~func_2(~(~81504u), ~(~vec2<u32>(global3.a.x, global3.a.x) | ~arg_0.a.a.yx), -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(select(global3.a.x, 1u, global2.a.x), 11u)], -51217i)).a.a.x;
    global2 = Struct_3(!(!(!select(var_0.a, vec2<bool>(var_0.a.x, global2.a.x), vec2<bool>(false, global2.a.x)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.c.a >> ((arg_0.a.a.xz & vec2<u32>(14484u, 1u)) % vec2<u32>(32u)), select(arg_0.b.a, global1[_wgslsmith_index_u32(15050u >> (global3.a.x % 32u), 5u)], vec2<bool>(true, true))), ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(23595i, 1i), var_0.b)), var_0.c);
    return Struct_3(func_4(arg_0, global2.c.a.x, abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.a.x, -2147483647i, -37784i), vec3<i32>(49827i, var_0.c.a.x, 24273i)))).yz, global2.b, Struct_2(reverseBits(var_0.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec3<i32>(-1i, ~(-global2.b), func_1(_wgslsmith_clamp_i32(1i, global2.b, 2147483647i), vec2<bool>(true, global2.a.x), global2.a)), 401f, 1320f));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(func_2(global3.a.x, vec2<u32>(~global3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.a.x, 4294967295u, global3.a.x), vec4<u32>(global3.a.x, global3.a.x, 4294967295u, 0u))), abs(global0[_wgslsmith_index_u32(0u, 11u)]) & (global2.c.a.x << (global3.a.x % 32u))).a.a.x, ~(~(~global3.a.x))), firstLeadingBit(~69334u), _wgslsmith_mod_u32(global3.a.x, _wgslsmith_mod_u32(61320u, global3.a.x << (~22525u % 32u))));
    global0 = array<i32, 11>();
    var var_2 = !(!(!vec4<bool>(all(vec4<bool>(false, false, var_0.a.x, var_0.a.x)), global2.a.x, select(global2.a.x, var_0.a.x, true), !var_0.a.x)));
    let var_3 = 125f;
    let var_4 = ~vec4<u32>(0u, var_1.x, ~_wgslsmith_mult_u32(var_1.x, 36279u) ^ (global3.a.x & 26973u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, global3.a.x) >> (func_5(vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 11u)], global0[_wgslsmith_index_u32(var_1.x, 11u)], 15672i), 352f, var_3).a.a.x % 32u), 23570u, _wgslsmith_dot_vec3_u32(global3.a, vec3<u32>(18946u, global3.a.x, global3.a.x))));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1245f, var_3, var_3, var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, -1037f, -136f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, 879f, false)) * _wgslsmith_f_op_f32(-696f + -357f)), _wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-320f, -241f)), _wgslsmith_f_op_f32(round(1112f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3 + -171f), var_3, false)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 1221f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1153f - -1159f))), -1255f, var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3)), -697f))));
    var var_6 = ~_wgslsmith_div_vec3_i32(vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -10324i, global0[_wgslsmith_index_u32(var_4.x, 11u)]), vec3<i32>(global0[_wgslsmith_index_u32(var_4.x, 11u)], u_input.a, -17024i)), -14607i), global0[_wgslsmith_index_u32(4294967295u, 11u)], firstLeadingBit(_wgslsmith_mult_i32(1i, -12187i))), -abs(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], -2147483647i, 0i)));
    global3 = Struct_1(min(vec3<u32>(global3.a.x, ~func_5(vec3<i32>(-1004i, var_6.x, var_0.c.a.x), var_3, var_5.x).a.a.x, ~(~var_1.x)), vec3<u32>(global3.a.x, _wgslsmith_mult_u32(28154u, _wgslsmith_add_u32(58505u, 1u)), ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3());
}

