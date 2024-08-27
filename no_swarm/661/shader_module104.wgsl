struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 12> = array<u32, 12>(71904u, 52522u, 83139u, 1664u, 31363u, 1u, 0u, 1u, 4294967295u, 39022u, 49000u, 81194u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1, arg_3.a.wwx);
    global1 = ~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(global1.xw, vec2<u32>(arg_1.b.x, 0u)), 10371u, global2[_wgslsmith_index_u32(16889u, 12u)] << (u_input.a % 32u), ~1754u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(arg_3.b.x), 4294967295u, var_0.a.b.x, 44038u ^ global1.x) & _wgslsmith_div_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(63723u, 12u)], arg_1.c.x, 0u, arg_0), vec4<u32>(arg_0, 1u, 1u, u_input.a)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, arg_3.c.x, u_input.a), vec4<u32>(29897u, 1u, 39974u, 0u)) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 9388u, 24788u, 4294967295u)));
    var var_1 = select(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), true, select(-arg_2 > 1i, true, (arg_3.a.x <= var_0.a.a.x) | false)), !vec4<bool>(true, any(vec4<bool>(true, false, true, true)) | true, true, max(0i, arg_2) >= abs(-2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(1910f + arg_3.a.x))) > -134f);
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(382f, _wgslsmith_f_op_f32(arg_3.a.x * 666f))), -1911f, _wgslsmith_f_op_f32(min(arg_1.a.x, -636f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x + arg_1.a.x), -517f))), ~arg_3.b | countOneBits(_wgslsmith_clamp_vec2_u32(global1.zz, arg_1.b, vec2<u32>(1u, 1u))), max(arg_1.b, arg_3.b)), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), -1587f, arg_1.a.x));
    var var_3 = var_0.a.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1386f, arg_1.a.x) + arg_3.a.x), 2139f) - 1000f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(318f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * -619f) + _wgslsmith_f_op_f32(-601f - 1093f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(789f, -1000f)))), -190f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-234f)))))));
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-606f, _wgslsmith_f_op_f32(f32(-1f) * -1403f))), _wgslsmith_f_op_f32(trunc(755f)), -1148f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1370f, 599f))))), ~vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(14466u, global1.x, global2[_wgslsmith_index_u32(12340u, 12u)], 9030u), vec4<u32>(global2[_wgslsmith_index_u32(global1.x, 12u)], global1.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 12u)], 12u)], 12u)]))), ~(~vec2<u32>(u_input.a, global1.x))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -682f)))), _wgslsmith_f_op_f32(func_3(0u, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, 474f, 120f, 744f)), _wgslsmith_mult_vec2_u32(global1.xw, vec2<u32>(4294967295u, 1u)), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], 60321u)), select(i32(-1i) * -24871i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -32622i, -27844i), vec3<i32>(-2147483647i, -5814i, 20948i)), true), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(123f, -1362f, -1041f, -270f), vec4<f32>(362f, -365f, -298f, 925f))), global1.wx, vec2<u32>(global1.x, global2[_wgslsmith_index_u32(0u, 12u)])))), -1573f));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a.a)), ~_wgslsmith_div_vec2_u32(~(vec2<u32>(44052u, global2[_wgslsmith_index_u32(u_input.a, 12u)]) & vec2<u32>(1292u, 4294967295u)), min(vec2<u32>(4294967295u, 1u), ~var_0.a.c)), ~vec2<u32>(29946u, 26397u));
    global2 = array<u32, 12>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], Struct_1(vec4<f32>(var_0.b.x, 135f, -790f, var_0.a.a.x), var_0.a.b, global1.yw), 2147483647i, var_1))), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(4294967295u, u_input.a, var_1.c.x), func_2().a, ~2147483647i, Struct_1(var_1.a, global1.wy, global1.wx)))) * var_0.a.a), vec2<u32>(var_0.a.b.x, 30212u), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.c, select(var_0.a.c, func_2().a.c, vec2<bool>(true, true))), 1u));
    let var_3 = ~4294967295u;
    return ~var_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_i32(-(~1i), reverseBits(~0i >> (global2[_wgslsmith_index_u32(global1.x, 12u)] % 32u)));
    global2 = array<u32, 12>();
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(63871u) & global2[_wgslsmith_index_u32(firstLeadingBit(global1.x), 12u)], func_1()), global1.zy), vec2<u32>(_wgslsmith_sub_u32(2198u, _wgslsmith_sub_u32(global1.x, 22774u)), max(_wgslsmith_div_u32(4294967295u, u_input.a), ~u_input.a)) >> (vec2<u32>(15677u, 15503u) % vec2<u32>(32u)));
    global2 = array<u32, 12>();
    global1 = ~vec4<u32>(abs(~var_1), ~var_1, 5555u, _wgslsmith_dot_vec3_u32(~firstLeadingBit(global1.wxy), select(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], 0u, 42061u), ~vec3<u32>(9915u, global1.x, 9769u), vec3<bool>(true, true, false))));
    global2 = array<u32, 12>();
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1424f)), 239f, _wgslsmith_f_op_f32(round(2246f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1024f))), _wgslsmith_mult_vec2_u32(global1.zz, global1.xx), vec2<u32>(~30643u, ~48174u) << ((~abs(vec2<u32>(76523u, 54639u)) & ~firstLeadingBit(vec2<u32>(0u, global1.x))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-23792i, 86588i))), var_0, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, 155f, _wgslsmith_f_op_f32(-var_2.a.x), 189f)), min(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 1i, -1i, 20127i), vec4<i32>(-8103i, 17150i, var_0, var_0)), firstLeadingBit(-4286i), var_0, var_0 << (0u % 32u))), vec4<i32>(2147483647i, ~select(-3754i, -17120i, true), var_0, -_wgslsmith_mod_i32(2147483647i, var_0))));
}

