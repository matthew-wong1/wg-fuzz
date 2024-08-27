struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool = true;

var<private> global2: array<vec2<f32>, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = select(abs(~min(~vec3<u32>(global0.x, 66557u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.a), vec3<u32>(4294967295u, 100355u, global0.x)))), ~max(abs(vec3<u32>(global0.x, global0.x, global0.x)), ~(~vec3<u32>(30248u, global0.x, 1u))), any(select(!select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false)), vec4<bool>(0i != u_input.b, all(vec4<bool>(arg_0.x, arg_0.x, false, true)), true, any(vec3<bool>(arg_0.x, arg_0.x, true))), select(select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, false, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, false, arg_0.x, true)), !vec4<bool>(arg_0.x, true, true, arg_0.x)))));
    global1 = false | (-303f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-3010f)) - _wgslsmith_f_op_f32(f32(-1f) * -1134f))));
    global1 = true;
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(1u, global0.x, 1u), ~vec3<u32>(global0.x, global0.x, u_input.a)), vec3<u32>(reverseBits(global0.x), 4294967295u, _wgslsmith_mod_u32(global0.x, 15483u)), ~(~vec3<u32>(22833u, global0.x, u_input.c.x))), _wgslsmith_dot_vec2_u32(u_input.c, ~global0.zz | min(global0.zx, u_input.c))), Struct_1(vec3<u32>(firstLeadingBit(1u) << (reverseBits(u_input.c.x) % 32u), ~(u_input.a << (global0.x % 32u)), 0u), select(0u, _wgslsmith_mod_u32(4294967295u, global0.x) & u_input.a, _wgslsmith_clamp_i32(2147483647i, u_input.b, 1i) < u_input.b)), select(vec4<bool>(!arg_0.x & (u_input.b >= u_input.b), !(!arg_0.x), !arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, true, 20430i == (u_input.b ^ 2147483647i))));
    global0 = var_0.a.a;
    return arg_0.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec3<u32> {
    global0 = ~firstTrailingBit(arg_2.d.a);
    var var_0 = !vec3<bool>(_wgslsmith_mod_u32(arg_2.d.b, ~59927u) < _wgslsmith_clamp_u32(1u, global0.x, arg_2.e.x), arg_2.c, arg_0.x);
    let var_1 = var_0.x && false;
    var var_2 = arg_2.c;
    let var_3 = Struct_2(Struct_1(vec3<u32>(~global0.x, global0.x, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(arg_2.d.a, vec3<u32>(global0.x, 4294967295u, arg_2.e.x)))), 1u), Struct_1(abs(arg_2.d.a), u_input.c.x), vec4<bool>(true, !(!any(vec3<bool>(var_1, arg_0.x, arg_0.x))), !(!arg_2.c) || true, any(arg_0.wz)));
    return max(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.e.x, 35329u, 0u), vec3<u32>(u_input.c.x, arg_2.d.b, 27277u)) >> (vec3<u32>(max(u_input.a, global0.x), 10317u, abs(global0.x)) % vec3<u32>(32u)), ~vec3<u32>(abs(4294967295u), arg_2.e.x ^ 30223u, firstLeadingBit(4294967295u))) & ~(vec3<u32>(countOneBits(1u), var_3.b.b, ~u_input.a) | arg_2.d.a);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -835f) >= _wgslsmith_f_op_f32(ceil(arg_2));
    global2 = array<vec2<f32>, 15>();
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, -26051i), -1i);
    var var_2 = Struct_2(Struct_1(func_4(vec4<bool>(arg_0, func_3(vec2<bool>(var_0, false)), arg_0 || arg_0, false), 580f, Struct_3(select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, true, true, false), vec4<bool>(arg_0, var_0, true, var_0)), select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, false)), var_0, Struct_1(arg_1, global0.x), _wgslsmith_add_vec2_u32(u_input.c, arg_1.zz)), ~min(u_input.b, u_input.b)), ~_wgslsmith_mod_u32(func_4(vec4<bool>(true, arg_0, false, false), arg_2, Struct_3(vec4<bool>(arg_0, var_0, arg_0, true), vec2<bool>(var_0, var_0), arg_0, Struct_1(vec3<u32>(global0.x, arg_1.x, arg_1.x), global0.x), vec2<u32>(16381u, arg_1.x)), u_input.b).x, firstLeadingBit(4294967295u))), Struct_1(firstLeadingBit(reverseBits(abs(vec3<u32>(22859u, u_input.a, 19639u)))), ~24857u), !(!vec4<bool>(all(vec3<bool>(arg_0, false, arg_0)), false, true, any(vec3<bool>(true, true, true)))));
    global1 = true;
    return firstTrailingBit(vec4<u32>(76992u, _wgslsmith_mult_u32(max(var_2.b.a.x, var_2.b.a.x) ^ _wgslsmith_clamp_u32(global0.x, var_2.a.a.x, var_2.a.a.x), arg_1.x), u_input.c.x, ~_wgslsmith_clamp_u32(~var_2.a.b, ~var_2.a.a.x, global0.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(arg_3.x, global0.x, u_input.a))), ~arg_3.zyz), 15u)], vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-325f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(335f, arg_2.x)) - _wgslsmith_div_f32(2244f, arg_2.x)))));
    var var_1 = Struct_3(vec4<bool>(true, func_3(vec2<bool>(true, arg_3.x <= 0u)), true, false), !vec2<bool>(func_4(vec4<bool>(false, false, true, true), arg_2.x, Struct_3(vec4<bool>(true, false, true, false), vec2<bool>(false, true), false, Struct_1(arg_3.xyw, global0.x), u_input.c), -1i).x >= arg_3.x, all(vec3<bool>(true, false, true))), select(arg_1.x > -54788i, !(false || (u_input.c.x != 1u)), true), Struct_1(vec3<u32>(u_input.c.x >> (35249u % 32u), arg_3.x, min(4294967295u, ~1296u)), arg_3.x), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = 13955u;
    global1 = all(var_1.b);
    return vec4<bool>(false, false, var_1.b.x && any(var_1.a), var_1.a.x);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, 240f, 779f, -1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-274f, 1000f, 2066f, -1479f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1089f, 1157f, -697f, 1083f) - vec4<f32>(286f, 1000f, 1515f, 1251f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 793f, -552f, -806f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-847f, -1000f, 1073f, -837f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1034f, 191f, -3267f, 209f), vec4<f32>(-486f, -1245f, 1193f, 366f))), any(vec3<bool>(false, true, false))))))));
    var var_1 = Struct_3(vec4<bool>(true, any(func_5(vec4<i32>(u_input.b, -4688i, arg_0, -1i), ~vec4<i32>(u_input.b, u_input.b, 19670i, u_input.b), vec3<f32>(var_0.x, 1000f, 146f), func_2(true, vec3<u32>(1u, u_input.c.x, u_input.c.x), -645f))), !(_wgslsmith_div_i32(arg_0, -2147483647i) <= 1i), !(!(26022u > u_input.c.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true, Struct_1(min(~vec3<u32>(u_input.a, 4294967295u, 10503u), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, global0.x), vec3<u32>(0u, u_input.c.x, 1u))), 57748u), ~select(~global0.xy, u_input.c, select(vec2<bool>(true, false), vec2<bool>(true, false), false)) >> (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)));
    var_1 = Struct_3(select(vec4<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -20640i, 40045i, arg_0), vec4<i32>(0i, u_input.b, 33232i, -34940i)) == _wgslsmith_div_i32(arg_0, u_input.b), var_1.a.x), select(func_5(vec4<i32>(0i, -2147483647i, arg_0, 2147483647i), -vec4<i32>(2482i, -1i, -21989i, 1i), vec3<f32>(var_0.x, -124f, 1695f), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 28937u, global0.x), vec4<u32>(1u, 20023u, var_1.e.x, global0.x))), !(!var_1.a), !vec4<bool>(var_1.c, false, true, var_1.b.x)), true), select(var_1.b, var_1.a.wz, !(!var_1.a.yy)), true, Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.d.a, select(var_1.d.a, var_1.d.a, false)), vec3<u32>(72245u, var_1.d.a.x, func_4(var_1.a, var_0.x, Struct_3(var_1.a, var_1.b, var_1.b.x, var_1.d, vec2<u32>(u_input.a, 408u)), arg_0).x)), _wgslsmith_sub_u32(max(1u, reverseBits(u_input.a)), countOneBits(u_input.a) ^ _wgslsmith_dot_vec3_u32(var_1.d.a, var_1.d.a))), global0.yy);
    global1 = !(!(57260u <= firstTrailingBit(~19825u)));
    var var_2 = Struct_3(select(!vec4<bool>(all(vec4<bool>(var_1.b.x, var_1.a.x, var_1.b.x, true)), var_1.c, true, select(var_1.b.x, var_1.b.x, var_1.b.x)), var_1.a, var_1.a), vec2<bool>(!func_3(!var_1.a.wy), var_1.b.x), var_1.c, Struct_1(countOneBits(abs(var_1.d.a)), _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(4294967295u, u_input.a) | ~u_input.a)), ~(~_wgslsmith_sub_vec2_u32(~u_input.c, abs(var_1.d.a.zx))));
    return _wgslsmith_f_op_f32(max(var_0.x, -111f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2257f, 350f, 181f) - vec3<f32>(906f, -2314f, -1139f)) - vec3<f32>(-605f, -607f, 645f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, 1000f, 1017f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(903f, 897f, -209f) - vec3<f32>(669f, -1112f, -1010f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-107f, 269f, 962f) - vec3<f32>(-347f, -1126f, -905f)))))));
    global1 = min(u_input.b, firstLeadingBit(abs(max(11944i, -2147483647i)))) <= u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2252f, _wgslsmith_f_op_f32(func_1(u_input.b)))) + 276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = Struct_3(select(vec4<bool>(true, false, true, (global0.x >= u_input.c.x) && true), select(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, false), !func_5(vec4<i32>(2147483647i, -17369i, u_input.b, -2147483647i), vec4<i32>(u_input.b, -18017i, 48449i, u_input.b), vec3<f32>(var_0.x, 843f, var_1.x), vec4<u32>(u_input.c.x, u_input.a, 51090u, u_input.a)), true), true), select(!(!func_5(vec4<i32>(u_input.b, u_input.b, -762i, u_input.b), vec4<i32>(u_input.b, -44792i, u_input.b, u_input.b), var_1.wxz, vec4<u32>(u_input.c.x, 8696u, global0.x, u_input.c.x)).yy), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, true, false)))), true, Struct_1(~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.c.x), vec3<u32>(u_input.a, 20340u, 4294967295u))), min(reverseBits(min(u_input.c.x, global0.x)), firstLeadingBit(max(u_input.a, 1u)))), abs(~select(countOneBits(vec2<u32>(u_input.c.x, 0u)), ~global0.xy, true)));
    var var_3 = Struct_3(!var_2.a, !vec2<bool>(any(var_2.a.xzx), all(!var_2.a)), !select(true, select(var_2.b.x, var_2.a.x, true), var_2.c) || var_2.c, Struct_1(_wgslsmith_mod_vec3_u32(var_2.d.a, vec3<u32>(_wgslsmith_mult_u32(global0.x, 1684u), max(global0.x, global0.x), func_2(var_2.b.x, var_2.d.a, var_1.x).x)), ~(abs(var_2.e.x) | ~106363u)), ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, abs(_wgslsmith_clamp_i32(-66464i, -u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(34034i, u_input.b, u_input.b, 35421i), vec4<i32>(-9982i, u_input.b, u_input.b, 14545i)))), vec2<i32>(34782i, abs(-2147483647i) & firstTrailingBit(_wgslsmith_div_i32(u_input.b, 1i))), ~(~reverseBits(var_3.d.a.yx)));
}

