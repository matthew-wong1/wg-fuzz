struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-349f, 805f)))), -vec3<i32>(abs(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), u_input.a.x, abs(u_input.a.x ^ -2147483647i)), (_wgslsmith_div_i32(u_input.a.x, 1i) << (~1u % 32u)) & ~_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), _wgslsmith_sub_i32(u_input.a.x, -11725i)), select(_wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(22733u, min(1u, u_input.b.x))), _wgslsmith_mod_vec2_u32(~min(u_input.b.yx, u_input.b.yz), vec2<u32>(14134u, _wgslsmith_sub_u32(23491u, 1u))), true), u_input.b);
    var var_1 = vec3<u32>(~var_0.d.x, u_input.b.x, 35071u);
    var_1 = ~(_wgslsmith_mult_vec3_u32(~var_0.e, ~(~var_0.e)) & vec3<u32>(firstTrailingBit(var_0.d.x), ~var_0.d.x, ~(~var_1.x)));
    let var_2 = Struct_1(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, true)) | true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(var_0.a.x + 1950f) == -452f)), -662f, _wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_add_i32(~(~_wgslsmith_div_i32(var_0.c, -8046i)), u_input.a.x));
    var_1 = ~_wgslsmith_add_vec3_u32(~(~(var_0.e << (var_0.e % vec3<u32>(32u)))), select(_wgslsmith_add_vec3_u32(var_0.e, _wgslsmith_div_vec3_u32(var_0.e, vec3<u32>(43401u, u_input.b.x, u_input.b.x))), ~(~u_input.b), true));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1688f, -1043f, var_2.b, var_0.a.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, var_2.c.x, -1000f, var_2.b))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), 367f)));
    var var_2 = !select(vec2<bool>(false, all(vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(select(true, true, true), false));
    var_1 = 435f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -549f);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, var_0.x))) + vec2<f32>(var_0.x, 800f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1000f))), var_2.x)) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true)), 744f)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-12067i, u_input.a.x, 2147483647i) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u)), ~vec3<i32>(23921i, -1i, 14515i)), firstTrailingBit(-20905i), u_input.a.x), -(~(~min(18982i, -38890i))), u_input.b.zx, countOneBits(vec3<u32>(~u_input.b.x << (firstTrailingBit(41969u) % 32u), u_input.b.x, 4294967295u)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    let var_0 = func_2();
    var var_1 = Struct_3(var_0.a.x);
    var var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)))), _wgslsmith_f_op_f32(round(-300f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_0.a.x)))), i32(-1i) * -16953i);
    var var_3 = var_0.d.x >> (~abs(var_0.d.x) % 32u);
    let var_4 = Struct_3(var_2.c.x);
    return 892f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1596f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -454f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-598f, var_0), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, var_0))), _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))))), _wgslsmith_f_op_f32(step(886f, -1157f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(min(_wgslsmith_add_i32(45106i, -5049i), 7377i), reverseBits(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, -1490f, var_0, -2059f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 716f, -727f, 2021f) * vec4<f32>(var_0, 1611f, 940f, -207f))), 1i))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.x, vec2<i32>(u_input.a.x, -1i), vec4<f32>(314f, 1005f, 773f, var_1.x), u_input.a.x))), 1049f))));
    let var_3 = ~u_input.b;
    var var_4 = vec3<f32>(873f, var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(345f)), var_1.x))))));
    let var_5 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(select(true, false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))) - 1597f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_4.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(230f, var_4.x))) * _wgslsmith_f_op_vec2_f32(-var_4.zy)), any(vec3<bool>(false, false, false))))), _wgslsmith_mult_i32(u_input.a.x << ((1u & firstTrailingBit(56100u)) % 32u), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, ~44470u), ~vec2<u32>(~4294967295u, 45779u)), var_4.yx, _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(countOneBits(1u), 0u, var_3.x, 4294967295u)), vec4<u32>(u_input.b.x, u_input.b.x, ~_wgslsmith_add_u32(47267u, 0u), 10689u), ~(~(~vec4<u32>(0u, 70374u, u_input.b.x, 80771u)))), ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), var_3.yy), vec2<u32>(u_input.b.x, u_input.b.x)));
}

