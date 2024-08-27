struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec2<f32>(542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f + -2049f)))), !select(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)), true));
    let var_1 = vec4<bool>(false, var_0.b, var_0.b, false);
    var var_2 = -(~firstTrailingBit(~(~vec2<i32>(-17169i, -8707i))));
    let var_3 = firstTrailingBit(~(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_2.x, 65291i), select(vec2<i32>(var_2.x, var_2.x), vec2<i32>(-1i, var_2.x), var_0.b)) | (select(vec2<i32>(0i, 29076i), vec2<i32>(var_2.x, 0i), true) >> (reverseBits(u_input.a) % vec2<u32>(32u)))));
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(-23027i, _wgslsmith_div_i32(-_wgslsmith_sub_i32(-2147483647i, 0i), select(var_2.x, 1i, true) >> (0u % 32u))), abs(var_2.x), _wgslsmith_add_i32(2147483647i, -7611i));
    return firstTrailingBit(0i) == ~max(~min(var_3.x, 25241i), min(_wgslsmith_mod_i32(var_2.x, 28050i), var_2.x));
}

fn func_2() -> vec2<f32> {
    let var_0 = firstTrailingBit(u_input.a.x >> (_wgslsmith_div_u32(_wgslsmith_add_u32(4210u, _wgslsmith_sub_u32(u_input.a.x, 11061u)), 74171u) % 32u));
    let var_1 = 0i;
    global2 = true;
    global1 = array<vec3<i32>, 30>();
    global2 = !func_3();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(600f, -159f)) + _wgslsmith_div_f32(-210f, 230f)))) - _wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(floor(-287f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(229f, -170f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f))))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> vec2<i32> {
    global0 = -1000f;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2()), false);
    global2 = all(select(select(vec4<bool>(false, u_input.a.x <= 26675u, true, true), !(!vec4<bool>(arg_1.x, var_0.b, false, true)), arg_1.x), select(!vec4<bool>(false, var_0.b, true, arg_1.x), select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(var_0.b, true, arg_1.x, var_0.b), select(vec4<bool>(true, arg_1.x, false, var_0.b), vec4<bool>(arg_1.x, var_0.b, false, true), arg_1.x)), arg_1.x), arg_1.x && true));
    let var_1 = var_0.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1166f)) + _wgslsmith_f_op_vec2_f32(func_2()).x)) + 411f);
    var var_2 = var_0;
    return reverseBits(vec2<i32>(-5924i, _wgslsmith_clamp_i32(-5462i, ~firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(firstTrailingBit(-1i), 1i, ~(-11031i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-(vec2<i32>(~(-38285i), 1i) ^ func_1(firstTrailingBit(u_input.a.x), vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, -383f, -840f))));
    global1 = array<vec3<i32>, 30>();
    global2 = any(select(vec4<bool>(var_0.x < _wgslsmith_sub_i32(-2147483647i, var_0.x), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x != -647f, true, true, -881f != var_1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(var_0.x == -2147483647i, true, true, true), true)));
    global1 = array<vec3<i32>, 30>();
    var var_2 = ~_wgslsmith_mult_vec3_u32(select(~vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.a.x, 23054u, u_input.a.x), true) << (vec3<u32>(4294967295u, ~0u, _wgslsmith_mult_u32(u_input.a.x, 0u)) % vec3<u32>(32u)), ~vec3<u32>(32555u, firstTrailingBit(63886u), u_input.a.x));
    global1 = array<vec3<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1396f * -802f)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, min(vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, u_input.a.x) ^ u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.x, 12172u), vec2<u32>(3385u, var_2.x)), var_2.yx)), var_1.yx, _wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.x, 733f)))), _wgslsmith_f_op_f32(-var_1.x)))), -54987i);
}

