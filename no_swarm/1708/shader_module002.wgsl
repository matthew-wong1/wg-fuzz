struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(1u, 4013u), 19952u, _wgslsmith_div_u32(35814u, 1u), ~11746u))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = 118275u;
    var var_2 = 1u;
    let var_3 = select(select(vec4<bool>(false, false, true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec3<bool>(false, false, true)), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), true), !any(vec4<bool>(true, true, true, true)));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-389f, arg_0.x, arg_0.x))), vec3<f32>(-116f, -917f, arg_0.x))))), ~(select(1u, 0u, u_input.c > 43778i) ^ ~_wgslsmith_mod_u32(var_0, var_0)), var_3.wyz);
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_4(reverseBits(1u), arg_1, countOneBits(max(14862u, ~firstLeadingBit(4294967295u))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_2, u_input.c), u_input.a.x), vec2<i32>(reverseBits(-14900i), -arg_2 << (0u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1171f)))))), var_1.b)));
    let var_3 = Struct_2(true);
    var var_4 = var_1;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) + 394f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(-277f, -1000f, true)), -482f, _wgslsmith_f_op_f32(abs(-137f))))) - vec3<f32>(297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1678f + var_1.b) + -402f), 2261f)), !(all(select(vec4<bool>(true, true, false, arg_3.x), vec4<bool>(false, true, arg_3.x, arg_0.a), var_0.a)) | true)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(func_3(arg_0.wyz)), arg_0.x, ~u_input.c, vec2<bool>(true, true)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), !select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(true), var_0.a.x, u_input.a.x, vec2<bool>(var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(var_0.c.x), -1290f, reverseBits(u_input.a.x & u_input.a.x), var_0.c.xz)))), ~max(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48501u, 29208u), ~vec3<u32>(1u, 109039u, var_0.b))), !var_0.c);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(2030f, -929f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(764f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -300f), var_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(1000f))), -1000f)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -887f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + var_0.a.x), _wgslsmith_f_op_f32(max(1015f, var_1.x))))))), _wgslsmith_mod_u32(~1u, min(45994u, var_0.b)), var_0.c);
    let var_2 = !var_0.c.x;
    return reverseBits(_wgslsmith_sub_u32(var_0.b, _wgslsmith_mult_u32(var_0.b, 1u)));
}

fn func_1() -> f32 {
    let var_0 = ~firstTrailingBit(min(vec4<u32>(0u, 1u, 44493u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) & ~(vec4<u32>(abs(1u), func_2(vec4<f32>(-178f, 1309f, 296f, -243f)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(118296u, 0u, 0u), vec3<u32>(1u, 21834u, 0u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2356f, -1021f, false)) - 874f), -689f), 1f, -1117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f * -389f))));
    var var_3 = true;
    let var_4 = vec2<bool>(true, true);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1725f, 475f, -1363f) - vec3<f32>(668f, 119f, 615f)) - vec3<f32>(398f, 105f, -123f))) + vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1624f * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(select(-326f, _wgslsmith_f_op_f32(ceil(1046f)), true)))), 1u, !vec3<bool>(false, all(vec2<bool>(true, true)), !func_3(vec3<f32>(-1520f, -1000f, -204f))));
    let var_1 = Struct_2(!(var_0.c.x == true));
    global0 = var_0.c.x;
    global0 = false;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(true), var_0.a.x, -34575i, var_0.c.zx)).x)))) <= _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(func_1())))));
    global0 = true;
    var_2 = var_1;
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b, _wgslsmith_mult_vec4_u32(firstLeadingBit(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 20750u, 0u, var_0.b), vec4<u32>(33955u, var_0.b, 4294967295u, var_0.b)))), vec4<u32>(~(~0u), _wgslsmith_sub_u32(abs(var_0.b), min(var_0.b, var_0.b)), ~func_2(vec4<f32>(var_0.a.x, -1777f, 1776f, 201f)), var_0.b)));
}

