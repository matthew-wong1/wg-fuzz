struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = true;
    var var_1 = -418f;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1380f + 1102f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1291f)))), _wgslsmith_div_f32(arg_1.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(672f))))));
    let var_2 = arg_1;
    global0 = array<Struct_1, 10>();
    return ~(var_2.d.x << ((~var_2.d.x >> ((14803u & _wgslsmith_sub_u32(arg_1.c.a, 31466u)) % 32u)) % 32u));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(~func_3(arg_1, Struct_2(global0[_wgslsmith_index_u32(18964u, 10u)], -2147483647i, global0[_wgslsmith_index_u32(arg_3.x, 10u)], arg_3.xz), -77419i), abs(u_input.d.x), ~arg_3.x, arg_3.x), vec4<u32>(arg_2 >> (arg_2 % 32u), firstLeadingBit(arg_3.x), _wgslsmith_clamp_u32(42096u, arg_2, 55580u), select(arg_2, 50156u, true)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d.x, 20365u) << (vec4<u32>(32141u, 4294967295u, u_input.d.x, 47671u) % vec4<u32>(32u)), vec4<u32>(1u, 59699u, 62264u, 107711u), vec4<u32>(arg_2, 31148u, 0u, 9025u) << (vec4<u32>(arg_3.x, 18142u, u_input.d.x, 1u) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, _wgslsmith_div_f32(arg_0, -966f), 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -748f, -1010f) + vec3<f32>(-1199f, 486f, arg_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(min(-1000f, arg_0)), -1000f))));
    global0 = array<Struct_1, 10>();
    var_1 = vec3<f32>(arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(step(1152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -2234f, false)))))), 288f);
    return Struct_2(Struct_1(4294967295u, 0u, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_1.x * -627f))) * 247f), arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -2147483647i, 0i), u_input.c), abs(-1i), ~_wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, 16954i), 0i), u_input.a), global0[_wgslsmith_index_u32(~u_input.d.x, 10u)], reverseBits(~u_input.d.xz));
}

fn func_4(arg_0: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_0.a.d)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(836f + _wgslsmith_f_op_f32(-767f + arg_0.a.c))))));
}

fn func_1() -> u32 {
    var var_0 = select(~abs(min(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x))), abs(max(vec4<u32>(u_input.d.x, u_input.d.x, 0u, min(u_input.d.x, 7247u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 14666u, 0u)))), !(!any(vec2<bool>(false, true))) & select(all(vec3<bool>(true, true, true)), false, select(all(vec4<bool>(false, false, true, false)), -1i <= u_input.c.x, all(vec4<bool>(true, false, false, true)))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(866f * 344f) - _wgslsmith_f_op_f32(1189f - -911f)) - _wgslsmith_f_op_f32(f32(-1f) * -952f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -634f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1400f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(-190f, vec4<bool>(false, false, true, false), var_0.x, vec3<u32>(1u, u_input.d.x, 41557u)))))));
    var_0 = max(vec4<u32>(var_0.x, var_0.x, 43457u, _wgslsmith_add_u32(~u_input.d.x, var_0.x)), vec4<u32>(~(~(~var_0.x)), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(var_0.wy, var_0.xy)), select(vec2<u32>(22982u, 18554u), u_input.d.zz, vec2<bool>(true, true))), _wgslsmith_div_u32(23003u, min(_wgslsmith_mult_u32(56444u, var_0.x), 194u)), firstLeadingBit(u_input.d.x)));
    let var_3 = Struct_1(~(~(100145u << (~var_0.x % 32u))), func_3(func_2(var_2.x, vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(4294967295u, 4294967295u) ^ var_0.x, var_0.yyz).c.e, func_2(_wgslsmith_f_op_f32(-var_2.x), vec4<bool>(true, true, true, var_1.x < -2147483647i), ~_wgslsmith_dot_vec2_u32(var_0.wy, vec2<u32>(u_input.d.x, 1u)), ~(~vec3<u32>(4294967295u, 1u, 64213u))), -(~var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - -522f), _wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(902f, vec4<bool>(true, true, true, true), _wgslsmith_div_u32(var_0.x, 6937u), var_0.wyx).a.d * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(var_2.x * var_2.x))))), !select(!func_2(var_2.x, vec4<bool>(false, false, true, true), u_input.d.x, vec3<u32>(74055u, 1u, var_0.x)).a.e, vec4<bool>(true, 61275i < var_1.x, false, true), vec4<bool>(true, true, true, true)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_sub_i32(0i, u_input.a.x);
    var_0 = -1i;
    let var_1 = Struct_1(u_input.d.x, 11762u, -696f, -714f, vec4<bool>(false, !(any(vec4<bool>(true, false, true, true)) & true), !all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_2 = ~u_input.b ^ vec4<i32>(_wgslsmith_add_i32(23368i, ~u_input.c.x), _wgslsmith_sub_i32(-455i, u_input.a.x), ~(-2147483647i), u_input.b.x);
    let var_3 = global0[_wgslsmith_index_u32(func_1(), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(2147483647i, -select(min(u_input.c.x, u_input.a.x), min(u_input.c.x, -49892i), true)), ~u_input.d.x, -2026f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1031f - 317f), var_1.c)), _wgslsmith_f_op_f32(-var_3.c)))));
}

