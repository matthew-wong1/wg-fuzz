struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(51458u, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), vec3<bool>(!any(vec4<bool>(true, false, false, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)), true), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 1i), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), max(vec4<i32>(1i, u_input.a.x, u_input.c.x, 101208i), vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x)))), -32880i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1175f))))));
    let var_2 = -545f;
    let var_3 = select(!vec4<bool>((var_1.x > -149f) || true, var_0.b.b.x, !(!var_0.b.b.x), select(all(vec4<bool>(false, var_0.b.b.x, var_0.b.b.x, false)), !var_0.b.b.x, var_0.b.b.x)), select(vec4<bool>(var_0.b.c.x, all(vec3<bool>(true, var_0.b.c.x, true)), !all(var_0.b.b), true && var_0.b.b.x), vec4<bool>(select(!var_0.b.c.x, false, true), all(select(vec4<bool>(false, var_0.b.b.x, var_0.b.b.x, false), vec4<bool>(false, var_0.b.b.x, var_0.b.c.x, false), false)), true, var_0.b.c.x), var_0.b.c.x), vec4<bool>(any(vec3<bool>(!var_0.b.b.x, true, any(vec4<bool>(var_0.b.b.x, var_0.b.b.x, false, false)))), -686f < var_2, var_0.b.c.x, var_0.b.b.x));
    let var_4 = !var_3.xzy;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(reverseBits(reverseBits(4294967295u))), select(firstTrailingBit(1u), 1u & _wgslsmith_add_u32(var_0.a, u_input.b.x), false), var_0.a | ~1u, 2503u), _wgslsmith_mod_vec4_u32(vec4<u32>(~15275u, var_0.a, _wgslsmith_mult_u32(abs(69754u), countOneBits(var_0.a)), 28665u), ~vec4<u32>(u_input.b.x, var_0.a, var_0.a, 23572u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(arg_1.b.d, _wgslsmith_clamp_vec4_i32(~vec4<i32>(reverseBits(arg_0), arg_1.b.d.x, u_input.a.x, _wgslsmith_sub_i32(arg_1.b.d.x, 1i)), vec4<i32>(~(~13397i), -12785i, select(17658i, 59335i, arg_1.b.a >= arg_1.b.a), -reverseBits(arg_0)), ~arg_1.b.d), arg_1.b.d << (~select(vec4<u32>(100726u, u_input.b.x, 33526u, 44036u) << (vec4<u32>(u_input.b.x, 1u, arg_1.a, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a, 25873u, 25320u, arg_1.a), vec4<u32>(1u, 24709u, u_input.b.x, 16903u)), !vec4<bool>(false, arg_1.b.b.x, arg_1.b.c.x, false)) % vec4<u32>(32u)));
    var var_1 = -arg_0 | -arg_1.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a - arg_1.b.a) * arg_1.b.a)), 1740f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.a, arg_1.b.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1195f, arg_1.b.a))))))));
    var var_3 = vec4<u32>(reverseBits(_wgslsmith_add_u32(func_3(), arg_1.a) & func_3()), 41922u, ~(~(~u_input.b.x)), _wgslsmith_div_u32(countOneBits(u_input.b.x), 0u));
    var_1 = -_wgslsmith_sub_i32(countOneBits(-43260i), arg_1.c);
    return 445f;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(i32(-1i) * -31621i, Struct_2(4294967295u, Struct_1(214f, vec2<bool>(true, false), arg_0.wyy, vec4<i32>(-2147483647i, 33707i, u_input.c.x, arg_1.x)), -1i))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1149f, -104f), _wgslsmith_f_op_f32(max(1000f, -2264f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-531f, 925f), vec2<f32>(1660f, -785f), arg_0.zz)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-520f, -970f) + vec2<f32>(-399f, -445f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1640f, 1503f)) * vec2<f32>(1f, 1f)))))));
    return vec3<bool>(true, all(vec4<bool>(any(select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), false)), false, true, arg_0.x)), !(all(!vec2<bool>(true, arg_0.x)) || !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(29767i, min(u_input.a.x ^ u_input.a.x, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -2147483647i))), (vec2<i32>(-1i) * -abs(vec2<i32>(u_input.c.x, 10103i))) | u_input.a.zz);
    var var_1 = vec3<bool>(false, any(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), func_1(vec4<bool>(false, false, true, true), vec4<i32>(u_input.c.x, var_0.x, -55024i, 2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, 37923i)))), false);
    var var_2 = !var_1.x;
    var var_3 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1024f, 675f, 248f, 552f), vec4<f32>(572f, 994f, -2006f, 1000f)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-413f, -427f, -633f, 396f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -761f, 279f, -626f)))))), -1802f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(225f, -705f, -2186f, 590f), vec4<f32>(-1933f, -1226f, -1207f, 146f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, -507f, 158f, -107f) + vec4<f32>(-248f, 489f, 1090f, 147f)))))), _wgslsmith_add_vec3_i32(vec3<i32>(46128i, min(12690i, 11902i), ~max(0i, var_0.x)), u_input.a), select(-2147483647i, abs(2147483647i), var_1.x));
}

