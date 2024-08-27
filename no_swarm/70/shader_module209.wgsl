struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 21618u), vec2<u32>(62204u, 50969u), vec2<u32>(37914u, 3659u), vec2<u32>(1u, 12585u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(70504u, 0u), vec2<u32>(26893u, 10103u), vec2<u32>(84404u, 54933u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 54712u), vec2<u32>(4294967295u, 30296u), vec2<u32>(1u, 54921u), vec2<u32>(4294967295u, 35418u), vec2<u32>(2144u, 96319u), vec2<u32>(70906u, 70804u), vec2<u32>(86726u, 0u), vec2<u32>(67321u, 8120u), vec2<u32>(4294967295u, 23224u));

var<private> global2: array<u32, 14>;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> bool {
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2165f, -299f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(262f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-712f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -769f) + -1226f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(127f, _wgslsmith_f_op_f32(floor(-942f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(433f, 1000f) * -647f)));
}

fn func_2(arg_0: Struct_4) -> vec3<u32> {
    let var_0 = vec3<bool>(true, arg_0.d.a.a.x, func_3(~(~1u), arg_0.b.yyx & global4.a.yyy));
    let var_1 = arg_0.a;
    let var_2 = global4.a.xx;
    let var_3 = Struct_1(select(select(select(vec4<bool>(false, arg_0.a.a.a.x, true, var_0.x), !var_1.c.a, func_3(1u, vec3<u32>(0u, global2[_wgslsmith_index_u32(16119u, 14u)], global4.a.x))), var_1.a.a, true), arg_0.a.c.a, !vec4<bool>(all(var_0), true, false, 1i != var_1.b.x)));
    var var_4 = Struct_1(!select(select(select(var_3.a, vec4<bool>(var_1.c.a.x, var_3.a.x, true, var_1.a.a.x), var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), arg_0.d.c.a), select(select(vec4<bool>(true, var_1.c.a.x, var_1.d, true), arg_0.d.a.a, var_3.a.x), vec4<bool>(true, false, arg_0.d.a.a.x, true), true), select(vec4<bool>(arg_0.a.a.a.x, var_1.c.a.x, true, true), !arg_0.a.a.a, select(vec4<bool>(true, var_3.a.x, true, var_0.x), vec4<bool>(var_3.a.x, arg_0.a.c.a.x, var_3.a.x, false), var_0.x))));
    return max(~arg_0.b.zxw | arg_0.b.xzx, vec3<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(arg_0.b << (arg_0.b % vec4<u32>(32u)), vec4<u32>(global2[_wgslsmith_index_u32(global4.a.x, 14u)], global4.a.x, 1u, 1u)), countOneBits(firstTrailingBit(global4.a.x))));
}

fn func_1(arg_0: Struct_5) -> u32 {
    global4 = Struct_3(reverseBits(global4.a));
    var var_0 = 0i >> (_wgslsmith_dot_vec2_u32(global4.a.zw, vec2<u32>(global4.a.x, _wgslsmith_dot_vec3_u32(abs(global4.a.yyw), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_0.b, false, arg_0.b, false)), vec4<i32>(-9980i, u_input.b, u_input.b, u_input.b), Struct_1(vec4<bool>(arg_0.b, false, false, true)), true), vec4<u32>(global4.a.x, 1u, 4294967295u, global4.a.x), -1i, Struct_2(Struct_1(vec4<bool>(false, arg_0.b, false, arg_0.b)), vec4<i32>(-2147483647i, 25045i, u_input.b, u_input.b), Struct_1(vec4<bool>(true, arg_0.b, true, true)), true)))))) % 32u);
    let var_1 = all(vec4<bool>(arg_0.b, select(any(vec2<bool>(arg_0.b, arg_0.b)), arg_0.b && false, !arg_0.b), (arg_0.b || true) == false, arg_0.b)) || false;
    let var_2 = max(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.b, -21219i, u_input.b)), -vec3<i32>(5008i, 63911i, u_input.b)), _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 49545i, 18059i), vec3<i32>(-1i, -15733i, -2948i)), (vec3<i32>(u_input.b, u_input.b, 1i) & vec3<i32>(1i, u_input.b, u_input.b)) ^ vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(_wgslsmith_sub_i32(27165i, -17757i), u_input.b, -3759i));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1555f)) - 663f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-542f * -393f), _wgslsmith_f_op_f32(trunc(136f)), true)))))));
    return global4.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)] << (0u % 32u), ~global2[_wgslsmith_index_u32(u_input.a, 14u)]), func_1(Struct_5(1u, false))) | 0u;
    var var_0 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-695f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), true), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), true);
    global4 = Struct_3(~(~global4.a >> (global4.a % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-470f - -374f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(324f, 1003f)), 936f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(963f, -1882f, 668f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-842f, 1444f, -1857f)))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(861f)))), -802f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)))));
    let var_2 = !vec3<bool>(var_0.x, !any(!vec2<bool>(false, var_0.x)), true);
    var_0 = var_2;
    let var_3 = Struct_2(Struct_1(select(!vec4<bool>(var_2.x, false, false, true), select(vec4<bool>(var_2.x, true, true, var_2.x), select(vec4<bool>(var_2.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, var_2.x), true), all(var_0.xz)), false)), ~(~vec4<i32>(abs(u_input.b), -42786i, abs(1i), u_input.b)), Struct_1(!vec4<bool>(var_0.x, var_2.x, true, 32598i <= u_input.b)), !(!var_0.x));
    var var_4 = var_3.a;
    var var_5 = global4.a.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1545f * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), true & var_4.a.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), 842f), vec4<i32>(1i, -25079i, 36465i, ~_wgslsmith_add_i32(1i, u_input.b)));
}

