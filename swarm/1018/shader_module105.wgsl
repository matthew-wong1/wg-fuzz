struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_2(arg_1.d.a.wy, vec2<bool>(true, false));
    let var_1 = vec2<bool>(true, !all(vec4<bool>(any(vec4<bool>(var_0.b.x, var_0.b.x, false, false)), false, var_0.b.x == false, true)));
    let var_2 = var_0.a.x;
    var var_3 = vec2<f32>(260f, _wgslsmith_f_op_f32(-arg_0));
    var_3 = vec2<f32>(160f, -1000f);
    return u_input.a.x;
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(371f, -537f, 248f, 515f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(754f, 332f, -2355f, 1541f), vec4<f32>(-844f, 504f, 2736f, 1399f), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), -select(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, 1i), ~vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<i32>(~u_input.a.x, -1i, u_input.a.x >> (0u % 32u)), true));
    let var_1 = Struct_3(u_input.a.x, var_0, _wgslsmith_mult_i32(~(-85215i), 1i), var_0, vec3<u32>(_wgslsmith_clamp_u32(~1u, min(1u, _wgslsmith_mod_u32(4294967295u, 82336u)), ~(~4816u)), _wgslsmith_add_u32(~(~37847u), 50792u), abs(72623u)));
    let var_2 = -_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0.b.x, var_0.b.x, 10855i, -2147483647i), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, var_0.b.x), vec4<bool>(false, true, true, false)) >> (abs(vec4<u32>(4294967295u, var_1.e.x, 22495u, 0u)) % vec4<u32>(32u)), select(-vec4<i32>(-30355i, u_input.a.x, var_1.b.b.x, 1i), vec4<i32>(var_1.b.b.x, var_1.c, var_1.a, var_1.c) << (vec4<u32>(5768u, var_1.e.x, 1u, var_1.e.x) % vec4<u32>(32u)), all(vec4<bool>(true, true, true, true)))) << (max(~vec4<u32>(~1u, var_1.e.x, _wgslsmith_div_u32(var_1.e.x, 13181u), min(1u, var_1.e.x)), vec4<u32>((var_1.e.x & 31141u) << (0u % 32u), ~5323u, ~0u >> (var_1.e.x % 32u), 25566u)) % vec4<u32>(32u));
    let var_3 = ~max(~(~select(vec4<u32>(20619u, var_1.e.x, var_1.e.x, var_1.e.x), vec4<u32>(8650u, 45077u, var_1.e.x, 44301u), true)), ~(~(~vec4<u32>(var_1.e.x, 4294967295u, 1u, 1u))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(906f, var_0.a.x) - var_0.a.wx), var_1.d.a.zz)), vec2<f32>(_wgslsmith_f_op_f32(-714f * var_1.d.a.x), _wgslsmith_f_op_f32(floor(var_0.a.x)))))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    return var_4.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = 899f;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a >> (~(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)), vec2<i32>(0i, -func_2(1104f, Struct_3(-2147483647i, Struct_1(vec4<f32>(var_0, var_0, -574f, var_0), vec3<i32>(80246i, 2147483647i, 25034i)), u_input.a.x, Struct_1(vec4<f32>(-2074f, -144f, -927f, var_0), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(32090u, 0u, 0u))))), _wgslsmith_clamp_i32(32060i, i32(-1i) * -u_input.a.x, u_input.a.x), u_input.a.x ^ max(u_input.a.x, ~(-2147483647i)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3()), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    var var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(99262u, 1u, select(106898u, 4294967295u, true))), abs(select(vec3<u32>(_wgslsmith_clamp_u32(1759u, 57069u, 77347u), firstLeadingBit(0u), 1u), vec3<u32>(1u, 0u, 0u) & select(vec3<u32>(4294967295u, 1183u, 51334u), vec3<u32>(4294967295u, 3269u, 0u), vec3<bool>(var_2.b.x, true, var_2.b.x)), !select(vec3<bool>(var_2.b.x, false, true), vec3<bool>(var_2.b.x, false, false), vec3<bool>(true, var_2.b.x, false)))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(21701u, 4294967295u, 63581u), ~vec3<u32>(37324u, 1u, 12341u), ~vec3<u32>(0u, 1u, 0u)), vec3<u32>(~5380u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(20576u, 2042u, 1u), vec3<u32>(37638u, 4294967295u, 0u)))), ~select(reverseBits(vec3<u32>(1u, 32180u, 20522u)), ~vec3<u32>(1u, 4294967295u, 21650u), var_2.b.x)));
    let var_4 = ~(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_3.x, 71571u), ~vec3<u32>(0u, 81997u, var_3.x))));
    return StorageBuffer(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, ~25488i << (_wgslsmith_mult_u32(var_4.x, 0u) % 32u)), u_input.a.x, 1i << (_wgslsmith_mult_u32(var_3.x, reverseBits(var_3.x)) % 32u)), abs(u_input.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -346f, var_0) * vec3<f32>(311f, 232f, var_2.a.x)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_2.a.x, var_2.a.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 191f, var_2.a.x, var_2.a.x) - vec4<f32>(355f, var_2.a.x, var_2.a.x, 701f))))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-1000f + -1693f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(exp2(var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

