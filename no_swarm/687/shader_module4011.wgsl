struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(76029i, 1i, -10526i);

var<private> global1: array<vec2<bool>, 29>;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(4294967295u, 4294967295u, 37009u, 56159u), Struct_3(14406u, vec4<i32>(i32(-2147483648), 8507i, 16846i, i32(-2147483648)), vec2<i32>(2147483647i, -31186i)), vec2<f32>(-295f, -468f), vec2<bool>(true, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global2 = Struct_4(global2.a, global2.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.c.x)), 1191f)))), global1[_wgslsmith_index_u32(0u, 29u)]);
    global1 = array<vec2<bool>, 29>();
    let var_0 = global2.b;
    let var_1 = select(vec2<bool>(true, global2.d.x), global1[_wgslsmith_index_u32((~firstLeadingBit(12915u) & max(global2.a.x, global2.a.x & 17937u)) << (_wgslsmith_div_u32(~37008u, ~(global2.a.x | u_input.a.x)) % 32u), 29u)], vec2<bool>(!(-1i >= firstTrailingBit(11369i)), !(~u_input.a.x >= 1u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-366f)) * _wgslsmith_f_op_f32(global2.c.x - -414f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1138f, -2080f, true)) * global2.c.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c)) + vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(floor(221f))))), vec2<f32>(-965f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.c.x)), _wgslsmith_f_op_f32(step(global2.c.x, _wgslsmith_f_op_f32(global2.c.x * -287f)))))));
    return 0i;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = Struct_3(global2.b.a, vec4<i32>(func_3(), global2.b.c.x, -(~(~(-40805i))), 1i), vec2<i32>(-45738i, global2.b.b.x));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(14083i, -7528i, -_wgslsmith_dot_vec3_i32(var_0.b.wyz, global2.b.b.yyy), _wgslsmith_dot_vec2_i32(global2.b.c, _wgslsmith_div_vec2_i32(var_0.c, var_0.b.wz))), ~(-(~vec4<i32>(var_0.c.x, var_0.c.x, 38255i, global2.b.b.x)))), -1000f, global2.d.x, _wgslsmith_sub_vec4_i32(-global2.b.b, global2.b.b), max(~(~vec3<u32>(43229u, 105709u, 1u)), vec3<u32>(u_input.a.x, u_input.d.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.a, var_0.a))))));
    let var_2 = global2.b;
    let var_3 = true;
    let var_4 = var_1.c;
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, var_1.e.x, global2.b.a), ~var_1.e.x)), var_2.a, arg_0), global2.a.x);
}

fn func_1() -> Struct_3 {
    var var_0 = global2.d;
    var var_1 = select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, u_input.a.x) & (u_input.a.x & global2.a.x), 1u, func_2(global2.a.x, _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, u_input.d.x, 28017u << (u_input.d.x % 32u), ~92761u), global2.a)), 85174u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-785f, _wgslsmith_f_op_f32(f32(-1f) * -1642f)))) != _wgslsmith_f_op_f32(f32(-1f) * -326f));
    var var_2 = select(-vec3<i32>(-2147483647i, countOneBits(46782i), _wgslsmith_clamp_i32(1i, u_input.c, global0.x)), vec3<i32>(abs(max(-26545i, _wgslsmith_mult_i32(-1i, global0.x))), global2.b.b.x ^ -(-1i >> (global2.a.x % 32u)), global2.b.c.x), !global2.d.x & any(select(!vec3<bool>(global2.d.x, var_0.x, global2.d.x), vec3<bool>(global2.d.x, false, false), vec3<bool>(false, false, var_0.x))));
    let var_3 = ~(global2.b.a << (3849u % 32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x), global2.c.x, 228f) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.c.x - global2.c.x), _wgslsmith_f_op_f32(trunc(-192f)), _wgslsmith_f_op_f32(ceil(global2.c.x)), _wgslsmith_f_op_f32(select(global2.c.x, global2.c.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -318f, 1377f, global2.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2094f, global2.c.x, 1680f, global2.c.x) + vec4<f32>(746f, -1372f, -281f, global2.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, 666f, global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-229f, global2.c.x)))))));
    return Struct_3(~min(var_3, abs(~0u)), -select(-vec4<i32>(global2.b.b.x, u_input.c, u_input.c, -1163i), vec4<i32>(u_input.c, u_input.c, ~77188i, _wgslsmith_mult_i32(global0.x, global0.x)), vec4<bool>(!var_0.x, var_0.x, !global2.d.x, all(global2.d))), vec2<i32>(i32(-1i) * -1i, abs(u_input.b | global2.b.c.x) << (u_input.a.x % 32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = global2.a.zzz;
    global2 = Struct_4(~select(abs(arg_1.a), global2.a, vec4<bool>(arg_1.d.x, true, false, false)) | firstLeadingBit(arg_1.a), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, arg_1.c.x)))))), global1[_wgslsmith_index_u32(arg_1.b.a, 29u)]);
    global0 = global2.b.b.wwz;
    var var_1 = abs(~1u >> (var_0.x % 32u));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c + vec2<f32>(-1950f, global2.c.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1565f, -726f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, global2.c.x)) + vec2<f32>(-183f, 133f))))), arg_1.c);
    return Struct_4(~_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_1.a, global2.a), arg_1.a), global2.b, arg_1.c, select(select(arg_1.d, vec2<bool>(!global2.d.x, true), arg_1.d.x), select(vec2<bool>(true, true), select(arg_1.d, global2.d, vec2<bool>(global2.d.x, arg_1.d.x)), select(vec2<bool>(true, false), vec2<bool>(false, false), 38964u > u_input.a.x)), !any(!vec4<bool>(true, global2.d.x, global2.d.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global2 = func_4(global2.b.c, Struct_4(reverseBits(select(vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.a.x), vec4<u32>(u_input.a.x, 55414u, 4294967295u, u_input.a.x), true) >> (~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 864u) % vec4<u32>(32u))), func_1(), _wgslsmith_div_vec2_f32(global2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 446f) + _wgslsmith_f_op_vec2_f32(sign(global2.c)))), !global1[_wgslsmith_index_u32(4294967295u, 29u)]));
    global2 = Struct_4(~global2.a, func_4(global0.xy, Struct_4(global2.a, func_1(), vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), -1876f), global1[_wgslsmith_index_u32(1u, 29u)])).b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(select(371f, global2.c.x, global2.d.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global2.c, vec2<f32>(666f, -1597f)), vec2<f32>(1f, 1f)))), vec2<f32>(1f, 1f), any(!select(vec4<bool>(global2.d.x, global2.d.x, global2.d.x, global2.d.x), vec4<bool>(global2.d.x, global2.d.x, false, global2.d.x), global2.d.x)))), global2.d);
    global2 = func_4(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -2147483647i, global0.x) ^ global2.b.b.yxw, global2.b.b.zzy), abs(global2.b.b.wzz) & _wgslsmith_clamp_vec3_i32(global2.b.b.xxy, global2.b.b.xyy, global2.b.b.xwz)), -abs(global0.x)), func_4(select(vec2<i32>(func_3(), func_3()), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 4724i), global0.yz) << (_wgslsmith_div_vec2_u32(vec2<u32>(global2.a.x, u_input.a.x), vec2<u32>(global2.b.a, 4294967295u)) % vec2<u32>(32u)), global2.d.x), Struct_4(abs(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 31988u)), global2.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.c, vec2<f32>(1323f, -2257f))), vec2<f32>(global2.c.x, -1663f)), vec2<bool>(true, any(vec4<bool>(false, global2.d.x, global2.d.x, true))))));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.c.x, -970f))), -285f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-339f, _wgslsmith_f_op_f32(f32(-1f) * -620f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, 1683f)))))));
    let var_3 = func_4(global0.zx, Struct_4(global2.a, Struct_3(_wgslsmith_mult_u32(1u, func_4(vec2<i32>(12984i, global2.b.b.x), Struct_4(vec4<u32>(global2.b.a, u_input.a.x, u_input.a.x, 11073u), global2.b, vec2<f32>(454f, 274f), vec2<bool>(true, global2.d.x))).b.a), -(vec4<i32>(global0.x, 2147483647i, global0.x, global2.b.b.x) & global2.b.b), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(global0.yz, vec2<i32>(global0.x, 2147483647i)), abs(vec2<i32>(global2.b.c.x, 48844i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-759f, -170f) * vec2<f32>(-224f, 1178f))))), func_4(vec2<i32>(-1i, ~1i), Struct_4(vec4<u32>(global2.b.a, 94329u, global2.a.x, 1u), global2.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(201f, global2.c.x), vec2<f32>(-857f, 1000f))), !global2.d)).d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(11297u, global2.b.a), ~1u) | firstLeadingBit(39116u), ~((u_input.a.x & u_input.a.x) >> (_wgslsmith_mod_u32(4294967295u, global2.b.a) % 32u))), _wgslsmith_add_vec4_i32(global2.b.b, vec4<i32>(2147483647i, ~_wgslsmith_mod_i32(0i, 2147483647i), max(-8856i, 1i), -(u_input.b >> (var_3.a.x % 32u)))));
}

