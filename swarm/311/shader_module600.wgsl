struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(15983u, 0u, 0u, 7046u, 15940u, 70123u, 0u, 13796u, 2901u, 1u, 4224u, 22973u, 0u, 60321u, 32954u, 4294967295u, 17997u, 12606u, 1u, 22063u, 4294967295u, 4294967295u, 0u);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(-29175i, 77450i, 13104i), 4294967295u), Struct_1(vec3<i32>(-7637i, 2147483647i, i32(-2147483648)), 34801u), Struct_1(vec3<i32>(29559i, 31837i, 4114i), 1u), Struct_1(vec3<i32>(-2791i, 7364i, i32(-2147483648)), 0u), Struct_1(vec3<i32>(-9848i, 6897i, -1i), 10386u), Struct_1(vec3<i32>(i32(-2147483648), 48825i, 2147483647i), 4294967295u), Struct_1(vec3<i32>(-1412i, i32(-2147483648), -31964i), 0u), Struct_1(vec3<i32>(2147483647i, -1i, 2699i), 0u), Struct_1(vec3<i32>(29893i, -49627i, 50125i), 4294967295u), Struct_1(vec3<i32>(21193i, 1i, i32(-2147483648)), 1268u), Struct_1(vec3<i32>(-3373i, -1i, 0i), 4033u), Struct_1(vec3<i32>(12597i, -540i, 56361i), 45390u), Struct_1(vec3<i32>(2147483647i, 18189i, i32(-2147483648)), 0u), Struct_1(vec3<i32>(8062i, 2147483647i, 17132i), 4294967295u), Struct_1(vec3<i32>(1i, 2147483647i, 16397i), 0u), Struct_1(vec3<i32>(-8669i, -10331i, 15640i), 21851u), Struct_1(vec3<i32>(13239i, 13326i, 9785i), 4294967295u), Struct_1(vec3<i32>(1i, -15855i, -19540i), 0u), Struct_1(vec3<i32>(-1i, -33195i, -40301i), 18573u), Struct_1(vec3<i32>(i32(-2147483648), 10747i, -4308i), 0u), Struct_1(vec3<i32>(25082i, 56376i, 0i), 5423u), Struct_1(vec3<i32>(-7786i, -44508i, 2681i), 4294967295u), Struct_1(vec3<i32>(-19599i, 38165i, 2147483647i), 0u), Struct_1(vec3<i32>(-34004i, 0i, -1i), 69315u), Struct_1(vec3<i32>(9883i, 3776i, i32(-2147483648)), 0u), Struct_1(vec3<i32>(-6549i, -13185i, -8492i), 4294967295u), Struct_1(vec3<i32>(2942i, 0i, 32090i), 14635u), Struct_1(vec3<i32>(-9039i, 18018i, i32(-2147483648)), 0u), Struct_1(vec3<i32>(0i, 2147483647i, -1i), 17252u), Struct_1(vec3<i32>(-51518i, 1i, 19568i), 52033u), Struct_1(vec3<i32>(22780i, 13390i, 2147483647i), 34810u));

var<private> global2: f32 = 444f;

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(32849u, 4294967295u, 1u, 17443u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 20165u, 0u, 61239u), vec4<u32>(66941u, 1u, 0u, 1u), vec4<u32>(66783u, 4294967295u, 1u, 9168u), vec4<u32>(15159u, 4294967295u, 48573u, 21838u), vec4<u32>(0u, 62201u, 4294967295u, 0u), vec4<u32>(12970u, 62536u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 16108u, 22822u), vec4<u32>(4294967295u, 31811u, 0u, 1u), vec4<u32>(128593u, 20889u, 4294967295u, 28589u), vec4<u32>(1u, 4294967295u, 78701u, 21797u), vec4<u32>(38732u, 22031u, 0u, 22461u), vec4<u32>(0u, 0u, 86844u, 40020u), vec4<u32>(35033u, 1u, 4294967295u, 29465u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u));

var<private> global4: array<f32, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    return u_input.c;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<i32>(-u_input.c, _wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(arg_0, arg_0)), -(-2147483647i ^ u_input.c)), ~(~u_input.b)), true, !(!vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)), true)));
    global1 = array<Struct_1, 31>();
    global3 = array<vec4<u32>, 18>();
    var var_1 = ~(~reverseBits(vec2<u32>(u_input.b, 1u)) << (_wgslsmith_div_vec2_u32(abs(~vec2<u32>(54395u, var_0.a.b)), firstLeadingBit(abs(vec2<u32>(0u, 0u)))) % vec2<u32>(32u)));
    let var_2 = vec4<bool>(true, true, true, all(select(!vec4<bool>(var_0.c.x, var_0.b, false, var_0.b), !vec4<bool>(var_0.c.x, var_0.b, false, var_0.c.x), vec4<bool>(var_0.b, !var_0.b, true, var_0.b))));
    return 1u;
}

fn func_2() -> u32 {
    global0 = array<u32, 23>();
    let var_0 = u_input.c;
    let var_1 = true;
    var var_2 = -firstTrailingBit(firstLeadingBit(~(~vec4<i32>(var_0, 6507i, u_input.c, var_0))));
    var var_3 = Struct_2(Struct_1(var_2.xzw, u_input.b), var_1, vec3<bool>(var_1, var_1, !all(!vec3<bool>(false, var_1, false))));
    return global0[_wgslsmith_index_u32(~25794u >> (_wgslsmith_sub_u32(func_3(max(-1i, abs(-2147483647i))), 34470u) % 32u), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-abs(_wgslsmith_mult_i32(~(-27186i), u_input.c >> (global0[_wgslsmith_index_u32(4294967295u, 23u)] % 32u))));
    let var_1 = ~vec4<i32>(select(-37341i, var_0 & -19388i, true) | (i32(-1i) * -15750i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0, 1i), vec3<i32>(9685i, -60176i, -2147483647i)) | func_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), -2147483647i, var_0);
    global1 = array<Struct_1, 31>();
    global2 = global4[_wgslsmith_index_u32(~func_2(), 23u)];
    let var_2 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, false, true))), all(vec4<bool>(false, false, true, false)) || (global0[_wgslsmith_index_u32(1u, 23u)] <= u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~15104u, 35493u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 23u)]))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(1u, 23u)], 136f, global4[_wgslsmith_index_u32(u_input.b, 23u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], -1553f)), true))))), global4[_wgslsmith_index_u32(~4294967295u | global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(15731u, 59657u), 23u)], 23u)], select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], ~(~4294967295u)), vec2<u32>(u_input.b, ~0u), var_2));
}

