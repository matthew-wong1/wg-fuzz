struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<i32, 9> = array<i32, 9>(i32(-2147483648), 2147483647i, -12962i, 51164i, 14761i, 0i, -27820i, 2147483647i, 15570i);

var<private> global3: array<vec2<i32>, 18>;

var<private> global4: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(30035u, 0u, 1u), vec3<u32>(0u, 0u, 27731u), vec3<u32>(32647u, 78547u, 0u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -194f) + _wgslsmith_f_op_f32(f32(-1f) * -1013f)), global1.a.b.a)));
    global0 = global1.a.b;
    let var_0 = global1.a.d;
    let var_1 = -arg_1;
    var var_2 = false;
    return vec4<bool>(global1.a.a, global1.a.a, all(!select(vec4<bool>(global1.a.a, true, global1.a.a, true), vec4<bool>(global1.a.a, true, global1.a.a, global1.a.a), vec4<bool>(global1.a.a, global1.a.a, true, true))) | true, var_0.x != 890u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = select(select(select(!vec4<bool>(arg_1.a.a, false, arg_1.a.a, arg_1.a.a), select(select(vec4<bool>(false, true, false, global1.a.a), vec4<bool>(global1.a.a, true, global1.a.a, arg_1.a.a), vec4<bool>(arg_1.a.a, global1.a.a, global1.a.a, true)), select(vec4<bool>(true, global1.a.a, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, arg_1.a.a, false)), !global1.a.a), false), !(!select(vec4<bool>(arg_1.a.a, global1.a.a, arg_1.a.a, false), vec4<bool>(global1.a.a, false, false, arg_1.a.a), vec4<bool>(arg_1.a.a, true, true, false))), !select(!vec4<bool>(false, false, global1.a.a, arg_1.a.a), !vec4<bool>(true, arg_1.a.a, global1.a.a, true), true | global1.a.a)), !select(vec4<bool>(false, true, global1.a.a || true, true), !vec4<bool>(true, arg_1.a.a, arg_1.a.a, global1.a.a), select(vec4<bool>(true, arg_1.a.a, true, false), func_3(arg_2, u_input.c.x, arg_3), false)), 1i <= u_input.d.x);
    let var_1 = countOneBits(~vec2<u32>(~select(global1.a.d.x, 4294967295u, true), ~_wgslsmith_mod_u32(arg_1.a.c, u_input.b)));
    var var_2 = global1.a;
    global1 = Struct_3(global1.a);
    global1 = Struct_3(arg_1.a);
    return arg_1.a.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(452f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_div_f32(arg_1, -278f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.a - -1083f))))));
    global0 = arg_3;
    global3 = array<vec2<i32>, 18>();
    var var_1 = 25974i;
    var_1 = global2[_wgslsmith_index_u32(global1.a.c, 9u)];
    return Struct_2(30176i <= (_wgslsmith_sub_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), countOneBits(-2147483647i)) ^ _wgslsmith_sub_i32(max(-1i, global2[_wgslsmith_index_u32(u_input.a, 9u)]), ~23184i)), global1.a.b, (abs(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], global4[_wgslsmith_index_u32(u_input.b, 3u)])) & 1u) >> (~(~4294967295u >> (min(global1.a.d.x, global1.a.d.x) % 32u)) % 32u), firstTrailingBit(min(_wgslsmith_sub_vec2_u32(vec2<u32>(43754u, global1.a.d.x), ~global1.a.d), abs(max(vec2<u32>(4294967295u, 57116u), global1.a.d)))));
}

fn func_1() -> Struct_3 {
    global1 = Struct_3(func_4(select(!(!vec3<bool>(true, global1.a.a, global1.a.a)), select(!vec3<bool>(global1.a.a, global1.a.a, global1.a.a), vec3<bool>(false, true, global1.a.a), select(vec3<bool>(false, false, global1.a.a), vec3<bool>(true, true, global1.a.a), true)), vec3<bool>(!global1.a.a, global1.a.a, false)), _wgslsmith_f_op_f32(f32(-1f) * -1706f), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.a) + _wgslsmith_div_f32(global0.a, global0.a)), _wgslsmith_f_op_f32(step(global1.a.b.a, _wgslsmith_f_op_f32(f32(-1f) * -318f))), 494f), func_2(~vec4<u32>(u_input.b, u_input.b, 138189u, 46235u) << (vec4<u32>(global1.a.d.x, u_input.a, 89545u, global1.a.d.x) % vec4<u32>(32u)), Struct_3(Struct_2(true, Struct_1(global1.a.b.a), global1.a.d.x, vec2<u32>(1u, 4294967295u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.a, -746f, global0.a, global0.a)), vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.b.a, global1.a.b.a)), _wgslsmith_div_f32(1000f, -1551f), global0.a, _wgslsmith_f_op_f32(global1.a.b.a * 807f)))));
    let var_0 = func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), false), !global1.a.a), vec3<bool>(true, u_input.c.x <= -1i, all(vec4<bool>(global1.a.a, false, global1.a.a, false))), all(vec2<bool>(global1.a.a, global1.a.a && global1.a.a))), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-537f, global1.a.b.a, global1.a.b.a, -1175f), vec4<f32>(-318f, global0.a, global1.a.b.a, -1300f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global1.a.b.a, 1977f, global1.a.b.a) + vec4<f32>(global1.a.b.a, global1.a.b.a, 1000f, 371f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, 586f, global0.a, -2059f)))))), global1.a.b);
    var var_1 = !func_3(vec4<f32>(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(f32(-1f) * -866f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.a, 413f), _wgslsmith_f_op_f32(select(global0.a, 909f, global1.a.a)))), _wgslsmith_f_op_f32(584f - global0.a), -260f), -6969i & (countOneBits(-42722i) & -global2[_wgslsmith_index_u32(34412u, 9u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.a, global1.a.b.a)), global1.a.b.a, _wgslsmith_f_op_f32(446f * global0.a), _wgslsmith_f_op_f32(-global0.a)))).zz;
    global2 = array<i32, 9>();
    let var_2 = Struct_3(global1.a);
    return Struct_3(Struct_2(var_2.a.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.a) * global1.a.b.a)), 37821u, ~vec2<u32>(4294967295u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec2<bool>(all(vec2<bool>(func_1().a.a, true)) & func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, -1000f, var_0.a.b.a, var_0.a.b.a)), -firstLeadingBit(1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(415f, -1281f, global1.a.b.a, global1.a.b.a))))).x, false);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.b.a)))), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.a.d.x, var_0.a.d.x), u_input.b, global1.a.c, ~0u), min(countOneBits(vec4<u32>(global1.a.d.x, u_input.a, 4294967295u, 7671u)), countOneBits(vec4<u32>(global1.a.c, 0u, global1.a.c, u_input.a)))), func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.a, global0.a, global0.a, 1250f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.b.a, var_0.a.b.a, 2377f, 738f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2276f, global0.a, var_0.a.b.a, var_0.a.b.a) * vec4<f32>(665f, 212f, global1.a.b.a, -1056f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.b.a, var_0.a.b.a, -1735f, -1451f))))).a, _wgslsmith_f_op_f32(1516f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.b.a + -888f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.a) + -1516f))));
    global3 = array<vec2<i32>, 18>();
    let var_3 = vec4<u32>(var_0.a.d.x << (global1.a.d.x % 32u), ~(global1.a.d.x ^ _wgslsmith_mod_u32(12204u, ~0u)), 5207u, 4294967295u);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xz)));
}

