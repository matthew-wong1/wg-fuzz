struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 12>;

var<private> global2: array<Struct_3, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = -824f;
    let var_1 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_mod_u32(~1u, u_input.a.x), ~(~firstTrailingBit(0u))), _wgslsmith_f_op_f32(887f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] + 530f)));
    let var_2 = select(_wgslsmith_mod_vec3_u32(max(vec3<u32>(157715u & u_input.a.x, _wgslsmith_mult_u32(0u, 28489u), u_input.a.x), select(vec3<u32>(0u, 0u, u_input.a.x), vec3<u32>(15222u, 1u, arg_0.b), true)), u_input.a.ywy ^ ~min(u_input.a.wyz, u_input.a.zyw)), select(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 15434u)), reverseBits(reverseBits(var_1.a)), true) ^ _wgslsmith_clamp_vec3_u32(~(var_1.a | var_1.a), ~(vec3<u32>(arg_0.b, 1u, arg_1) | u_input.a.zwz), _wgslsmith_clamp_vec3_u32(vec3<u32>(5081u, 34503u, u_input.a.x), var_1.a << (var_1.a % vec3<u32>(32u)), u_input.a.zwx)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_3 = ~(-53862i);
    global2 = array<Struct_3, 11>();
    return min(-38675i, var_3);
}

fn func_2() -> bool {
    var var_0 = vec2<i32>(-1i >> (firstTrailingBit(~15554u) % 32u), func_3(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 12u)], -1273f, 998f), _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(17553u, 30784u, u_input.a.x, 5085u))), u_input.a.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] - -1064f)))), global1[_wgslsmith_index_u32(~(~countOneBits(u_input.a.x)), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 12u)]))))))), -2149f);
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 12u)];
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(u_input.a.x, 8600u, u_input.a.x)) << (u_input.a.yzy % vec3<u32>(32u)), u_input.a.wzx ^ max(~vec3<u32>(u_input.a.x, 4294967295u, 24991u), abs(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), reverseBits(~u_input.a.xyw | ~vec3<u32>(1u, 2668u, 4294967295u)));
    global2 = array<Struct_3, 11>();
    return !all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_4 {
    var var_0 = select(select(!vec2<bool>(any(vec4<bool>(false, true, true, true)), 0u == arg_2.x), vec2<bool>(true, true), func_2()), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), vec2<bool>(true, false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - arg_1), _wgslsmith_f_op_vec4_f32(-arg_1)) - vec4<f32>(_wgslsmith_f_op_f32(174f - 1257f), _wgslsmith_f_op_f32(596f + -1000f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), arg_1.x))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f)), -1104f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, arg_3), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-422f, 1580f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(-arg_1));
    global2 = array<Struct_3, 11>();
    return Struct_4(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(39970u, countOneBits(_wgslsmith_clamp_u32(arg_3, arg_3, arg_3)), ~_wgslsmith_mult_u32(4294967295u, arg_2.x))), 11u)], vec4<i32>(arg_0.x, ~select(u_input.b, ~0i, var_0.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, arg_0.x) | vec4<i32>(u_input.b, 0i, 454i, 3649i), -vec4<i32>(arg_0.x, arg_0.x, u_input.b, arg_0.x)), 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2227f, 687f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1349f, -984f, global1[_wgslsmith_index_u32(4294967295u, 12u)]), arg_1.xyw)))), ~countOneBits(u_input.a.x)), global2[_wgslsmith_index_u32(select(min(u_input.a.x << (abs(18426u) % 32u), _wgslsmith_add_u32(select(1u, arg_2.x, var_0.x), _wgslsmith_mod_u32(arg_2.x, arg_2.x))), 92174u, var_1.x >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)])))), 11u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    global0 = 1u;
    global2 = array<Struct_3, 11>();
    var var_0 = 8566i;
    var var_1 = Struct_2(select(abs(u_input.a.xxy), arg_2.a.wzy, 1u < ~arg_1.a.a.x) | ~select(vec3<u32>(0u, arg_2.a.x, u_input.a.x), abs(vec3<u32>(0u, arg_2.a.x, 4294967295u)), vec3<bool>(true, true, true)), _wgslsmith_div_f32(-763f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.a.x, 12u)])), -315f)));
    var_1 = Struct_2(abs(func_1(~(-arg_0), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-597f, global1[_wgslsmith_index_u32(var_1.a.x, 12u)], -256f, arg_1.a.c))), ~vec2<u32>(9878u, 17439u), ~var_1.a.x ^ abs(var_1.a.x)).a.a.yzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d.c - -138f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(step(arg_1.a.c, var_1.b))))))));
    return Struct_3(vec4<u32>(_wgslsmith_div_u32(60752u, _wgslsmith_dot_vec3_u32(arg_1.d.a.zwx, vec3<u32>(arg_2.a.x, arg_1.c.b, arg_1.d.a.x)) >> (abs(var_1.a.x) % 32u)), arg_2.a.x, 4294967295u, ~arg_2.a.x), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_clamp_i32(u_input.b, 2147483647i, arg_1.b.x), func_3(arg_1.c, 45727u), 11078i), arg_2.b)), _wgslsmith_f_op_f32(-var_1.b), arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let var_0 = (_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 6431i), select(u_input.b << (u_input.a.x % 32u), u_input.b, true)) == u_input.b) == false;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(58250u, 12u)] - -478f))), global1[_wgslsmith_index_u32(~4294967295u, 12u)], -1000f), ~min(_wgslsmith_mult_u32(1u | u_input.a.x, 1u), ~73189u));
    var var_2 = 55886u;
    var var_3 = Struct_2(vec3<u32>(select(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xw), 0u), 1u, var_0), 4294967295u, u_input.a.x), var_1.a.x);
    var var_4 = Struct_4(func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-19284i, u_input.b, -26158i, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), ~u_input.b), func_1(min(vec2<i32>(u_input.b, -19634i), vec2<i32>(46133i, -28575i)) | abs(vec2<i32>(34337i, u_input.b)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.b, 1035f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], -1006f))), vec2<u32>(52076u, 0u), _wgslsmith_mult_u32(u_input.a.x & u_input.a.x, var_1.b)), global2[_wgslsmith_index_u32(6518u, 11u)]), vec4<i32>(8371i, -(~_wgslsmith_mult_i32(u_input.b, 60414i)), -_wgslsmith_sub_i32(i32(-1i) * -36535i, 0i), -u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1.b, 12u)], var_1.a.x, var_3.b) - vec3<f32>(var_3.b, var_3.b, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))))), 0u), Struct_3(abs(select(vec4<u32>(var_3.a.x, 9519u, var_3.a.x, 28005u), func_4(vec2<i32>(u_input.b, 2147483647i), Struct_4(Struct_3(vec4<u32>(var_3.a.x, u_input.a.x, 17728u, 4294967295u), vec4<i32>(2636i, u_input.b, -11987i, u_input.b), -136f, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, -28306i), Struct_1(vec3<f32>(504f, var_3.b, -324f), 24431u), Struct_3(vec4<u32>(4294967295u, var_3.a.x, 4294967295u, var_1.b), vec4<i32>(-585i, -11538i, 18946i, u_input.b), var_1.a.x, u_input.b)), global2[_wgslsmith_index_u32(26428u, 11u)]).a, !var_0)), firstLeadingBit(vec4<i32>(u_input.b, -15166i, 0i, _wgslsmith_sub_i32(0i, u_input.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), i32(-1i) * -max(u_input.b, u_input.b)));
    let var_5 = ~(~(~23289u));
    let var_6 = !vec4<bool>(true, -max(u_input.b, u_input.b) >= u_input.b, 4294967295u != u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) + var_4.c.a.x) > global1[_wgslsmith_index_u32(29790u, 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_vec4_i32(~(~var_4.a.b), firstLeadingBit(var_4.d.b) << (vec4<u32>(var_3.a.x, 4353u, 9299u, 4864u) % vec4<u32>(32u)))), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(107557u, 84980u), vec2<u32>(52613u, var_1.b)), ~1u, ~u_input.a.x <= func_4(var_4.b.xx, Struct_4(var_4.d, var_4.d.b, var_1, Struct_3(vec4<u32>(var_4.d.a.x, 7981u, u_input.a.x, 5678u), vec4<i32>(u_input.b, var_4.d.b.x, 57202i, u_input.b), 273f, u_input.b)), var_4.d).a.x));
}

