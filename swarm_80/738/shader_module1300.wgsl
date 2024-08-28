struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec2<i32>(u_input.b.x, u_input.b.x);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.b.x) >> (u_input.d.xyy % vec3<u32>(32u)), abs(vec3<i32>(-2147483647i, u_input.b.x, var_0.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, var_0.x), vec3<i32>(-21526i, 0i, var_0.x)), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, 0i), vec3<i32>(u_input.b.x, var_0.x, -13606i)))), -abs(countOneBits(vec3<i32>(u_input.b.x, var_0.x, u_input.b.x)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.b.x), ~64708i), -_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(var_0.x, var_0.x))), -15141i));
    var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(39826i, abs(var_0.x), i32(-1i) * -2147483647i), var_1.x), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(42487i, 26293i), -44270i)));
    var var_2 = ~firstTrailingBit(vec4<i32>(1i, var_1.x, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, -26220i), vec3<i32>(10584i, 1i, u_input.b.x)))) ^ (vec4<i32>(max(_wgslsmith_mult_i32(u_input.b.x, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -1i, 1i), vec4<i32>(1i, -2147483647i, u_input.b.x, var_1.x))), _wgslsmith_mult_i32(var_0.x, var_1.x) >> (countOneBits(u_input.a.x) % 32u), 20523i, -(~var_1.x)) >> (vec4<u32>(u_input.a.x, 0u, 1u, min(~4294967295u, _wgslsmith_mod_u32(u_input.c.x, 2601u))) % vec4<u32>(32u)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.x, -5909i, -2147483647i, var_1.x), -vec4<i32>(23060i, -2147483647i, 51868i, -2147483647i)), firstLeadingBit(max(vec4<i32>(var_2.x, -22231i, u_input.b.x, var_1.x), vec4<i32>(-17920i, 2147483647i, var_1.x, u_input.b.x)))) ^ ~_wgslsmith_add_i32(_wgslsmith_add_i32(11504i, -16054i), _wgslsmith_sub_i32(2530i, 0i)), ~max(~(~u_input.d.x), 20541u));
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(~var_3.b, _wgslsmith_sub_i32(-var_1.x, ~var_1.x)), countOneBits(u_input.b << (firstTrailingBit(u_input.d.zz) % vec2<u32>(32u))) >> (~u_input.d.yw % vec2<u32>(32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = min(u_input.b.x, 2147483647i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(790f, 738f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 662f)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(202f * -201f), _wgslsmith_f_op_f32(f32(-1f) * -1027f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f))));
    var_0 = func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) + _wgslsmith_f_op_f32(step(-1000f, var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-774f, 121f)))), vec4<f32>(var_1.a.x, var_1.b, _wgslsmith_div_f32(-363f, var_1.a.x), _wgslsmith_f_op_f32(trunc(var_1.b))))));
    let var_2 = var_1.b;
    let var_3 = -u_input.b.x;
    return Struct_2(Struct_1(vec2<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 273f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 878f, 924f, var_1.a.x)), vec4<f32>(740f, var_1.b, var_1.a.x, -1192f))))), u_input.b.x), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), 75588u == u_input.d.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-119f, 562f, var_1.a.x, 829f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1011f, 1024f, -1229f, var_1.b) + vec4<f32>(-1161f, var_1.a.x, 1971f, 925f)), true)))), -53616i), _wgslsmith_mod_vec3_u32(abs(~(vec3<u32>(0u, u_input.d.x, u_input.a.x) | u_input.c)), u_input.c), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(2992i, var_3, 0i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -7679i)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1.a.b.x;
    var var_1 = arg_1.a;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(261f, var_1.b.x) - var_1.b.zy))) + vec2<f32>(331f, -284f)) + arg_1.b.b.yw), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.b.x)))))));
    let var_3 = 4294967295u;
    var var_4 = func_2();
    return var_4.a;
}

fn func_1() -> f32 {
    let var_0 = abs(-vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(-54826i, u_input.b.x))), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b & u_input.b), 2635i));
    let var_1 = func_4(u_input.c.x, func_2(), vec2<bool>(true, true));
    let var_2 = any(!(!vec4<bool>(false, any(vec3<bool>(true, false, var_1.a.x)), any(var_1.a), 0i > u_input.b.x)));
    let var_3 = countOneBits(~(~4294967295u));
    let var_4 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(var_0.x, _wgslsmith_mod_i32(u_input.b.x, -2147483647i)), -1i)), ~(-var_0));
    return _wgslsmith_f_op_f32(1525f - _wgslsmith_f_op_f32(abs(-832f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-789f, 23704i, u_input.a.x);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d), u_input.d), 1u, u_input.a.x, var_0.c), vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~u_input.d), ~(~u_input.d)), ~(~u_input.a.x), var_0.c, u_input.a.x));
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - 426f), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-637f))));
    var_2 = Struct_4(var_2.a, _wgslsmith_f_op_f32(var_2.a.x * -2584f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(718f)))), var_0.a, _wgslsmith_f_op_f32(var_2.b - -1277f)), vec3<f32>(-1000f, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b)) - var_2.b)))));
    let var_4 = var_0.a;
    let var_5 = func_2().b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

