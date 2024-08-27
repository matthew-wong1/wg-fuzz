struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3.x, 115f))), _wgslsmith_f_op_f32(floor(arg_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-963f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(ceil(-883f))), var_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(862f, -286f, _wgslsmith_f_op_f32(max(615f, 629f)), _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1280f, -626f, arg_3.x, -447f) * vec4<f32>(-1000f, 847f, arg_3.x, -1655f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -390f, arg_3.x, arg_3.x) - vec4<f32>(arg_3.x, 542f, arg_3.x, arg_3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(374f, arg_3.x, arg_3.x, arg_3.x)))))));
    return _wgslsmith_mod_u32(arg_1.x, countOneBits(u_input.c.x));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(~u_input.c.x, ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, arg_3.x), ~4294967295u) ^ countOneBits(62211u)));
    var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0, ~vec3<u32>(1u, 4294967295u, arg_0.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_0.x, 64929u, 24730u), arg_3), arg_2) ^ ~1u), 0u);
    var_0 = vec2<u32>(_wgslsmith_mod_u32(max(_wgslsmith_mod_u32(~arg_0.x, 1u), ~arg_2), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1964u, arg_0.x, arg_0.x), func_2(u_input.b.x, vec3<u32>(arg_0.x, 4294967295u, 0u), Struct_1(false, arg_1.b), vec3<f32>(-1256f, 1927f, -170f)))), func_2(_wgslsmith_mod_i32(u_input.a, ~_wgslsmith_mult_i32(52568i, u_input.b.x)), arg_0, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1060f, 1000f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-340f, 1000f, -1000f), vec3<f32>(1000f, -1723f, 201f), true))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(927f, 296f, 1379f)), vec3<f32>(1124f, 1000f, 695f), select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_1.a, true, false), arg_1.a))))));
    var var_1 = Struct_2(arg_1, arg_1, false, -1229f, countOneBits(select(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, arg_2, 4294967295u), arg_0), arg_3.yxz), ~vec3<u32>(arg_0.x, 1u, u_input.c.x), !vec3<bool>(true, arg_1.a, arg_1.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -762f)) * vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), -834f)));
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_3(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)))) << (~select(_wgslsmith_div_vec3_u32(vec3<u32>(11644u, 32126u, 4003u), vec3<u32>(u_input.c.x, 0u, 0u)), vec3<u32>(44926u, 8419u, 4294967295u) | vec3<u32>(4294967295u, 4294967295u, u_input.c.x), !arg_0.a) % vec3<u32>(32u)), func_3(_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(0u, 4294967295u, u_input.c.x), vec3<u32>(4294967295u, 18383u, 72335u)), ~firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, 20700u)), vec3<u32>(u_input.c.x ^ 35290u, u_input.c.x, 1u)), arg_0, 0u, vec4<u32>(u_input.c.x, (u_input.c.x ^ u_input.c.x) | u_input.c.x, u_input.c.x, ~u_input.c.x)), 1u, select(abs(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 1677u, u_input.c.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 41605u >> (u_input.c.x % 32u), 121766u, ~u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(31845u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(44206u, u_input.c.x, u_input.c.x, u_input.c.x)))), vec4<bool>(arg_0.a, true, arg_0.b == -u_input.a, true)));
    return Struct_3(!select(select(!vec4<bool>(true, arg_0.a, arg_0.a, false), !vec4<bool>(true, false, var_0.a, var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(arg_0.a, true, arg_0.a, false), vec4<bool>(false, true, arg_0.a, false))), vec4<bool>(arg_0.a, false, any(vec2<bool>(arg_0.a, false)), true), select(vec4<bool>(var_0.a, false, true, false), !vec4<bool>(false, var_0.a, false, var_0.a), var_0.a || arg_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 448u, ~34671u) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(16732u, 0u, u_input.c.x), vec3<u32>(30890u, 1u, 0u)) >> (~vec3<u32>(84329u, 0u, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(max(0u, u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, 26893u), u_input.c.x & u_input.c.x), firstLeadingBit(vec3<u32>(u_input.c.x, 1u, 4294967295u)) ^ vec3<u32>(u_input.c.x, 40358u, 32591u), vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 19921u), vec3<u32>(u_input.c.x, u_input.c.x, 33629u)), _wgslsmith_div_u32(1u, u_input.c.x)))));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(true, u_input.b.x);
    let var_1 = Struct_2(Struct_1(true, var_0.b), var_0, _wgslsmith_div_f32(295f, 762f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(261f, 767f, var_0.a))) * -709f), -761f, _wgslsmith_sub_vec3_u32(~vec3<u32>(0u >> (0u % 32u), ~u_input.c.x, ~u_input.c.x), ~(~vec3<u32>(u_input.c.x, 52819u, u_input.c.x))));
    var var_2 = func_4(func_3(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(28030u, var_1.e.x), u_input.c.x), var_1.e.x, _wgslsmith_mod_u32(~u_input.c.x, ~var_1.e.x)), var_1.a, _wgslsmith_mod_u32(firstLeadingBit(~u_input.c.x), func_2(u_input.a >> (4294967295u % 32u), ~vec3<u32>(1u, u_input.c.x, var_1.e.x), var_1.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d, 374f, 821f))))), vec4<u32>(var_1.e.x, var_1.e.x, u_input.c.x, 0u)));
    let var_3 = func_4(Struct_1(all(var_2.a.zxz), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 11263i))))).a.x || (!(!var_0.a) & true);
    var var_4 = var_1;
    return var_2.a.zzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1341f, 414f)) + 549f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-405f)) * 1024f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-993f + -741f), _wgslsmith_f_op_f32(-1217f * 145f))) - -1883f)));
    var var_1 = func_1();
    let var_2 = func_4(func_3(vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), 1u), u_input.c.x, ~firstTrailingBit(u_input.c.x)), Struct_1(any(vec4<bool>(false, var_1.x, true, true)), ~(-20387i)), ~(~(~9820u)), select(abs(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 58120u), ~65590u, 4294967295u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), u_input.c.x != _wgslsmith_mod_u32(u_input.c.x, 4294967295u))));
    let var_3 = vec4<u32>(~13719u, 31861u, 47137u & var_2.b.x, abs(_wgslsmith_dot_vec2_u32(max(u_input.c, u_input.c), var_2.b.zx))) << ((vec4<u32>(~4294967295u, u_input.c.x, ~firstTrailingBit(33048u), _wgslsmith_mult_u32(~u_input.c.x, abs(1u))) & min(vec4<u32>(_wgslsmith_clamp_u32(24266u, u_input.c.x, u_input.c.x), u_input.c.x & u_input.c.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, var_2.b.x), vec4<u32>(27408u, var_2.b.x, 0u, 26322u))), ~max(vec4<u32>(52749u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(55816u, 0u, 82979u, u_input.c.x)))) % vec4<u32>(32u));
    var_1 = vec3<bool>(false, var_1.x, true);
    var_1 = func_1();
    var_1 = var_2.a.yzw;
    let var_4 = func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_2.b.x, ~_wgslsmith_mod_u32(u_input.c.x, var_2.b.x)), ~(~vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x))), Struct_1(false, -12675i), _wgslsmith_sub_u32(4529u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~1228u, select(u_input.c.x, 0u, false)), var_3.x)), vec4<u32>(u_input.c.x, ~_wgslsmith_mult_u32(11104u, select(var_2.b.x, 1u, var_1.x)), var_2.b.x, _wgslsmith_add_u32(countOneBits(var_2.b.x), var_2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~(u_input.c.x << (var_3.x % 32u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_2.b.x), _wgslsmith_mod_vec2_u32(var_2.b.xx, vec2<u32>(var_3.x, 14391u))), 1u)), ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b.x, 0i), u_input.b, vec2<i32>(abs(-7230i), 2147483647i)));
}

