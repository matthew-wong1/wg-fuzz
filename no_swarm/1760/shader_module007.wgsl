struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = firstLeadingBit(~vec3<u32>(1u, min(1u, u_input.a.x), u_input.a.x));
    var_0 = vec3<u32>(u_input.a.x, 45539u, 54819u) >> (vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(min(firstTrailingBit(var_0.x), 0u), u_input.a.x), min(_wgslsmith_add_u32(var_0.x, var_0.x), ~u_input.a.x) << (((var_0.x | 4294967295u) ^ max(1u, 33103u)) % 32u)) % vec3<u32>(32u));
    var_0 = vec3<u32>(~(~(~48365u) ^ var_0.x), u_input.a.x, 18208u);
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, arg_2), ~(reverseBits(vec3<i32>(u_input.b.x, 8334i, u_input.b.x)) ^ -vec3<i32>(u_input.b.x, -2239i, 27587i))), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, reverseBits(-1i), u_input.b.x), -(vec3<i32>(u_input.b.x, arg_2, -1i) & vec3<i32>(u_input.b.x, -25980i, u_input.b.x)))));
    let var_2 = vec4<bool>(!((var_0.x >= 39813u) & true) && true, !((-14904i ^ firstTrailingBit(-21918i)) != firstTrailingBit(u_input.b.x)), true, !all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), all(vec4<bool>(false, false, true, true)))));
    return 57192u;
}

fn func_2() -> vec4<bool> {
    var var_0 = abs(_wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 21491u), vec2<u32>(0u, u_input.a.x))), ~vec2<u32>(u_input.a.x, u_input.a.x)) << (~vec2<u32>(u_input.a.x & 6993u, func_3(vec2<f32>(-2060f, -356f), 868f, 0i)) % vec2<u32>(32u)));
    var_0 = vec2<u32>(63630u, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(30299u << (var_0.x % 32u)), 15108u, ~_wgslsmith_mult_u32(var_0.x, var_0.x)), vec3<u32>(92252u, u_input.a.x, (var_0.x >> (39564u % 32u)) & _wgslsmith_clamp_u32(1u, var_0.x, u_input.a.x))));
    let var_1 = vec2<bool>(false, true);
    var_0 = min(vec2<u32>(func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1911f, -3122f))), -1971f, firstLeadingBit(u_input.b.x)), var_0.x) >> (vec2<u32>(var_0.x, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(55099u), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), 1u), 69084u) & countOneBits(vec2<u32>(_wgslsmith_mult_u32(1u, 21757u), ~1u)));
    let var_2 = Struct_1(-207f);
    return select(select(vec4<bool>(!var_1.x, var_1.x, _wgslsmith_f_op_f32(abs(-1000f)) <= _wgslsmith_f_op_f32(var_2.a - 470f), all(vec4<bool>(true, var_1.x, true, false))), select(!select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true)), select(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(false, true, true, true), false), vec4<bool>(true, var_1.x, true, false), var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), false), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x), var_1.x)), true), !vec4<bool>(any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x))), true | var_1.x, true, var_1.x & true), !select(select(!vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, true, true, true), all(vec4<bool>(var_1.x, true, true, false))), select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, true, var_1.x), any(vec4<bool>(var_1.x, true, false, var_1.x))), all(select(var_1, vec2<bool>(var_1.x, false), var_1.x))));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = ~(-_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, u_input.b.x, 47009i, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, -39035i, u_input.b.x), vec4<i32>(36287i, u_input.b.x, -10139i, 1i) ^ vec4<i32>(-2147483647i, 1i, u_input.b.x, 53991i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x & u_input.b.x, u_input.b.x >> (u_input.a.x % 32u)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b.x, 31115i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x)))));
    let var_1 = vec2<i32>(2147483647i, ~var_0.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(184f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(!select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), func_2()), vec4<bool>(true, true, true, true), select(true, u_input.a.x >= u_input.a.x, true)));
    var var_1 = u_input.b.x;
    var var_2 = abs(~(~vec4<u32>(0u, 40154u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~1u)));
    let var_3 = func_2();
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, ~(u_input.b.x >> (1u % 32u)), ~(-_wgslsmith_add_i32(-1i, u_input.b.x)), u_input.b.x ^ -(u_input.b.x | u_input.b.x)), _wgslsmith_mult_vec4_i32((vec4<i32>(-4324i, u_input.b.x, u_input.b.x, u_input.b.x) | select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-3763i, u_input.b.x, -27062i, u_input.b.x), vec4<bool>(var_3.x, false, true, true))) ^ ~(~vec4<i32>(-4303i, -1i, u_input.b.x, -1719i)), -abs(-vec4<i32>(u_input.b.x, 15659i, u_input.b.x, u_input.b.x))));
    return func_4(!var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(func_4(func_2()).a);
    var var_2 = vec4<u32>(117436u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, u_input.a.x)), ~(~u_input.a)) & (_wgslsmith_div_u32(u_input.a.x, u_input.a.x & 51119u) | ((u_input.a.x << (u_input.a.x % 32u)) >> (~1u % 32u))), func_3(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(abs(329f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -1293f)) - _wgslsmith_f_op_f32(sign(-407f))), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, 1i), u_input.b.x)));
    let var_3 = 0u;
    let var_4 = select(func_2().wx, select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), func_2().zw, vec2<bool>(true, true)), !vec2<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, false, true))), vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_1.a))));
}

