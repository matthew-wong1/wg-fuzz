struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = firstTrailingBit(1u);
    var_0 = firstTrailingBit(~1u);
    let var_1 = Struct_4(Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, -8641i, 2147483647i, u_input.b.x), u_input.a), vec4<i32>(select(-10548i, -59597i, false), u_input.b.x, u_input.a.x, 0i)), -u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1148f, 225f)), _wgslsmith_f_op_f32(sign(-700f)), true)))), Struct_2(u_input.a.x, countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 10714i), u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-552f, 555f))), _wgslsmith_f_op_f32(abs(1678f)))), 152f, max(_wgslsmith_sub_vec4_i32(min(u_input.a, u_input.a), vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, u_input.a.x)), -(~u_input.a)) << (global0[_wgslsmith_index_u32(1u, 8u)] % vec4<u32>(32u)));
    var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(383u, 1u), 32340u, abs(57540u)), 1u) & abs(_wgslsmith_add_u32(115475u, firstTrailingBit(4294967295u))), 4294967295u);
    var_0 = (select(~_wgslsmith_mod_u32(4294967295u, 108768u), 21640u, !all(vec4<bool>(true, false, false, true))) ^ ~(~(~26585u))) ^ ~min(1u, ~(~50959u));
    return 63739u;
}

fn func_2() -> Struct_2 {
    var var_0 = select(4294967295u, 81465u, _wgslsmith_mod_u32(0u, min(1u, 4521u)) <= reverseBits(~firstTrailingBit(29692u)));
    let var_1 = u_input.a.yyw;
    var_0 = ~countOneBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(21601u, 44984u), func_3())) << (~_wgslsmith_dot_vec4_u32(countOneBits(abs(global0[_wgslsmith_index_u32(4294967295u, 8u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 15049u), vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), 8u)]) % 32u);
    let var_2 = select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, !all(vec2<bool>(false, false)))), vec2<bool>(true, true), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !vec2<bool>(all(vec3<bool>(true, true, true)), false), false));
    let var_3 = Struct_2(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x), _wgslsmith_div_i32(firstTrailingBit(var_1.x), max(countOneBits(i32(-1i) * -1i), i32(-1i) * -var_1.x)), 120f);
    return Struct_2(-_wgslsmith_dot_vec2_i32(abs(var_1.zy), vec2<i32>(-2147483647i ^ u_input.a.x, u_input.a.x & u_input.a.x)), abs(0i), _wgslsmith_f_op_f32(abs(var_3.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32) -> Struct_4 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1153f)), _wgslsmith_f_op_f32(-arg_1.c), arg_1.c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.c, arg_1.a.c, arg_1.c), vec3<f32>(arg_1.a.c, arg_1.c, arg_1.c)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -591f), arg_1.a.c, _wgslsmith_f_op_f32(abs(arg_1.b.c))))));
    var var_2 = ~(~global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), 1u), 8u)]);
    var var_3 = vec4<u32>(4294967295u, _wgslsmith_add_u32(var_2.x, var_2.x) << (var_2.x % 32u), ~_wgslsmith_mult_u32(var_2.x, firstLeadingBit(23544u)), var_2.x) | vec4<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(var_2.zz), ~var_2.xx), 9345u, ~(~45289u), ~var_2.x);
    let var_4 = -_wgslsmith_dot_vec4_i32(u_input.a, firstLeadingBit(vec4<i32>(~u_input.a.x, arg_2, u_input.b.x, _wgslsmith_mod_i32(-13416i, arg_1.a.a))));
    return Struct_4(arg_1.b, arg_1.a, -417f, vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(var_4), -_wgslsmith_add_i32(var_4, -12632i)), countOneBits(2147483647i), ~(_wgslsmith_sub_i32(2147483647i, 15642i) | arg_2), firstTrailingBit(0i & -var_4)));
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(vec2<bool>(all(vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, true))), Struct_4(func_2(), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-234f, -971f)) + _wgslsmith_f_op_f32(f32(-1f) * -221f)), vec4<i32>(-2147483647i, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 23246i), u_input.a.xw) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 8457u, 16262u), vec3<u32>(74188u, 4294967295u, 1u)) % 32u), -31752i ^ u_input.a.x)), 1i);
    global0 = array<vec4<u32>, 8>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1570f, 204f, -1000f)))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c, var_0.c))), select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(2619u, 23670u, 4294967295u), ~vec3<u32>(8972u, 37613u, 73854u), vec3<u32>(1u, 0u, 0u)), firstTrailingBit(min(select(vec3<u32>(0u, 1u, 0u), vec3<u32>(19375u, 28004u, 1u), true), firstTrailingBit(vec3<u32>(1u, 0u, 1u)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), true)), reverseBits(26710u), var_0.b.c);
    global0 = array<vec4<u32>, 8>();
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.c, -1000f, 358f), vec3<f32>(var_1.e, 866f, 1000f))) - var_1.a), vec3<f32>(var_1.e, -1000f, -599f))), var_1.e, firstTrailingBit(~(~var_1.c)) & countOneBits(countOneBits(vec3<u32>(var_1.d, var_1.c.x, var_1.d))), reverseBits(max(~1u, _wgslsmith_mod_u32(var_1.c.x, var_1.d))), _wgslsmith_f_op_f32(1272f + var_0.c));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec4<u32>(~1u, _wgslsmith_div_u32(1u, 1u), 0u, ~(~1u));
    global0 = array<vec4<u32>, 8>();
    var var_2 = vec2<i32>(var_0.a.a, abs(-11031i));
    global0 = array<vec4<u32>, 8>();
    var var_3 = var_1.x;
    global0 = array<vec4<u32>, 8>();
    var var_4 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(4294967295u & abs(var_1.x), ~_wgslsmith_clamp_u32(var_1.x, 8789u, 16544u)), ~0u, ~_wgslsmith_mod_u32(~var_1.x, _wgslsmith_clamp_u32(0u, 24025u, 1u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1043f, var_0.c, var_0.b.c), vec3<f32>(-712f, var_0.a.c, var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, 1157f, var_0.a.c))))), _wgslsmith_f_op_f32(trunc(2094f)), _wgslsmith_sub_vec3_u32(min(_wgslsmith_clamp_vec3_u32(var_1.wzx, var_1.zxw, var_1.zzz), ~vec3<u32>(var_1.x, var_1.x, var_1.x)), abs(~var_1.ywy)), max(var_1.x, select(4294967295u, 45812u, false)) ^ var_1.x, var_0.c), _wgslsmith_mult_vec3_u32(~var_1.yyz, ~var_1.wzy), var_2.x & -94094i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, func_1().c, 6575i);
}

