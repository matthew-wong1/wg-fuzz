struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 7>();
    let var_0 = max(~abs(4294967295u), 4294967295u << (u_input.a.x % 32u));
    return 1f;
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    return Struct_3(!vec4<bool>(select(true, true, true), global2.x, true, any(!vec2<bool>(global2.x, global2.x))), 4294967295u, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-663f, -235f))), global1[_wgslsmith_index_u32(21036u, 23u)], _wgslsmith_dot_vec3_i32(-vec3<i32>(28558i, -2147483647i, -1i), ~vec3<i32>(u_input.b.x, 0i, 1i)), Struct_1(~u_input.c.x, !vec3<bool>(arg_1.a.x, arg_1.a.x, true)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), countOneBits(arg_0)), 23u)]));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_5) -> Struct_1 {
    global2 = !(!arg_1.a.wxz);
    var var_0 = u_input.c.zx;
    var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(select(u_input.b.xw, u_input.c.zz, false || any(arg_1.a.xwy))), vec2<i32>(1i, 1i));
    let var_1 = arg_2.a.x;
    global1 = array<Struct_1, 23>();
    return arg_1.c.e;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(343f)), 1374f));
    let var_1 = 2147483647i;
    global2 = vec3<bool>(all(!select(vec4<bool>(true, global2.x, global2.x, arg_0.b.x), select(vec4<bool>(false, global2.x, arg_0.b.x, global2.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x)), true)), true, u_input.c.x < arg_0.a);
    return func_4(Struct_4(!(!vec2<bool>(global2.x, false))), func_2(4264u, Struct_4(arg_0.b.xy)), Struct_5(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.yy, _wgslsmith_sub_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, 74646u))), ~reverseBits(u_input.a.xx), vec2<u32>(u_input.a.x, ~u_input.a.x))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_5 {
    var var_0 = func_4(Struct_4(vec2<bool>(func_4(Struct_4(vec2<bool>(global2.x, global2.x)), Struct_3(vec4<bool>(arg_0.b.x, arg_1, global2.x, global2.x), 0u, Struct_2(vec2<f32>(448f, -671f), arg_0, 13328i, global1[_wgslsmith_index_u32(26733u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), Struct_5(u_input.a.yy)).b.x || !global2.x, arg_0.b.x)), Struct_3(vec4<bool>(global2.x, func_2(max(653u, u_input.a.x), Struct_4(arg_0.b.zz)).c.b.b.x, func_4(Struct_4(arg_0.b.zy), Struct_3(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_1), 4294967295u, Struct_2(vec2<f32>(657f, 641f), arg_0, 1i, Struct_1(-34681i, vec3<bool>(true, true, true)), Struct_1(u_input.c.x, arg_0.b))), Struct_5(u_input.a.yz)).b.x, global2.x || (1i != u_input.b.x)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(83982u, 4294967295u, 18101u) | vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), ~u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(245f, -1394f)))), arg_0, arg_0.a, arg_0, Struct_1(u_input.b.x << (u_input.a.x % 32u), select(vec3<bool>(false, true, arg_1), vec3<bool>(true, global2.x, true), arg_0.b)))), Struct_5(~(~(u_input.a.yy | u_input.a.yx))));
    var var_1 = Struct_5(u_input.a.zy);
    let var_2 = func_1(func_2(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(61756u, 24408u, u_input.a.x, 15366u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, var_1.a.x, 10903u, u_input.a.x)), vec4<u32>(u_input.a.x, 4294967295u, 1u, 134343u) << (vec4<u32>(4294967295u, 50322u, var_1.a.x, 1u) % vec4<u32>(32u)))), Struct_4(vec2<bool>(true, true))).c.b);
    let var_3 = Struct_5(_wgslsmith_mod_vec2_u32(var_1.a, vec2<u32>(func_2(4294967295u, Struct_4(vec2<bool>(true, true))).b | ~u_input.a.x, 4294967295u)));
    let var_4 = min(14008i, -4289i);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_1(-1i, select(vec3<bool>(global2.x, global2.x, true), !vec3<bool>(true, global2.x, global2.x), !vec3<bool>(global2.x, false, global2.x)))), true);
    global1 = array<Struct_1, 23>();
    global2 = func_4(Struct_4(func_4(Struct_4(!global2.zz), Struct_3(func_2(var_0.a.x, Struct_4(vec2<bool>(global2.x, global2.x))).a, _wgslsmith_dot_vec2_u32(var_0.a, u_input.a.zz), func_2(u_input.a.x, Struct_4(global2.yx)).c), var_0).b.zx), func_2(_wgslsmith_add_u32(var_0.a.x, u_input.a.x), Struct_4(vec2<bool>(true, true))), var_0).b;
    global0 = array<vec4<f32>, 7>();
    global2 = func_2(_wgslsmith_mult_u32(var_0.a.x, min(~3052u | u_input.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(7290u, 0u, 3215u, u_input.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 7868u), vec4<bool>(false, false, global2.x, true)), vec4<u32>(var_0.a.x, var_0.a.x, 33673u, 72141u)))), Struct_4(func_4(Struct_4(vec2<bool>(false, global2.x)), func_2(~u_input.a.x, Struct_4(vec2<bool>(false, true))), Struct_5(vec2<u32>(64024u, 63247u))).b.xz)).a.wxy;
    global1 = array<Struct_1, 23>();
    var var_1 = func_5(func_1(func_4(Struct_4(vec2<bool>(false, true)), Struct_3(!vec4<bool>(true, false, global2.x, global2.x), _wgslsmith_mod_u32(19476u, u_input.a.x), func_2(53225u, Struct_4(vec2<bool>(false, global2.x))).c), Struct_5(var_0.a))), global2.x);
    var_1 = Struct_5(u_input.a.zz);
    var_1 = func_5(global1[_wgslsmith_index_u32(4294967295u ^ u_input.a.x, 23u)], global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, ~u_input.a.x, 1u, _wgslsmith_clamp_u32(reverseBits(u_input.a.x), ~var_1.a.x, 0u << (0u % 32u))), var_1.a, ~func_4(Struct_4(select(global2.yx, vec2<bool>(global2.x, global2.x), false)), func_2(firstTrailingBit(u_input.a.x), Struct_4(vec2<bool>(true, global2.x))), var_0).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f + -731f) + _wgslsmith_f_op_f32(select(262f, -590f, global2.x))), 726f)), u_input.a);
}

