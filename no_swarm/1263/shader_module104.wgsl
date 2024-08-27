struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec4<u32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: Struct_3 = Struct_3(6739u);

var<private> global2: f32 = 368f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = max(-35086i, ~u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-552f, -1044f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2414f, 1000f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2314f, 1139f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, 2204f)))))));
    var var_2 = 528f;
    let var_3 = u_input.a;
    var var_4 = ~(0u << (reverseBits(firstTrailingBit(_wgslsmith_mod_u32(0u, global1.a))) % 32u));
    return 1u;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_5(Struct_3(29898u), true, vec4<u32>(abs(_wgslsmith_add_u32(~global1.a, global1.a)), ~func_3(), ~4294967295u, reverseBits(global1.a)), vec3<i32>(1i, u_input.a, i32(-1i) * -_wgslsmith_add_i32(-6636i, u_input.b)), true);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 107f) - _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 210f) + _wgslsmith_f_op_f32(trunc(-1850f))))));
    let var_2 = Struct_1(arg_0.x, ~(~vec4<u32>(max(global1.a, var_0.a.a), global1.a, 1u, 1u)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.x, 0i), vec2<i32>(var_0.d.x, 0i)) >> (var_0.c.xx % vec2<u32>(32u)), vec2<i32>(abs(u_input.b), firstTrailingBit(var_0.d.x))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.x, -1i), max(vec2<i32>(u_input.b, -2147483647i), var_0.d.zx)))));
    let var_3 = var_0.c.zy;
    global0 = array<Struct_4, 6>();
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1560f, -888f, -1048f) + vec3<f32>(-1037f, 214f, -432f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f), 609f)), 1f);
    let var_1 = Struct_5(Struct_3(21129u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1049f + _wgslsmith_div_f32(-1185f, 714f)) - var_0.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1104f))), vec4<u32>(max(global1.a, ~global1.a), global1.a, 4294967295u, global1.a), min(vec3<i32>(_wgslsmith_mult_i32(41529i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.a, u_input.b))), u_input.a, _wgslsmith_mod_i32(u_input.a, firstTrailingBit(1i))), vec3<i32>(select(~u_input.a, 1i, arg_0), countOneBits(select(-12151i, 1i, arg_0)), i32(-1i) * -1i)), !(_wgslsmith_f_op_f32(max(-110f, _wgslsmith_f_op_f32(var_0.x - 973f))) < _wgslsmith_f_op_f32(-431f + 1f)));
    global0 = array<Struct_4, 6>();
    var var_2 = !vec4<bool>(true, arg_0, true, true);
    let var_3 = Struct_3(_wgslsmith_mult_u32(var_1.a.a, _wgslsmith_clamp_u32(global1.a, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(58874u, var_1.a.a, var_1.a.a, var_1.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, 0u, var_1.c.x, 4294967295u), vec4<u32>(4294967295u, global1.a, global1.a, var_1.c.x))))));
    return Struct_2(var_1.c.x, 21272i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, any(vec2<bool>(any(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, true, false, true)))) && false, select(true, true, false));
    global0 = array<Struct_4, 6>();
    var var_1 = func_1(!(!(!(var_0.x | var_0.x))));
    var var_2 = Struct_3(~(var_1.a ^ 6062u));
    var var_3 = Struct_3(var_2.a);
    let var_4 = ~func_1(true).b != 22594i;
    global0 = array<Struct_4, 6>();
    let var_5 = Struct_2(~var_2.a, _wgslsmith_mult_i32(~(-2147483647i) << (abs(var_2.a) % 32u), i32(-1i) * -var_1.b) | 10447i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1.a & var_2.a), -(~(-(vec2<i32>(var_1.b, 1i) ^ vec2<i32>(-2147483647i, 1i)))), firstTrailingBit(var_5.b), func_3(), vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2439f, -892f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-599f, _wgslsmith_f_op_f32(-459f - -673f), !var_4)))));
}

