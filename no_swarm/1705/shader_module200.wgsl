struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec2<i32>(-30653i, -1i), vec3<u32>(10104u, 44098u, 4294967295u)), false, vec3<bool>(true, false, false));

var<private> global1: array<vec3<u32>, 16>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(948f, -2319f), vec4<bool>(false, false, false, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_3, _wgslsmith_f_op_vec2_f32(max(arg_3, vec2<f32>(1284f, -472f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global2.a.x)))), vec4<bool>(any(!arg_2.zx), false, true, false & all(arg_2.zx)));
    let var_1 = arg_1.x;
    let var_2 = global0.a.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, ~_wgslsmith_mod_u32(25286u, var_1), ~(~global0.a.b.x)), global1[_wgslsmith_index_u32(~abs(1u) & ~global0.a.b.x, 16u)]) % 32u);
    let var_3 = false;
    var var_4 = Struct_2(abs(vec2<i32>(firstLeadingBit(global0.a.a.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.wzx, vec3<i32>(35848i, u_input.a, var_2)), global0.a.a.x))), global1[_wgslsmith_index_u32(var_1, 16u)]);
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<vec3<u32>, 16>();
    var var_0 = !(global2.b.x != (select(func_3(arg_2, vec2<u32>(arg_3.x, 0u), vec4<bool>(global0.b, global0.c.x, false, false), global2.a), true, select(true, false, false)) & select(true, global2.b.x, !global2.b.x)));
    global0 = Struct_4(global0.a, global2.b.x, select(global0.c, !select(global2.b.wxx, global0.c, all(global2.b)), false));
    global0 = Struct_4(global0.a, global0.a.b.x > arg_3.x, vec3<bool>(!global0.b, global2.b.x, global2.b.x));
    var var_1 = ~firstTrailingBit(-_wgslsmith_clamp_i32(u_input.a, arg_0.x, 1i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a.x, arg_2))), select(select(global2.b, vec4<bool>(all(vec3<bool>(true, true, global2.b.x)), !global2.b.x, false, !global0.b), global2.b), select(!select(vec4<bool>(false, true, global2.b.x, global2.b.x), global2.b, global2.b), vec4<bool>(!global0.b, false, global0.c.x, true), global2.b), true));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = 56997u;
    global2 = func_2(~vec3<i32>(u_input.a, i32(-1i) * -2147483647i, firstLeadingBit(17111i) | (global0.a.a.x >> (global0.a.b.x % 32u))), global0.a.a.x, 1000f, ~(~firstTrailingBit(vec4<u32>(global0.a.b.x, 14013u, 25414u, global0.a.b.x))));
    var var_1 = Struct_3(firstLeadingBit(0u), 2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(900f, -753f, arg_0.a.x, global2.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, arg_0.a.x, arg_0.a.x, -521f)), global2.b.x)))) - vec4<f32>(492f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), 642f), 524f, 493f)), true);
    return vec4<u32>(78747u, 77473u, firstTrailingBit(_wgslsmith_sub_u32(abs(firstLeadingBit(global0.a.b.x)), 1u)), ~abs(var_1.a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = select(arg_0.b.zwx, select(select(vec3<bool>(arg_0.b.x || global0.c.x, global0.b, !global0.b), arg_0.b.wxz, !any(vec2<bool>(global2.b.x, arg_1.d))), !select(select(vec3<bool>(false, false, arg_0.b.x), vec3<bool>(global2.b.x, global0.c.x, global2.b.x), arg_0.b.x), select(vec3<bool>(arg_1.d, false, global2.b.x), arg_0.b.zxx, global2.b.x), true), !global0.c.x), true);
    let var_1 = _wgslsmith_mod_i32(global0.a.a.x | _wgslsmith_mod_i32(-9268i >> (1u % 32u), 2147483647i), -_wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(global0.a.a.x, 26260i, 0i, 0i)));
    var var_2 = max(select(_wgslsmith_mod_vec4_u32(func_4(func_2(vec3<i32>(arg_1.b, 2147483647i, global0.a.a.x), var_1, 150f, vec4<u32>(arg_1.a, 4294967295u, 33770u, arg_1.a)), ~(-75282i)), ~(~vec4<u32>(global0.a.b.x, arg_1.a, 0u, 0u))), abs(vec4<u32>(_wgslsmith_clamp_u32(global0.a.b.x, 223u, 21076u), 1u, global0.a.b.x, ~global0.a.b.x)), all(vec4<bool>(false, global2.b.x, select(true, true, true), true))), reverseBits(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b.x, global0.a.b.x, arg_1.a, 4294967295u), vec4<u32>(21777u, global0.a.b.x, arg_1.a, global0.a.b.x)), ~vec4<u32>(28660u, 0u, arg_1.a, arg_1.a))));
    var var_3 = func_2(vec3<i32>(1i, -reverseBits(-73343i), _wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(global0.a.a.x, global0.a.a.x)), -2147483647i)), ~(var_1 << (0u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), vec4<u32>(_wgslsmith_mult_u32(arg_1.a, ~(var_2.x >> (9876u % 32u))), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), global0.a.b), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(54867u, global0.a.b.x, 0u, 56071u), vec4<u32>(1u, 4294967295u, 1u, 0u)), vec4<u32>(arg_1.a, global0.a.b.x, 1u, arg_1.a) ^ vec4<u32>(1u, 1u, arg_1.a, arg_1.a))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(482f)) + -1127f))), var_3.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.x)) - var_3.a.x)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((u_input.b.x >> (~32287u % 32u)) <= 71171i);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(407f))), _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(global2.a.x + 1742f), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-1000f, global2.a.x), vec4<bool>(false, false, false, false)), Struct_3(global0.a.b.x, global0.a.a.x, vec4<f32>(global2.a.x, 1894f, global2.a.x, 1505f), true)))) * _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-539f, -101f, -480f), vec3<f32>(984f, global2.a.x, global2.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(global0.a.b.x, 16u)] | vec3<u32>(global0.a.b.x, global0.a.b.x, global0.a.b.x), vec3<u32>(global0.a.b.x, 79022u, 4294967295u)), ~vec3<u32>(4294967295u, global0.a.b.x, 9196u)), min(_wgslsmith_mod_u32(1u, ~0u), 0u >> (_wgslsmith_mod_u32(global0.a.b.x, global0.a.b.x) % 32u))));
}

