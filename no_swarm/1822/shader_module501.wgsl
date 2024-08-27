struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(492f, -1154f, 2411f, -1000f, -125f, -195f, -289f, -398f, 1000f, 1261f, -768f, -1063f);

var<private> global1: array<u32, 2>;

var<private> global2: array<Struct_1, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    var var_0 = firstTrailingBit(-2147483647i);
    var_0 = abs(~_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-33104i, global3.b.x, u_input.a), vec3<i32>(-6582i, u_input.d.x, u_input.d.x))), abs(~vec3<i32>(global3.b.x, -1608i, global3.b.x))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zzw, min(firstLeadingBit(min(~u_input.c.wwz, u_input.c.wzw << (u_input.c.wyz % vec3<u32>(32u)))), (u_input.c.zyx | vec3<u32>(global1[_wgslsmith_index_u32(1u, 2u)], u_input.c.x, u_input.c.x)) ^ u_input.c.xzx)), 20u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41697u, 2u)], 12u)])) + _wgslsmith_f_op_f32(sign(-780f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(23113u, 12u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(691f, 387f) * -1122f), global3.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, _wgslsmith_f_op_f32(ceil(-163f)), global0[_wgslsmith_index_u32(47925u, 12u)], var_1.c.x) + global3.a)));
    let var_3 = var_1.d.zyz;
    return select(-global3.b.x, -40262i, _wgslsmith_add_i32(global3.b.x, min(-2734i, _wgslsmith_add_i32(1i, global3.b.x))) != var_1.b.x);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: bool) -> u32 {
    global0 = array<f32, 12>();
    var var_0 = global2[_wgslsmith_index_u32(~arg_0, 20u)];
    return ~_wgslsmith_dot_vec4_u32(min(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 43423u, global1[_wgslsmith_index_u32(u_input.b, 2u)]), u_input.c)), u_input.c), vec4<u32>(~arg_0, abs(12378u), 4294967295u, 36621u) << (_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(20680u, global1[_wgslsmith_index_u32(arg_0, 2u)], arg_0, global1[_wgslsmith_index_u32(18469u, 2u)]))) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = 0u;
    let var_1 = false;
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 38180u, 4294967295u), u_input.c.zxy) >> (vec3<u32>(43112u, 0u, 0u) % vec3<u32>(32u)), u_input.c.wyx), ~1u), vec3<u32>(0u, firstLeadingBit(56095u), func_3(u_input.c.x, ~u_input.a, max(-2147483647i, -u_input.d.x), all(global3.d.wwy))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(-arg_0), global0[_wgslsmith_index_u32(var_0 | 27710u, 12u)], -827f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3.a))))), select(!select(vec4<bool>(global3.d.x, false, var_1, true), vec4<bool>(global3.d.x, var_1, false, false), global3.d), !(!global3.d), select(select(vec4<bool>(true, false, var_1, true), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, var_1, var_1, false)), !global3.d, global3.d)))), ~global3.b ^ u_input.d, vec2<f32>(-152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-931f - arg_0) * global0[_wgslsmith_index_u32(19588u, 12u)]))), select(vec4<bool>(any(vec3<bool>(var_1, false, var_1)), true, var_1, var_1), !select(global3.d, !global3.d, false), select(!select(vec4<bool>(global3.d.x, var_1, global3.d.x, global3.d.x), global3.d, global3.d), vec4<bool>(true, var_0 == 4294967295u, global3.d.x, true), select(!vec4<bool>(global3.d.x, global3.d.x, false, var_1), !vec4<bool>(true, false, var_1, false), vec4<bool>(true, global3.d.x, global3.d.x, global3.d.x)))));
    let var_4 = !(!select(var_3.d, vec4<bool>(!global3.d.x, global3.d.x || var_3.d.x, var_2.x < 1u, var_3.d.x), any(vec2<bool>(var_3.d.x, var_3.d.x))));
    return _wgslsmith_sub_u32(~var_0, _wgslsmith_div_u32(75701u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(3164u, u_input.c.x, u_input.b, var_2.x))) | firstTrailingBit(~var_2.x));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = 2147483647i;
    return global2[_wgslsmith_index_u32(arg_0, 20u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    global1 = array<u32, 2>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)))), arg_0.a)), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(countOneBits(_wgslsmith_clamp_i32(u_input.a, global3.b.x, arg_1.b.x)), ~(-global3.b.x), -2796i, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.yz)), global3.d);
    let var_1 = all(arg_0.d);
    global1 = array<u32, 2>();
    let var_2 = func_4(u_input.b, arg_1.d.x, reverseBits(vec3<i32>(abs(global3.b.x), ~reverseBits(arg_1.b.x), ~_wgslsmith_mult_i32(arg_1.b.x, global3.b.x))));
    return StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.x, 526f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.ww + vec2<f32>(615f, var_0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(355f, global0[_wgslsmith_index_u32(1u, 12u)]) - var_0.a.wy)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]) * vec2<f32>(-1131f, arg_1.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(155f))))))), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19356i, 1i, -51460i, -32290i), vec4<i32>(global3.b.x, 0i, 0i, global3.b.x)), -1i), abs(func_1())) & -1i);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(7419u, ~0u), 20u)];
    var var_2 = _wgslsmith_clamp_u32(u_input.c.x, u_input.b, 24485u) ^ _wgslsmith_clamp_u32(u_input.c.x, ~6988u << (_wgslsmith_div_u32(min(u_input.b, global1[_wgslsmith_index_u32(36779u, 2u)]), ~u_input.b) % 32u), ~(~4294967295u));
    let x = u_input.a;
    s_output = func_5(Struct_1(var_1.a, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, u_input.d.x, -23408i, var_0), u_input.d), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, 52695i, var_1.b.x), reverseBits(var_0), -2147483647i << (0u % 32u), _wgslsmith_sub_i32(var_0, var_1.b.x))), global3.a.zy, var_1.d), func_4(global1[_wgslsmith_index_u32(func_2(631f), 2u)], any(vec4<bool>(all(var_1.d.wxw), global3.b.x >= u_input.a, true, true)), u_input.d.yzz));
}

