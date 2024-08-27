struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<f32, 26>;

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    global3 = array<vec4<i32>, 10>();
    global2 = u_input.e.x;
    var var_0 = ~(~(vec3<u32>(1u, u_input.d.x, arg_1.a.a.x) << (firstLeadingBit(vec3<u32>(arg_0.b.b, u_input.d.x, arg_0.b.c.x)) % vec3<u32>(32u))) ^ countOneBits(u_input.d.yzy));
    global2 = _wgslsmith_mult_i32(0i, firstTrailingBit(~arg_0.b.a.x));
    global3 = array<vec4<i32>, 10>();
    return ~var_0.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> i32 {
    global2 = -arg_2;
    var var_0 = arg_1.a.b;
    let var_1 = _wgslsmith_f_op_f32(-arg_1.b);
    var var_2 = Struct_3(Struct_2(arg_1.a.a, arg_1.a.b, abs(max(vec4<i32>(-72131i, 1i, -2147483647i, arg_2), countOneBits(vec4<i32>(arg_2, var_0.a.x, arg_2, arg_1.a.c.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_div_f32(-419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f + var_1))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f * -1144f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1348f, -892f), vec2<f32>(-108f, arg_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.d - _wgslsmith_f_op_vec2_f32(max(arg_1.d, arg_1.d))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-2011f)), -561f))));
    let var_3 = select(select(select(vec4<bool>(arg_1.a.b.d.x, !arg_0.x, var_0.d.x & var_0.d.x, select(true, false, true)), arg_0, select(false, true, var_2.a.b.d.x)), select(select(vec4<bool>(false, false, var_2.a.b.d.x, true), vec4<bool>(var_2.a.b.d.x, var_2.a.b.d.x, arg_1.a.b.d.x, var_2.a.b.d.x), arg_0), select(select(vec4<bool>(false, true, var_2.a.b.d.x, arg_1.a.b.d.x), vec4<bool>(arg_1.a.b.d.x, true, false, arg_1.a.b.d.x), true), arg_0, select(arg_0, arg_0, var_0.d.x)), all(!arg_0.yyw)), true), select(!select(!arg_0, arg_0, true), !(!vec4<bool>(true, arg_0.x, arg_1.a.b.d.x, arg_1.a.b.d.x)), all(!vec4<bool>(false, arg_0.x, true, false)) | true), arg_0);
    return select(~_wgslsmith_clamp_i32(~0i, -16145i, ~u_input.e.x << ((0u << (1u % 32u)) % 32u)), 43667i, false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_3 {
    return Struct_3(Struct_2(vec2<u32>(~u_input.b, abs(func_2(Struct_2(vec2<u32>(u_input.a, u_input.c.x), Struct_1(vec2<i32>(2147483647i, 11915i), 1u, vec4<u32>(4294967295u, 8710u, arg_0.b, u_input.b), vec2<bool>(arg_0.d.x, arg_0.d.x)), vec4<i32>(66614i, arg_0.a.x, arg_0.a.x, 6269i)), Struct_3(Struct_2(arg_0.c.zz, Struct_1(vec2<i32>(u_input.e.x, 14332i), u_input.a, arg_0.c, arg_0.d), u_input.e), global1[_wgslsmith_index_u32(1u, 26u)], -1000f, vec2<f32>(-302f, global1[_wgslsmith_index_u32(arg_0.c.x, 26u)]))))), arg_0, select(_wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(-2147483647i, u_input.e.x, arg_0.a.x, u_input.e.x)), vec4<i32>(min(arg_0.a.x, u_input.e.x), ~5142i, func_3(arg_1, Struct_3(Struct_2(u_input.c.xx, arg_0, vec4<i32>(-4108i, u_input.e.x, 0i, 2147483647i)), global1[_wgslsmith_index_u32(u_input.b, 26u)], -262f, vec2<f32>(943f, global1[_wgslsmith_index_u32(0u, 26u)])), u_input.e.x), _wgslsmith_add_i32(u_input.e.x, u_input.e.x)), vec4<bool>(1i < arg_0.a.x, true, false, arg_0.d.x))), global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(Struct_2(arg_0.c.yx, arg_0, u_input.e), Struct_3(Struct_2(vec2<u32>(1346u, 38195u), Struct_1(arg_0.a, arg_0.c.x, vec4<u32>(4294967295u, 0u, u_input.b, 33281u), vec2<bool>(arg_0.d.x, arg_1.x)), vec4<i32>(1i, arg_0.a.x, u_input.e.x, -14310i)), 1743f, -381f, vec2<f32>(global1[_wgslsmith_index_u32(arg_0.b, 26u)], global1[_wgslsmith_index_u32(29662u, 26u)]))), ~reverseBits(arg_0.c.x)) >> ((~u_input.a ^ 10142u) % 32u), 26u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1190f, 1000f)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global1 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))));
    var var_1 = arg_2.b.c;
    let var_2 = arg_1;
    var var_3 = Struct_2(~(~vec2<u32>(_wgslsmith_mult_u32(arg_0.a.a.x, arg_0.a.b.c.x), u_input.a)), Struct_1(reverseBits(arg_0.a.c.wy), u_input.c.x, func_1(func_1(func_1(arg_0.a.b, vec4<bool>(arg_0.a.b.d.x, arg_0.a.b.d.x, true, false)).a.b, vec4<bool>(false, true, arg_0.a.b.d.x, false)).a.b, select(select(vec4<bool>(arg_0.a.b.d.x, true, true, arg_0.a.b.d.x), vec4<bool>(true, arg_0.a.b.d.x, arg_2.b.d.x, arg_0.a.b.d.x), false), select(vec4<bool>(arg_0.a.b.d.x, arg_0.a.b.d.x, arg_0.a.b.d.x, arg_2.b.d.x), vec4<bool>(true, true, arg_2.b.d.x, arg_0.a.b.d.x), arg_2.b.d.x), arg_2.b.d.x)).a.b.c, arg_0.a.b.d), _wgslsmith_sub_vec4_i32(u_input.e, firstLeadingBit(firstTrailingBit(vec4<i32>(arg_2.c.x, arg_0.a.c.x, -8563i, -1i)) ^ (vec4<i32>(33760i, arg_2.b.a.x, arg_2.b.a.x, u_input.e.x) << (vec4<u32>(0u, var_1.x, 64927u, 0u) % vec4<u32>(32u))))));
    return Struct_1(~vec2<i32>(i32(-1i) * -2147483647i, firstTrailingBit(u_input.e.x)), firstLeadingBit(88341u), vec4<u32>(~4294967295u, ~(~arg_0.a.b.c.x) & arg_2.a.x, ~arg_2.b.c.x, ~780u), !func_1(func_1(Struct_1(vec2<i32>(arg_2.b.a.x, var_3.b.a.x), arg_0.a.b.c.x, vec4<u32>(5582u, arg_2.b.b, 4294967295u, arg_0.a.a.x), vec2<bool>(arg_0.a.b.d.x, true)), !vec4<bool>(true, false, arg_2.b.d.x, false)).a.b, select(!vec4<bool>(var_3.b.d.x, var_3.b.d.x, true, true), !vec4<bool>(false, false, false, var_3.b.d.x), true)).a.b.d);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)], arg_1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1180f)))), 293f, global1[_wgslsmith_index_u32((94540u & arg_1.b) << (arg_1.c.x % 32u), 26u)], 1f);
    let var_1 = !all(vec3<bool>(true, arg_0.x, arg_0.x));
    global1 = array<f32, 26>();
    global2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.zww, firstTrailingBit(vec3<i32>(-1i) * -u_input.e.xxz)), vec3<i32>(-(i32(-1i) * -1i), (firstLeadingBit(arg_1.a.x) << (arg_1.b % 32u)) << (u_input.a % 32u), ~func_1(Struct_1(arg_1.a, arg_1.b, arg_1.c, vec2<bool>(arg_1.d.x, true)), select(vec4<bool>(true, var_1, arg_0.x, var_1), arg_0, vec4<bool>(var_1, arg_1.d.x, true, false))).a.b.a.x));
    var var_2 = countOneBits(u_input.a) >> (80076u % 32u);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(!vec4<bool>(false, _wgslsmith_mult_u32(0u, u_input.c.x) > _wgslsmith_div_u32(u_input.d.x, 96212u), false, !(u_input.e.x <= 2147483647i)), func_4(func_1(Struct_1(u_input.e.ww, abs(u_input.b), select(u_input.d, u_input.d, vec4<bool>(true, false, false, false)), vec2<bool>(true, true)), vec4<bool>(true, all(vec2<bool>(false, false)), 4294967295u != u_input.a, any(vec2<bool>(true, true)))), 220f, func_1(Struct_1(vec2<i32>(-19297i, -1i), firstTrailingBit(0u), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.c.x), vec2<bool>(true, true)), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, true)).a)));
    var var_1 = Struct_3(func_1(func_4(func_1(func_1(Struct_1(u_input.e.zy, 0u, vec4<u32>(u_input.d.x, u_input.b, 16951u, 0u), vec2<bool>(false, false)), vec4<bool>(true, false, false, false)).a.b, vec4<bool>(false, true, true, false)), global1[_wgslsmith_index_u32(74436u, 26u)], func_1(Struct_1(u_input.e.zw, u_input.a, u_input.d, vec2<bool>(true, true)), vec4<bool>(false, true, true, false)).a), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f), 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], true)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 26u)] * global1[_wgslsmith_index_u32(u_input.a, 26u)])))), 1310f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), -1077f));
    global2 = u_input.e.x;
    global1 = array<f32, 26>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(var_1.a.b, select(vec4<bool>(var_1.a.b.d.x, true, false, false), vec4<bool>(var_1.a.b.d.x, var_1.a.b.d.x, var_1.a.b.d.x, var_1.a.b.d.x), false)).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -638f)), 909f, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(var_1.a.b.b, 0u)), 26u)])) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -465f, var_1.c)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 30u)] * global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(var_1.a.b.b, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(u_input.c.x, 30u)])))))), true)));
    global3 = array<vec4<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 26u)] - 564f)), -1416f)));
}

