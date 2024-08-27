struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_3,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, true, true, false, true, true, false, false, true, false, true, true, true, false, false, true, true, false, false);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(2439u, 52452u, 41802u));

var<private> global2: Struct_3;

var<private> global3: array<f32, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    global3 = array<f32, 15>();
    var var_0 = global2.c.a.a.x;
    var var_1 = _wgslsmith_f_op_f32(sign(arg_0.b.x));
    let var_2 = arg_0.a.a.b.yy;
    var_0 = false;
    return vec4<bool>(false, false, !global2.c.a.a.x, global2.e.a.a.x);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_1 {
    global0 = array<bool, 21>();
    let var_0 = reverseBits(u_input.a);
    global0 = array<bool, 21>();
    global1 = Struct_1(func_2(Struct_3(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global2.b)) * global2.b), global2.a, vec3<u32>(u_input.b.x, global1.b.x, 1u), Struct_2(global2.c.a))), _wgslsmith_div_vec3_u32(global2.d, ~_wgslsmith_div_vec3_u32(~u_input.b, global2.c.a.b)));
    global3 = array<f32, 15>();
    return global2.a.a;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(func_2(Struct_3(global2.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.b * vec2<f32>(455f, global2.b.x)), _wgslsmith_f_op_vec2_f32(min(global2.b, global2.b)))), Struct_2(Struct_1(arg_0.a, vec3<u32>(global2.c.a.b.x, global1.b.x, 18582u))), vec3<u32>(~4294967295u, ~1u, firstLeadingBit(global2.d.x)), Struct_2(Struct_1(global1.a, global2.d)))), arg_0.b);
    var var_1 = -u_input.c;
    global2 = Struct_3(Struct_2(func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(var_0.b.x, 0u, 0u)), 28923u, ~57098u), all(!vec3<bool>(false, false, arg_0.a.x)), global1.a, Struct_4(vec4<u32>(global1.b.x, 4294967295u, 7890u, 0u), !global0[_wgslsmith_index_u32(0u, 21u)], global1.b.x, func_2(Struct_3(global2.a, vec2<f32>(global2.b.x, 1000f), global2.c, vec3<u32>(global2.c.a.b.x, 12239u, 4294967295u), Struct_2(global2.e.a))).zxw))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(95347u, 15u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(550f, global3[_wgslsmith_index_u32(var_0.b.x, 15u)]) + global2.b))), Struct_2(arg_0), ~(~select(arg_0.b, global2.d, global0[_wgslsmith_index_u32(var_0.b.x, 21u)] | global0[_wgslsmith_index_u32(arg_0.b.x, 21u)])), Struct_2(Struct_1(select(func_3(vec3<u32>(23135u, 18778u, arg_0.b.x), true, vec4<bool>(global2.a.a.a.x, global2.a.a.a.x, true, false), Struct_4(vec4<u32>(13846u, 0u, var_0.b.x, var_0.b.x), true, 25867u, global1.a.xzz)).a, func_3(arg_0.b, true, vec4<bool>(global1.a.x, global2.c.a.a.x, false, global0[_wgslsmith_index_u32(0u, 21u)]), Struct_4(vec4<u32>(var_0.b.x, 0u, arg_0.b.x, global2.a.a.b.x), true, 18976u, vec3<bool>(global0[_wgslsmith_index_u32(66270u, 21u)], false, false))).a, !global1.a), select(u_input.b, vec3<u32>(u_input.b.x, 7756u, 4294967295u), var_0.a.zzy) & (u_input.b | arg_0.b))));
    let var_2 = vec4<i32>(2147483647i, -1i, ~abs(u_input.a | u_input.c), 41325i) ^ vec4<i32>(u_input.a, 0i, _wgslsmith_add_i32(~u_input.c, -1i), 53197i);
    var var_3 = Struct_4(~vec4<u32>(global2.e.a.b.x, _wgslsmith_dot_vec2_u32(select(var_0.b.xy, global1.b.yy, global0[_wgslsmith_index_u32(var_0.b.x, 21u)]), vec2<u32>(arg_0.b.x, 1365u) ^ arg_0.b.yy), min(7021u, 37616u), 4294967295u), true, arg_0.b.x, func_3(vec3<u32>(0u, var_0.b.x, 0u), !var_0.a.x, !global1.a, Struct_4(firstLeadingBit(vec4<u32>(1u, arg_0.b.x, 58053u, arg_0.b.x)), any(!global1.a), global1.b.x, arg_0.a.xxz)).a.zww);
    return Struct_3(global2.e, global2.b, Struct_2(global2.c.a), vec3<u32>(select(~global2.c.a.b.x, reverseBits(global1.b.x), all(global1.a)) & ~func_3(global1.b, false, vec4<bool>(true, true, var_0.a.x, var_0.a.x), Struct_4(vec4<u32>(global1.b.x, 40658u, 72003u, arg_0.b.x), global2.e.a.a.x, 9028u, vec3<bool>(global1.a.x, var_3.d.x, global2.c.a.a.x))).b.x, _wgslsmith_mult_u32(abs(select(1u, global2.c.a.b.x, true)), (4294967295u | global1.b.x) << (var_3.a.x % 32u)), ~(~max(arg_0.b.x, 0u))), global2.e);
}

fn func_1() -> Struct_5 {
    var var_0 = global2.c.a.a.zxz;
    var_0 = select(select(vec3<bool>(any(vec3<bool>(false, false, true)), !(global2.b.x > 1429f), global2.e.a.b.x != _wgslsmith_mult_u32(global1.b.x, 1u)), vec3<bool>(var_0.x, 1u > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.b.x, global2.c.a.b.x), global2.d), true), true), global1.a.xxx, !global1.a.wxz);
    global2 = func_4(func_3(countOneBits(u_input.b), ~(~u_input.b.x) == global2.a.a.b.x, !func_2(Struct_3(Struct_2(global2.e.a), vec2<f32>(global2.b.x, -863f), Struct_2(Struct_1(global2.a.a.a, global2.c.a.b)), u_input.b, Struct_2(Struct_1(global1.a, global1.b)))), Struct_4(vec4<u32>(~47403u, abs(6470u), ~19358u, ~global1.b.x), false, u_input.b.x, vec3<bool>(global2.e.a.a.x, false, true))));
    global3 = array<f32, 15>();
    var var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(countOneBits(min(~1u, min(1u, global2.e.a.b.x)))), 15u)]);
    return Struct_5(func_4(Struct_1(!global1.a, global1.b)), global1.a, Struct_3(global2.a, global2.b, global2.a, reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) & _wgslsmith_sub_vec3_u32(global1.b, _wgslsmith_div_vec3_u32(global1.b, u_input.b)), func_4(global2.c.a).a), 2339u, any(func_4(Struct_1(!global2.c.a.a, vec3<u32>(u_input.b.x, 33428u, 4294967295u))).e.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(~(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, 0i)) | vec2<i32>(-1i, -2147483647i)), vec2<i32>(-_wgslsmith_clamp_i32(1i, 25318i, u_input.a), -(~u_input.c))) << (((_wgslsmith_mult_vec2_u32(abs(vec2<u32>(global2.c.a.b.x, global1.b.x)), ~global1.b.yz) << (vec2<u32>(min(0u, global2.c.a.b.x), 9466u) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.a.b.x, ~u_input.b.x), abs(vec2<u32>(global1.b.x, u_input.b.x)))) % vec2<u32>(32u));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.x))), -596f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = var_1.c.a.a;
    global2 = var_1.a;
    let var_3 = true;
    global1 = global2.a.a;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(select(~vec4<u32>(1u, global1.b.x, 11327u, 109138u), vec4<u32>(4294967295u, 34443u, 20743u, u_input.b.x), u_input.b.x > u_input.b.x) ^ vec4<u32>(u_input.b.x, 4294967295u, var_1.d, func_1().c.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x - 1715f), -1146f, global3[_wgslsmith_index_u32(59890u, 15u)], 857f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 15u)], var_2, -176f, global3[_wgslsmith_index_u32(23314u, 15u)]) - vec4<f32>(334f, var_2, 704f, 1757f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(global2.d.x, 15u)], global3[_wgslsmith_index_u32(5069u, 15u)], global3[_wgslsmith_index_u32(global1.b.x, 15u)], 739f), vec4<f32>(661f, -515f, global3[_wgslsmith_index_u32(20220u, 15u)], -139f))))), global2.c.a.a))));
}

