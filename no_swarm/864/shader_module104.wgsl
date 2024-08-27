struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: i32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = vec2<i32>(arg_1.x, ~_wgslsmith_div_i32(arg_0.c.x, -2147483647i));
    global0 = array<Struct_3, 26>();
    let var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(48052i, ~u_input.c), max(var_0.x, 1i) ^ 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1464i, var_0.x), var_0.x, 1i), ~53990i), vec4<i32>(u_input.b, 2147483647i, arg_1.x, ~max(-32348i, -20534i)) ^ arg_1);
    let var_2 = Struct_2(true, -vec3<i32>(abs(~(-87187i)), var_1.x, ~(i32(-1i) * -1i)), firstLeadingBit(vec3<i32>(arg_0.b.x, ~var_0.x << (3175u % 32u), ~1i)));
    global0 = array<Struct_3, 26>();
    return vec4<bool>(((~44088i >= firstLeadingBit(arg_1.x)) && true) & (true == arg_3.a), !arg_3.a, true, select(!arg_2, true, arg_3.a));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> vec3<f32> {
    var var_0 = arg_0.c;
    let var_1 = vec4<bool>(!any(vec2<bool>(arg_1 == arg_1, true)), any(func_3(arg_0, min(arg_2, ~vec4<i32>(3105i, 16992i, var_0.x, arg_3)), arg_1, arg_0)), true, !func_3(Struct_2(false, vec3<i32>(1i, 1i, 1i), vec3<i32>(var_0.x, arg_3, -2147483647i)), -vec4<i32>(1i, 2147483647i, 1i, 29026i), arg_1, arg_0).x);
    let var_2 = 20562u;
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(arg_2.x, firstTrailingBit(countOneBits(max(var_0.x, -3533i)))), 1i);
    global0 = array<Struct_3, 26>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1444f, _wgslsmith_f_op_f32(-225f + 275f), -1288f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, 169f, -1000f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1406f, 1141f), _wgslsmith_f_op_f32(255f * 859f), -514f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-150f, 1000f, -793f), vec3<f32>(1435f, 900f, -2209f), arg_0.a))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_3;
    global1 = -_wgslsmith_dot_vec4_i32(min(-vec4<i32>(var_0.b.x, 10131i, var_0.b.x, 33216i), ~vec4<i32>(1i, u_input.b, var_0.b.x, arg_3.b.x)) ^ select(firstLeadingBit(vec4<i32>(22161i, 2147483647i, arg_3.b.x, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -54745i, -2147483647i, arg_3.b.x), vec4<i32>(-2147483647i, arg_3.c.x, -1i, 0i)), !vec4<bool>(arg_3.a, false, false, arg_3.a)), vec4<i32>(-1i, 1i, u_input.c, var_0.b.x));
    let var_1 = arg_3;
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    return Struct_3(Struct_1(true, vec2<bool>(false, arg_0.x <= (81380u & arg_0.x))));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    let var_0 = arg_2.a.a & false;
    var var_1 = ~arg_3.wyw;
    global0 = array<Struct_3, 26>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), var_2.x, -942f), vec4<f32>(-607f, -821f, var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-458f + var_2.x)))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1909f, var_2.x) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) * _wgslsmith_f_op_f32(1384f - -999f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1190f, var_2.x, -544f, -138f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1442f, var_2.x, var_2.x, -1918f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, -266f, 996f, -116f), vec4<f32>(-907f, 976f, -1722f, 662f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, 581f, 580f, 456f) + vec4<f32>(324f, -820f, 362f, -767f)))), !(!vec4<bool>(false, false, var_0, true)))));
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    global1 = _wgslsmith_mod_i32(func_5(0u, func_4(vec4<u32>(18604u, ~arg_1, arg_1, arg_1 & 1u), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(true, vec3<i32>(u_input.a, 34002i, -54889i), vec3<i32>(arg_0, -82737i, u_input.c)), any(vec3<bool>(false, arg_2.a, arg_2.b.x)), vec4<i32>(2147483647i, 56954i, 0i, 1i), -31848i)), _wgslsmith_clamp_u32(~arg_1, arg_1, firstLeadingBit(arg_1)), Struct_2(true, vec3<i32>(23227i, arg_0, u_input.b) << (vec3<u32>(4294967295u, arg_1, arg_1) % vec3<u32>(32u)), max(vec3<i32>(34298i, 10482i, arg_0), vec3<i32>(u_input.b, u_input.b, 73200i)))), Struct_3(func_4(~vec4<u32>(arg_1, arg_1, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1847f, 1156f, 503f)), ~arg_1, Struct_2(arg_2.a, vec3<i32>(-2147483647i, -85694i, arg_0), vec3<i32>(14009i, u_input.b, 49477i))).a), vec4<i32>(u_input.b, u_input.c, arg_0, 1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(abs(arg_0), -30341i, _wgslsmith_clamp_i32(0i, u_input.c, u_input.b), ~2147483647i), firstTrailingBit(vec4<i32>(1i, -36720i, max(arg_0, u_input.a), 26163i))));
    global1 = u_input.c;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!all(vec2<bool>(true, false)), ~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(73403i, u_input.c, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a, u_input.b), vec3<i32>(u_input.c, 1272i, u_input.a)))), _wgslsmith_mult_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(27388i, 1i, -3252i), vec3<i32>(u_input.a, 2147483647i, u_input.a))), select(vec3<i32>(~(-15080i), max(u_input.a, -1i), reverseBits(u_input.b)), vec3<i32>(u_input.b << (4294967295u % 32u), u_input.c, firstTrailingBit(2147483647i)), vec3<bool>(func_1(2203i, 40243u, Struct_1(true, vec2<bool>(false, true))), func_3(Struct_2(true, vec3<i32>(-24065i, u_input.b, u_input.a), vec3<i32>(-10532i, 0i, u_input.b)), vec4<i32>(2147483647i, 2147483647i, u_input.a, 23721i), true, Struct_2(false, vec3<i32>(-1i, -20388i, u_input.a), vec3<i32>(-19980i, u_input.a, 7152i))).x, true))));
    global1 = 1i;
    let var_1 = Struct_2(true, var_0.b, min(vec3<i32>(~(u_input.c & u_input.a), -15853i, -36839i), vec3<i32>(abs(~u_input.a), 13300i, -2147483647i)));
    let var_2 = -238f;
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstLeadingBit(~select(var_0.c, var_1.c, var_1.a)), ~vec3<i32>(_wgslsmith_add_i32(22424i, var_0.b.x), -var_0.c.x, func_5(104233u, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], vec4<i32>(var_0.c.x, 0i, var_1.b.x, var_0.c.x)))));
}

