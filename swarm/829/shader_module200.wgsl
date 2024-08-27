struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), -201f);

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 22799u), vec2<u32>(4294967295u, 121049u), vec2<u32>(31163u, 6000u), vec2<u32>(57492u, 1924u), vec2<u32>(31768u, 61164u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 11614u), vec2<u32>(4294967295u, 8187u), vec2<u32>(34803u, 4294967295u), vec2<u32>(114858u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(16056u, 51418u), vec2<u32>(0u, 1u), vec2<u32>(0u, 5023u), vec2<u32>(0u, 10401u), vec2<u32>(4294967295u, 21067u), vec2<u32>(1u, 88344u), vec2<u32>(1u, 4294967295u), vec2<u32>(63442u, 1u), vec2<u32>(73714u, 50472u), vec2<u32>(30659u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(45337u, 0u), vec2<u32>(38991u, 0u), vec2<u32>(390u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global2 = Struct_2(global2.a ^ vec2<i32>(i32(-1i) * -27607i, 30489i), global2.b);
    return vec3<bool>(false, !(!any(vec2<bool>(true, false)) | any(vec4<bool>(true, true, true, true))), (any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) || (false && all(vec4<bool>(true, false, true, false)))) || true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = select(!vec3<bool>(true, !(u_input.a <= 52634u), false), !select(vec3<bool>(arg_1.b && true, any(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.d)), true), !select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.d, false), arg_1.d), vec3<bool>(u_input.c.x >= 1u, arg_1.d, true)), select(vec3<bool>(!all(vec4<bool>(false, arg_1.b, arg_1.b, true)), arg_0.a.x == -3470i, arg_1.d), !vec3<bool>(true, false, arg_1.b), select(vec3<bool>(arg_1.d, arg_1.b, true), !select(vec3<bool>(false, true, true), vec3<bool>(arg_1.d, true, arg_1.b), true), func_3(~vec3<u32>(arg_1.a, 0u, arg_1.a)))));
    var var_1 = arg_0;
    let var_2 = select(vec4<i32>(~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(9407u, 16u)], -20761i, -1i), vec3<i32>(0i, 17494i, global2.a.x))), arg_0.a.x, _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(arg_1.c & 2854i, -11437i)), 0i), vec4<i32>(abs(0i), reverseBits(countOneBits(arg_0.a.x)), _wgslsmith_clamp_i32(-41587i, -2147483647i, _wgslsmith_clamp_i32(-19177i, u_input.b, u_input.b)) >> (~(~16221u) % 32u), select(2147483647i, ~_wgslsmith_mod_i32(global2.a.x, -1i), var_0.x)), var_0.x);
    var var_3 = var_0.x;
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_4.b, 1719f)))) - -1839f), arg_0.b));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global2 = Struct_2(global2.a, -334f);
    global0 = array<i32, 16>();
    return arg_2;
}

fn func_1() -> bool {
    let var_0 = func_4(_wgslsmith_f_op_f32(-186f * _wgslsmith_f_op_f32(668f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec2<i32>(global2.a.x, 0i), -1584f), global1[_wgslsmith_index_u32(u_input.a, 3u)])) + _wgslsmith_f_op_f32(sign(global2.b))))), Struct_1(firstTrailingBit(u_input.a), true, _wgslsmith_mult_i32(_wgslsmith_sub_i32(~global2.a.x, 0i), -firstLeadingBit(u_input.b)), !select(true, true, true)), Struct_2(global2.a, global2.b));
    let var_1 = !(!select(vec2<bool>(true, 390f <= global2.b), select(vec2<bool>(true, true), func_3(vec3<u32>(14376u, u_input.a, u_input.a)).xz, vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_2 = ~vec4<i32>(-17617i, u_input.b, global2.a.x, global0[_wgslsmith_index_u32(1u >> (~4294967295u % 32u), 16u)]);
    global2 = Struct_2(global2.a, _wgslsmith_f_op_f32(trunc(1015f)));
    global0 = array<i32, 16>();
    return !func_3(select(~vec3<u32>(1u, 0u, u_input.c.x), ~firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), !(!var_1.x))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(8207u), 3u)];
    global3 = array<vec2<u32>, 27>();
    var_1 = Struct_1(countOneBits(49423u & var_1.a), var_0, global0[_wgslsmith_index_u32(0u, 16u)], var_1.d);
    global1 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1287f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-681f, global2.b, 518f), vec3<f32>(-205f, global2.b, 307f)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1164f, global2.b, global2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -445f, global2.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-946f, global2.b, 373f) * vec3<f32>(global2.b, -671f, 891f)) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.b, -429f, 1162f), vec3<f32>(global2.b, -1193f, global2.b)))))));
    let var_4 = Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(18052u, 2395u, 68498u), vec3<u32>(var_1.a, var_1.a, var_1.a)), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(var_1.a, u_input.a, 14540u))), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(34328u, 4294967295u, u_input.a), vec3<u32>(var_1.a, u_input.a, 73765u)))), !var_0, u_input.b, !all(vec4<bool>(false, false, 4294967295u < var_1.a, var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ max(_wgslsmith_mult_i32(~var_4.c, 2147483647i), 42591i), vec2<i32>(49704i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -67054i, global2.a.x & 0i), -vec3<i32>(var_4.c, var_1.c, var_1.c))), var_1.a);
}

