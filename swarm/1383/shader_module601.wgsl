struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-1416f, -596f), vec2<f32>(388f, -500f), vec2<f32>(-191f, 569f), vec2<f32>(916f, -509f), vec2<f32>(-535f, 946f), vec2<f32>(2157f, -845f), vec2<f32>(-914f, -1294f), vec2<f32>(679f, 244f), vec2<f32>(319f, 1326f), vec2<f32>(-795f, 1014f), vec2<f32>(1014f, -308f), vec2<f32>(496f, -1688f), vec2<f32>(-728f, 1049f), vec2<f32>(1000f, -542f), vec2<f32>(1098f, 359f));

var<private> global1: Struct_3 = Struct_3(Struct_2(-16256i, Struct_1(vec2<u32>(1u, 1u)), vec2<bool>(true, false), -140f), vec2<u32>(24962u, 4294967295u), Struct_1(vec2<u32>(32444u, 4294967295u)));

var<private> global2: array<vec4<u32>, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    global1 = Struct_3(Struct_2(_wgslsmith_add_i32(global1.a.a, 41928i ^ min(global1.a.a, 1i)), global1.c, select(vec2<bool>(!global1.a.c.x, -5032i == global1.a.a), global1.a.c, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.d * global1.a.d))))), min(~vec2<u32>(~6046u, reverseBits(4294967295u)), arg_0), Struct_1(abs(u_input.b)));
    var var_0 = Struct_3(global1.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(global1.a.b.a.x, 9388u), u_input.b), global1.c);
    var var_1 = vec3<u32>(54522u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~80013u, 1u << (arg_0.x % 32u), 1u), ~vec3<u32>(global1.b.x, u_input.b.x, 34919u)), vec3<u32>(~(~arg_0.x), ~_wgslsmith_mult_u32(arg_1.a.x, 4294967295u), 63003u)), _wgslsmith_dot_vec2_u32(abs(u_input.b), ~arg_0));
    var var_2 = 8026u;
    var_2 = 4294967295u;
    return -2021f;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<bool> {
    global1 = Struct_3(Struct_2(-(~2147483647i), arg_3, !vec2<bool>(!arg_2.x, any(vec4<bool>(arg_2.x, true, arg_2.x, true))), _wgslsmith_f_op_f32(func_3(~_wgslsmith_div_vec2_u32(vec2<u32>(19066u, arg_3.a.x), vec2<u32>(arg_3.a.x, 105998u)), Struct_1(~global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))))), ~reverseBits(~firstLeadingBit(arg_3.a)), Struct_1(vec2<u32>(arg_3.a.x, min(0u, 1u))));
    let var_0 = arg_0.xx;
    let var_1 = arg_2;
    global1 = Struct_3(global1.a, ~max(select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.c.a.x, 52968u), global1.a.b.a), global1.c.a, true), u_input.b), arg_3);
    var var_2 = Struct_3(global1.a, ~countOneBits(~(~arg_3.a)), Struct_1(max(vec2<u32>(~global1.c.a.x, ~0u), ~(~vec2<u32>(arg_3.a.x, global1.c.a.x)))));
    return select(!vec3<bool>(all(vec2<bool>(var_1.x, var_1.x)), global1.a.c.x, false), arg_2, var_1);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = select(select(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, true)), arg_0.c.x), global1.a.c.x && true, global1.a.c.x);
    var var_1 = Struct_4(u_input.d, !((countOneBits(arg_0.a) >= _wgslsmith_add_i32(2147483647i, global1.a.a)) & arg_0.c.x), ~vec4<u32>(~14418u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.x, u_input.b.x, 135748u), arg_1.zzw), u_input.b.x | arg_3.a.x, ~global1.a.b.a.x) ^ _wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, arg_0.b.a.x), 31u)], max(global2[_wgslsmith_index_u32(12354u, 31u)] >> (arg_1 % vec4<u32>(32u)), arg_1)), func_2(vec3<f32>(arg_0.d, 2459f, _wgslsmith_f_op_f32(ceil(global1.a.d))), -40258i, select(vec3<bool>(false, true, !global1.a.c.x), !select(vec3<bool>(arg_0.c.x, true, false), vec3<bool>(true, true, true), false), false), arg_0.b), Struct_1(_wgslsmith_add_vec2_u32(arg_3.a, _wgslsmith_mult_vec2_u32(vec2<u32>(41663u, 0u), arg_0.b.a))));
    let var_2 = 4294967295u;
    global2 = array<vec4<u32>, 31>();
    var var_3 = arg_0.a == u_input.a.x;
    return var_1.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = global1.a.d;
    var var_1 = Struct_2(1i, Struct_1(vec2<u32>(max(0u, 12509u) & global1.a.b.a.x, firstLeadingBit(global1.b.x >> (7607u % 32u)))), arg_1.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))) - -624f) + arg_0.x));
    let var_2 = global1.a;
    global1 = Struct_3(global1.a, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(46710u, 11164u)) & countOneBits(vec2<u32>(global1.c.a.x, global1.b.x)), ~vec2<u32>(u_input.b.x, u_input.b.x)), var_1.b.a.x), Struct_1(vec2<u32>(var_1.b.a.x, _wgslsmith_div_u32(~var_2.b.a.x, 0u))));
    let var_3 = global1.c;
    return Struct_3(global1.a, _wgslsmith_add_vec2_u32(abs(vec2<u32>(select(9785u, 4294967295u, var_2.c.x), var_3.a.x)), ~(~(~vec2<u32>(135971u, 79668u)))), Struct_1(countOneBits(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(step(global1.a.d, global1.a.d)), global1.a.c.x)))), global1.a.d), !(!select(select(vec3<bool>(global1.a.c.x, true, global1.a.c.x), vec3<bool>(global1.a.c.x, false, false), vec3<bool>(false, global1.a.c.x, false)), func_1(Struct_2(global1.a.a, Struct_1(u_input.b), vec2<bool>(false, false), -2005f), vec4<u32>(54183u, global1.b.x, global1.a.b.a.x, 4294967295u), global1.c, global1.c), func_2(vec3<f32>(-476f, global1.a.d, global1.a.d), 1i, vec3<bool>(true, true, true), global1.c).x)));
    global2 = array<vec4<u32>, 31>();
    let var_0 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-func_4(global0[_wgslsmith_index_u32(54051u, 15u)], vec3<bool>(false, global1.a.c.x, global1.a.c.x)).a.d), 383f), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.b | u_input.b, global1.a.b, _wgslsmith_f_op_f32(-global1.a.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.d))))), select(!vec3<bool>(global1.a.c.x, global1.a.c.x, true), select(!(!vec3<bool>(global1.a.c.x, false, global1.a.c.x)), func_1(func_4(vec2<f32>(global1.a.d, global1.a.d), vec3<bool>(global1.a.c.x, false, global1.a.c.x)).a, ~vec4<u32>(u_input.b.x, 4294967295u, 1u, global1.c.a.x), func_4(global0[_wgslsmith_index_u32(global1.c.a.x, 15u)], vec3<bool>(false, true, false)).c, Struct_1(global1.a.b.a)), vec3<bool>(global1.a.c.x, true, !global1.a.c.x)), true)).a;
    global2 = array<vec4<u32>, 31>();
    global0 = array<vec2<f32>, 15>();
    var var_1 = false & var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(global1.a.a, u_input.d.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a, u_input.a.x, 1i), u_input.e.yxz), global1.a.a));
}

