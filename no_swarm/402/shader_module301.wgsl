struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-251f, 1601f), vec2<f32>(-1875f, -1120f), vec2<f32>(-723f, -1219f), vec2<f32>(-776f, -630f), vec2<f32>(-1565f, 159f));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(1544f, -298f), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 18162u), vec2<f32>(-1386f, -181f), vec2<bool>(true, false)), Struct_1(vec2<u32>(16193u, 17510u), vec2<f32>(-2045f, -252f), vec2<bool>(false, true)), Struct_1(vec2<u32>(51063u, 0u), vec2<f32>(948f, -113f), vec2<bool>(true, true)), Struct_1(vec2<u32>(18398u, 42214u), vec2<f32>(662f, 1983f), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 21218u), vec2<f32>(901f, -438f), vec2<bool>(true, true)), Struct_1(vec2<u32>(14388u, 5243u), vec2<f32>(-767f, -1022f), vec2<bool>(true, true)), Struct_1(vec2<u32>(1u, 11112u), vec2<f32>(-848f, 505f), vec2<bool>(false, false)), Struct_1(vec2<u32>(1796u, 1525u), vec2<f32>(1000f, 1000f), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 1u), vec2<f32>(-504f, -193f), vec2<bool>(false, false)), Struct_1(vec2<u32>(22421u, 0u), vec2<f32>(-829f, -550f), vec2<bool>(true, false)), Struct_1(vec2<u32>(25152u, 1u), vec2<f32>(-1533f, -1000f), vec2<bool>(false, false)), Struct_1(vec2<u32>(26811u, 1u), vec2<f32>(634f, 1000f), vec2<bool>(false, false)), Struct_1(vec2<u32>(2013u, 1u), vec2<f32>(-935f, 485f), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 80119u), vec2<f32>(-2216f, 797f), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 81953u), vec2<f32>(803f, -560f), vec2<bool>(false, false)), Struct_1(vec2<u32>(52992u, 28152u), vec2<f32>(363f, -830f), vec2<bool>(false, false)), Struct_1(vec2<u32>(26099u, 10743u), vec2<f32>(-962f, 873f), vec2<bool>(false, false)), Struct_1(vec2<u32>(30253u, 0u), vec2<f32>(846f, -1000f), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 30674u), vec2<f32>(1815f, -113f), vec2<bool>(false, false)), Struct_1(vec2<u32>(11791u, 0u), vec2<f32>(223f, -1509f), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-493f, -1455f), vec2<bool>(true, false)), Struct_1(vec2<u32>(76766u, 4294967295u), vec2<f32>(724f, -1000f), vec2<bool>(true, true)), Struct_1(vec2<u32>(114135u, 36883u), vec2<f32>(615f, 952f), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 0u), vec2<f32>(564f, 1243f), vec2<bool>(false, true)), Struct_1(vec2<u32>(53154u, 29143u), vec2<f32>(864f, -747f), vec2<bool>(false, true)), Struct_1(vec2<u32>(54673u, 117415u), vec2<f32>(2897f, -262f), vec2<bool>(false, true)), Struct_1(vec2<u32>(78827u, 76688u), vec2<f32>(1000f, 1265f), vec2<bool>(false, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = !vec3<bool>(all(select(vec3<bool>(arg_0.c.x, false, true), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.c.x, false, true), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), any(vec3<bool>(arg_0.c.x, false, arg_0.c.x)))), false, true);
    global1 = array<Struct_1, 28>();
    let var_1 = Struct_1(arg_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.x * -520f))), 1252f), arg_0.b), select(arg_0.c, var_0.zx, vec2<bool>(arg_0.c.x, !arg_0.c.x | (10813u != arg_0.a.x))));
    global1 = array<Struct_1, 28>();
    return select(vec2<bool>(false, all(!var_1.c)), !var_0.xz, any(!select(vec3<bool>(arg_0.c.x, var_0.x, arg_0.c.x), vec3<bool>(true, false, var_1.c.x), var_1.c.x && false)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = vec4<bool>(!(!arg_0.x), all(!vec2<bool>(all(vec3<bool>(arg_0.x, arg_0.x, false)), false)), false, all(!vec2<bool>(true, !arg_0.x)));
    let var_1 = vec3<bool>(false, var_0.x, any(arg_0));
    let var_2 = vec4<u32>(countOneBits(~(~4294967295u >> (0u % 32u))), 8968u, 39260u, 1u);
    global0 = array<vec2<f32>, 5>();
    var var_3 = 1u;
    return false && var_0.x;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = u_input.a.yx;
    var var_1 = Struct_1(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -443f)), func_2(Struct_1(max(~arg_0.a, arg_0.a << (vec2<u32>(arg_0.a.x, 1549u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(28587u, 5u)]))), vec2<bool>(all(vec4<bool>(arg_0.c.x, false, true, false)), arg_0.c.x && true))));
    var var_2 = ~_wgslsmith_add_i32(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, u_input.a.x, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 51926i, 2147483647i, 1i), vec4<i32>(-16330i, 1i, -1i, u_input.a.x), vec4<i32>(var_0.x, u_input.a.x, 23301i, u_input.a.x)))), var_0.x);
    return any(vec2<bool>(var_1.c.x, any(vec2<bool>(func_3(arg_0.c), var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec2<u32>(abs(42248u), 1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), abs(11632u), ~29501u)), 5u)], select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_1(global1[_wgslsmith_index_u32(20274u, 28u)]), true))));
    global1 = array<Struct_1, 28>();
    let var_1 = vec3<bool>(true || (true | func_2(var_0).x), func_3(func_2(global1[_wgslsmith_index_u32(select(var_0.a.x, 44645u, any(vec3<bool>(false, false, true))), 28u)])), any(var_0.c) || any(select(select(vec4<bool>(var_0.c.x, var_0.c.x, false, true), vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), var_0.c.x), select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(false, var_0.c.x, true, var_0.c.x), vec4<bool>(false, false, true, true)), vec4<bool>(var_0.c.x, true, true, false))));
    let var_2 = true;
    global0 = array<vec2<f32>, 5>();
    let var_3 = u_input.a;
    var var_4 = select(!var_1, select(!(!(!var_1)), select(select(!var_1, var_1, var_1), var_1, var_1), select(vec3<bool>(var_2 && false, false || var_1.x, func_2(global1[_wgslsmith_index_u32(var_0.a.x, 28u)]).x), vec3<bool>(!var_0.c.x, var_0.a.x < 1u, false), true)), var_2);
    var var_5 = select(select(!(!select(vec4<bool>(var_2, var_4.x, false, var_0.c.x), vec4<bool>(false, true, var_0.c.x, false), vec4<bool>(var_2, false, var_1.x, var_4.x))), select(select(!vec4<bool>(false, false, var_4.x, var_2), select(vec4<bool>(var_4.x, true, var_1.x, var_0.c.x), vec4<bool>(false, false, var_0.c.x, var_2), var_0.c.x), vec4<bool>(false, true, var_2, false)), !vec4<bool>(var_0.c.x, var_1.x, false, var_2), select(vec4<bool>(true, var_1.x, true, true), !vec4<bool>(var_4.x, var_1.x, true, true), !vec4<bool>(var_1.x, var_1.x, var_0.c.x, var_1.x))), !vec4<bool>(!var_2, var_0.c.x, false, false)), !(!select(vec4<bool>(var_2, var_2, var_1.x, var_4.x), vec4<bool>(true, false, var_4.x, var_4.x), true)), !(!vec4<bool>(true, var_2, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, var_0.a);
}

