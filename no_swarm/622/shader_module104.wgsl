struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<i32, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 19>();
    var var_0 = arg_2;
    let var_1 = Struct_1(vec4<i32>(~_wgslsmith_dot_vec2_i32(var_0.a.zy, vec2<i32>(var_0.a.x, 29225i)) ^ abs(u_input.d ^ -2147483647i), _wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(arg_2.a.x, 0i, 0i, var_0.a.x)) & ~(-u_input.b.x), _wgslsmith_sub_i32(abs(global1[_wgslsmith_index_u32(0u, 22u)] >> (u_input.a.x % 32u)), -31180i), u_input.d), arg_2.b, arg_2.c, var_0.d);
    let var_2 = ~(~vec3<u32>(1u, ~(~u_input.a.x), ~countOneBits(4650u)));
    let var_3 = ~22266i;
    return reverseBits(~2147483647i);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, min(1u, _wgslsmith_dot_vec3_u32(u_input.a.zww, vec3<u32>(u_input.e.x, 4294967295u, 4294967295u)))), 22u)], -_wgslsmith_sub_i32(~(-1i), max(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])), 44304i, -u_input.d ^ func_3(vec4<bool>(false, true, false, false), -11321i, Struct_1(u_input.b, vec4<bool>(true, true, true, true), true, 469f))), !vec4<bool>(true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1812f))));
    global0 = array<Struct_1, 19>();
    let var_1 = !var_0.c;
    var_0 = global0[_wgslsmith_index_u32(67005u, 19u)];
    var_0 = Struct_1(~vec4<i32>(-2147483647i, -_wgslsmith_clamp_i32(-7834i, -2147483647i, -2147483647i), _wgslsmith_mod_i32(u_input.b.x, 11951i), min(u_input.b.x, ~var_0.a.x)), vec4<bool>(true, var_0.b.x, ((u_input.e.x ^ u_input.c.x) << (82716u % 32u)) < 23958u, !(!(var_1 && true))), var_0.c, _wgslsmith_f_op_f32(round(473f)));
    return firstLeadingBit(u_input.d);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(-21920i, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -20059i, global1[_wgslsmith_index_u32(u_input.c.x, 22u)]) ^ vec3<i32>(40771i, arg_0.a.x, arg_0.a.x), select(vec3<i32>(22630i, 38068i, arg_1.x), u_input.b.yzy, true)));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(max(func_2(), arg_1.x), -1i, -2147483647i, 0i), ~min(arg_0.a, u_input.b)), select(select(select(arg_0.b, select(arg_0.b, vec4<bool>(false, false, arg_2.x, false), vec4<bool>(arg_2.x, false, arg_0.b.x, arg_0.c)), select(arg_2, vec4<bool>(arg_2.x, true, false, arg_0.b.x), false)), arg_2, arg_0.b.x), arg_0.b, any(vec2<bool>(false, false))), false, _wgslsmith_f_op_f32(1f - arg_0.d));
    global1 = array<i32, 22>();
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(u_input.c.x << (_wgslsmith_add_u32(~u_input.a.x, u_input.c.x) % 32u)), 19u)];
    let var_3 = !(u_input.a.x == u_input.c.x);
    return Struct_1(select(~(_wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(0i, arg_0.a.x, arg_0.a.x, 4172i)) & _wgslsmith_mult_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, global1[_wgslsmith_index_u32(0u, 22u)], arg_0.a.x, global1[_wgslsmith_index_u32(0u, 22u)]))), vec4<i32>(arg_1.x, -35839i & -u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, var_1.a.x) ^ -60193i, 2147483647i & _wgslsmith_dot_vec2_i32(var_2.a.yz, vec2<i32>(arg_1.x, global1[_wgslsmith_index_u32(1u, 22u)]))), arg_0.b), select(var_1.b, select(vec4<bool>(all(vec2<bool>(true, false)), all(arg_2.xy), false, var_3), select(vec4<bool>(true, var_3, var_1.c, false), var_2.b, !var_1.b.x), arg_0.c), select(arg_0.b, select(select(vec4<bool>(var_3, true, true, true), vec4<bool>(var_3, var_2.b.x, var_3, arg_2.x), false), vec4<bool>(var_1.c, arg_2.x, false, var_3), arg_0.b), select(vec4<bool>(arg_0.c, false, true, arg_0.b.x), vec4<bool>(var_3, arg_2.x, var_3, var_1.b.x), select(vec4<bool>(true, true, var_2.c, true), var_2.b, true)))), arg_2.x, arg_3);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = reverseBits(~4294967295u);
    return _wgslsmith_f_op_f32(ceil(arg_2.d));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2.a.xyw;
    var var_1 = vec3<f32>(-1543f, arg_1.d, _wgslsmith_f_op_f32(-arg_1.d));
    var var_2 = ~(~(u_input.a.x | _wgslsmith_mod_u32(u_input.c.x, u_input.e.x)) ^ ~(~u_input.c.x));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.d, -1846f, arg_2.d))) + vec3<f32>(_wgslsmith_div_f32(-664f, 748f), arg_0.x, func_1(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], arg_2.a.yyy, vec4<bool>(false, arg_1.c, arg_1.c, true), -751f).d))));
    let var_3 = arg_2;
    return Struct_1(func_1(func_1(Struct_1(u_input.b, !vec4<bool>(false, arg_1.b.x, false, true), !arg_3, 1549f), arg_1.a.xzx, arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -355f)), -firstLeadingBit(abs(arg_2.a.zxx)), func_1(Struct_1(abs(vec4<i32>(0i, var_0.x, -2147483647i, arg_1.a.x)), vec4<bool>(true, var_3.c, var_3.c, arg_1.c), true, 1000f), u_input.b.yzy, vec4<bool>(true, any(vec3<bool>(false, arg_3, arg_2.b.x)), var_3.b.x & true, true), 878f).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f - 258f) + _wgslsmith_f_op_f32(f32(-1f) * -826f))).a, select(vec4<bool>(all(vec4<bool>(arg_1.b.x, false, false, false)), var_3.c, !any(arg_1.b.wyy), func_1(func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b.yzz, vec4<bool>(arg_3, arg_1.b.x, arg_2.c, arg_1.b.x), var_3.d), u_input.b.xwx, vec4<bool>(false, false, arg_3, var_3.c), arg_0.x).b.x), select(!(!arg_1.b), !var_3.b, !arg_1.b), var_3.c), func_1(Struct_1(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, arg_1.a.x), _wgslsmith_add_i32(1755i, 1i), -1i, arg_2.a.x), vec4<bool>(true, arg_3, var_3.c, arg_1.c), arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1225f)), func_1(Struct_1(max(vec4<i32>(-3119i, -2147483647i, -27953i, var_3.a.x), u_input.b), !vec4<bool>(true, arg_2.b.x, true, arg_3), false, _wgslsmith_f_op_f32(ceil(1908f))), u_input.b.wxz, arg_2.b, -186f).a.wxw, vec4<bool>((var_3.c != true) == (1u > u_input.c.x), any(!vec3<bool>(true, arg_1.c, arg_2.b.x)), func_1(global0[_wgslsmith_index_u32(u_input.e.x << (u_input.e.x % 32u), 19u)], abs(vec3<i32>(u_input.b.x, 1i, var_3.a.x)), !vec4<bool>(arg_2.c, var_3.c, arg_2.b.x, true), _wgslsmith_f_op_f32(-var_1.x)).b.x, arg_2.b.x), _wgslsmith_f_op_f32(-arg_0.x)).b.x, _wgslsmith_f_op_f32(func_4(max(~1u, 0u), -var_0.x, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 22>();
    global0 = array<Struct_1, 19>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.e.x, 19u)];
    global0 = array<Struct_1, 19>();
    let var_1 = u_input.b.yy;
    var var_2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(522f, -1513f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_mult_i32(u_input.d, 27978i), func_1(Struct_1(var_0.a, vec4<bool>(var_0.c, true, false, var_0.b.x), true, var_0.d), var_0.a.yyx, vec4<bool>(true, var_0.b.x, var_0.b.x, true), 808f))) + 571f)), global0[_wgslsmith_index_u32(u_input.e.x, 19u)], global0[_wgslsmith_index_u32(~(10525u << (~u_input.a.x % 32u)), 19u)], false);
    var_2 = func_1(Struct_1(u_input.b, select(func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d, var_0.d))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.e.x), 19u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 0u), 19u)], var_2.b.x || var_0.c).b, var_2.b, any(vec2<bool>(true, true))), any(vec2<bool>(true, var_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(trunc(1057f)), !var_0.b.x))), var_2.a.zzy, !select(!func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a.xyy, var_0.b, 965f).b, var_2.b, var_2.b), var_2.d);
    let var_3 = func_1(Struct_1(~abs(vec4<i32>(1i, var_0.a.x, -27133i, u_input.b.x)), select(var_0.b, vec4<bool>(true, true != var_2.c, true, all(vec2<bool>(var_2.b.x, var_0.c))), any(!vec4<bool>(true, false, var_2.c, false))), any(!var_2.b) || !all(vec4<bool>(true, var_2.c, var_0.b.x, false)), _wgslsmith_f_op_f32(var_2.d - -1000f)), var_0.a.zwx ^ _wgslsmith_sub_vec3_i32(-u_input.b.zyz ^ -vec3<i32>(var_0.a.x, 47078i, -1i), ~firstLeadingBit(var_2.a.yxx)), !var_2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(53204u, select(abs(~u_input.c.x) ^ u_input.a.x, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.e.x, 55129u), u_input.c.x), true), u_input.a.x);
}

