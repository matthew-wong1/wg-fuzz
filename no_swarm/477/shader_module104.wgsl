struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(400f, -1771f, -1553f), vec3<bool>(false, true, false), vec4<f32>(-545f, -578f, -1931f, -426f)));

var<private> global2: array<vec4<bool>, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec3<f32> {
    let var_0 = ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -6368i, -18250i, 3993i), select(vec4<i32>(u_input.a, u_input.a, -32554i, 58188i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), false), select(vec4<i32>(u_input.b, 0i, 1i, -8255i), vec4<i32>(1i, u_input.a, u_input.b, -2147483647i), false))) >> (~vec4<u32>(~abs(16512u), 98981u, u_input.c, 2260u) % vec4<u32>(32u));
    return global1.a.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global1.a.b.xy;
    var var_1 = -792f;
    let var_2 = arg_1;
    var var_3 = var_2;
    global0 = array<u32, 20>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(var_2.b, var_0.x)), select(vec3<bool>(true, true, true), !(!arg_1.b), all(global2[_wgslsmith_index_u32(abs(21341u), 23u)])), _wgslsmith_f_op_vec4_f32(sign(var_3.c))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    var var_0 = -678f;
    global0 = array<u32, 20>();
    let var_1 = vec2<u32>(~reverseBits(abs(global0[_wgslsmith_index_u32(u_input.d.x, 20u)] >> (52363u % 32u))), u_input.c);
    return func_2(arg_2.a.b.x, func_2(all(func_2(arg_2.a.b.x, arg_0.a).a.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(global1.a.c.x)), -762f, -964f), !vec3<bool>(true, arg_1, true), arg_0.a.c)).a).a;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = select(select(vec3<bool>(!func_4(Struct_2(global1.a), arg_2.b.x, Struct_2(arg_0), 2414f).b.x, global1.a.b.x, true), vec3<bool>(true, !global1.a.b.x, !any(vec3<bool>(arg_2.b.x, false, false))), false), func_4(func_2(true, global1.a), func_4(func_2(global1.a.b.x, arg_2), any(global2[_wgslsmith_index_u32(1u, 23u)]), Struct_2(global1.a), -2207f).b.x, Struct_2(Struct_1(func_4(Struct_2(Struct_1(arg_2.c.zwx, arg_0.b, global1.a.c)), arg_2.b.x, Struct_2(Struct_1(vec3<f32>(arg_0.c.x, -234f, global1.a.a.x), arg_2.b, vec4<f32>(arg_2.c.x, 1237f, arg_2.a.x, -1000f))), 333f).a, global1.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1582f, -1362f, arg_2.c.x, -441f) - arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -737f)).b, true);
    var var_1 = ~0i;
    var_1 = -30861i;
    var_1 = _wgslsmith_mult_i32(u_input.b, firstTrailingBit(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(i32(-1i) * -17844i, -41269i))));
    var_0 = vec3<bool>(func_4(Struct_2(func_2(true, Struct_1(vec3<f32>(global1.a.a.x, -1128f, arg_2.a.x), global1.a.b, global1.a.c)).a), !select(true, global1.a.b.x, var_0.x), Struct_2(arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f + global1.a.c.x))).c.x <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -690f))), !arg_0.b.x, func_4(func_2(false, func_4(Struct_2(global1.a), any(vec3<bool>(var_0.x, false, false)), Struct_2(arg_2), arg_0.c.x)), !(!(-4824i < arg_3)), func_2((global1.a.b.x & true) & all(var_0.zx), func_2(global1.a.b.x, arg_0).a), _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, any(global2[_wgslsmith_index_u32(43020u, 23u)]), any(vec3<bool>(arg_0.b.x, true, arg_2.b.x))), func_2(false, Struct_1(global1.a.a, vec3<bool>(arg_2.b.x, true, global1.a.b.x), global1.a.c)).a.b.x)).x).b.x);
    return arg_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = 0i;
    var var_1 = u_input.d & vec4<u32>(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.d.x), 20u)], u_input.c), u_input.c >> (~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u), ~u_input.c, ~_wgslsmith_add_u32(11372u, u_input.d.x));
    let var_2 = select(!(!arg_0.wwx), arg_0.zyy, !(!vec3<bool>(all(vec4<bool>(global1.a.b.x, arg_2, true, arg_2)), all(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40091u, 20u)], 23u)]), true)));
    var var_3 = _wgslsmith_add_vec3_u32(~var_1.xww, vec3<u32>(35564u, ~u_input.c, func_5(func_4(func_2(true, Struct_1(vec3<f32>(-357f, 673f, 915f), var_2, global1.a.c)), !arg_2, Struct_2(Struct_1(vec3<f32>(-1641f, global1.a.c.x, global1.a.a.x), vec3<bool>(var_2.x, false, arg_2), vec4<f32>(global1.a.c.x, global1.a.a.x, global1.a.c.x, global1.a.c.x))), 1000f), select(42648u, select(7450u, 26495u, false), true), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(arg_0.wzz, var_2.x)), vec3<bool>(global1.a.b.x, false, arg_2), global1.a.c), countOneBits(min(u_input.a, 36169i)))));
    global2 = array<vec4<bool>, 23>();
    return _wgslsmith_f_op_f32(step(-988f, -615f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    let var_0 = ~u_input.b;
    var var_1 = Struct_2(global1.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, -1444f, _wgslsmith_f_op_f32(func_1(vec4<bool>(global1.a.b.x, false, true, false), u_input.a, true)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.a.a)))));
    global2 = array<vec4<bool>, 23>();
    let var_3 = func_2(var_1.a.b.x, var_1.a);
    global1 = var_3;
    var var_4 = var_0;
    var var_5 = !select(var_3.a.b.xy, vec2<bool>(!(!global1.a.b.x), true), var_3.a.b.x || (!var_3.a.b.x || (var_2.x < -881f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(var_3.a.b.x || true, !(!var_3.a.b.x), false), var_5.x && true)).x, abs(0i), abs(~vec2<i32>(_wgslsmith_mult_i32(-1i, -2147483647i), firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.c.x, -646f, 687f, var_2.x))), var_3.a.c))));
}

