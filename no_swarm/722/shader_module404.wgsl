struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(277f, 1447f, 436f, -1085f), vec2<i32>(27363i, 2147483647i)), Struct_1(vec4<f32>(1280f, 311f, -1329f, -1098f), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec4<f32>(-1086f, -589f, -2092f, -1353f), vec2<i32>(-35476i, -16605i)), Struct_1(vec4<f32>(1058f, -261f, -1000f, 560f), vec2<i32>(17589i, 24778i)), Struct_1(vec4<f32>(351f, -767f, 289f, 442f), vec2<i32>(-3315i, -1766i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = vec4<bool>(!any(!(!vec2<bool>(arg_0, arg_0))), arg_0, !arg_0, true);
    var var_2 = true;
    var_2 = false;
    var_0 = firstLeadingBit(1u);
    return -435f;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(29611u < u_input.e, vec2<u32>(53187u, u_input.e) & vec2<u32>(27300u, u_input.e))) + _wgslsmith_f_op_f32(f32(-1f) * -422f))))));
    let var_1 = Struct_1(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(arg_0 * 1320f)), u_input.d.xz);
    var var_2 = var_1;
    global0 = array<Struct_1, 5>();
    var var_3 = ~(~(vec3<u32>(0u, _wgslsmith_div_u32(u_input.e, 69909u), u_input.e) | countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(83751u, 38397u, u_input.e), vec3<u32>(u_input.e, u_input.e, 0u), vec3<u32>(0u, 1u, 13051u)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_div_vec2_i32(countOneBits(~(~var_2.b)), ~select(var_2.b, vec2<i32>(-2147483647i, -2147483647i), vec2<bool>(false, false))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = abs(0i) >> (u_input.e % 32u);
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 4294967295u), ~vec2<u32>(4294967295u, u_input.e))))), arg_0.b.x);
    var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, max(_wgslsmith_clamp_u32(0u, 51322u, 0u) & 4294967295u, u_input.e)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e, _wgslsmith_mult_u32(43855u, u_input.e)), reverseBits(select(vec2<u32>(9914u, 0u), vec2<u32>(21883u, 44317u), vec2<bool>(true, true)))), ~u_input.e));
    return _wgslsmith_mult_i32(~u_input.a, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 878f)), 606f, _wgslsmith_f_op_f32(max(-434f, -467f)))), -(u_input.d.zy >> (reverseBits(vec2<u32>(4294967295u, 12306u)) % vec2<u32>(32u))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1((27488i >> (u_input.e % 32u)) == _wgslsmith_sub_i32(-28050i, var_0.b.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.e) | vec2<u32>(4991u, 4294967295u), ~vec2<u32>(u_input.e, 0u)))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.a.x))))), min(~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.xy, vec2<i32>(-2147483647i, u_input.d.x)), vec2<i32>(0i, -2147483647i)), vec2<i32>(26072i, 29984i) & (var_0.b >> (~vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u)))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_2 = u_input.e;
    var var_3 = vec3<i32>(-2147483647i, var_1.b.x, func_3(func_2(var_1.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(15021i, var_0.b.x), reverseBits(u_input.c)))));
    let var_4 = countOneBits(~(-vec2<i32>(13106i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(func_1(any(vec4<bool>(true, true, true, true)), abs(min(vec2<u32>(4294967295u, 61231u), vec2<u32>(19970u, 24722u))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x))))), ~47869i);
}

