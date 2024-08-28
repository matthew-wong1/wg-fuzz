struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<u32, 17> = array<u32, 17>(12506u, 1u, 7435u, 56356u, 1u, 0u, 78201u, 37385u, 74323u, 0u, 1u, 0u, 107013u, 72110u, 23185u, 38382u, 4294967295u);

var<private> global2: array<vec4<bool>, 2>;

var<private> global3: array<u32, 32>;

var<private> global4: vec4<f32> = vec4<f32>(-688f, -1265f, 335f, -1212f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    return _wgslsmith_div_i32(i32(-1i) * -1i, arg_0.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(arg_0.a.x, _wgslsmith_mult_i32(func_3(Struct_1(arg_2.a, arg_2.b), _wgslsmith_div_f32(-819f, arg_0.b), global4.x, vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_i32(select(arg_0.a.zwx, vec3<i32>(u_input.d, arg_3.a.x, 0i), vec3<bool>(true, false, false)), arg_2.a.wxy >> (u_input.b % vec3<u32>(32u))))), -40763i, firstTrailingBit(-2147483647i));
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -224f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(949f, -179f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(exp2(arg_0.b))))));
    let var_1 = global0[_wgslsmith_index_u32(~abs(~min(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], u_input.c.x) & 0u), 20u)];
    let var_2 = _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, countOneBits(global1[_wgslsmith_index_u32(firstLeadingBit(~global3[_wgslsmith_index_u32(u_input.b.x, 32u)]), 17u)]), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(42709u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(17707u, 17u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37250u, 17u)], 17u)], 17u)], 32u)]), 32u)]), abs(0u)), 32u)], 41713u), u_input.c);
    var_0 = vec3<i32>(u_input.d, -(firstLeadingBit(func_3(arg_2, var_1.b, arg_3.b, global2[_wgslsmith_index_u32(1u, 2u)])) & _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_3.a.x, 22048i, var_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -21315i, arg_3.a.x), vec3<i32>(1i, u_input.a, var_1.a.x), arg_0.a.zww))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d, ~arg_2.a.x) ^ 2147483647i, _wgslsmith_mult_i32(-1i, -18603i), var_0.x));
    return !(!(!all(select(global2[_wgslsmith_index_u32(5233u, 2u)], vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = vec4<u32>(1u, 0u, ~global1[_wgslsmith_index_u32(~u_input.b.x, 17u)], 4294967295u) << (_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(1u, 32u)])) | vec4<u32>(11198u, 4294967295u, 0u, u_input.c.x)), vec4<u32>(global1[_wgslsmith_index_u32(7406u, 17u)], 48116u, ~(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 32u)] ^ u_input.b.x), _wgslsmith_mult_u32(abs(global3[_wgslsmith_index_u32(1u, 32u)]), abs(1u)))) % vec4<u32>(32u));
    global2 = array<vec4<bool>, 2>();
    let var_1 = arg_0;
    global0 = array<Struct_1, 20>();
    let var_2 = var_1;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    global1 = array<u32, 17>();
    let var_0 = 4294967295u;
    var var_1 = !func_4(Struct_1(_wgslsmith_div_vec4_i32(arg_0.a, arg_0.a) | vec4<i32>(-20776i, arg_0.a.x, -2147483647i, u_input.d), 2282f), all(vec3<bool>(func_2(arg_0, vec2<f32>(964f, 1157f), global0[_wgslsmith_index_u32(u_input.c.x, 20u)], arg_0), arg_2, arg_2)), Struct_1(vec4<i32>(arg_0.a.x, i32(-1i) * -2147483647i, 1i, ~u_input.a), 1814f));
    var var_2 = select(select(select(vec3<bool>(true, func_4(Struct_1(arg_0.a, global4.x), false, arg_0), !arg_2), !(!vec3<bool>(arg_2, arg_2, arg_2)), arg_2), !select(!vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, arg_2), func_2(Struct_1(arg_0.a, global4.x), vec2<f32>(arg_0.b, 512f), Struct_1(vec4<i32>(1i, u_input.a, -1i, 31753i), 1675f), Struct_1(vec4<i32>(31584i, 3240i, u_input.d, 30667i), arg_0.b))), any(vec3<bool>(arg_2, true, all(global2[_wgslsmith_index_u32(22538u, 2u)])))), !vec3<bool>(true, arg_2, !(arg_0.a.x <= arg_0.a.x)), !(1u >= max(u_input.b.x, 1u)));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1556f, global4.x), _wgslsmith_div_f32(-334f, -1000f), arg_2 && true)) - arg_0.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x)))))), -1829f, -569f);
    return Struct_1(vec4<i32>(arg_0.a.x, select(max(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)), 54799i, false), u_input.d, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(arg_0.a.xzy, arg_0.a.xzy), _wgslsmith_mod_i32(-2147483647i, u_input.a), u_input.a)), _wgslsmith_f_op_f32(1777f - _wgslsmith_f_op_f32(f32(-1f) * -1084f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_1(select(firstLeadingBit(~abs(vec4<i32>(35990i, 1i, arg_1.x, -25862i))), arg_0.a, arg_2.x), 489f);
    global3 = array<u32, 32>();
    let var_1 = !select(select(select(!vec2<bool>(arg_2.x, arg_2.x), select(arg_2.wz, vec2<bool>(true, true), arg_2.yx), select(vec2<bool>(true, false), arg_2.yz, arg_2.x)), arg_2.xy, true), !select(!arg_2.xy, select(arg_2.zw, arg_2.yw, arg_2.x), arg_1.x <= 2147483647i), select(vec2<bool>(!arg_2.x, arg_2.x), !arg_2.zx, select(vec2<bool>(true, false), arg_2.xx, true)));
    var var_2 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)] | global1[_wgslsmith_index_u32(9653u, 17u)], 1558u), _wgslsmith_div_vec2_u32(~u_input.c.zx, ~u_input.b.zx)), select(~(u_input.c.zw >> (vec2<u32>(40347u, global3[_wgslsmith_index_u32(1u, 32u)]) % vec2<u32>(32u))), ~(u_input.b.xz << (u_input.b.yz % vec2<u32>(32u))), !func_2(Struct_1(var_0.a, -1000f), global4.wz, global0[_wgslsmith_index_u32(33603u, 20u)], arg_0)));
    var var_3 = func_1(Struct_1(var_0.a ^ arg_0.a, _wgslsmith_div_f32(-573f, _wgslsmith_f_op_f32(-683f + 1852f))), abs(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global1[_wgslsmith_index_u32(60938u, 17u)], 75197u), u_input.c.yz), u_input.b.yy), 32u)], 32u)]), func_4(arg_0, arg_2.x & var_1.x, func_1(global0[_wgslsmith_index_u32(10052u, 20u)], ~617u, true)));
    return _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(955f - arg_0.b) - global4.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.x))))));
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = ~vec3<u32>(~global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x) >> (~arg_3 % 32u), 32u)], ~(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~arg_3, 32u)], 17u)]), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x ^ ~10258u), 17u)]);
    var var_1 = u_input.b.x;
    var_1 = ~var_0.x;
    global4 = vec4<f32>(arg_0, -905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-255f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -964f);
    var var_2 = func_1(Struct_1(vec4<i32>(arg_2, 0i, -1i, _wgslsmith_add_i32(-u_input.d, func_1(Struct_1(vec4<i32>(-19172i, 9413i, 25523i, arg_2), arg_0), 1134u, arg_1.x).a.x)), -1591f), arg_3, true);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.x;
    var var_1 = all(vec3<bool>(false, true, false));
    var var_2 = (u_input.c.xxz & u_input.c.wxz) | u_input.b;
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, func_6(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(vec4<i32>(u_input.a, 1i, u_input.d, u_input.a), global4.x), global3[_wgslsmith_index_u32(1u, 32u)], true), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.a), vec2<i32>(14197i, u_input.a)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true))), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), u_input.d, global1[_wgslsmith_index_u32(~1u, 17u)]))), 20u)];
    let var_4 = global0[_wgslsmith_index_u32(~(~(52856u << (u_input.c.x % 32u))), 20u)];
    let var_5 = global0[_wgslsmith_index_u32(1u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_5.a.x, 1i, var_5.a.x, var_4.a.x) & var_4.a), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(var_5.a, vec4<i32>(9198i, 402i, -1i, var_4.a.x) ^ vec4<i32>(var_4.a.x, u_input.a, var_4.a.x, 2147483647i)), vec4<i32>(~u_input.d, firstLeadingBit(-2147483647i), ~u_input.d, u_input.d << (1949u % 32u))), vec4<i32>(reverseBits(var_4.a.x), ~(-43648i), firstTrailingBit(_wgslsmith_sub_i32(var_5.a.x, 1i)), -var_4.a.x)));
}

