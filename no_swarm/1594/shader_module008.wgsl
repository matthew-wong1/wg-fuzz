struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_3(select(!vec4<bool>(u_input.b.x != 2147483647i, any(vec3<bool>(false, true, true)), true, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), all(vec3<bool>(true, true, true))), vec4<bool>(true, false, true, -1i <= firstTrailingBit(2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1539f - 1244f) * _wgslsmith_f_op_f32(floor(-1463f))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-490f)), _wgslsmith_f_op_f32(1000f + -282f)) - -573f)), countOneBits(abs(u_input.b.xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f + _wgslsmith_f_op_f32(f32(-1f) * -1925f))) * -182f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-521f, var_0.b.x, 128f), vec3<f32>(var_0.d, var_0.d, 1662f), vec3<bool>(true, var_0.a.x, false)))))));
    var var_2 = _wgslsmith_clamp_vec3_i32(max(u_input.b.zwz, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.xww, -vec3<i32>(u_input.b.x, u_input.b.x, var_0.c.x)), countOneBits(u_input.b.xzy))), vec3<i32>(u_input.b.x, firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, 18979i) >> (4294967295u % 32u)) << (u_input.a % vec3<u32>(32u)), abs(u_input.b.xxz));
    var_2 = vec3<i32>(_wgslsmith_div_i32(var_0.c.x ^ firstTrailingBit(-5947i), var_0.c.x), var_0.c.x, u_input.b.x);
    var_2 = -_wgslsmith_sub_vec3_i32(u_input.b.wwz, ~u_input.b.yyx);
    return var_0.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    let var_0 = ~2147483647i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) - -793f) - 776f);
    var var_2 = func_3();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, 157f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-635f)) - _wgslsmith_f_op_f32(sign(var_1))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), 374f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, 1606f)))));
    var_2 = false;
    return firstTrailingBit(arg_0.x);
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = arg_0;
    let var_1 = vec2<bool>(false, false);
    var var_2 = u_input.b & ~reverseBits(vec4<i32>(~u_input.b.x, 2147483647i, -2147483647i, u_input.b.x | u_input.b.x));
    let var_3 = ~select(arg_0.b.yx | _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.x, 0u), arg_0.b.yx), u_input.a.zy, -950f <= _wgslsmith_f_op_f32(sign(-805f))) | arg_0.b.zy;
    var_2 = min(max(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i, u_input.b.x, 2147483647i, -1i), vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i), vec4<bool>(true, true, false, var_1.x)), abs(u_input.b)), u_input.b), u_input.b) & -vec4<i32>(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_2.x, -2147483647i, u_input.b.x), vec4<i32>(58275i, -24289i, 9273i, 1i)), var_0.b.yz | vec2<u32>(71059u, arg_0.b.x), var_1.x), var_2.x << (4294967295u % 32u), var_2.x, u_input.b.x);
    return StorageBuffer(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_2(1914f, vec3<u32>(_wgslsmith_add_u32(1u, u_input.a.x), _wgslsmith_mod_u32(4294967295u, 13059u), 9392u | u_input.a.x) << (firstTrailingBit(vec3<u32>(7305u, 49411u, 148u)) % vec3<u32>(32u))));
}

