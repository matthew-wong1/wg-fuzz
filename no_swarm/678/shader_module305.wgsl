struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 22484u, 1u);

var<private> global1: array<bool, 7> = array<bool, 7>(false, false, false, true, false, false, false);

var<private> global2: Struct_3;

var<private> global3: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1507f, -823f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<bool> {
    global3 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2.b.a)))));
    global2 = Struct_3(global2.a, global2.b, global2.c, 45623u);
    let var_1 = global2.b;
    let var_2 = global2.a;
    return global2.c;
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_add_u32(u_input.b.x, 59317u);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.a))) <= var_0.b.a;
    let var_3 = !(var_0.b.a == -1029f);
    global3 = array<vec2<f32>, 1>();
    return func_3();
}

fn func_2(arg_0: f32) -> Struct_4 {
    global2 = Struct_3(Struct_1(countOneBits(~(~u_input.b.x))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(-1063f - global2.b.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, -19462i), vec3<i32>(u_input.a, 2147483647i, global2.b.b), vec3<i32>(-48653i, u_input.a, u_input.a)), vec3<i32>(u_input.a, 0i, 31463i)), u_input.a, _wgslsmith_sub_i32(-23206i, 13274i) ^ (global2.b.b << (global0.x % 32u))), !all(select(vec4<bool>(global2.c.x, true, global1[_wgslsmith_index_u32(u_input.c, 7u)], true), vec4<bool>(global2.c.x, false, global2.b.c, false), vec4<bool>(global2.c.x, false, global2.c.x, global1[_wgslsmith_index_u32(5406u, 7u)])))), !vec3<bool>(!global2.b.c || any(vec3<bool>(global2.c.x, global1[_wgslsmith_index_u32(52282u, 7u)], global2.c.x)), false, global1[_wgslsmith_index_u32(12184u, 7u)]), 4294967295u);
    global0 = vec4<u32>(0u, ~(~(~global2.a.a)), 2936u, global0.x);
    var var_0 = func_4(~countOneBits((99013u & global0.x) << (~global2.d % 32u)), Struct_3(global2.a, global2.b, !func_3(), ~abs(1u) << (~(~u_input.b.x) % 32u)));
    let var_1 = global2.a;
    var var_2 = !global2.b.c;
    return Struct_4(_wgslsmith_clamp_vec2_u32(global0.zz, vec2<u32>(21069u, 0u), max(~u_input.b.wy, _wgslsmith_mod_vec2_u32(global0.yx, global0.wz))) ^ global0.yz, any(!global2.c));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = vec3<bool>(all(vec4<bool>(-6877i > select(20052i, global2.b.b, true), true, true, firstLeadingBit(global2.b.b) >= global2.b.b)), false, global2.b.c);
    global2 = Struct_3(global2.a, global2.b, var_0, global2.d);
    var var_1 = Struct_4(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 2294u), ~_wgslsmith_clamp_vec2_u32(arg_0.a, u_input.b.xx, vec2<u32>(global2.d, 53003u))), global0.xz), true);
    let var_2 = !(!func_3().yx);
    let var_3 = vec4<u32>(15098u, 24144u, min(0u, _wgslsmith_dot_vec2_u32(abs(func_2(global2.b.a).a), global0.zw ^ var_1.a)), _wgslsmith_mult_u32(countOneBits(36045u) ^ ~_wgslsmith_sub_u32(u_input.b.x, arg_0.a.x), 1u));
    return Struct_3(Struct_1(20900u), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -745f), -_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.b, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.a, global2.b.b))), true), !(!global2.c), 4294967295u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-261f * global2.b.a);
    global0 = ~vec4<u32>(max(1u, global2.d), arg_1.x, arg_0.x, arg_1.x) ^ vec4<u32>(40138u, global2.a.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.xxx ^ vec3<u32>(407u, 27813u, 24552u), reverseBits(vec3<u32>(global0.x, arg_1.x, u_input.b.x))), firstTrailingBit(1u), 1u | arg_0.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(~131524u, _wgslsmith_mult_u32(arg_0.x, 71951u)), u_input.d));
    let var_1 = vec2<f32>(-2261f, var_0);
    let var_2 = func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f * 2253f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) - _wgslsmith_f_op_f32(select(-888f, _wgslsmith_f_op_f32(f32(-1f) * -1342f), any(vec4<bool>(global2.c.x, true, global2.c.x, false))))), _wgslsmith_f_op_f32(f32(-1f) * -720f)));
    var var_3 = vec4<bool>((_wgslsmith_f_op_f32(var_0 + var_0) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f * global2.b.a) + _wgslsmith_f_op_f32(739f * 667f))) | true, true, !func_3().x, -_wgslsmith_div_i32(~var_2.b.b, u_input.a) != _wgslsmith_add_i32(select(~24044i, countOneBits(var_2.b.b), false), 30042i));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1746f;
    var var_1 = u_input.a;
    var var_2 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(max(1u, global0.x), u_input.c), 20533u));
    var var_3 = !vec4<bool>(global2.b.c, !global1[_wgslsmith_index_u32(45370u, 7u)], !(!(!global2.c.x)), !any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, false)) || !global1[_wgslsmith_index_u32(global0.x & 28537u, 7u)]);
    var_1 = 16823i;
    var var_4 = func_1(~abs(u_input.b.zxx), vec2<u32>(countOneBits(10701u) >> (global2.d % 32u), _wgslsmith_add_u32(4294967295u, ~global0.x)));
    var var_5 = vec4<i32>(-1i) * -vec4<i32>(min(~u_input.a, firstTrailingBit(var_4.b.b)), ~_wgslsmith_div_i32(global2.b.b, global2.b.b), _wgslsmith_div_i32(~45363i, i32(-1i) * -1i), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1120f), vec2<f32>(_wgslsmith_f_op_f32(-852f + func_5(Struct_4(global0.yz, var_3.x), _wgslsmith_div_vec2_f32(vec2<f32>(global2.b.a, var_4.b.a), vec2<f32>(-852f, global2.b.a))).b.a), 129f), reverseBits(~var_4.a.a) >> (4294967295u % 32u), global0.xz, vec3<u32>(~(~(~4294967295u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xxx, u_input.b.wxx), global0.yzx), u_input.d));
}

