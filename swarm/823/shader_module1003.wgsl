struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(-1i, 2147483647i), false), Struct_1(vec2<i32>(1i, -25024i), true), Struct_1(vec2<i32>(i32(-2147483648), 6553i), false), Struct_1(vec2<i32>(i32(-2147483648), -1i), false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), false), Struct_1(vec2<i32>(1190i, -74393i), false), Struct_1(vec2<i32>(1i, 2147483647i), false), Struct_1(vec2<i32>(0i, 26176i), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), false), Struct_1(vec2<i32>(i32(-2147483648), -21557i), false), Struct_1(vec2<i32>(1i, 1i), false), Struct_1(vec2<i32>(-1i, -1i), false), Struct_1(vec2<i32>(2147483647i, 29028i), false), Struct_1(vec2<i32>(-3712i, 56535i), true), Struct_1(vec2<i32>(33565i, 1i), false), Struct_1(vec2<i32>(2147483647i, 2147483647i), true), Struct_1(vec2<i32>(2147483647i, 0i), true), Struct_1(vec2<i32>(i32(-2147483648), 1i), true), Struct_1(vec2<i32>(20965i, i32(-2147483648)), false), Struct_1(vec2<i32>(-29451i, -39161i), true));

var<private> global1: array<f32, 3> = array<f32, 3>(993f, -711f, 1000f);

var<private> global2: i32;

var<private> global3: i32 = -37652i;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(u_input.a);
    let var_1 = Struct_2(firstTrailingBit(~reverseBits(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c)))), Struct_1(~vec2<i32>(abs(var_0.x), -1i), false));
    let var_2 = var_1.b;
    global1 = array<f32, 3>();
    let var_3 = var_1;
    return var_2;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> bool {
    global1 = array<f32, 3>();
    let var_0 = select(vec3<bool>(!(_wgslsmith_f_op_f32(arg_1 - 981f) >= _wgslsmith_f_op_f32(-arg_1)), arg_2.b, select(_wgslsmith_f_op_f32(ceil(1454f)) != _wgslsmith_f_op_f32(abs(1220f)), false, !(!arg_2.b))), !select(vec3<bool>(true, true, true), vec3<bool>(arg_2.b, !arg_2.b, arg_2.b), any(select(vec4<bool>(arg_2.b, true, arg_2.b, arg_2.b), vec4<bool>(false, arg_2.b, false, true), false))), any(vec3<bool>(all(vec3<bool>(arg_2.b, arg_2.b, arg_2.b)), all(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b)), firstTrailingBit(-1i) == -arg_2.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(firstTrailingBit(24008u)), 3u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(671f, 1396f)), -623f, arg_1 <= arg_1))))));
    var var_2 = u_input.a.xyw;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, global1[_wgslsmith_index_u32(arg_0, 3u)], 837f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, -761f, arg_1)), 0u > arg_0))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), global1[_wgslsmith_index_u32(arg_0, 3u)]), vec3<f32>(arg_1, -448f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 3u)] - var_1.x)))));
    return ~4294967295u != abs(~arg_0);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    global0 = array<Struct_1, 20>();
    global3 = arg_0;
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(min(1i, 2147483647i) & _wgslsmith_sub_i32(u_input.a.x, 27320i), ~1i), firstLeadingBit(u_input.a.x)), func_3(14671u, -442f, func_2()));
    let var_1 = select(vec4<bool>(var_0.b, false, var_0.b, false), !select(!select(vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(var_0.b, false, var_0.b, var_0.b), false), select(select(vec4<bool>(var_0.b, false, var_0.b, true), vec4<bool>(false, var_0.b, true, true), vec4<bool>(false, true, var_0.b, var_0.b)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(false, true, true, true)), !vec4<bool>(true, var_0.b, var_0.b, false)), var_0.b), !select(!select(vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(true, false, var_0.b, var_0.b), var_0.b), select(select(vec4<bool>(false, true, var_0.b, false), vec4<bool>(var_0.b, true, var_0.b, false), vec4<bool>(var_0.b, var_0.b, false, var_0.b)), select(vec4<bool>(true, var_0.b, false, false), vec4<bool>(false, true, true, false), vec4<bool>(var_0.b, var_0.b, false, var_0.b)), false && var_0.b), vec4<bool>(var_0.b, var_0.b, !var_0.b, var_0.b)));
    var var_2 = select(select(vec3<bool>(true, var_1.x, select(false, all(vec3<bool>(false, true, false)), var_1.x)), select(select(var_1.wyx, vec3<bool>(var_0.b, var_1.x, var_0.b), false), var_1.zwy, vec3<bool>(true, var_1.x, false)), select(select(select(vec3<bool>(var_1.x, false, false), var_1.wzy, vec3<bool>(false, true, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(var_1.zzw, !var_1.xzx, var_1.x && true), vec3<bool>(!var_1.x, !var_0.b, all(var_1.xww)))), !(!var_1.zzz), select(false, !any(!var_1), !(-var_0.a.x <= (i32(-1i) * -47949i))));
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(33214u, firstLeadingBit(1u)), abs(~u_input.b.x << (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    global1 = array<f32, 3>();
    var var_0 = Struct_2(vec4<u32>(u_input.b.x, u_input.c, ~1u, u_input.b.x), global0[_wgslsmith_index_u32(97490u, 20u)]);
    let var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_add_u32(var_0.a.x, func_1(var_0.b.a.x, global1[_wgslsmith_index_u32(77950u, 3u)], vec2<u32>(var_0.a.x, 1u)))), reverseBits(u_input.b.x));
    global3 = max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -43154i, max(-2147483647i, var_0.b.a.x)), _wgslsmith_sub_vec3_i32(-u_input.a.xww, ~vec3<i32>(-109460i, 12045i, 0i))), -(abs(u_input.a.x) << (0u % 32u))) ^ 2147483647i;
    var var_2 = var_0.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, (_wgslsmith_add_i32(u_input.a.x, -2147483647i & var_0.b.a.x) & _wgslsmith_sub_i32(_wgslsmith_mod_i32(-16322i, 2147483647i), u_input.a.x)) ^ (max(~var_0.b.a.x, ~var_0.b.a.x) & var_0.b.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(~reverseBits(u_input.a.x), var_0.b.a.x), abs(reverseBits(var_0.b.a)) ^ ~vec2<i32>(u_input.a.x, 1i)));
}

