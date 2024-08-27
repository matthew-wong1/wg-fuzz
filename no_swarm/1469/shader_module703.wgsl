struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    var var_0 = -arg_0.ywz;
    var_0 = -(~select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, var_0.x, -1i, var_0.x), arg_0), arg_0.x, var_0.x), abs(arg_0.xyy), arg_1));
    var_0 = arg_0.xyz;
    let var_1 = arg_0.x | firstLeadingBit(abs(-_wgslsmith_div_i32(arg_0.x, -2147483647i)));
    var_0 = vec3<i32>(-1i) * -(_wgslsmith_mod_vec3_i32(arg_0.yyx, vec3<i32>(arg_0.x, 2147483647i, var_0.x)) | -vec3<i32>(var_1, 2147483647i, arg_0.x));
    return 965f;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_1(u_input.a, -464f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-104f, 506f), -431f, _wgslsmith_f_op_f32(1594f * -191f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1613f, 768f, -424f))))), -591f, _wgslsmith_f_op_f32(-284f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(12961i, -1i, 2147483647i, -2147483647i), false))), -172f))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = _wgslsmith_clamp_i32(~1i, max(reverseBits(-53620i), -6000i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(min(abs(30830i), ~2147483647i), _wgslsmith_add_i32(firstTrailingBit(2147483647i), reverseBits(-1i)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    return var_0;
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 571f), _wgslsmith_div_f32(475f, _wgslsmith_f_op_f32(-846f + 1000f)), true)), -1948f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f + _wgslsmith_f_op_f32(159f * -739f)))));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.x));
    var var_2 = vec3<i32>(abs(reverseBits(min(50907i, 40805i))), ~min(7259i, 24833i) | (1i << (_wgslsmith_clamp_u32(0u, 1173u, u_input.a.x) % 32u)), -1i) & vec3<i32>(2147483647i, ~(-1i), reverseBits(2147483647i));
    var var_3 = 0u;
    var_3 = u_input.c.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(61538u, ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), all(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false))));
    var var_1 = firstTrailingBit(reverseBits(-2147483647i)) ^ -1i;
    var var_2 = _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(-33164i, _wgslsmith_div_i32(-1i, 1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-10822i, abs(34542i)), ~53998i)));
    let var_3 = 0u;
    let var_4 = func_1();
    var var_5 = 0i;
    var_0 = _wgslsmith_sub_u32(~func_2().a.a.x ^ ~4294967295u, select(max(25255u, _wgslsmith_clamp_u32(var_4.a.a.x << (var_4.a.a.x % 32u), ~var_4.a.a.x, select(0u, var_4.a.a.x, false))), ~abs(var_4.a.a.x & var_4.a.a.x), any(vec3<bool>(false, true, !var_4.d.x))));
    var var_6 = vec3<bool>(func_1().d.x, !(!(any(vec4<bool>(var_4.d.x, true, var_4.d.x, false)) == all(vec2<bool>(var_4.d.x, var_4.d.x)))), select(var_4.d.x & !(18164u == var_4.a.a.x), true, all(vec2<bool>(true, true | var_4.d.x))));
    var var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.a.a.x, ~(~u_input.c.x), abs(_wgslsmith_div_u32(max(var_3, var_4.a.a.x), u_input.b.x))), func_1().a.a.zx, max(32103i | _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, 0i), countOneBits(-53396i), firstTrailingBit(1492i)), firstLeadingBit(1i)), -2147483647i);
}

