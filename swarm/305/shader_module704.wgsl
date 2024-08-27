struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)));

var<private> global2: array<vec3<i32>, 21>;

var<private> global3: i32 = 0i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(Struct_1(vec2<bool>(all(vec4<bool>(false, true, true, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))));
    let var_1 = !(!vec3<bool>(all(var_0.a.a), any(select(vec3<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec3<bool>(true, true, false), var_0.a.a.x)), true));
    global3 = -1i;
    var_0 = Struct_4(Struct_1(vec2<bool>(true, !var_0.a.a.x)));
    var_0 = Struct_4(Struct_1(vec2<bool>(!(!var_1.x), any(select(vec4<bool>(var_0.a.a.x, false, true, var_1.x), vec4<bool>(var_0.a.a.x, var_1.x, var_0.a.a.x, false), vec4<bool>(var_1.x, var_0.a.a.x, false, true))))));
    return var_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_3 {
    global2 = array<vec3<i32>, 21>();
    let var_0 = ~min(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -1i)), select(vec2<i32>(2147483647i, -1i), vec2<i32>(12063i, 2147483647i), arg_1.a.a))), _wgslsmith_mult_i32(~reverseBits(2147483647i), -(i32(-1i) * -2147483647i)));
    var var_1 = !arg_0;
    let var_2 = func_2().xy;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(401f * 1002f)))) * _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1293f, 559f)), func_2().x)))));
    return Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a ^ u_input.a, 29u)], -194f, vec2<u32>(~u_input.a, 1u), global1[_wgslsmith_index_u32(~(~u_input.a << (u_input.a % 32u)), 29u)]), Struct_1(vec2<bool>(true && var_1.x, arg_0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    global1 = array<Struct_1, 29>();
    global3 = max(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), select(vec2<i32>(-1i, -25372i), vec2<i32>(1i, -2147483647i), false)) ^ 1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(22543i, 18585i, 16845i, 1i), vec4<i32>(0i, 1i, 83609i, 3202i), true)), ~firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, -1i, 1i)))), _wgslsmith_mult_i32(i32(-1i) * -countOneBits(2147483647i), 1i));
    return Struct_1(vec2<bool>(true, arg_2.a.a.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = 36243i;
    var var_1 = Struct_2(func_4(func_3(select(!vec3<bool>(arg_0, true, arg_0), func_2(), vec3<bool>(arg_0, arg_0, false)), Struct_4(global1[_wgslsmith_index_u32(~12571u, 29u)])), Struct_1(!vec2<bool>(arg_0, false)), Struct_4(func_3(!vec3<bool>(false, false, arg_0), Struct_4(global1[_wgslsmith_index_u32(u_input.a, 29u)])).b)), 180f, abs(~(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)) << (abs(vec2<u32>(5947u, u_input.a)) % vec2<u32>(32u)))), Struct_1(!vec2<bool>(arg_0, arg_0 != false)));
    var var_2 = _wgslsmith_sub_i32(firstLeadingBit(~(-2147483647i)), -68977i);
    global2 = array<vec3<i32>, 21>();
    var var_3 = var_1.a;
    return func_3(select(select(!vec3<bool>(var_3.a.x, false, var_1.a.a.x), vec3<bool>(func_4(Struct_3(Struct_2(Struct_1(var_1.d.a), var_1.b, var_1.c, Struct_1(var_3.a)), var_1.a), global1[_wgslsmith_index_u32(0u, 29u)], Struct_4(Struct_1(vec2<bool>(false, arg_0)))).a.x, false, true), func_2()), func_2(), vec3<bool>(var_3.a.x, func_4(func_3(vec3<bool>(false, var_3.a.x, arg_0), Struct_4(Struct_1(var_1.a.a))), var_1.a, Struct_4(Struct_1(var_1.d.a))).a.x, arg_0)), Struct_4(Struct_1(!var_3.a))).b;
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = func_3(!select(func_2(), select(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(false, false, arg_0.a.x), vec3<bool>(true, true, arg_0.a.x)), vec3<bool>(arg_0.a.x, arg_0.a.x, false)), vec3<bool>(!arg_0.a.x, all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), false)), Struct_4(Struct_1(vec2<bool>(true, true)))).a;
    global1 = array<Struct_1, 29>();
    let var_1 = !arg_0.a.x;
    var var_2 = arg_0;
    let var_3 = Struct_4(var_0.a);
    return !vec4<bool>(var_0.a.a.x, !(!any(vec2<bool>(var_1, true))), all(select(vec4<bool>(var_3.a.a.x, false, var_2.a.x, false), !vec4<bool>(arg_0.a.x, var_0.d.a.x, false, false), select(vec4<bool>(var_3.a.a.x, false, false, arg_0.a.x), vec4<bool>(var_1, true, arg_0.a.x, var_0.d.a.x), vec4<bool>(var_0.d.a.x, var_3.a.a.x, true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = select(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(38469u, u_input.a, u_input.a, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 36333u, u_input.a, u_input.a), vec4<u32>(49812u, 22117u, 1u, u_input.a))), vec4<u32>(abs(abs(1u)), ~select(u_input.a, u_input.a, var_0), u_input.a, ~1u), func_5(func_1(true))) >> (~vec4<u32>(abs(_wgslsmith_sub_u32(4294967295u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(59365u, u_input.a, u_input.a, 43309u) ^ vec4<u32>(u_input.a, u_input.a, 50971u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 71848u)), 0u, u_input.a) % vec4<u32>(32u));
    var var_2 = func_3(!(!vec3<bool>(true, var_0, var_0)), Struct_4(Struct_1(!vec2<bool>(var_0, false)))).a;
    var_2 = func_3(vec3<bool>(func_4(func_3(select(vec3<bool>(true, var_2.a.a.x, var_2.a.a.x), vec3<bool>(false, false, false), true), Struct_4(Struct_1(vec2<bool>(var_0, var_2.d.a.x)))), Struct_1(vec2<bool>(false, true)), Struct_4(var_2.d)).a.x, all(vec3<bool>(true, true, true)), var_0 && true), Struct_4(func_4(func_3(!vec3<bool>(true, var_0, false), Struct_4(Struct_1(var_2.a.a))), global1[_wgslsmith_index_u32(var_2.c.x, 29u)], Struct_4(global1[_wgslsmith_index_u32(var_2.c.x | 34140u, 29u)])))).a;
    var_2 = Struct_2(var_2.a, var_2.b, min(vec2<u32>(min(4294967295u, u_input.a), _wgslsmith_div_u32(7081u, _wgslsmith_add_u32(u_input.a, 0u))), ~var_1.xw), var_2.a);
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-230f, -303f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + 419f) * _wgslsmith_div_f32(var_2.b, 504f)), _wgslsmith_f_op_f32(floor(-428f)), var_2.b > 2445f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f * 588f)))));
}

