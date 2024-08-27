struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, 1u, -1i, vec2<f32>(708f, -1000f), 1u);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 11>;

var<private> global3: Struct_5 = Struct_5(vec4<bool>(false, true, false, false), Struct_4(vec2<i32>(60456i, -8057i), vec3<f32>(860f, -1751f, 780f), vec4<i32>(-46416i, 1i, -20300i, 0i)), vec2<f32>(-426f, 180f), 55027u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.c.x))), -443f, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.b.x)))));
    let var_1 = _wgslsmith_mod_u32(arg_1.d, ~u_input.e) == reverseBits(~arg_1.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(global0.d.x + 3636f)))) * var_0.x) + 1268f);
    let var_3 = Struct_1(386f, ~(firstLeadingBit(global0.c) << (75001u % 32u)));
    let var_4 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x >> (0u % 32u), countOneBits(26070u), ~38628u, u_input.d)), vec4<u32>(4294967295u, reverseBits(global3.d), ~1u, global0.b));
    return _wgslsmith_sub_i32(u_input.b, -var_3.b);
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1471f), global3.b.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, _wgslsmith_div_f32(global3.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x + 1842f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(660f + 553f)), _wgslsmith_f_op_f32(round(-1076f)), all(vec4<bool>(true, false, true, global1.x))))));
    global1 = select(vec4<bool>(all(select(!vec4<bool>(true, global1.x, global3.a.x, global3.a.x), vec4<bool>(arg_0.x, global0.a, global1.x, false), 13451u <= u_input.c.x)), true, select(all(global3.a), global3.a.x, all(select(vec4<bool>(false, false, global0.a, false), global3.a, true))), global0.a | select(any(vec2<bool>(global0.a, false)), true & global1.x, all(global3.a.yw))), global3.a, any(!select(!global3.a, global3.a, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b.b - vec3<f32>(global0.d.x, global0.d.x, _wgslsmith_f_op_f32(select(1126f, var_1.x, global3.a.x))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-921f, global3.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -646f))))))));
    let var_3 = _wgslsmith_add_i32(-_wgslsmith_div_i32(global0.c, abs(func_2(false, Struct_5(global3.a, global3.b, vec2<f32>(var_2.x, var_2.x), global0.b)))), -global3.b.c.x);
    return vec4<bool>(!all(global3.a.zy), true, global0.a, !(!all(!vec4<bool>(global0.a, global0.a, false, arg_0.x))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = vec3<bool>(true, !select(global0.a, true, all(select(vec3<bool>(false, true, false), global1.wyz, vec3<bool>(true, global3.a.x, false)))), !(_wgslsmith_mod_i32(u_input.b, 18620i) >= _wgslsmith_clamp_i32(1i, func_2(true, Struct_5(vec4<bool>(true, false, global3.a.x, global3.a.x), global2[_wgslsmith_index_u32(global3.d, 11u)], global0.d, u_input.c.x)), -global3.b.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b.b));
    global1 = func_3(vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global3.b.b.x, 1106f)), global3.b.b.x)) != _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -740f)), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1525f, 1742f) - global0.d) - _wgslsmith_f_op_vec2_f32(abs(var_1.yz))))) + vec2<f32>(_wgslsmith_div_f32(var_1.x, -1694f), _wgslsmith_f_op_f32(sign(250f))));
    var var_3 = Struct_5(global3.a, global2[_wgslsmith_index_u32(abs(u_input.c.x), 11u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d - var_1.xy)))))), ~(~(4294967295u >> (u_input.a.x % 32u))));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(!(!global3.a), func_1(_wgslsmith_mult_u32(~global0.e, u_input.c.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -618f) + 712f), global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-160f))))), global0.e);
    let var_1 = u_input.a;
    global3 = var_0;
    let var_2 = -768f;
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~var_0.d ^ reverseBits(var_0.d), u_input.d), ~(~vec3<u32>(var_1.x, 123446u, global0.e))) & reverseBits(vec3<u32>(49365u, var_0.d, 6305u) & ~firstLeadingBit(vec3<u32>(0u, var_1.x, 4294967295u)));
    let var_4 = Struct_3(max(func_1(61528u).c.x | -11096i, -1i), ~global3.b.a.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1313f, global0.d.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1785f + 391f), var_2, var_0.b.b.x) * _wgslsmith_f_op_vec3_f32(exp2(var_0.b.b))))));
    global1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

