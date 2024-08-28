struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: Struct_5;

var<private> global3: array<vec4<u32>, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 365f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b.b.b * global2.c.d.b)));
    global0 = 527f;
    let var_1 = global2.c;
    global3 = array<vec4<u32>, 10>();
    global2 = Struct_5(var_1.d.a.x, global2.b, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a - -802f), -3057f))), (var_1.b & arg_0.b.x) >> (arg_0.b.x % 32u), reverseBits(vec3<i32>(-32231i, _wgslsmith_div_i32(-1i, 2147483647i), ~2147483647i)), var_1.d));
    return Struct_2(vec4<u32>(abs(arg_0.b.x), _wgslsmith_mod_u32(~arg_0.b.x, ~(~var_1.d.a.x)), ~arg_0.b.x, _wgslsmith_div_u32(var_1.d.a.x, 1u ^ ~global2.a)), -1445f, vec4<f32>(757f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1302f))), _wgslsmith_f_op_f32(f32(-1f) * -960f), global2.b.b.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global3 = array<vec4<u32>, 10>();
    var var_0 = !(!select(!(!vec4<bool>(global1[_wgslsmith_index_u32(global2.c.b, 1u)], global2.b.a.x, global1[_wgslsmith_index_u32(0u, 1u)], true)), vec4<bool>(all(vec4<bool>(global2.b.a.x, global2.b.a.x, global2.b.a.x, global2.b.a.x)), true, any(global2.b.a), true), vec4<bool>(true, false, arg_0.e == -1076f, !global1[_wgslsmith_index_u32(u_input.a.x, 1u)])));
    var_0 = vec4<bool>(true, true, firstTrailingBit(-(~global2.c.c.x)) < _wgslsmith_dot_vec4_i32(~min(vec4<i32>(-2147483647i, -1i, 5664i, -51512i), vec4<i32>(-37208i, arg_2.a, arg_0.c, -1i)), max(vec4<i32>(-12045i, arg_2.c, global2.c.c.x, arg_2.a), vec4<i32>(4873i, -2147483647i, 79234i, 0i) << (vec4<u32>(1u, 90491u, 2456u, global2.b.d) % vec4<u32>(32u)))), true);
    global1 = array<bool, 1>();
    var var_1 = -174f;
    return global1[_wgslsmith_index_u32(0u, 1u)];
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    var var_0 = Struct_5(~(arg_1.a.x | 58470u), global2.b, Struct_4(_wgslsmith_f_op_f32(-109f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_1.b))), global2.b.b.a.x, abs(~abs(vec3<i32>(1i, global2.c.c.x, global2.c.c.x))), func_2(Struct_1(global2.c.c.x, _wgslsmith_sub_vec2_u32(vec2<u32>(58938u, 35075u), arg_1.a.zz), global2.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_div_f32(-533f, arg_1.c.x)))));
    var var_1 = vec4<i32>(1i, -2147483647i, global2.c.c.x, _wgslsmith_sub_i32(~_wgslsmith_div_i32(1i, global2.c.c.x), select(_wgslsmith_dot_vec3_i32(global2.c.c, var_0.c.c), global2.c.c.x, _wgslsmith_f_op_f32(529f + -470f) < var_0.b.b.b)));
    var var_2 = !vec4<bool>(!arg_0 | all(vec2<bool>(arg_0, false)), true, func_3(Struct_1(~38836i, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 54151u), arg_1.a.yy), firstLeadingBit(-2147483647i), _wgslsmith_div_f32(arg_2, 1000f), _wgslsmith_f_op_f32(max(arg_1.b, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1366f, -849f, var_0.b.c.b)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.c.x, global2.c.c.x, var_0.c.c.x, 37105i), vec4<i32>(54137i, var_1.x, var_0.c.c.x, 46773i)), vec2<u32>(global2.c.d.a.x, u_input.b.x) | arg_1.a.zx, global2.c.c.x & 61808i, _wgslsmith_f_op_f32(-global2.c.d.b), arg_2), var_0.c.d.c.yyx), true);
    global2 = Struct_5(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~arg_1.a.ww, select(u_input.b.xz, vec2<u32>(72932u, 4294967295u), false)), ~firstLeadingBit(~global2.a)), Struct_3(vec3<bool>(false, var_2.x, select(select(global2.b.a.x, arg_0, arg_0), !var_0.b.a.x, true)), func_2(Struct_1(_wgslsmith_sub_i32(-1i, -1i), ~vec2<u32>(global2.b.b.a.x, 29849u), var_0.c.c.x << (var_0.b.c.a.x % 32u), -1354f, -566f)), func_2(Struct_1(global2.c.c.x, u_input.a.xx & u_input.b.zz, min(var_0.c.c.x, var_1.x), _wgslsmith_f_op_f32(-var_0.c.d.c.x), _wgslsmith_f_op_f32(-global2.b.b.b))), _wgslsmith_dot_vec3_u32(u_input.b, arg_1.a.xxy)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_2, arg_1.b, arg_0))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.c.d.a.zxw, _wgslsmith_sub_vec3_u32(var_0.c.d.a.yxz, vec3<u32>(1u, 45887u, 4294967295u))), var_0.a), vec3<i32>(~global2.c.c.x, var_1.x, 1i) | vec3<i32>(var_1.x & 0i, -12238i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9000i, 1i, -1i), vec3<i32>(2147483647i, var_0.c.c.x, var_0.c.c.x))), func_2(Struct_1(global2.c.c.x, ~vec2<u32>(var_0.c.b, global2.c.d.a.x), var_1.x << (4294967295u % 32u), _wgslsmith_f_op_f32(-405f - arg_1.c.x), _wgslsmith_f_op_f32(sign(var_0.c.a))))));
    let var_3 = select(select(select(var_2.zwz, var_2.wxw, select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), select(global2.b.a, vec3<bool>(global2.b.a.x, false, true), global2.b.a), var_0.c.c.x > 24790i)), var_2.yzx, select(vec3<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(true, false, true))), !global2.b.a, !(!vec3<bool>(var_0.b.a.x, true, global2.b.a.x)))), select(!select(var_0.b.a, var_2.xzx, var_2.x), !(!(!global2.b.a)), select(global2.b.a, select(select(var_0.b.a, var_2.wzy, var_0.b.a.x), global2.b.a, arg_1.a.x > global2.a), var_2.wxz)), !all(vec2<bool>(false, global1[_wgslsmith_index_u32(global2.c.d.a.x, 1u)])));
    return Struct_4(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + -985f)))), 1u, vec3<i32>(16318i, ~(-2147483647i), _wgslsmith_dot_vec3_i32(global2.c.c, vec3<i32>(-4203i, 2451i & var_1.x, _wgslsmith_div_i32(var_0.c.c.x, 0i)))), func_2(Struct_1(_wgslsmith_add_i32(i32(-1i) * -25479i, -29385i), _wgslsmith_div_vec2_u32(arg_1.a.yz, arg_1.a.xy), 0i, 454f, _wgslsmith_f_op_f32(-global2.c.d.c.x))));
}

fn func_4(arg_0: Struct_4) -> i32 {
    global2 = Struct_5(_wgslsmith_mult_u32(14896u, global2.a), Struct_3(global2.b.a, arg_0.d, Struct_2(firstTrailingBit(~global2.c.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-993f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, global2.c.a, global2.b.c.b, -398f)) - _wgslsmith_div_vec4_f32(arg_0.d.c, arg_0.d.c))), ~_wgslsmith_add_u32(global2.b.c.a.x, 0u) ^ _wgslsmith_sub_u32(~global2.c.d.a.x, ~global2.b.d)), func_1(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~arg_0.b, arg_0.b), 1u)], global2.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(515f * 1279f))) - _wgslsmith_f_op_f32(-arg_0.d.c.x))));
    global2 = Struct_5(global2.b.b.a.x, Struct_3(vec3<bool>(!global1[_wgslsmith_index_u32(~global2.a, 1u)], false, all(!global2.b.a)), func_2(Struct_1(~15958i, global2.c.d.a.yx, ~(-2147483647i), global2.c.a, 1249f)), Struct_2(global3[_wgslsmith_index_u32(arg_0.d.a.x, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -1754f), arg_0.d.c), global2.c.b), func_1(true, global2.c.d, arg_0.a));
    global2 = Struct_5(_wgslsmith_div_u32(4294967295u, ~(~arg_0.d.a.x)), global2.b, func_1(min(_wgslsmith_mult_u32(u_input.a.x, 0u), 47538u) <= u_input.a.x, func_2(Struct_1(abs(arg_0.c.x), vec2<u32>(global2.a, 4294967295u) ^ vec2<u32>(4294967295u, 16858u), -global2.c.c.x, _wgslsmith_f_op_f32(-global2.b.c.c.x), _wgslsmith_f_op_f32(exp2(global2.c.d.c.x)))), _wgslsmith_f_op_f32(exp2(global2.b.b.b))));
    let var_0 = false;
    let var_1 = _wgslsmith_mult_vec3_u32(select(arg_0.d.a.wzz, vec3<u32>(0u, ~59463u >> (~u_input.b.x % 32u), u_input.a.x), !var_0), (arg_0.d.a.wxw | firstTrailingBit(global2.b.b.a.xzz >> (arg_0.d.a.xwz % vec3<u32>(32u)))) ^ firstTrailingBit(countOneBits(u_input.a)));
    return _wgslsmith_clamp_i32(74759i, ~(-1i), reverseBits(global2.c.c.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = global2.c;
    var var_1 = any(!select(!(!global2.b.a), !global2.b.a, !(false | global1[_wgslsmith_index_u32(arg_2.x, 1u)])));
    global3 = array<vec4<u32>, 10>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2061f + 1244f))));
    global1 = array<bool, 1>();
    return global2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(select(global2.b.a.zx, !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), !(true && global1[_wgslsmith_index_u32(0u, 1u)]))), true);
    var var_1 = (all(select(select(vec3<bool>(global2.b.a.x, true, true), vec3<bool>(true, var_0.x, true), global2.b.a), global2.b.a, select(vec3<bool>(var_0.x, global2.b.a.x, global1[_wgslsmith_index_u32(global2.c.b, 1u)]), vec3<bool>(global1[_wgslsmith_index_u32(70244u, 1u)], false, false), vec3<bool>(false, true, false)))) != var_0.x) | all(global2.b.a.zz);
    var var_2 = func_5(vec3<i32>(~func_4(func_1(false, Struct_2(global3[_wgslsmith_index_u32(0u, 10u)], global2.c.a, vec4<f32>(-986f, global2.c.a, 671f, global2.c.d.c.x)), -1501f)), 0i, ~global2.c.c.x), Struct_1(min(69818i, global2.c.c.x), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 13131u), global2.b.b.a.xw), u_input.b.yy), _wgslsmith_dot_vec3_i32(global2.c.c, -countOneBits(vec3<i32>(global2.c.c.x, global2.c.c.x, global2.c.c.x))), _wgslsmith_f_op_f32(-global2.b.b.b), _wgslsmith_f_op_f32(-global2.b.b.c.x)), vec2<u32>(_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(14092u, u_input.a.x)), max(global2.c.d.a.x, u_input.a.x ^ 112732u)), u_input.a.x), reverseBits(vec3<i32>(0i, min(global2.c.c.x, -2147483647i), ~global2.c.c.x)) & countOneBits(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 26636i), firstTrailingBit(2147483647i), -4863i)));
    let var_3 = ~_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(49863u, 0u, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 38930u))), ~global2.b.b.a.wy);
    var var_4 = Struct_3(vec3<bool>(!global2.b.a.x, global2.b.a.x | global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global2.b.a.x), func_2(Struct_1(global2.c.c.x, func_2(Struct_1(-30485i, u_input.a.zz, 2147483647i, var_2.c.x, var_2.b)).a.ww, global2.c.c.x, _wgslsmith_f_op_f32(min(global2.b.b.c.x, 1f)), -572f)), Struct_2(~(~abs(global3[_wgslsmith_index_u32(1u, 10u)])), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.c), _wgslsmith_f_op_vec4_f32(global2.b.b.c - var_2.c))))), 1u);
    var var_5 = global2.b.b.c.x;
    global1 = array<bool, 1>();
    var_2 = Struct_2(((max(vec4<u32>(global2.a, var_4.b.a.x, 4294967295u, 9311u), global2.c.d.a) << ((global2.c.d.a << (global2.c.d.a % vec4<u32>(32u))) % vec4<u32>(32u))) ^ global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, u_input.b.x), 10u)]) << (vec4<u32>(var_2.a.x, ~_wgslsmith_mod_u32(2128u, u_input.b.x), ~select(u_input.a.x, var_2.a.x, global2.b.a.x), 0u) % vec4<u32>(32u)), 1493f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(226f, -545f, var_2.c.x, 2007f) + vec4<f32>(-1145f, 102f, var_4.c.b, var_4.c.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(-9356i, select(global2.c.c.x, global2.c.c.x, false), global2.c.c.x, 51289i), firstLeadingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global2.c.c.x, 2147483647i, 2147483647i, global2.c.c.x), ~vec4<i32>(30547i, -16435i, global2.c.c.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global2.c.c.x, -42010i, global2.c.c.x), vec4<i32>(global2.c.c.x, 40983i, global2.c.c.x, global2.c.c.x))))), func_5(abs(max(global2.c.c, select(vec3<i32>(global2.c.c.x, global2.c.c.x, global2.c.c.x), global2.c.c, global2.b.a.x))), Struct_1(2147483647i, _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, var_4.c.a.x), var_4.b.a.wx, vec2<u32>(var_4.b.a.x, 4294967295u) << (vec2<u32>(4294967295u, global2.a) % vec2<u32>(32u))), global2.c.c.x, var_4.c.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b)))), vec2<u32>(firstLeadingBit(~4294967295u), _wgslsmith_mod_u32(~0u, 24997u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c.c.x, ~2147483647i, countOneBits(25163i)), vec3<i32>(29810i ^ global2.c.c.x, -2147483647i, ~global2.c.c.x), vec3<i32>(min(global2.c.c.x, 2147483647i), global2.c.c.x, _wgslsmith_add_i32(global2.c.c.x, 1i)))).c.yw, ~(~select(~vec2<u32>(var_3.x, var_4.d), var_3, true)));
}

