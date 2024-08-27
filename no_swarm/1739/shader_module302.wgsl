struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~9917u, 15u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1498f + -641f)))), -643f));
    global1 = array<Struct_1, 15>();
    let var_2 = global1[_wgslsmith_index_u32(var_0.d, 15u)];
    let var_3 = ~firstLeadingBit(~_wgslsmith_div_u32(~arg_3.d, var_2.d));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-121f + arg_1))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * arg_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(-233f + arg_2.x))))) + var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(59106u, firstLeadingBit(0u)), 15u)];
    return vec4<bool>(false, any(!select(select(var_0.c.wy, var_0.c.xz, var_0.b), !var_0.c.zy, vec2<bool>(true, false))), var_0.c.x, !var_0.b);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(u_input.c.x, max(countOneBits(u_input.c.x) ^ global0.x, -36772i));
    let var_1 = reverseBits(min(u_input.a, u_input.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(293f, 166f) + vec2<f32>(-2579f, 108f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(190f, 872f), _wgslsmith_f_op_vec2_f32(vec2<f32>(189f, 246f) + vec2<f32>(-3059f, 981f)), global2.x))))), global2.x, func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f - -1681f) + _wgslsmith_f_op_f32(floor(-422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * -414f))), vec3<f32>(_wgslsmith_f_op_f32(-1237f * _wgslsmith_f_op_f32(func_3(true, 1218f, vec4<f32>(-1087f, 174f, -1029f, -172f), Struct_1(vec2<f32>(306f, 851f), true, vec4<bool>(false, global2.x, global2.x, false), 4294967295u, -14385i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -777f), -583f)))), 4294967295u, ~(~(-2147483647i | u_input.c.x)));
    var var_3 = global1[_wgslsmith_index_u32(~(44847u | u_input.e.x), 15u)];
    global0 = -u_input.c;
    return global1[_wgslsmith_index_u32(abs(var_1.x) | 4294967295u, 15u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-1000f + arg_0.a.x)), arg_1).x;
    global0 = _wgslsmith_div_vec4_i32(select(u_input.c, select(-vec4<i32>(arg_0.e, arg_3.e, 0i, 0i), u_input.c, true), vec4<bool>(arg_3.c.x == true, any(vec4<bool>(arg_3.c.x, false, true, false)), true, arg_3.c.x)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.e, 1i, 20145i, 53007i), vec4<i32>(0i, 1i, global0.x, u_input.d) ^ -u_input.c) & u_input.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(170f, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_1.x)) + arg_1.xx), false, func_2().c, 19876u, func_2().e);
    global2 = select(!select(!vec2<bool>(false, var_1.b), vec2<bool>(true, !global2.x), func_4(arg_2, _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(1000f, -832f, -1611f))).x), vec2<bool>(true != func_2().c.x, all(vec4<bool>(!arg_3.c.x, arg_0.c.x, var_1.c.x || true, any(arg_3.c.ywy)))), !select(vec2<bool>(!arg_0.c.x, true), func_4(arg_2, _wgslsmith_f_op_vec3_f32(-arg_1)).wz, arg_3.c.xw));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(func_2().d), _wgslsmith_mult_u32(~(arg_0.d ^ select(arg_3.d, u_input.a.x, arg_3.b)), _wgslsmith_mod_u32(12978u, ~(arg_0.d ^ 38039u)))), 15u)];
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(1751f - -627f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(584f, arg_1.x), vec2<f32>(754f, 2143f), vec2<bool>(arg_3.b, global2.x)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(291f, -986f), arg_3.a)))))), all(!func_2().c), vec4<bool>(true, 1i <= countOneBits(u_input.d), all(select(!arg_0.c, vec4<bool>(false, false, false, global2.x), vec4<bool>(arg_3.b, false, true, var_1.b))), any(arg_0.c.xyy)), firstLeadingBit(_wgslsmith_mod_u32(var_1.d, _wgslsmith_sub_u32(arg_0.d, _wgslsmith_dot_vec3_u32(u_input.a.zyx, u_input.a.zzw)))), 18525i | (_wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_0.e, 53672i), u_input.c.wx), ~vec2<i32>(arg_0.e, -28304i)) | _wgslsmith_mod_i32(-4475i, arg_3.e)));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> vec2<f32> {
    global2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_5(global1[_wgslsmith_index_u32(485u, 15u)], _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(372f, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(-232f - arg_1.a.x), Struct_1(arg_1.a, true, arg_1.c, u_input.b, arg_1.e)).a.x, _wgslsmith_f_op_f32(abs(1260f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(342f + arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)), -1082f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))))))).xx;
    global0 = firstLeadingBit(u_input.c | max(~select(vec4<i32>(arg_3, arg_3, -2147483647i, global0.x), vec4<i32>(arg_1.e, -44549i, global0.x, arg_1.e), vec4<bool>(arg_1.b, false, global2.x, true)), u_input.c));
    let var_0 = global1[_wgslsmith_index_u32(arg_2.x, 15u)];
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_add_vec2_u32(u_input.a.wy, u_input.e.xz);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_5(func_2(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-721f, var_0.a.x, -522f), vec3<f32>(var_0.a.x, -559f, var_0.a.x), arg_1.c.zzx)), arg_1.a.x, Struct_1(arg_1.a, var_0.c.x, arg_1.c, 7405u, -55i)).a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1515f + -477f), _wgslsmith_f_op_f32(-var_0.a.x)))) * vec2<f32>(var_0.a.x, arg_1.a.x)), arg_1.a);
}

fn func_1() -> vec4<i32> {
    global2 = vec2<bool>(true, false);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(2357f, -1477f)))), 114f)), _wgslsmith_f_op_f32(sign(-673f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(u_input.d, func_5(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1458f, -479f, 142f), vec3<f32>(1595f, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -830f), func_2()), reverseBits(vec4<u32>(39235u, 82672u, u_input.a.x, 337u) | u_input.a) & (firstLeadingBit(u_input.a) ^ countOneBits(vec4<u32>(u_input.a.x, u_input.e.x, 0u, u_input.a.x))), -1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 776f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-333f, var_0.x))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 299f), vec2<f32>(-514f, var_0.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -594f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-184f, -586f) + vec2<f32>(172f, 1544f))))), all(vec4<bool>(var_0.x < _wgslsmith_f_op_f32(func_3(global2.x, -856f, vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f), Struct_1(vec2<f32>(var_0.x, var_0.x), global2.x, vec4<bool>(true, global2.x, false, global2.x), 77019u, u_input.d))), global2.x & any(vec2<bool>(global2.x, global2.x)), all(vec2<bool>(global2.x, global2.x)), global2.x & global2.x)), !(!vec4<bool>(all(vec3<bool>(global2.x, true, global2.x)), true, global2.x, true)), 22952u, -1i);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d, -1i), _wgslsmith_add_i32(abs(global0.x), 1i));
    return reverseBits(abs(~(~(u_input.c << (u_input.a % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1() >> (select(u_input.a, u_input.a, !func_2().c) % vec4<u32>(32u));
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(u_input.e.x) & min(u_input.e.x, 4294967295u), 15u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.d, var_0.d), 15u)];
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 15u)];
    global1 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xyx, _wgslsmith_dot_vec3_i32(-global0.zyz, abs(u_input.c.xyy)), 2147483647i, ~(-select(global0.x, 39532i, false)) >> (~(~(~var_2.d)) % 32u));
}

