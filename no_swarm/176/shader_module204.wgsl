struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_3,
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

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = -vec4<i32>(~abs(0i << (0u % 32u)), -49637i, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-26748i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i)) << (4294967295u % 32u)), -1i);
    global1 = array<Struct_1, 4>();
    return ~global0.c;
}

fn func_4(arg_0: u32) -> vec3<f32> {
    let var_0 = abs(countOneBits(_wgslsmith_div_u32(global0.c, ~arg_0)));
    var var_1 = global0.a ^ 10626i;
    var var_2 = !select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(true, true, all(vec3<bool>(true, true, true))));
    let var_3 = select(vec3<bool>(var_2.x, !var_2.x, var_2.x), !vec3<bool>(all(!var_2.yy), true, false), !vec3<bool>(any(!vec3<bool>(var_2.x, false, var_2.x)), all(vec2<bool>(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-global0.b) < -180f));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(1000f + 692f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))))), _wgslsmith_f_op_f32(trunc(255f)), _wgslsmith_f_op_f32(f32(-1f) * -803f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -582f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b * -1576f))), _wgslsmith_f_op_f32(-global0.b))));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), global0.b, -1861f);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(40213u << ((func_3(_wgslsmith_f_op_f32(select(410f, global0.b, false))) << (11060u % 32u)) % 32u)));
    let var_1 = vec3<f32>(-2008f, _wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(var_0.x, -827f, false)))), _wgslsmith_f_op_vec3_f32(func_4(5375u ^ ~global0.c)).x));
    let var_2 = global1[_wgslsmith_index_u32(31978u, 4u)];
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1671f, var_2.e, var_2.d.x, var_2.c.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b, var_1.x, var_0.x, -1352f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), global0.b, arg_1.x, arg_1.x))), vec4<f32>(724f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-725f)))), global0.b, 292f), false)), Struct_2(Struct_1(reverseBits(global0.c) != ~global0.c, !vec4<bool>(var_2.b.x, var_2.b.x, var_2.a, var_2.a), var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-698f, var_1.x), vec2<f32>(var_1.x, -3107f)) + vec2<f32>(global0.b, var_2.c.x)), _wgslsmith_f_op_f32(var_2.d.x - -800f)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 26715i, u_input.a), -vec3<i32>(global0.a, 16665i, -2147483647i)), _wgslsmith_div_i32(global0.a, u_input.a)), ~abs(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(0u, 0u, global0.c)), ~vec3<u32>(0u, global0.c, global0.c), ~vec3<u32>(global0.c, 4294967295u, global0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, 1477f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(464f, arg_1.x)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b, -1000f), var_0.xz))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-783f, 314f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 253f) * var_0.yz)))))), Struct_3(select(global0.a, u_input.a, var_2.b.x) >> (global0.c % 32u), _wgslsmith_f_op_f32(f32(-1f) * -2069f), 1u));
    var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(var_3.a)), Struct_2(Struct_1(any(var_2.b.xx), var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx)), _wgslsmith_div_vec2_f32(var_2.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_2.e), vec2<f32>(var_3.d.x, -1713f), var_3.b.a.b.wy))), -1726f), i32(-1i) * -global0.a, var_3.b.c), ~(~(~select(vec3<u32>(4294967295u, var_3.e.c, global0.c), var_3.c, var_2.b.xzz))), arg_1.yz, var_3.e);
    return var_3.c.yz;
}

fn func_1() -> f32 {
    let var_0 = vec2<i32>(-30964i, select(-2147483647i, 1i, any(vec4<bool>(true, false, true, true)))) >> (_wgslsmith_sub_vec2_u32(~max(~vec2<u32>(1u, 0u), select(vec2<u32>(global0.c, 0u), vec2<u32>(global0.c, 30161u), true)), func_2(~abs(5874i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(857f, 1679f, global0.b) - vec3<f32>(global0.b, global0.b, global0.b))))) % vec2<u32>(32u));
    let var_1 = firstLeadingBit(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(79433u, global0.c, global0.c, global0.c), vec4<u32>(global0.c, 61355u, global0.c, global0.c)))));
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(floor(global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -_wgslsmith_clamp_i32(u_input.a >> (global0.c % 32u), -1i, ~1i)), min(u_input.a, global0.a));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(select(819f, global0.b, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(181f - _wgslsmith_f_op_f32(f32(-1f) * -787f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.b, 1078f)))), vec4<f32>(754f, 1310f, _wgslsmith_f_op_f32(func_1()), global0.b))), Struct_2(global1[_wgslsmith_index_u32(~firstLeadingBit(1u), 4u)], firstTrailingBit(9184i), 0i), countOneBits(vec3<u32>(_wgslsmith_mult_u32(global0.c, 25348u), _wgslsmith_mult_u32(~global0.c, 1u), ~(~1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 1713f) + vec2<f32>(-281f, global0.b)))))), Struct_3(abs(abs(~global0.a)), _wgslsmith_f_op_f32(global0.b + global0.b), global0.c >> (~countOneBits(global0.c) % 32u)));
    let var_2 = var_1.c;
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global0 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(3716i, 1u);
}

