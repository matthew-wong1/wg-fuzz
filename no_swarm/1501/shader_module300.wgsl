struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(2147483647i, 1i, 4294967295u);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-32597i, 0i, 1u), Struct_1(i32(-2147483648), -1i, 0u), Struct_1(0i, 91610i, 25138u), Struct_1(-26023i, 1i, 23644u), Struct_1(-42314i, 16144i, 4294967295u), Struct_1(37304i, 2147483647i, 515u), Struct_1(1i, 2147483647i, 0u), Struct_1(2147483647i, 1i, 4294967295u), Struct_1(-21094i, 1i, 1u), Struct_1(11628i, 2147483647i, 46733u), Struct_1(12734i, -11233i, 5306u), Struct_1(i32(-2147483648), -12157i, 4294967295u), Struct_1(54283i, 11182i, 4294967295u), Struct_1(14621i, 3292i, 0u), Struct_1(-7681i, i32(-2147483648), 4294967295u), Struct_1(-1i, -49831i, 1u), Struct_1(1i, -5140i, 7672u), Struct_1(-1i, 14722i, 4294967295u), Struct_1(6671i, -1i, 1u), Struct_1(-31438i, 36327i, 1u), Struct_1(52860i, 59365i, 4294967295u), Struct_1(i32(-2147483648), -24402i, 1u), Struct_1(-51448i, -1i, 0u), Struct_1(-4795i, 7612i, 29288u), Struct_1(-21743i, -1i, 0u), Struct_1(0i, -72022i, 4294967295u), Struct_1(0i, 16033i, 11535u), Struct_1(-1i, 7372i, 74586u), Struct_1(16619i, 1i, 116072u));

var<private> global3: array<vec3<u32>, 9>;

var<private> global4: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<i32>(i32(-2147483648), -1i, -61799i)), Struct_2(vec3<i32>(-24789i, 21237i, -40587i)), Struct_2(vec3<i32>(-1i, -1i, -1i)), Struct_2(vec3<i32>(31637i, -27686i, 27297i)), Struct_2(vec3<i32>(-1i, i32(-2147483648), -1i)), Struct_2(vec3<i32>(31673i, i32(-2147483648), 0i)), Struct_2(vec3<i32>(-11512i, 2147483647i, 0i)), Struct_2(vec3<i32>(2147483647i, 2147483647i, -81675i)), Struct_2(vec3<i32>(2147483647i, -1i, 62146i)), Struct_2(vec3<i32>(2147483647i, -16324i, i32(-2147483648))), Struct_2(vec3<i32>(-57140i, 2575i, 13298i)), Struct_2(vec3<i32>(2147483647i, -1i, 0i)), Struct_2(vec3<i32>(29645i, -39959i, 30517i)), Struct_2(vec3<i32>(0i, 59002i, -24180i)), Struct_2(vec3<i32>(-28935i, i32(-2147483648), -61797i)), Struct_2(vec3<i32>(-9627i, 2147483647i, i32(-2147483648))), Struct_2(vec3<i32>(-14501i, 0i, -7861i)), Struct_2(vec3<i32>(47841i, 58230i, 56362i)), Struct_2(vec3<i32>(-4282i, 32723i, 0i)), Struct_2(vec3<i32>(51695i, 1i, 1i)), Struct_2(vec3<i32>(41409i, -53065i, 2147483647i)), Struct_2(vec3<i32>(-2934i, 0i, -1i)), Struct_2(vec3<i32>(2147483647i, -65809i, 0i)), Struct_2(vec3<i32>(73037i, -7708i, -1i)), Struct_2(vec3<i32>(4752i, 0i, -8167i)), Struct_2(vec3<i32>(2147483647i, 28789i, -40793i)), Struct_2(vec3<i32>(-5304i, -35085i, i32(-2147483648))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    global0 = -1199f;
    global2 = array<Struct_1, 29>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1229f)) - _wgslsmith_f_op_f32(-523f + -1255f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(962f, 994f)))) + _wgslsmith_f_op_f32(ceil(-1072f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1885f + 1458f)) - -770f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1037f, -1000f))), vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(458f, -623f))), vec2<f32>(-250f, 724f))))));
    return global2[_wgslsmith_index_u32(0u, 29u)];
}

fn func_3(arg_0: u32, arg_1: u32) -> Struct_1 {
    global2 = array<Struct_1, 29>();
    let var_0 = 710i;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1391f)) * -292f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-558f + -616f))), 249f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-767f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(f32(-1f) * -413f)), (20223u == global1.c) | all(vec4<bool>(false, true, false, false)))))));
    var var_2 = global4[_wgslsmith_index_u32(~4294967295u, 27u)];
    var_1 = vec4<f32>(_wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 166f))))), _wgslsmith_div_f32(324f, _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * 119f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-769f, var_1.x)))), 1005f)))), _wgslsmith_div_f32(var_1.x, var_1.x));
    return global2[_wgslsmith_index_u32((firstLeadingBit(~select(4294967295u, 41361u, false)) << (~arg_0 % 32u)) >> (reverseBits(0u) % 32u), 29u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = arg_0.c;
    global1 = func_2();
    global2 = array<Struct_1, 29>();
    global0 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-132f + arg_2)))));
    let var_1 = _wgslsmith_f_op_f32(min(-511f, arg_2));
    return true || any(select(vec3<bool>(any(vec2<bool>(false, true)), false, false), vec3<bool>(all(vec3<bool>(arg_1, true, arg_1)), true, arg_1), vec3<bool>(any(vec2<bool>(arg_1, arg_1)), all(vec2<bool>(arg_1, arg_1)), !arg_1)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f * arg_2) + -423f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2153f, 266f))))));
    var var_2 = -371f;
    let var_3 = global4[_wgslsmith_index_u32(min(~arg_3.c | ~1u, select(abs(arg_3.c), ~arg_3.c, arg_1.x)), 27u)];
    return func_3(firstLeadingBit(countOneBits(~arg_3.c)), 16692u);
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = func_5(func_2(), !vec4<bool>(func_4(func_3(u_input.a, 16478u), all(vec4<bool>(false, true, false, true)), -954f), global1.a != -2147483647i, _wgslsmith_f_op_f32(-269f - -720f) >= _wgslsmith_f_op_f32(ceil(1284f)), !(arg_0 < 37094u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(753f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-991f, 692f))))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, func_3(1u, 4294967295u).c << (~global1.c % 32u)), 29u)]);
    var var_1 = abs(select(~global1.c, u_input.a, true)) | 55922u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, -318f)));
    let var_3 = global4[_wgslsmith_index_u32(max(abs(0u), 59845u >> (~(~global1.c >> (func_3(21784u, var_0.c).c % 32u)) % 32u)), 27u)];
    let var_4 = Struct_1(u_input.b ^ ~(-20498i), firstLeadingBit(19550i), max(_wgslsmith_mult_u32(func_2().c ^ 37795u, ~arg_0), u_input.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 9>();
    let var_0 = select(select(!vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), global1.c >= 0u), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), select(vec3<bool>((global1.a == u_input.b) & true, any(vec2<bool>(true, true)), 2147483647i < global1.b), select(vec3<bool>(any(vec2<bool>(true, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), !func_1(u_input.a)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), !func_4(Struct_1(1i, _wgslsmith_sub_i32(u_input.b, -40761i), global1.c), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)), -547f));
    let var_1 = global2[_wgslsmith_index_u32(~min(4294967295u, ~117u) & u_input.a, 29u)];
    var var_2 = Struct_1(1i, countOneBits(u_input.b), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(1806u, 9u)], ~(vec3<u32>(1u, 43312u, u_input.a) & global3[_wgslsmith_index_u32(20226u, 9u)])), _wgslsmith_add_vec3_u32(abs(~global3[_wgslsmith_index_u32(44665u, 9u)]), _wgslsmith_sub_vec3_u32(select(global3[_wgslsmith_index_u32(58926u, 9u)], vec3<u32>(u_input.a, var_1.c, 4294967295u), vec3<bool>(true, var_0.x, var_0.x)), ~global3[_wgslsmith_index_u32(23930u, 9u)]))));
    var var_3 = Struct_1(~(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_2.a, 2147483647i), ~(-36841i)) ^ reverseBits(countOneBits(-1i))), u_input.b, max(_wgslsmith_div_u32(1u, func_2().c), 1u));
    var var_4 = u_input.a;
    var_3 = Struct_1(var_2.a, -2147483647i, ~(~(~18755u) | u_input.a));
    let var_5 = vec3<i32>(-var_3.b, u_input.b, ~(-(~(-19085i))));
    var_3 = Struct_1(0i, 0i, _wgslsmith_mod_u32(func_3(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(var_1.c, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 59355u, u_input.a), vec4<u32>(u_input.a, u_input.a, 31020u, u_input.a))).c, ~(~_wgslsmith_mod_u32(1u, var_3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(func_3(~var_2.c, 48337u), select(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(true, true, var_0.x, false), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_f_op_f32(298f - 1414f))), func_5(Struct_1(var_1.b, var_5.x, 4294967295u), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, true, var_0.x)), _wgslsmith_f_op_f32(max(-1119f, -591f)), Struct_1(47465i, var_1.b, 4888u))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-445f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)))), var_3.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, 1504f, -1294f))))));
}

