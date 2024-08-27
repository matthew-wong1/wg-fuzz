struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, true, true, false, false, false, true, true, true, false, false, true);

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 68328u, 24706u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(14336u, 72227u, 30643u), vec3<u32>(23531u, 0u, 1u), vec3<u32>(4294967295u, 74929u, 1u), vec3<u32>(18040u, 0u, 0u), vec3<u32>(15887u, 6889u, 1u), vec3<u32>(4294967295u, 30190u, 21448u), vec3<u32>(33213u, 4294967295u, 34362u), vec3<u32>(1u, 1u, 26946u), vec3<u32>(0u, 4294967295u, 17304u), vec3<u32>(8170u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(753u, 1u, 0u), vec3<u32>(0u, 1u, 20178u), vec3<u32>(40017u, 4294967295u, 0u), vec3<u32>(11376u, 4294967295u, 41124u), vec3<u32>(100035u, 1u, 25379u));

var<private> global2: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global3: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = -2147483647i;
    let var_1 = vec4<i32>(_wgslsmith_div_i32(~(~(~(-4449i))), 1i), abs(countOneBits(_wgslsmith_add_i32(14922i, ~u_input.b.x))), _wgslsmith_clamp_i32(-1i, arg_1.x, arg_1.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, min(-1i, arg_1.x)), -40009i << (countOneBits(u_input.a.x) % 32u)));
    var var_2 = var_0 | abs(var_1.x);
    global0 = array<bool, 12>();
    var var_3 = !(!select(vec3<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true), select(!vec3<bool>(arg_0.a, false, global0[_wgslsmith_index_u32(61465u, 12u)]), vec3<bool>(true, true, true), false), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(arg_2.x, 12u)], true), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false))));
    return var_0;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = u_input.c.x;
    let var_1 = -vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x << (~u_input.c.x % 32u), func_3(Struct_1(true), -u_input.e, ~vec4<u32>(u_input.a.x, 4294967295u, 0u, 41322u)), 58712i), u_input.b.x, firstTrailingBit(-1i));
    global3 = _wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(var_1, ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 16842i, u_input.b.x), u_input.e.zzw))));
    var var_2 = 0u;
    let var_3 = ~_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(~u_input.c.x, 18u)], max(vec3<u32>(u_input.d, ~23045u, 64343u), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 27577u) << (global1[_wgslsmith_index_u32(3204u, 18u)] % vec3<u32>(32u)))));
    return 49933u;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, -695f, arg_0.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b, -619f, 1098f))))))))));
    var var_1 = all(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], global0[_wgslsmith_index_u32(max(4294967295u, 1u ^ arg_1.x), 12u)], all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)]), false)), !global0[_wgslsmith_index_u32(4294967295u, 12u)] & !global0[_wgslsmith_index_u32(arg_1.x, 12u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 12u)], -2147483647i != u_input.b.x, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(4455u, 12u)], false, false))), vec4<bool>(false, false, any(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(9900u, 12u)], true, global0[_wgslsmith_index_u32(36862u, 12u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 12u)], false))), global0[_wgslsmith_index_u32(u_input.c.x, 12u)])));
    var var_2 = var_0.x;
    global0 = array<bool, 12>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1044f, 174f, arg_0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(201f, -538f, -1327f) * vec3<f32>(-1000f, arg_0.b, -1426f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, arg_0.b, 129f)))))));
    return u_input.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3;
    var var_1 = arg_2.zzy;
    global3 = func_4(arg_1, vec4<u32>(86522u, u_input.d & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 51206u, 0u), vec4<u32>(6150u, 8407u, 36u, 25508u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, 4294967295u), vec4<u32>(21243u, 1u, u_input.c.x, u_input.d))), func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-211f, 596f), var_1.yx))) ^ u_input.d, _wgslsmith_add_u32(92754u, ~(~0u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-132f, arg_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))));
    global0 = array<bool, 12>();
    return Struct_2(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(0i, u_input.e.x, -1i, -1i)), u_input.e, -u_input.e ^ select(-arg_1.a, vec4<i32>(u_input.e.x, arg_1.a.x, -18223i, arg_1.a.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b), 1f))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> i32 {
    global1 = array<vec3<u32>, 18>();
    global3 = 9639i;
    global2 = array<vec2<bool>, 12>();
    var var_0 = Struct_1(false);
    global0 = array<bool, 12>();
    return -u_input.e.x & ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -589f;
    let var_1 = select(~(-60854i ^ func_5(func_1(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 0i), -371f), vec4<f32>(-853f, 566f, var_0, 410f), Struct_1(true)), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1262f) + vec2<f32>(1309f, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(651f, var_0)))), u_input.e.x, true);
    let var_2 = !vec2<bool>(any(select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(12670u, 12u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec3<bool>(true, false, false), false))), false);
    let var_3 = Struct_2(-u_input.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - _wgslsmith_f_op_f32(-1406f * -1000f)))))));
    global1 = array<vec3<u32>, 18>();
    var var_4 = var_3;
    var_4 = func_1(Struct_1(var_2.x), func_1(Struct_1(all(select(var_2, global2[_wgslsmith_index_u32(19802u, 12u)], vec2<bool>(false, true)))), Struct_2(_wgslsmith_div_vec4_i32(u_input.e, abs(vec4<i32>(0i, 0i, 1090i, var_4.a.x))), var_4.b), vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -847f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(var_4.b - -235f))), -584f), Struct_1(false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -480f))))), Struct_1(false));
    let var_5 = vec2<i32>(var_1, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(1i, func_3(Struct_1(~u_input.a.x == ~17666u), firstTrailingBit(var_3.a), vec4<u32>(~(~1u), ~(~u_input.a.x), u_input.a.x, ~(~3626u))), 2147483647i, vec2<u32>(abs(abs(u_input.d)), ~(~1u)) >> (u_input.a.xz % vec2<u32>(32u)));
}

