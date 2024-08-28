struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: array<bool, 26>;

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(16041u, 1u, 24815u), vec3<u32>(0u, 22927u, 18683u), vec3<u32>(73870u, 39070u, 282u), vec3<u32>(1304u, 18012u, 40225u), vec3<u32>(12417u, 5617u, 122454u), vec3<u32>(36497u, 49291u, 1u), vec3<u32>(28726u, 45821u, 46250u));

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(19464u, 28457u), vec2<u32>(0u, 13903u), vec2<u32>(4294967295u, 0u), vec2<u32>(22742u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(104716u, 4294967295u), vec2<u32>(71569u, 34060u), vec2<u32>(10133u, 60596u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 54439u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = Struct_1(arg_0.a, arg_1.x);
    global2 = array<vec2<u32>, 10>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    return var_1;
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<u32>, 10>();
    global1 = array<vec3<u32>, 7>();
    let var_0 = all(!(!select(!vec2<bool>(true, global0[_wgslsmith_index_u32(54575u, 26u)]), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]))));
    let var_1 = Struct_1(-1069f, true);
    let var_2 = reverseBits(u_input.a.x);
    return func_2(Struct_1(var_1.a, any(select(!vec2<bool>(var_0, var_1.b), select(vec2<bool>(var_1.b, var_0), vec2<bool>(false, false), vec2<bool>(var_1.b, false)), vec2<bool>(var_1.b, false)))), vec3<bool>(true, true, true));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = false;
    let var_1 = !var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1634f + arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -288f))))) - _wgslsmith_f_op_f32(min(arg_0.a, 1812f)));
    global1 = array<vec3<u32>, 7>();
    var var_3 = ~_wgslsmith_clamp_u32(49528u, 60427u, ~(~(~28355u)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)), -1349f)) * func_2(func_1(), select(select(vec3<bool>(global0[_wgslsmith_index_u32(55968u, 26u)], false, arg_0.b), vec3<bool>(true, var_0, var_1), false), vec3<bool>(false, false, false), arg_0.b)).a), true != var_1);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(arg_3.a - -338f))), func_3(func_2(func_1(), vec3<bool>(true, true, true)), -30822i).b), (_wgslsmith_mult_i32(1i, min(u_input.a.x, u_input.b)) << (1u % 32u)) | u_input.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-func_1().a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().a * _wgslsmith_f_op_f32(step(arg_2.a, var_0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1852f + arg_0.a)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1039f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + var_1.x)), arg_3.b);
    global2 = array<vec2<u32>, 10>();
    global1 = array<vec3<u32>, 7>();
    return select(~u_input.a.x <= -60982i, true, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(true | global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(38961u, 26u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true), true), vec2<bool>(true, true))) && select(global0[_wgslsmith_index_u32(~8230u, 26u)], !(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(6204u, 5320u), 26u)] && true), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(121f, -578f))))), func_4(func_3(func_1(), u_input.a.x), func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -899f), true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], false)), Struct_1(-392f, func_1().b), Struct_1(-126f, global0[_wgslsmith_index_u32(~4294967295u, 26u)])));
    let var_2 = select(vec2<bool>(!(11393i != -u_input.a.x), var_0), select(vec2<bool>(func_3(func_2(Struct_1(-249f, true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 26u)], false)), _wgslsmith_clamp_i32(-7956i, u_input.b, u_input.b)).b, -u_input.a.x <= u_input.a.x), vec2<bool>(select(false, var_1.b, var_1.a <= 749f), !(var_1.b && false)), false), vec2<bool>(true, true));
    var var_3 = var_1;
    var var_4 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u << (select(10242u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 26u)]) % 32u), ~reverseBits(9602u)), 0u, 4294967295u), 1u, _wgslsmith_div_u32(reverseBits(min(~70522u, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(45579u, 7u)]))), reverseBits(13121u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

