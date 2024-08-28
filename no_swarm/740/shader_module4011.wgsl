struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2830i;

var<private> global1: u32;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec4<i32> {
    global1 = 46014u;
    let var_0 = u_input.c;
    let var_1 = Struct_4(u_input.d.x, ~vec4<u32>(37499u, 139767u, 16171u, 0u));
    let var_2 = arg_1.x;
    global2 = array<Struct_1, 25>();
    return vec4<i32>(0i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, min(1i, u_input.c)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a, u_input.c), vec2<i32>(1698i, -1i), u_input.d)), -1i, 2147483647i == select(min(var_0, var_1.a), _wgslsmith_div_i32(29315i, -44918i), true)), u_input.d.x, _wgslsmith_div_i32(-(~(var_1.a & u_input.c)), var_1.a));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = ~(abs(abs(vec4<i32>(-1i, u_input.c, u_input.d.x, -1i)) | func_3(vec2<f32>(-1000f, 1324f), vec2<f32>(116f, -261f))) | ~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, -550f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, 634f) * vec2<f32>(1000f, -794f))));
    var var_1 = -5902i;
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-142f)), -492f)), -518f)), -147f) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-117f - 795f), 992f, true)), 107f), _wgslsmith_f_op_f32(sign(-2475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(761f)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(808f, _wgslsmith_f_op_f32(f32(-1f) * -1385f)) + -988f)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(round(var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, -112f) + -702f) + var_3.x) - var_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(539f, var_4, var_4) + _wgslsmith_div_vec3_f32(vec3<f32>(var_4, 1000f, -898f), vec3<f32>(-368f, 394f, -291f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4, 674f, var_3.x), vec3<f32>(-1125f, -696f, 1263f)) - vec3<f32>(-686f, -105f, 545f)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 2029f, 662f), vec3<f32>(-1308f, var_4, var_4))))))), !all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    global1 = u_input.a.x;
    let var_0 = !arg_0.d;
    let var_1 = arg_0.c;
    var var_2 = select(!vec4<bool>(_wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(f32(-1f) * -478f), var_1.x <= func_2(vec2<u32>(u_input.b, arg_1)).c.x, !(arg_0.d || false), true), select(select(!select(vec4<bool>(arg_2.x, false, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(var_0, var_0, true, true)), !select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(false, true, true, arg_2.x), arg_0.d), true), vec4<bool>(false | arg_0.d, any(select(vec3<bool>(false, true, arg_0.d), vec3<bool>(false, arg_0.d, false), true)), false, all(!arg_2)), true), vec4<bool>(true, arg_1 >= ~u_input.b, select(true, !select(false, arg_0.d, true), select(all(vec4<bool>(true, true, false, false)), !arg_2.x, false)), arg_2.x));
    let var_3 = u_input.a.yy;
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> vec4<i32> {
    var var_0 = func_4(func_2(~vec2<u32>(15164u, arg_0.x)), 1u, !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true), !all(vec3<bool>(true, true, true))), func_2(vec2<u32>(u_input.a.x, arg_0.x)).a);
    global0 = -1i;
    var var_1 = vec3<u32>(~(~reverseBits(_wgslsmith_add_u32(0u, u_input.b))), 47903u, 1u);
    global2 = array<Struct_1, 25>();
    global1 = var_1.x;
    return vec4<i32>(u_input.c, _wgslsmith_add_i32(i32(-1i) * -1i, 16250i | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d.x, arg_1, arg_1), vec4<i32>(arg_1, u_input.c, u_input.c, 0i)), arg_1 << (4294967295u % 32u))), -2147483647i, _wgslsmith_clamp_i32(u_input.d.x, firstLeadingBit(25442i), u_input.d.x) | arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(u_input.a, u_input.a)), u_input.d.x, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.c, 1i), vec4<i32>(u_input.c, 22218i, u_input.d.x, 5031i)), ~(-vec4<i32>(2147483647i, u_input.d.x, 10411i, u_input.d.x))), func_1(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 722u))), -1i)), ~reverseBits(countOneBits(max(u_input.a.wx, u_input.a.yy))));
}

