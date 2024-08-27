struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    let var_0 = global2.e.wyx;
    var var_1 = _wgslsmith_f_op_f32(797f - var_0.x);
    let var_2 = global1.e;
    global0 = array<Struct_2, 1>();
    var var_3 = _wgslsmith_f_op_f32(arg_2.x - arg_2.x);
    return global1.b.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(global1.a, vec2<u32>(_wgslsmith_add_u32(func_3(4294967295u, 0u, vec3<f32>(-123f, -119f, global1.e.x)), 6032u) ^ reverseBits(global1.b.x), global2.b.x), u_input.a >> ((~_wgslsmith_mod_u32(global1.b.x, global2.b.x) ^ ~func_3(63619u, global2.b.x, global1.e.wxz)) % 32u), ~_wgslsmith_sub_vec2_i32(reverseBits(-global1.d), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(57850i, 0i, global1.d.x, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, -11959i)), _wgslsmith_add_i32(8921i, global2.d.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2038f * _wgslsmith_f_op_f32(-global1.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-439f)))) - 268f), -129f, 479f));
    var var_1 = (-1i >> (~(~firstTrailingBit(71802u)) % 32u)) & -2147483647i;
    let var_2 = Struct_1(vec2<bool>(global2.a.x, global1.a.x), vec2<u32>(~(global2.b.x | 4294967295u), min(34100u, global1.b.x | global1.b.x)), i32(-1i) * -13284i, ~vec2<i32>(-55i, _wgslsmith_mult_i32(u_input.a, global1.c) >> (abs(1u) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(955f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(669f + global1.e.x)))), -1425f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.e.x))))));
    global1 = var_2;
    global0 = array<Struct_2, 1>();
    return vec4<bool>(!(var_2.a.x != !global2.a.x), var_2.a.x, false, !(var_2.e.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.x)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<bool>(!(!(_wgslsmith_mod_i32(u_input.a, u_input.a) <= -global1.d.x)), global1.a.x & any(!select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, false, global1.a.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.e.ywz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e.x, 537f, 350f) * global1.e.zwy), vec3<f32>(global1.e.x, global1.e.x, -985f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e.zyy - global2.e.yxy))), any(select(vec4<bool>(false, var_0.x, global2.a.x, global2.a.x), func_2(), vec4<bool>(true, global2.a.x, false, arg_0))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e.xwx * _wgslsmith_f_op_vec3_f32(-global1.e.wwx)) * _wgslsmith_f_op_vec3_f32(floor(global2.e.yxx))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.e.xzw))), vec3<f32>(_wgslsmith_f_op_f32(max(1304f, global2.e.x)), global1.e.x, _wgslsmith_f_op_f32(abs(796f)))))));
    var var_2 = _wgslsmith_f_op_f32(step(-1269f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(838f - _wgslsmith_f_op_f32(abs(global1.e.x))), _wgslsmith_f_op_f32(step(var_1.x, 187f)))))) >= _wgslsmith_f_op_f32(914f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.x))))));
    var var_3 = global1.e;
    var var_4 = ~_wgslsmith_clamp_vec4_i32(~(_wgslsmith_div_vec4_i32(vec4<i32>(69279i, 1i, global2.d.x, global1.d.x), vec4<i32>(2147483647i, 2147483647i, global1.d.x, 20734i)) & max(vec4<i32>(global2.c, u_input.a, global1.c, global1.c), vec4<i32>(1i, global2.d.x, 2147483647i, -2147483647i))), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(30756i, -32630i, -5410i, global1.d.x), vec4<i32>(u_input.a, 32846i, global1.d.x, global2.c) >> (vec4<u32>(global1.b.x, global2.b.x, 1u, global2.b.x) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(global1.c, u_input.a, global1.d.x, 1i) | vec4<i32>(global2.d.x, global1.d.x, u_input.a, global1.d.x)), false), vec4<i32>(u_input.a, ~(-11252i >> (global1.b.x % 32u)), u_input.a, max(global1.d.x, select(global2.d.x, u_input.a, global1.a.x))));
    return Struct_1(!vec2<bool>(!global1.a.x != (-2147483647i < global1.c), global1.e.x == _wgslsmith_f_op_f32(-1760f + global2.e.x)), global1.b, _wgslsmith_mod_i32(8379i, -3793i), -global1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.e * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1044f, global2.e.x, 564f, 232f))) - _wgslsmith_f_op_vec4_f32(global1.e * vec4<f32>(var_3.x, global2.e.x, -451f, -958f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global2.a.x);
    global2 = Struct_1(global2.a, _wgslsmith_div_vec2_u32(global2.b, vec2<u32>(_wgslsmith_clamp_u32(global2.b.x, 6162u, global1.b.x), 1u) & ~(global1.b << (vec2<u32>(1u, global2.b.x) % vec2<u32>(32u)))), ~(_wgslsmith_clamp_i32(global1.c, 1i, ~global2.c) << (15543u % 32u)), global2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1342f, 1803f, -405f, _wgslsmith_f_op_f32(step(global2.e.x, -633f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.e.x)), -444f, _wgslsmith_f_op_f32(trunc(-1906f)), _wgslsmith_f_op_f32(-global2.e.x))) - global2.e));
    global1 = Struct_1(vec2<bool>(any(vec4<bool>(all(vec3<bool>(global1.a.x, true, true)), 6704u < global1.b.x, true, true)), any(!vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true)) || global1.a.x), global2.b, ~(global1.c & ~(-23386i)) ^ reverseBits((-3715i & u_input.a) << (firstTrailingBit(38664u) % 32u)), func_1(_wgslsmith_f_op_f32(-2043f - -1268f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x))).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(362f + _wgslsmith_div_f32(global1.e.x, 445f)), _wgslsmith_f_op_f32(step(global2.e.x, _wgslsmith_f_op_f32(global1.e.x * -430f))), global1.e.x, global1.e.x) - vec4<f32>(-1022f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.e.x * global2.e.x), -1180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), _wgslsmith_f_op_f32(-486f * global2.e.x))));
    var var_0 = ~(-vec4<i32>(abs(_wgslsmith_mult_i32(u_input.a, 2147483647i)), countOneBits(2147483647i), global1.c >> (min(0u, global2.b.x) % 32u), 2147483647i));
    global0 = array<Struct_2, 1>();
    var var_1 = select(global2.a, vec2<bool>(global1.a.x, !global1.a.x), func_1(true).a.x);
    var_1 = !global2.a;
    var_1 = !global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2.e.x), 35039i, vec4<i32>(select(-14662i, -global1.d.x, true) | 2147483647i, 2969i & var_0.x, ~(-(global2.c | -1i)), -(~1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -878f), 1000f)))), ~_wgslsmith_clamp_i32(global2.d.x, var_0.x, u_input.a));
}

