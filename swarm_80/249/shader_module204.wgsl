struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(0i, 7691i), vec2<i32>(39062i, -16940i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-20740i, 0i), vec2<i32>(2147483647i, 32871i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(3562i, -1i), vec2<i32>(-66243i, 11106i), vec2<i32>(-60529i, 15265i), vec2<i32>(40261i, -8233i), vec2<i32>(-25915i, -20641i), vec2<i32>(-48764i, 2147483647i), vec2<i32>(5843i, 63762i), vec2<i32>(-18919i, -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)), u_input.a | 4294967295u, u_input.a)), vec3<i32>(i32(-1i) * -firstLeadingBit(51640i), -781i, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1256f, _wgslsmith_f_op_f32(floor(-532f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1578f), -1322f, -1408f), Struct_1(reverseBits(~vec3<u32>(1u, u_input.a, u_input.a)), u_input.c.x), !all(vec3<bool>(true, true, true)));
    let var_1 = select(vec2<bool>(!(!var_0.e), any(select(!vec2<bool>(var_0.e, false), !vec2<bool>(true, var_0.e), select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(false, var_0.e), vec2<bool>(false, false))))), !vec2<bool>(!all(vec2<bool>(true, var_0.e)), true), true);
    global1 = array<vec2<i32>, 15>();
    let var_2 = Struct_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, ~0u, _wgslsmith_sub_u32(var_0.d.a.x, 32164u)), vec3<u32>(~var_0.a.x, abs(0u), ~1u)), u_input.a, 0u, 1u), _wgslsmith_mod_i32(~var_0.d.b, reverseBits(-u_input.b.x)), any(select(select(vec4<bool>(false, false, false, var_0.e), vec4<bool>(var_1.x, true, var_0.e, var_0.e), true), vec4<bool>(var_1.x, var_0.e, var_0.e, false), vec4<bool>(var_0.e, var_0.e, false, var_0.e))) && !(!(!var_0.e)));
    global1 = array<vec2<i32>, 15>();
    return 2040u;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = 574f;
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(firstLeadingBit(func_3() & 1u), 20u)], _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, -1i, -63368i)), -u_input.c.x), -u_input.c.x), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, select(false, false, false)), false)));
    var var_2 = firstTrailingBit(reverseBits(firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(44278i, var_1.b, 33925i, -26172i), firstLeadingBit(vec4<i32>(arg_0, u_input.b.x, u_input.b.x, 66231i))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-1160f)), _wgslsmith_f_op_f32(ceil(var_0)), var_0)));
    var var_4 = Struct_4(var_1.a, var_1.b, (true && any(vec3<bool>(true, true, true))) | true);
    return vec2<f32>(var_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_3.x)) + -761f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -982f))), -1000f));
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x))));
    var var_2 = abs(var_1.b) >> (~_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.a.xy) & _wgslsmith_mod_vec2_u32(arg_0.a.yy, vec2<u32>(arg_1.x, var_1.a.x)), vec2<u32>(arg_1.x >> (arg_1.x % 32u), firstTrailingBit(1u))) % 32u);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(var_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 758f))), vec2<f32>(701f, -861f)))), any(arg_2.yw) || any(!arg_2.zy))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-836f, var_0.x, var_0.x), vec3<f32>(-117f, var_0.x, -519f)))), vec3<f32>(var_0.x, 844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(-1i)).x + 400f)), select(select(vec3<bool>(true, false, arg_3), !vec3<bool>(arg_2.x, true, arg_3), vec3<bool>(arg_3, arg_3, arg_3)), !vec3<bool>(arg_2.x, arg_2.x, arg_3), select(!vec3<bool>(true, arg_3, true), vec3<bool>(arg_3, arg_3, false), true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-576f, var_0.x, -300f) - vec3<f32>(var_0.x, var_0.x, 1000f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -922f, 1887f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 1000f, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-655f - 1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(528f, 259f), 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(587f, -759f))), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1051f, -127f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), true)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1368f, 2000f) + vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<u32>(86551u, 55730u, u_input.a), u_input.c.x), vec3<u32>(33154u, u_input.a, 0u), vec4<bool>(true, true, false, true), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(706f, -1829f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(826f, var_0.x, var_0.x))))));
    let var_1 = Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 7514u, reverseBits(84683u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 26857u, u_input.a), ~vec3<u32>(14777u, u_input.a, 60064u))), u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1305f)), _wgslsmith_f_op_f32(1000f - var_0.x), _wgslsmith_f_op_f32(775f - 1879f), _wgslsmith_f_op_f32(round(374f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, -610f, -2857f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, var_0.x, -1406f, 1000f))))));
    global0 = array<vec4<u32>, 20>();
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f - var_2.x) * var_2.x), _wgslsmith_f_op_f32(-2510f * var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xwy) * var_2.xzz)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1839f + var_2.x), var_0.x, -2376f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, var_0.x, -1663f))) + vec3<f32>(1000f, var_2.x, -285f)))));
    var var_3 = Struct_2(var_1, _wgslsmith_mult_vec3_u32(((var_1.a << (vec3<u32>(59470u, 33856u, 36821u) % vec3<u32>(32u))) << (var_1.a % vec3<u32>(32u))) | firstLeadingBit(var_1.a), ~(vec3<u32>(var_1.a.x, 58463u, var_1.a.x) ^ var_1.a)), select(_wgslsmith_sub_u32(16988u << (_wgslsmith_div_u32(40747u, var_1.a.x) % 32u), u_input.a), var_1.a.x, true), -vec3<i32>(u_input.c.x, (i32(-1i) * -1i) ^ u_input.b.x, -(~u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-10050i, i32(-1i) * -(i32(-1i) * -2147483647i), abs(vec4<u32>(4294967295u, u_input.a, 0u, reverseBits(abs(91895u)))));
}

