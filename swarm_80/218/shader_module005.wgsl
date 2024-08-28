struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_2.x), Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.ww + arg_2.zy)), countOneBits(vec3<i32>(abs(_wgslsmith_mult_i32(-1260i, 16211i)), ~0i, 37123i)), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1)));
    var var_1 = vec2<bool>(1u >= u_input.a.x, !((_wgslsmith_f_op_f32(arg_2.x - arg_2.x) < 558f) || any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    var_1 = !select(vec2<bool>(!(!var_1.x), true), select(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), var_1.x), select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), vec2<bool>(true, true)), !var_1.x), vec2<bool>(true, false), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), var_1.x), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), true), !var_1.x)), !(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false))));
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -627f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-232f, -398f), _wgslsmith_f_op_vec2_f32(arg_2.yx - vec2<f32>(190f, var_0.b.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(843f, var_3))), -512f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_2.zz)) * arg_1)), var_0.c.x >= firstTrailingBit(_wgslsmith_mod_i32(22728i, -16609i)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2651f, -1107f))))));
    let var_1 = arg_1.a.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(954f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-456f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_1.a.x)))));
    var var_2 = ~firstLeadingBit(~vec2<i32>(~2147483647i, 1i));
    var_2 = _wgslsmith_mod_vec2_i32(~min(firstLeadingBit(~vec2<i32>(-2147483647i, var_2.x)), vec2<i32>(14992i, var_2.x) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 25020u), u_input.a.zx) % vec2<u32>(32u))), vec2<i32>(var_2.x & reverseBits(max(var_2.x, var_2.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.x, var_2.x), -1i), 0i)));
    return i32(-1i) * -24177i;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(8985i, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, -1765f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.a, vec2<f32>(1794f, 1586f), vec4<f32>(-1020f, -547f, 1540f, -562f))) * _wgslsmith_div_vec2_f32(vec2<f32>(739f, -758f), vec2<f32>(393f, 1972f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(443f - _wgslsmith_f_op_f32(f32(-1f) * -564f)) + _wgslsmith_f_op_f32(step(-698f, -897f))), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    let var_1 = !vec2<bool>(all(vec2<bool>(select(true, false, true), false)), false);
    var_0 = Struct_3(-1i, _wgslsmith_clamp_i32(1i, var_0.b, _wgslsmith_mod_i32(var_0.b, var_0.b)) | var_0.a);
    var var_2 = vec2<bool>(any(select(select(vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), var_1.x), vec3<bool>(true, true, var_1.x)), !(!vec3<bool>(var_1.x, true, var_1.x)), vec3<bool>(var_1.x, true, 1u == u_input.a.x))), !any(vec3<bool>(!var_1.x, true, true)));
    var_2 = !var_1;
    return Struct_2(_wgslsmith_f_op_f32(round(1000f)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2305f, 641f)))))), countOneBits(_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(var_0.b, var_0.a, var_0.b)), vec3<i32>(var_0.b, abs(1i), _wgslsmith_mod_i32(20977i, -1i)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-315f, 177f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(970f, -393f) * vec2<f32>(2498f, 1444f)))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a - arg_2.d.a.x), arg_2.a) - vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(-arg_2.a)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = !all(vec2<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false))));
    let var_1 = func_5(~(~_wgslsmith_mult_vec3_u32(u_input.a.wzz, u_input.a.yww)), u_input.a.x ^ 26569u, func_2());
    var var_2 = ~arg_0;
    var_2 = _wgslsmith_div_vec2_i32(arg_0, vec2<i32>(29825i, 55186i));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(var_1.a.x)), Struct_1(var_1.a), -min(_wgslsmith_add_vec3_i32(vec3<i32>(52317i, 51363i, 0i) >> (vec3<u32>(u_input.a.x, arg_1.x, 9710u) % vec3<u32>(32u)), ~vec3<i32>(1i, -8877i, -30636i)), ~vec3<i32>(var_2.x, -37869i, arg_2)), Struct_1(var_1.a));
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(291f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1017f)))), _wgslsmith_f_op_f32(-816f * 1000f))), vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-73614i, -30316i, 13266i), vec3<i32>(-1i, 2147483647i, 26245i)), vec3<i32>(-2147483647i, -1i, 22671i) >> (u_input.a.yzx % vec3<u32>(32u))), -2147483647i, select(_wgslsmith_add_i32(~1i, select(0i, 0i, true)), select(1i, 8510i, false), false)), func_1(~firstTrailingBit(~vec2<i32>(1i, -14997i)), vec2<u32>(9875u, u_input.a.x), 27972i));
    let var_1 = true;
    var var_2 = func_2();
    var_2 = Struct_2(868f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.a.x), var_2.d.a.x, u_input.a.x <= u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-162f, var_0.d.a.x) * var_2.b.a.x))), vec3<i32>(-5664i, 12506i, _wgslsmith_dot_vec2_i32(var_0.c.xy, -var_2.c.zy << (~u_input.a.ww % vec2<u32>(32u)))), var_2.b);
    let var_3 = vec4<i32>(~func_4(func_1(vec2<i32>(2147483647i, var_0.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(19033u, 42005u)), max(var_2.c.x, 34483i)), func_2().b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(-100f)))), vec2<bool>(var_1, any(vec3<bool>(true, var_1, false)))), var_2.c.x << (reverseBits(_wgslsmith_div_u32(1u, 1u)) % 32u), var_2.c.x, func_2().c.x);
    var_2 = Struct_2(_wgslsmith_f_op_f32(floor(-1408f)), Struct_1(var_2.b.a), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(-var_0.c), select(max(vec3<i32>(var_0.c.x, var_0.c.x, var_3.x), var_2.c), vec3<i32>(var_3.x, var_3.x, -2147483647i), all(vec3<bool>(true, var_1, var_1)))), -var_3.zyw << (u_input.a.xxw % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.a))));
    let var_4 = var_2.d;
    let var_5 = var_0.c.x;
    let var_6 = firstLeadingBit(min(18011u, 4294967295u & ~(~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.a.x * 805f));
}

