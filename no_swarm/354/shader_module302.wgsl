struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(4294967295u, i32(-2147483648), 4294967295u, true, true), Struct_1(0u, -13916i, 36858u, false, false), Struct_1(0u, 1i, 76969u, false, true), Struct_1(6199u, 4132i, 37112u, true, false), Struct_1(89174u, 1i, 12261u, true, true), Struct_1(33425u, -1i, 1u, true, true), Struct_1(58522u, -17588i, 17499u, true, true), Struct_1(42511u, -1i, 0u, false, false), Struct_1(4294967295u, -49047i, 4294967295u, false, false), Struct_1(41536u, -12899i, 0u, true, true), Struct_1(0u, 0i, 1u, true, true), Struct_1(12506u, -24084i, 23193u, false, false), Struct_1(81470u, 21733i, 78623u, false, false), Struct_1(0u, i32(-2147483648), 1u, true, true), Struct_1(69927u, 2147483647i, 0u, true, false), Struct_1(15057u, -27623i, 84885u, true, true), Struct_1(1u, 23073i, 1u, true, false), Struct_1(0u, -25498i, 1u, true, false), Struct_1(0u, -42981i, 1u, false, true), Struct_1(18222u, -24643i, 23796u, false, true), Struct_1(0u, -33983i, 20030u, false, false), Struct_1(0u, -28433i, 4294967295u, false, false), Struct_1(33304u, -46743i, 4294967295u, true, true), Struct_1(0u, 71543i, 25181u, true, true), Struct_1(1u, 2147483647i, 23511u, true, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    global0 = array<Struct_1, 25>();
    var var_0 = vec4<u32>(u_input.b.x, max(1u, firstTrailingBit(~u_input.b.x) << (~(~12295u) % 32u)), 49854u, 35524u);
    return 2147483647i;
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(u_input.b.x, ~u_input.a, ~34652u, !any(vec2<bool>(true, all(vec4<bool>(true, false, false, true)))), true);
    global0 = array<Struct_1, 25>();
    return select(vec3<bool>((~var_0.b <= (i32(-1i) * -10036i)) != true, !(func_1(u_input.c, vec3<bool>(var_0.d, false, true), 728f, vec3<bool>(true, true, var_0.e)) <= -u_input.a), any(!(!vec2<bool>(var_0.e, false)))), vec3<bool>(true, !var_0.e, true), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(44938u, 25u)];
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, -1206f, -652f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(395f, -1000f, 888f) + vec3<f32>(619f, 1201f, -677f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1544f, -380f, -1850f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1010f, -733f, 487f), vec3<f32>(-1294f, -1028f, 382f), false))), func_3())))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(round(-623f)), -499f)));
    global0 = array<Struct_1, 25>();
    return min(arg_2.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 0u), (u_input.b.ww >> (vec2<u32>(51615u, var_0.a) % vec2<u32>(32u))) >> (arg_1.zz % vec2<u32>(32u))), _wgslsmith_mod_u32(~(~22984u), ~_wgslsmith_mod_u32(arg_2.x, 12052u)), min(max(0u, arg_2.x), select(_wgslsmith_dot_vec3_u32(arg_2.wyw, vec3<u32>(arg_0.c, 17569u, u_input.c.x)), var_0.a, arg_0.c <= arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = u_input.b.x;
    global0 = array<Struct_1, 25>();
    let var_2 = Struct_1(0u & _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), select(func_1(~u_input.c, vec3<bool>(false, true, false), -1043f, vec3<bool>(true, true, true)) | -_wgslsmith_add_i32(0i, var_0), -u_input.a, true), countOneBits(u_input.c.x), false, true);
    var var_3 = ~(vec4<i32>(-1i) * -min(vec4<i32>(1i, var_2.b, -12745i, var_0), vec4<i32>(21569i, var_2.b, var_0, 1i))) & abs(_wgslsmith_add_vec4_i32(vec4<i32>(~(-4281i), u_input.a & 2147483647i, var_2.b >> (var_1 % 32u), reverseBits(var_0)), -(vec4<i32>(57855i, 0i, -2383i, var_0) ^ vec4<i32>(u_input.a, -29221i, var_0, var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(1447f, vec3<u32>(abs(var_1) & ~1u, 1u, func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_1), 25u)], _wgslsmith_mult_vec3_u32(u_input.c.xwx, u_input.c.xwx), ~u_input.c)) & _wgslsmith_sub_vec3_u32(vec3<u32>(~var_2.a, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, var_1, u_input.b.x, 54827u)), ~u_input.c.x), u_input.c.yxx), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(-1i, var_0, u_input.a, 2147483647i)) ^ vec4<i32>(u_input.a, _wgslsmith_sub_i32(-7885i, u_input.a), _wgslsmith_clamp_i32(-2147483647i, u_input.a, -25042i), _wgslsmith_mod_i32(-49837i, 54402i)), -(~vec4<i32>(1i, var_3.x, 65049i, 0i) << (~vec4<u32>(4294967295u, 1u, 9745u, u_input.c.x) % vec4<u32>(32u)))));
}

