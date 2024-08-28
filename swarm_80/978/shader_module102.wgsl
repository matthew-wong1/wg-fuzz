struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 44231u, arg_2, arg_2), firstLeadingBit(vec4<u32>(14143u, arg_2, arg_2, arg_2))), vec4<u32>(8443u, ~arg_2, ~arg_2, arg_2)));
    var var_1 = Struct_2(-695f, vec4<u32>(~_wgslsmith_clamp_u32(73236u, 4294967295u, firstTrailingBit(27070u)), abs(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(84528u, arg_2)))), var_0.x, ~arg_2));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, -192f), vec2<f32>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) - vec2<f32>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.a), vec2<f32>(2562f, var_1.a)))), !arg_1))) + vec2<f32>(var_1.a, _wgslsmith_f_op_f32(sign(var_1.a))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(round(-2392f)), vec4<u32>(1u, 47863u, arg_2, abs(37698u)));
    var_1 = Struct_2(var_2.x, firstTrailingBit(~(~vec4<u32>(27490u, var_1.b.x, 95407u, 1u))));
    return _wgslsmith_f_op_f32(select(-760f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1));
}

fn func_2() -> bool {
    var var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(select(vec3<i32>(u_input.a, 2147483647i, u_input.b), vec3<i32>(-32538i, -25688i, 54603i), vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), _wgslsmith_clamp_u32(1u, 32792u, 89848u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1009f, 1350f) * _wgslsmith_f_op_f32(-1366f + -1291f)), -362f, _wgslsmith_f_op_f32(select(-559f, _wgslsmith_f_op_f32(-1872f - 416f), u_input.c != u_input.b)))), -1599f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-508f, _wgslsmith_f_op_f32(1112f * -161f), _wgslsmith_f_op_f32(trunc(var_0.b)), -289f)))));
    var_0 = Struct_3(Struct_1(var_1.a), -321f);
    var_0 = Struct_3(Struct_1(var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a.a.x, _wgslsmith_f_op_f32(-var_1.a.x)))))));
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(exp2(var_1.a.x))));
    return true;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_2(), true))), any(vec4<bool>(!any(vec3<bool>(false, false, false)), select(false, true, true) && true, _wgslsmith_dot_vec3_u32(vec3<u32>(5442u, 40238u, 0u), vec3<u32>(4294967295u, 38417u, 4294967295u)) != ~11181u, true | (u_input.a == u_input.a))), true, true);
    let var_1 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.c, 36473i), _wgslsmith_mult_i32(2147483647i, u_input.b)), max(vec3<i32>(u_input.a, u_input.b, 1i), vec3<i32>(u_input.c, u_input.c, -11718i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.a), vec3<i32>(u_input.c, 2147483647i, u_input.b)), vec3<i32>(0i, -70652i, -1i) | vec3<i32>(46141i, u_input.c, u_input.b), var_0.wzx))) & (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(0i, 38080i, 1i), -vec3<i32>(2147483647i, 0i, u_input.c)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), 683f, -1389f);
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-158f, 1051f, 740f) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, var_2.x, 525f))), vec3<f32>(var_2.x, var_2.x, arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(func_3(var_1, false, 1u)), 210f, _wgslsmith_f_op_f32(func_3(vec3<i32>(-9314i, -13015i, u_input.c), false, 38627u)))))));
    var var_3 = var_2.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_f_op_f32(-325f + arg_0.x))), var_2.x, -1919f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.a);
    var var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, 436f)), _wgslsmith_f_op_f32(ceil(955f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1292f, -1280f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f))));
    var var_2 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-var_1.a.zx)), _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)), var_1.a.x))));
    var var_3 = vec2<i32>(1i, ~abs(~21873i));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_2.a.a.x, var_1.a.x, -489f), var_2.a.a, vec4<bool>(false, true, true, true))), var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, var_2.b, var_1.a.x, var_1.a.x)), vec4<f32>(-592f, -757f, var_2.b, -481f)))), vec4<bool>((u_input.b > -1i) != true, false, select(false, false, false) && true, !all(vec2<bool>(true, true))))));
    var_3 = ~vec2<i32>(_wgslsmith_add_i32(-var_0, -(~1i)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(select(var_2.a.a.yw, vec2<f32>(var_1.a.x, var_2.a.a.x), false))).a.x, var_2.b));
}

