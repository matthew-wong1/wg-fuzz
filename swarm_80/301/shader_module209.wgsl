struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 6>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1033f, 1748f, -1000f), vec3<f32>(-1877f, 205f, 451f), vec3<bool>(true, false, true))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1039f, 1026f, -331f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-341f, -423f, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1084f, -767f))))), _wgslsmith_mult_u32(u_input.b.x | _wgslsmith_div_u32(u_input.b.x, 0u), ~(~u_input.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(-745f, _wgslsmith_f_op_f32(abs(439f)), true))))));
    let var_1 = -575f;
    let var_2 = countOneBits(~max(_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(~0u, 6u)], u_input.b.zxz & vec3<u32>(1u, var_0.a.c, u_input.b.x)), firstLeadingBit(u_input.b.xwx)));
    global1 = reverseBits((u_input.a << (var_2.x % 32u)) & -1i);
    global2 = array<vec3<u32>, 6>();
    return ~vec2<i32>(-32328i, abs(abs(_wgslsmith_mod_i32(1i, -2147483647i))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_clamp_i32(countOneBits(u_input.a >> ((38775u >> (_wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(78625u, u_input.b.x)) % 32u)) % 32u)), ~2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), func_3()));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(115f, -1564f, 2650f)))), vec3<f32>(158f, _wgslsmith_f_op_f32(trunc(1f)), 216f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), -1071f, _wgslsmith_f_op_f32(-630f - -624f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-1003f, -583f, 475f)))));
    let var_3 = vec4<bool>(var_2.x < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1087f - var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(302f)) * _wgslsmith_f_op_f32(round(var_2.x))), var_1)), false, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1382f)) + _wgslsmith_f_op_f32(f32(-1f) * -591f)) > _wgslsmith_div_f32(var_2.x, var_2.x));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(167f, var_2.x, -288f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-844f, 660f, -898f), vec3<f32>(1000f, 108f, var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(337f, 871f)), 4294967295u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)), 307f, all(!var_3))));
    return 50037i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = firstTrailingBit(arg_1.a.c) << (10024u % 32u);
    let var_0 = func_2();
    var var_1 = Struct_2(arg_1.a, true);
    let var_2 = select(vec3<bool>(true, arg_0.x <= select(-29425i, _wgslsmith_mult_i32(arg_0.x, 2147483647i), all(vec2<bool>(false, var_1.b))), !(!var_1.b || !var_1.b)), select(!select(vec3<bool>(var_1.b, var_1.b, true), !vec3<bool>(true, var_1.b, var_1.b), any(vec2<bool>(false, var_1.b))), !(!vec3<bool>(false, true, var_1.b)), true), select(var_1.b, var_1.b | (!var_1.b == (arg_1.a.a.x != var_1.a.b)), false));
    let var_3 = _wgslsmith_f_op_f32(sign(-1000f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.b, var_1.a.a.x, true)));
    return _wgslsmith_f_op_vec3_f32(floor(arg_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-(~u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(~vec3<i32>(u_input.a, u_input.a, -46383i), Struct_3(Struct_1(vec3<f32>(-1043f, 917f, -1000f), 532f, u_input.b.x), 610f), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)))) - vec3<f32>(_wgslsmith_div_f32(111f, 1070f), _wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(abs(576f))))));
    var var_2 = !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false)));
    var var_3 = _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-235f, -184f, 730f), vec3<f32>(1000f, 1000f, -1119f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -2669f, -878f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, 1317f, 752f))))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, 858f, var_1.x) * vec3<f32>(-1245f, var_1.x, 356f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -371f, var_1.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -1000f), vec3<f32>(var_1.x, var_1.x, var_1.x), true)))))), 1264f, _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yx), 0u), 94951u));
    var_2 = select(select(select(vec4<bool>(false, true, true, any(vec3<bool>(var_2.x, var_2.x, true))), select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(false, var_2.x, true, true), 0u != u_input.b.x), true), !select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, false, var_2.x), false), var_2.x), true), !vec4<bool>(false, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(f32(-1f) * -1689f), false, var_2.x || (var_2.x | var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1910f - _wgslsmith_f_op_f32(1004f - var_1.x))) <= _wgslsmith_f_op_f32(f32(-1f) * -517f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.c, u_input.b.x), ~(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, -22741i) ^ vec2<i32>(var_0, 0i), select(vec2<i32>(var_0, u_input.a), vec2<i32>(0i, 57342i), var_2.yx)) ^ vec2<i32>(firstLeadingBit(-2147483647i), 53418i)), ~(~abs(4294967295u)), ~(~(~vec3<u32>(60503u, 7294u, 0u))), vec4<u32>(73531u, _wgslsmith_add_u32(_wgslsmith_sub_u32(min(4294967295u, var_4.c), 4294967295u), u_input.b.x), var_4.c, abs(~u_input.b.x)));
}

