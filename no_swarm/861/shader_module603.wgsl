struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = -902f;

var<private> global2: array<i32, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~1u, 21u)];
    global1 = global0.d.x;
    var var_1 = Struct_2(max(reverseBits(1u), countOneBits(abs(1u))));
    var var_2 = ~abs(~abs(vec4<u32>(var_1.a, var_1.a, var_1.a, 121262u)));
    var_1 = Struct_2(var_1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1468f))))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(func_3());
    global2 = array<i32, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(trunc(-278f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-463f - global0.d.x), _wgslsmith_f_op_f32(-1000f + 601f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.x, -692f), _wgslsmith_f_op_f32(round(global0.d.x))))) - _wgslsmith_div_vec3_f32(vec3<f32>(862f, 1000f, global0.d.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2028f, global0.d.x, -1001f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, -108f, 264f) * vec3<f32>(global0.d.x, global0.d.x, -560f)))))));
    var var_1 = min(arg_1.a, arg_1.a);
    var var_2 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, firstLeadingBit(arg_1.a & 0u), _wgslsmith_sub_u32(~1u, min(arg_1.a, 4294967295u)), 22800u), ~(~firstTrailingBit(vec4<u32>(4294967295u, arg_1.a, arg_1.a, 35007u)))));
    return Struct_1(global0.a.xy);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = i32(-1i) * -global0.c;
    var var_1 = vec4<bool>(all(select(global0.b.yxy, select(!vec3<bool>(true, global0.b.x, false), vec3<bool>(arg_0.x, arg_0.x, global0.b.x), true), !(!vec3<bool>(true, arg_0.x, true)))), all(global0.b.xwy), true, arg_0.x);
    global1 = global0.d.x;
    global0 = Struct_3(global0.a, !(!arg_0), ~arg_2.x, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d.x), 817f)), 137f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))), min(arg_2.wy >> (vec2<u32>(~42692u, 12374u) % vec2<u32>(32u)), arg_1.a));
    let var_2 = all(!(!(!arg_0.yz))) || false;
    return Struct_3(vec4<i32>(~(-(~var_0)), _wgslsmith_add_i32(-1i, 1i), arg_2.x, abs(20238i)), !vec4<bool>(global0.b.x, true, !arg_0.x, false), _wgslsmith_div_i32(_wgslsmith_div_i32(-abs(2147483647i), 11649i), -19947i), vec2<f32>(1325f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.d.x))))), global0.e);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = ~_wgslsmith_sub_u32(~59547u, 1u);
    global1 = arg_0.d.x;
    var var_1 = global0.b.x;
    var var_2 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1433f), _wgslsmith_f_op_f32(floor(arg_1)))))))));
    let var_3 = global0.c;
    return global0.d.x;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_5(func_4(!vec4<bool>(true, global0.b.x, global0.b.x, false), func_2(global0.b.xy, Struct_2(24094u)), global0.a), 566f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.d.x, global0.d.x))))), global0.d.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1053f, global0.d.x), -451f)))));
    var var_1 = func_4(vec4<bool>(!(!all(vec2<bool>(global0.b.x, global0.b.x))), true, global0.b.x, false), func_2(global0.b.yz, arg_1), global0.a);
    var var_2 = vec2<i32>(-1i) * -var_1.e;
    var var_3 = Struct_2(_wgslsmith_mod_u32(arg_1.a, firstLeadingBit(arg_1.a) ^ (8543u | arg_1.a)) >> (firstTrailingBit(~countOneBits(4294967295u)) % 32u));
    let var_4 = !(!(!var_1.b.wxw));
    return ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_1.a, arg_1.a, arg_1.a)), select(~vec3<u32>(0u, 0u, arg_1.a), vec3<u32>(arg_1.a, var_3.a, var_3.a) ^ vec3<u32>(arg_1.a, var_3.a, 1u), !var_4.x) & _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_3.a, 115466u, var_3.a)), vec3<u32>(arg_1.a, 4294967295u, 43429u), vec3<u32>(1u, var_3.a, 4294967295u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(-2147483647i | global0.a.x, ~(-2147483647i), -2147483647i, reverseBits(59389i))), vec4<i32>(1i, u_input.a, _wgslsmith_div_i32(global0.a.x, ~global0.c), ~_wgslsmith_sub_i32(-2147483647i, -1i)), select(global0.a ^ global0.a, -global0.a, true & global0.b.x) ^ _wgslsmith_add_vec4_i32(global0.a, vec4<i32>(global0.c, -2147483647i, 1i, -1i)));
    let var_1 = -1715f;
    var var_2 = func_4(!global0.b, Struct_1(vec2<i32>(_wgslsmith_mult_i32(-global2[_wgslsmith_index_u32(arg_0.x, 21u)], u_input.a), min(global0.e.x, 20764i) & -1i)), global0.a);
    var var_3 = abs(vec4<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.wz, vec2<u32>(arg_0.x, ~arg_0.x)), 0u, firstTrailingBit(_wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(arg_0.x, 55559u, 54691u, arg_0.x) >> (arg_0 % vec4<u32>(32u))))));
    var var_4 = func_4(select(vec4<bool>(var_2.b.x, true, global0.b.x, all(var_2.b.xww)), select(!vec4<bool>(var_2.b.x, var_2.b.x, global0.b.x, false), func_4(select(vec4<bool>(true, true, true, true), global0.b, var_2.b), Struct_1(vec2<i32>(2147483647i, -2147483647i)), global0.a).b, any(!global0.b.zy)), all(global0.b.xx)), func_2(select(func_4(global0.b, func_2(var_2.b.ww, Struct_2(14065u)), vec4<i32>(var_0.x, var_2.e.x, var_0.x, -42119i)).b.zy, !(!global0.b.yw), select(global0.b.wz, vec2<bool>(global0.b.x, true), true)), Struct_2(min(arg_0.x, ~arg_0.x))), var_2.a);
    return Struct_3(vec4<i32>(~_wgslsmith_mult_i32(0i, 2147483647i), var_2.e.x, 0i, ~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-9490i, var_4.e.x), var_4.e))), !(!select(var_2.b, !vec4<bool>(var_4.b.x, false, global0.b.x, global0.b.x), true)), _wgslsmith_mod_i32(0i, select(var_4.e.x, 1i, true)), _wgslsmith_f_op_vec2_f32(select(var_2.d, _wgslsmith_f_op_vec2_f32(var_4.d - vec2<f32>(arg_1.x, -1000f)), select(func_4(!var_2.b, Struct_1(var_0.wy), global0.a).b.yy, !(!vec2<bool>(var_4.b.x, global0.b.x)), any(!var_4.b.wzy)))), func_4(func_4(!(!vec4<bool>(global0.b.x, global0.b.x, var_2.b.x, var_2.b.x)), func_2(!vec2<bool>(var_4.b.x, true), Struct_2(22310u)), -global0.a).b, func_2(vec2<bool>(var_2.b.x, all(vec3<bool>(false, true, var_2.b.x))), Struct_2(76956u)), select(abs(vec4<i32>(global2[_wgslsmith_index_u32(85026u, 21u)], global0.c, u_input.a, -9016i)) << ((vec4<u32>(33106u, 19692u, 39736u, var_3.x) << (vec4<u32>(var_3.x, 22419u, 1u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), var_2.a, var_4.b.x)).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.xw;
    global2 = array<i32, 21>();
    var var_1 = func_6(firstLeadingBit(vec4<u32>(~82146u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 72976u, 21733u), func_1(0i, Struct_2(0u))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(3098u, 69864u, 0u), vec3<u32>(7208u, 4294967295u, 18400u)), select(vec3<u32>(4294967295u, 31149u, 1u), vec3<u32>(1u, 55371u, 23428u), global0.b.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(81022u, 0u), vec2<u32>(35951u, 43245u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1022f))) * _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1081f))))), global0.d.x, -296f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(global0.a.x & u_input.a, u_input.a), 0u);
}

