struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 15> = array<u32, 15>(48103u, 1u, 0u, 4294967295u, 39033u, 1u, 4294967295u, 4294967295u, 89940u, 0u, 0u, 4294967295u, 1u, 81235u, 1u);

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = abs(u_input.d.x);
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), -_wgslsmith_dot_vec3_i32(~u_input.d.xxy, _wgslsmith_clamp_vec3_i32(u_input.d.zxy, vec3<i32>(arg_0.x, -1i, -15570i), vec3<i32>(53399i, arg_0.x, 7536i))) ^ -2147483647i, min(~1662u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26394u, 15u)], 15u)], 15u)], ~(~1u)), 15u)]));
    let var_2 = select(countOneBits(global1[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 15u)], 11942u), 1u), 15u)]), ~9371u, any(!select(select(vec4<bool>(true, var_1.a, true, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, var_1.a)), select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(false, false, false, false), vec4<bool>(false, true, var_1.a, var_1.a)), !vec4<bool>(false, global0.x, true, var_1.a))));
    var var_3 = !(!select(vec3<bool>(false, all(vec4<bool>(false, false, false, true)), global0.x), select(vec3<bool>(false, global0.x, false), select(vec3<bool>(true, true, false), vec3<bool>(var_1.a, false, false), global0.x), var_1.a), vec3<bool>(var_1.b.x < var_1.b.x, false, true)));
    let var_4 = vec3<u32>(~abs(u_input.e.x), 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b.x), 46115u, 1u), ~u_input.b.zzw));
    return 20343u;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = -(~arg_3.d);
    let var_1 = _wgslsmith_div_vec3_i32(u_input.d.yxw, arg_2);
    var var_2 = _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 15u)] | global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)] | abs(u_input.e.x), 28557u), 15u)], global1[_wgslsmith_index_u32(func_3(~(~vec2<i32>(-2147483647i, u_input.c))), 15u)]);
    var var_3 = arg_3;
    var_0 = vec4<i32>(_wgslsmith_div_i32((var_1.x << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.c, 15u)], 15u)] % 32u)) >> (~0u % 32u), -7213i), abs(-(abs(arg_2.x) & -2147483647i)), -5921i ^ var_3.d.x, ~countOneBits(min(arg_3.b.c >> (0u % 32u), -14340i)));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = all(!vec2<bool>(global0.x, true));
    let var_1 = var_0 || true;
    global2 = array<Struct_2, 17>();
    global1 = array<u32, 15>();
    global0 = !select(vec3<bool>(!any(vec4<bool>(true, true, true, var_0)), true, true), select(select(!vec3<bool>(global0.x, true, var_1), select(vec3<bool>(false, true, true), vec3<bool>(false, global0.x, false), false), !vec3<bool>(var_0, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, var_0, false)), select(vec3<bool>(true, true, var_1), vec3<bool>(global0.x, false, false), false), global0.x), !select(vec3<bool>(arg_1.x, true, true), vec3<bool>(false, var_0, true), true)), !(!(!vec3<bool>(false, true, arg_1.x))));
    return !(!(!vec3<bool>(all(vec4<bool>(var_0, var_1, global0.x, var_1)), select(true, true, var_0), arg_1.x)));
}

fn func_1() -> vec2<u32> {
    global0 = !(!func_4(u_input.b.yx, func_2(_wgslsmith_f_op_f32(floor(-1740f)), !vec3<bool>(false, global0.x, true), u_input.d.wxw, Struct_3(global2[_wgslsmith_index_u32(1u, 17u)], Struct_1(global0.x, vec2<f32>(609f, 176f), -6787i, 23897u), global1[_wgslsmith_index_u32(22122u, 15u)], u_input.d))));
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 17u)];
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 17u)];
    let var_2 = Struct_2(select(vec3<bool>(var_1.a.x, func_2(-472f, select(var_0.a, var_1.a, vec3<bool>(var_1.a.x, var_0.a.x, false)), u_input.d.wwz, Struct_3(global2[_wgslsmith_index_u32(u_input.e.x, 17u)], Struct_1(true, vec2<f32>(-988f, 950f), 23283i, u_input.b.x), 4294967295u, vec4<i32>(u_input.d.x, -2147483647i, 1i, u_input.d.x))).x, true & func_4(u_input.e, global0.xz).x), vec3<bool>(!var_0.a.x, !select(true, true, var_0.a.x), any(!vec4<bool>(global0.x, var_1.a.x, false, var_1.a.x))), func_4(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.b.zy), vec2<u32>(43267u, u_input.b.x)), vec2<bool>(!var_1.a.x, select(false, var_0.a.x, true)))));
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(49597u, 15u)] & 21125u, 15u)]), 17u)], Struct_1(true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1671f)), 1803f), 1f), -_wgslsmith_div_i32(abs(u_input.c), reverseBits(2147483647i)), _wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(63389u, 15u)]), 15u)], u_input.e.x >> (4294967295u % 32u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)])))), 9828u, u_input.d);
    return countOneBits(u_input.b.ww);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    global1 = array<u32, 15>();
    global1 = array<u32, 15>();
    global1 = array<u32, 15>();
    let var_0 = ~(~(~_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(arg_2.x, 15u)])) ^ func_1().x);
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(~1u, 17u)], arg_3, 42044u, u_input.d);
    return reverseBits(var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~u_input.b.x), 17u)], !global0.yx, func_1(), Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-125f, -1000f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 914f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(184f, 187f)))), select(global0.yz, func_4(u_input.b.yx, vec2<bool>(true, global0.x)).zx, true || global0.x))), -1i, 4294967295u));
    let var_1 = vec4<i32>(u_input.d.x, _wgslsmith_div_i32(-(~var_0), _wgslsmith_clamp_i32(1i, -var_0, countOneBits(u_input.d.x))), ~countOneBits(-u_input.d.x) >> (max(1u, _wgslsmith_dot_vec3_u32(u_input.b.yyx, vec3<u32>(7612u, 53800u, 631u) ^ vec3<u32>(249u, global1[_wgslsmith_index_u32(35385u, 15u)], u_input.b.x))) % 32u), -var_0);
    var var_2 = func_2(-1040f, vec3<bool>(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1070f, -1000f) * _wgslsmith_f_op_f32(-1000f - -2132f)), func_4(vec2<u32>(17952u, global1[_wgslsmith_index_u32(14062u, 15u)]), global0.yy), vec3<i32>(0i, var_0, 8724i), Struct_3(Struct_2(vec3<bool>(true, false, global0.x)), Struct_1(global0.x, vec2<f32>(-1545f, 480f), var_0, 57692u), 1u, ~u_input.d)).x, true, global0.x), ~abs(-u_input.d.xyx), Struct_3(Struct_2(select(func_4(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a), vec2<bool>(global0.x, true)), vec3<bool>(true, true, true), !global0.x)), Struct_1(any(vec4<bool>(global0.x, true, false, false)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(786f, -1000f))))), func_5(Struct_2(vec3<bool>(false, global0.x, global0.x)), vec2<bool>(true, true), u_input.b.xx, Struct_1(true, vec2<f32>(-1415f, 846f), var_1.x, 0u)), ~7167u), u_input.a, vec4<i32>(-var_1.x, firstTrailingBit(u_input.c), -u_input.d.x, max(var_1.x, 2147483647i)) >> ((u_input.b << ((u_input.b ^ u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(select(func_3(~select(vec2<i32>(var_1.x, var_1.x), u_input.d.xw, true)), u_input.a, global0.x), 17u)], Struct_1(any(!vec4<bool>(false, true, var_2.x, var_2.x)), vec2<f32>(-3018f, _wgslsmith_f_op_f32(f32(-1f) * -840f)), _wgslsmith_add_i32(~(-u_input.c), ~(var_0 ^ 16512i)), ~79332u), 4294967295u, ~vec4<i32>(52841i, u_input.d.x, ~abs(33559i), _wgslsmith_div_i32(-1i, ~(-53573i))));
    var_2 = vec2<bool>(var_2.x, (28626i >> (global1[_wgslsmith_index_u32(func_1().x | global1[_wgslsmith_index_u32(~1u, 15u)], 15u)] % 32u)) >= -(var_3.d.x ^ var_3.d.x));
    global2 = array<Struct_2, 17>();
    let var_4 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.zy, u_input.d.xy), select(_wgslsmith_mod_i32(select(u_input.d.x, var_0, var_3.a.a.x), ~var_1.x), 888i, _wgslsmith_f_op_f32(abs(-1142f)) <= _wgslsmith_f_op_f32(var_3.b.b.x - var_3.b.b.x)) >> (max(~u_input.a, 1u) % 32u), abs(var_3.d.x >> (~(~u_input.e.x) % 32u)), -2147483647i);
    var_3 = Struct_3(Struct_2(var_3.a.a), Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.b.b.x, -182f), vec2<f32>(var_3.b.b.x, var_3.b.b.x))) + _wgslsmith_f_op_vec2_f32(-var_3.b.b)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-328f, var_3.b.b.x), vec2<f32>(var_3.b.b.x, 1157f), global0.yy))))), 2147483647i, global1[_wgslsmith_index_u32(abs(0u), 15u)]), var_3.c, countOneBits(vec4<i32>(var_0 ^ u_input.c, var_0 >> (20708u % 32u), ~u_input.d.x, var_4.x) >> (~_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(100152u, 1u, 42671u, global1[_wgslsmith_index_u32(22009u, 15u)]), u_input.b) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.b.x, var_3.b.b.x, 1319f, var_3.b.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1060f, var_3.b.b.x, var_3.b.b.x, 1081f), vec4<f32>(var_3.b.b.x, var_3.b.b.x, 633f, var_3.b.b.x)))))), u_input.d.xx, vec3<u32>(24550u, u_input.e.x, abs(0u)) ^ u_input.b.wwz);
}

