struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1520f, vec3<f32>(1000f, 1000f, -1687f), vec3<i32>(i32(-2147483648), -1i, -19215i), vec4<bool>(false, true, true, false));

var<private> global1: array<vec3<f32>, 24>;

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = firstTrailingBit((vec2<u32>(_wgslsmith_mod_u32(1u, 44024u), select(u_input.b, u_input.d, false)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 4294967295u)), firstTrailingBit(vec2<u32>(u_input.d, u_input.b))) % vec2<u32>(32u))) << (firstLeadingBit(vec2<u32>(u_input.d, ~1u)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(2147483647i, global0.c.x >> (13010u % 32u), ~u_input.c) >> (firstTrailingBit(~vec3<u32>(96675u, 73977u, var_0.x)) % vec3<u32>(32u))), u_input.a.xyz);
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b) ^ vec2<u32>(23005u, 68744u), min(vec2<u32>(4294967295u, var_0.x), vec2<u32>(51449u, 16335u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13024u, u_input.b), vec2<u32>(var_0.x, u_input.b)), vec2<u32>(u_input.b, 82028u) | vec2<u32>(81491u, 53548u), vec2<u32>(u_input.d, 10262u) ^ vec2<u32>(var_0.x, u_input.b))), u_input.d), 8u)];
    var var_3 = global2[_wgslsmith_index_u32(0u, 8u)];
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a), var_3.a))), _wgslsmith_f_op_vec3_f32(trunc(global0.b)), vec3<i32>(u_input.c, -_wgslsmith_sub_i32(u_input.c, -26295i) << (_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), var_0.x, ~u_input.b) % 32u), ~2147483647i ^ countOneBits(~u_input.c)), vec4<bool>(select(true, var_2.c.x > _wgslsmith_sub_i32(u_input.c, -68259i), all(!var_3.d.yww)), var_3.d.x, any(!global0.d.wz), !(_wgslsmith_f_op_f32(global0.a * 813f) <= -911f)));
    return _wgslsmith_mult_u32(~(~u_input.b), ~u_input.d) << (u_input.d % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(abs(func_3()), _wgslsmith_dot_vec4_u32(vec4<u32>(12481u, u_input.d, 38791u, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 30326u, 1u), vec4<u32>(u_input.b, 26031u, 0u, 38281u)))) >> (abs(_wgslsmith_mod_u32(select(u_input.b, u_input.b, arg_0.d.x), u_input.d ^ u_input.d)) % 32u)), 8u)];
    global2 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)) * arg_1);
    global2 = array<Struct_1, 8>();
    var var_2 = var_0.d.x;
    return global2[_wgslsmith_index_u32(4294967295u, 8u)];
}

fn func_1() -> vec2<f32> {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(-global0.a))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(54552u, u_input.b), vec2<u32>(0u, u_input.b))), ~(~vec2<u32>(36091u, 0u))), 24u)], countOneBits(~u_input.a.zzx), select(select(select(global0.d, global0.d, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, false, false), false), !global0.d, true)), -1637f, global2[_wgslsmith_index_u32(~0u, 8u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.b.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.yz + vec2<f32>(-442f, 1165f))))))));
    global1 = array<vec3<f32>, 24>();
    let var_2 = min(u_input.d, u_input.d << (u_input.d % 32u)) << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.d << (u_input.d % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 24153u), reverseBits(vec3<u32>(u_input.b, 27123u, 4294967295u)))), u_input.b) % 32u);
    let var_3 = global2[_wgslsmith_index_u32(1u >> (~select(~_wgslsmith_mod_u32(var_2, u_input.b), countOneBits(u_input.d << (1u % 32u)), min(-1i, -1i) == max(global0.c.x, -18049i)) % 32u), 8u)];
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_3.b.zx, _wgslsmith_f_op_vec2_f32(var_3.b.yx + var_3.b.xy)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(global2[_wgslsmith_index_u32(11523u, 8u)], 393f, global2[_wgslsmith_index_u32(1u, 8u)]).a)), var_1.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.d), 8u)];
    global2 = array<Struct_1, 8>();
    var var_1 = global2[_wgslsmith_index_u32(~(u_input.b >> (4294967295u % 32u)), 8u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-668f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.b.zx + vec2<f32>(var_0.b.x, var_1.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.b.zy)))))));
    global2 = array<Struct_1, 8>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.x, global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), global0.d.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_0.b.x)), 555f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.x))))), global0.c, vec4<bool>(true, any(vec3<bool>(var_0.a != var_2.x, true, any(vec4<bool>(var_1.d.x, true, true, true)))), true, false));
    global2 = array<Struct_1, 8>();
    var_0 = func_2(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(52078u, 0u, u_input.b), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_3.b.x)))), func_2(func_2(func_2(global2[_wgslsmith_index_u32(u_input.b << (u_input.b % 32u), 8u)], var_0.b.x, global2[_wgslsmith_index_u32(u_input.b, 8u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), func_2(Struct_1(global0.a, vec3<f32>(-600f, var_3.a, var_3.b.x), global0.c, global0.d), -675f, var_3)), _wgslsmith_f_op_f32(-var_3.b.x), func_2(func_2(var_3, 1504f, func_2(global2[_wgslsmith_index_u32(16926u, 8u)], var_0.a, var_3)), _wgslsmith_f_op_f32(-global0.a), func_2(func_2(Struct_1(-484f, var_1.b, u_input.a.yxw, global0.d), global0.b.x, global2[_wgslsmith_index_u32(u_input.d, 8u)]), _wgslsmith_f_op_f32(ceil(621f)), Struct_1(global0.b.x, vec3<f32>(816f, var_3.a, var_0.b.x), vec3<i32>(5172i, -1i, 17758i), vec4<bool>(var_3.d.x, false, var_0.d.x, global0.d.x))))));
    global0 = global2[_wgslsmith_index_u32(58452u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(global0.c.xz)), _wgslsmith_clamp_u32(25562u ^ _wgslsmith_sub_u32(~77267u, u_input.b), (_wgslsmith_mod_u32(u_input.d, u_input.b) >> (abs(17230u) % 32u)) >> (u_input.b % 32u), 1u), u_input.b);
}

