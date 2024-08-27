struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(vec3<bool>(!(~(-1i) == firstTrailingBit(u_input.c)), all(vec4<bool>(all(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, false, true, false)), true, all(vec4<bool>(true, true, false, false)))), (false && any(vec2<bool>(true, false))) == !all(vec2<bool>(true, true))), 4294967295u, u_input.a.x ^ _wgslsmith_clamp_u32(28033u, countOneBits(1u), select(select(5449u, u_input.a.x, true), 26375u, true)));
    let var_1 = Struct_1(false, select(select(var_0.a.xx, select(!var_0.a.zz, !var_0.a.zy, var_0.a.x), true | any(vec4<bool>(var_0.a.x, var_0.a.x, true, true))), var_0.a.xz, any(var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-127f, 1581f)) + vec2<f32>(833f, -571f)), vec2<f32>(_wgslsmith_f_op_f32(-1304f * -1832f), _wgslsmith_f_op_f32(floor(565f)))))));
    let var_2 = ~firstLeadingBit(select(vec4<i32>(u_input.b.x >> (1u % 32u), ~72846i, u_input.c, abs(1i)), vec4<i32>(2147483647i, _wgslsmith_add_i32(u_input.b.x, u_input.c), abs(32424i), u_input.c), !(!vec4<bool>(true, true, var_1.a, var_1.a))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1418f))) - -591f));
    let var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, -420f) * -1182f) - _wgslsmith_f_op_f32(var_1.c.x * -1106f)) == var_1.c.x);
    return true;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(true);
    let var_1 = Struct_2(true);
    var var_2 = var_1;
    var_2 = Struct_2(var_0.a);
    var_2 = Struct_2(!var_0.a);
    return Struct_4(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -1597f, !func_3())) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-261f)))), Struct_1(var_0.a, !select(vec2<bool>(false, var_0.a), select(vec2<bool>(true, var_1.a), vec2<bool>(false, false), var_0.a), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = ~arg_3.x;
    var_0 = ~u_input.b.x;
    var_0 = _wgslsmith_dot_vec2_i32(arg_3.zw, ~(~(~(~vec2<i32>(u_input.c, u_input.c)))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    return Struct_4(u_input.a.x << (_wgslsmith_sub_u32(~(var_1.a ^ u_input.a.x), var_1.a) % 32u), _wgslsmith_f_op_f32(sign(129f)), func_2().c);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32, arg_3: u32) -> Struct_2 {
    return Struct_2(arg_1.c.b.x && true);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = u_input.a.x;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 838f, arg_2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x))), arg_0.a))), Struct_4(53646u, _wgslsmith_f_op_f32(step(func_2().b, arg_2.c.x)), Struct_1(u_input.c != select(-33149i, -62157i, true), vec2<bool>(func_1(vec3<f32>(arg_2.c.x, -1159f, arg_2.c.x), vec4<f32>(1362f, arg_2.c.x, -858f, arg_2.c.x), vec3<bool>(true, arg_2.b.x, true), arg_3).c.b.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c * arg_2.c)))), -226f, _wgslsmith_sub_u32(~1u | func_2().a, 0u));
    return u_input.b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-1000f)), true))), 1376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-193f)) * -843f))));
    var var_1 = -1i << (u_input.a.x % 32u);
    var_1 = ~reverseBits(u_input.c | _wgslsmith_mult_i32(~(-1420i), ~(-1i)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, 433f, var_0.x, 851f) * vec4<f32>(1181f, 1115f, -948f, -802f)) * vec4<f32>(-1000f, -381f, var_0.x, var_0.x)), vec4<f32>(2263f, _wgslsmith_f_op_f32(-575f + var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(402f, var_0.x)))));
    let var_2 = false;
    let var_3 = -(~(i32(-1i) * -37834i));
    let var_4 = false;
    let var_5 = vec4<i32>(var_3, ~var_3, _wgslsmith_dot_vec2_i32(func_5(func_4(_wgslsmith_div_vec3_f32(var_0.zzw, vec3<f32>(-570f, 763f, -679f)), func_1(var_0.wzz, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_2), vec4<i32>(var_3, 0i, -47590i, u_input.b.x)), _wgslsmith_f_op_f32(141f * var_0.x), 409u << (u_input.a.x % 32u)), u_input.c, Struct_1(var_4 | true, vec2<bool>(var_2, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(249f, var_0.x) * var_0.xy)), max(vec4<i32>(u_input.c, -17766i, -1i, -7383i), vec4<i32>(-1i, -2147483647i, var_3, var_3)) << (min(vec4<u32>(u_input.a.x, 3711u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))), ~func_5(Struct_2(var_4), var_3, Struct_1(var_2, vec2<bool>(var_4, var_4), vec2<f32>(288f, -1495f)), vec4<i32>(u_input.b.x, var_3, var_3, -2147483647i)) | u_input.b.zx), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)))) + -832f), ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 59397u, u_input.a.x)) & ~vec4<u32>(35363u, u_input.a.x, 75217u, 0u), select(vec4<u32>(39554u, 27414u, 55797u, u_input.a.x), vec4<u32>(4294967295u, 4832u, u_input.a.x, u_input.a.x), !var_4)), func_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + -1461f), _wgslsmith_f_op_f32(-2324f + var_0.x)), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(trunc(1249f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -260f)), select(select(vec3<bool>(false, var_4, false), vec3<bool>(false, var_2, var_4), all(vec2<bool>(false, true))), !(!vec3<bool>(var_4, var_2, false)), !vec3<bool>(true, false, var_2)), ~_wgslsmith_add_vec4_i32(var_5, var_5)).c.c.x, _wgslsmith_add_u32(~(min(u_input.a.x, u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(21443u, 97020u, 82407u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)) % 32u)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), ~(~u_input.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_mod_u32(14325u, u_input.a.x), ~u_input.a.x, 43391u), ~vec4<u32>(4294967295u, 0u, u_input.a.x, 1u)));
}

