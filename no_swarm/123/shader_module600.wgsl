struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1u, vec4<bool>(true, false, true, false), 1u, -1038f, 41785u), Struct_1(0u, vec4<bool>(true, true, false, false), 61006u, 646f, 96772u), Struct_1(41039u, vec4<bool>(true, true, false, true), 0u, -627f, 27035u), Struct_1(33202u, vec4<bool>(true, false, false, true), 8264u, 441f, 30413u), Struct_1(1u, vec4<bool>(false, false, true, true), 1985u, 557f, 18585u));

var<private> global2: bool;

var<private> global3: Struct_2;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global3.c.d, _wgslsmith_f_op_f32(global3.a.d * 177f))), global3.c.d))) - _wgslsmith_f_op_f32(select(arg_3.a.d, arg_3.a.d, false)));
    global0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1305f, 366f), vec2<f32>(global3.a.d, var_0), arg_3.a.b.wz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1887f, arg_3.a.d)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -217f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.d, 162f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, arg_3.a.d))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, 498f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), arg_3.a.d), arg_3.a.b.ww)), true)));
    let var_2 = -552f;
    var var_3 = arg_2;
    return true;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(1u, 14265u), vec4<bool>((global3.a.a << (u_input.c % 32u)) <= 0u, !all(global3.a.b.wxz), func_3(vec4<i32>(u_input.d.x, u_input.b.x, -2147483647i, 1i), any(vec4<bool>(false, global3.a.b.x, global3.a.b.x, true)), ~vec4<u32>(1u, u_input.a, u_input.c, 0u), Struct_2(Struct_1(1u, vec4<bool>(true, global3.c.b.x, global3.a.b.x, global3.a.b.x), 4294967295u, global3.a.d, u_input.c), 25464u, global1[_wgslsmith_index_u32(global3.b, 5u)])), reverseBits(u_input.b.x) >= -7581i), select(abs(_wgslsmith_add_u32(1u, 1u)), 68706u, select(global3.c.b.x, global3.a.c >= u_input.c, true)), -169f, _wgslsmith_mult_u32(~(~0u), u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~23973u), ~(0u << (1u % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(94501u, global3.c.a), vec2<u32>(u_input.a, global3.b)), u_input.c), 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~62395u, _wgslsmith_sub_u32(4294967295u, u_input.a), global3.a.e), ~vec4<u32>(u_input.a, u_input.c, 3634u, global3.c.a) >> (vec4<u32>(global3.b, global3.a.c, 1u, u_input.c) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(1u, 5u)]);
    var var_1 = Struct_1(~reverseBits(firstLeadingBit(~u_input.a)), vec4<bool>(true, all(!(!global3.c.b.zxy)), false, !global3.a.b.x), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(exp2(global3.c.d))), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 50270u, 5229u), vec4<u32>(4294967295u, 1u, 71139u, 1u))), firstLeadingBit(countOneBits(vec4<u32>(global3.c.c, u_input.a, global3.c.c, var_0.c.a) << (vec4<u32>(0u, 1u, var_0.a.c, 102587u) % vec4<u32>(32u))))));
    var_1 = global1[_wgslsmith_index_u32(62705u, 5u)];
    var var_2 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(u_input.c, 10575u))), 5u)];
    let var_3 = var_0;
    return var_3;
}

fn func_1() -> Struct_2 {
    var var_0 = global3.c.b.wwz;
    global3 = func_2(_wgslsmith_f_op_f32(round(734f)));
    let var_1 = global3.a.b.yyw;
    let var_2 = Struct_1(~_wgslsmith_sub_u32(global3.a.a, ~max(global3.c.a, u_input.c)), select(vec4<bool>(!var_0.x | true, true, !(global3.a.a != global3.b), true), !(!(!vec4<bool>(global3.c.b.x, var_0.x, true, false))), !global3.a.b), _wgslsmith_add_u32(54292u, u_input.c), global3.c.d, max(global3.c.a << (~reverseBits(1u) % 32u), u_input.a));
    let var_3 = var_2.d;
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d + -515f) + _wgslsmith_f_op_f32(var_3 + 1091f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> i32 {
    global0 = global3.a.b.x;
    global2 = !(u_input.d.x < u_input.d.x);
    global0 = true;
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, global3.a.a, 0u, global3.c.c), vec4<u32>(11629u, arg_2, 1u, u_input.a))), vec4<u32>(_wgslsmith_mult_u32(arg_0.b, ~arg_2), _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.b, arg_0.a.e, 7826u, arg_0.a.c), firstLeadingBit(vec4<u32>(32299u, 0u, 0u, 2606u))), arg_0.a.e, 10968u)), ~u_input.a << (~4294967295u % 32u));
    global3 = arg_0;
    return max(63897i, ~49809i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-_wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(u_input.b, ~vec3<i32>(u_input.d.x, u_input.d.x, u_input.b.x))));
    global0 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -530f, global3.a.d, -418f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.d, -1000f, global3.c.d, 1115f), vec4<f32>(global3.a.d, 1000f, global3.a.d, -143f), global3.a.b)))), 9387u) == abs(~(~(-var_0.x)));
    global1 = array<Struct_1, 5>();
    global3 = func_1();
    global2 = true;
    let var_1 = Struct_2(Struct_1(1u, global3.c.b, ~(4581u | min(global3.c.c, 4744u)), global3.a.d, 4294967295u), 1u, Struct_1(~global3.b, global3.c.b, ~abs(_wgslsmith_mod_u32(9704u, 4294967295u)), _wgslsmith_f_op_f32(max(-1006f, global3.c.d)), _wgslsmith_mod_u32(~countOneBits(global3.a.a), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.d);
}

