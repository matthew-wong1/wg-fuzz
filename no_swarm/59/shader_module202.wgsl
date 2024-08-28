struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, true, true, false, true, true, false, false, true, true, false, false, true, true, true, true, true, true, false, false, true, false, true, true, false, false, true, true, false, true);

var<private> global4: vec3<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = !vec2<bool>(true, global4.x);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1267f)))))));
    global4 = !(!select(select(vec3<bool>(var_0.x, global4.x, global4.x), select(vec3<bool>(global3[_wgslsmith_index_u32(47055u, 31u)], var_0.x, true), vec3<bool>(global3[_wgslsmith_index_u32(global1.b.x, 31u)], true, var_0.x), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], var_0.x, true)), vec3<bool>(false, true, global3[_wgslsmith_index_u32(global2.a, 31u)])), vec3<bool>(false, true, any(vec3<bool>(var_0.x, true, false))), _wgslsmith_f_op_f32(min(var_1, var_1)) <= _wgslsmith_f_op_f32(sign(var_1))));
    global1 = Struct_1(43939u, firstLeadingBit(~vec4<u32>(u_input.c ^ 8711u, global1.b.x, u_input.b, _wgslsmith_mult_u32(global1.b.x, u_input.d))));
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(var_1 * 1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(254f, var_1))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = max((arg_0.b.x >> ((13064u << (max(arg_0.b.x, 3125u) % 32u)) % 32u)) << (global1.a % 32u), _wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~36573u, _wgslsmith_dot_vec3_u32(arg_2.b.b.xyz, vec3<u32>(0u, 2798u, arg_0.a)), 1u, arg_2.c.x), max(~arg_0.b, arg_2.b.b & global1.b))));
    var var_1 = ~firstTrailingBit(1i << ((0u >> (1u % 32u)) % 32u));
    let var_2 = Struct_1(1u, arg_0.b);
    var var_3 = ~(-56293i);
    var var_4 = Struct_1(arg_2.b.a, ~firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(arg_0.a, var_2.b.x), _wgslsmith_mult_u32(1u, global2.b.x), arg_2.c.x, 0u)));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), func_4(Struct_1(0u >> (global1.b.x % 32u), _wgslsmith_sub_vec4_u32(global1.b, global1.b)), Struct_1(~_wgslsmith_dot_vec3_u32(global1.b.xyy, global2.b.zyw), _wgslsmith_sub_vec4_u32(global2.b & global1.b, _wgslsmith_add_vec4_u32(vec4<u32>(15528u, 4294967295u, u_input.c, 18430u), vec4<u32>(7240u, u_input.c, u_input.d, u_input.b)))), Struct_2(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(16876i, -1i))), Struct_1(global1.a, global2.b), global1.b)), 4294967295u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f - 2701f)))), Struct_1(~_wgslsmith_mult_u32(var_0, reverseBits(var_0)), abs(~vec4<u32>(global2.a, 4294967295u, 33998u, 185u))), global1.b);
    let var_2 = select(select(vec3<bool>(global3[_wgslsmith_index_u32(10425u ^ var_1.b.a, 31u)], false, !(!global4.x)), select(!(!vec3<bool>(global3[_wgslsmith_index_u32(var_1.c.x, 31u)], false, false)), vec3<bool>(u_input.a < u_input.a, !global3[_wgslsmith_index_u32(49379u, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]), global4.x), !(true | (global4.x & global3[_wgslsmith_index_u32(35725u, 31u)]))), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 31u)], global4.x, true), !vec3<bool>(global4.x, global4.x, true), vec3<bool>(true, global4.x, true))), false);
    global2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.x);
    return var_1.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = arg_1;
    global1 = func_2();
    let var_1 = ~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, arg_0.x), arg_0.xyx);
    var var_2 = -959f;
    var var_3 = -(~(~(-1i)) ^ u_input.a);
    return global0[_wgslsmith_index_u32(arg_1.b.x, 7u)];
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    global1 = Struct_1(func_4(Struct_1(arg_0.b.a, vec4<u32>(u_input.d, arg_1.x, u_input.c, global2.a) | func_2().b), func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -29479i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)) ^ max(vec4<i32>(u_input.a, 0i, u_input.a, -13171i), vec4<i32>(1i, u_input.a, u_input.a, -2147483647i)), arg_0.b, arg_0.b, global3[_wgslsmith_index_u32(global1.a, 31u)]).b, Struct_2(arg_0.a, func_5(select(vec4<i32>(u_input.a, u_input.a, u_input.a, 18303i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(global3[_wgslsmith_index_u32(global1.b.x, 31u)], false, global3[_wgslsmith_index_u32(arg_0.c.x, 31u)], true)), Struct_1(0u, vec4<u32>(53022u, global1.a, 1u, arg_0.b.b.x)), Struct_1(arg_0.c.x, global1.b), global4.x).b, ~(global2.b << (global2.b % vec4<u32>(32u))))), vec4<u32>(arg_0.c.x, firstLeadingBit(_wgslsmith_mod_u32(arg_1.x, global1.a)), func_2().b.x >> (75091u % 32u), ~3680u));
    global3 = array<bool, 31>();
    global0 = array<Struct_2, 7>();
    var var_0 = global3[_wgslsmith_index_u32(~1486u, 31u)];
    global4 = !select(vec3<bool>(true, all(select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(global1.b.x, 31u)], false), vec4<bool>(global3[_wgslsmith_index_u32(global2.a, 31u)], false, global4.x, false), vec4<bool>(false, false, false, global4.x))), false), vec3<bool>(~0u == u_input.c, true, global4.x), !select(true, global4.x, false));
    return all(vec3<bool>(global4.x, global3[_wgslsmith_index_u32(0u, 31u)], (_wgslsmith_f_op_f32(-arg_0.a.x) > -895f) != false));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = !vec3<bool>(true, func_6(func_5(vec4<i32>(2147483647i, 1i, u_input.a, 22054i), func_2(), func_2(), false | global4.x), global1.b.xyy), true);
    let var_1 = vec4<i32>(_wgslsmith_div_i32(arg_0.x, min(u_input.a & -2147483647i, arg_0.x)), 20376i, 23903i, 52049i) << (global1.b % vec4<u32>(32u));
    global1 = func_5(abs(vec4<i32>(-min(-1i, var_1.x), ~select(arg_0.x, u_input.a, true), arg_0.x, _wgslsmith_mult_i32(1i, -30998i))), Struct_1(_wgslsmith_div_u32(countOneBits(global2.a), global2.a), firstTrailingBit(_wgslsmith_mult_vec4_u32(global2.b, global1.b)) >> (global1.b % vec4<u32>(32u))), Struct_1(select(_wgslsmith_mult_u32(_wgslsmith_div_u32(14411u, 17059u), ~0u), abs(20803u), !(var_0.x || false)), global2.b), all(select(vec3<bool>(false, !global4.x, global4.x), select(vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(global1.b.x, 31u)]), vec3<bool>(global3[_wgslsmith_index_u32(40650u, 31u)], false, false), var_0.x), true), _wgslsmith_f_op_f32(select(1239f, -355f, var_0.x)) == -251f))).b;
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    return global0[_wgslsmith_index_u32(func_5(_wgslsmith_div_vec4_i32(vec4<i32>(-23717i, u_input.a, -38036i, select(_wgslsmith_mult_i32(u_input.a, var_1.x), -arg_0.x, all(vec2<bool>(true, true)))), var_1), func_2(), func_5(max(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, 1188i, 1i), var_1), var_1), _wgslsmith_div_vec4_i32(var_1 ^ vec4<i32>(var_1.x, 2147483647i, var_1.x, 3008i), -arg_0)), func_5(vec4<i32>(var_1.x, var_1.x, ~(-2147483647i), 0i | u_input.a), Struct_1(_wgslsmith_mult_u32(57361u, 12085u), min(vec4<u32>(4294967295u, 35717u, global1.a, u_input.d), global1.b)), func_5(arg_0, Struct_1(41054u, vec4<u32>(u_input.d, global2.a, global1.b.x, 44760u)), Struct_1(global2.b.x, global1.b), var_0.x).b, all(vec4<bool>(var_0.x, true, var_0.x, global3[_wgslsmith_index_u32(global2.b.x, 31u)]))).b, Struct_1(_wgslsmith_div_u32(global2.b.x, u_input.c), abs(~global1.b)), !(min(global2.a, global1.b.x) < global2.a)).b, var_0.x).b.b.x, 7u)];
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = abs(~(~40169i));
    global3 = array<bool, 31>();
    global0 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(global2.a, arg_1.b.b.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(20202u, 1u), global1.b.xy)), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(arg_1.b.b.x, arg_1.b.a), global2.b.x)), _wgslsmith_div_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, arg_1.b.b.x, global1.b.x) << (global2.b % vec4<u32>(32u)), abs(arg_1.b.b)), ~func_5(vec4<i32>(-90791i, var_0, 62141i, u_input.a), arg_1.b, arg_1.b, global3[_wgslsmith_index_u32(arg_1.c.x, 31u)]).c, select(vec4<bool>(false, false, global4.x, false), select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(global1.b.x, 31u)], true), vec4<bool>(arg_3, true, global4.x, global3[_wgslsmith_index_u32(global2.b.x, 31u)]), vec4<bool>(global3[_wgslsmith_index_u32(global2.a, 31u)], global3[_wgslsmith_index_u32(global2.b.x, 31u)], global3[_wgslsmith_index_u32(arg_1.c.x, 31u)], false)), !vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 31u)], true, arg_3))), global2.b));
    var var_2 = ~select(vec3<i32>(~2147483647i | u_input.a, ~(~var_0), var_0), ~(-(~vec3<i32>(1i, 2147483647i, u_input.a))), !global3[_wgslsmith_index_u32(arg_1.c.x, 31u)] || true);
    return func_5(vec4<i32>(~var_0, 0i, -45754i, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1321i, var_2.x, 0i), vec4<i32>(arg_2.x, arg_2.x, var_2.x, arg_2.x)) & 0i) >> (~1u % 32u)), arg_1.b, arg_1.b, !global4.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1132f, -640f) * vec2<f32>(-974f, 535f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-722f, 705f) - vec2<f32>(253f, -1000f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064f + -329f)), _wgslsmith_f_op_f32(abs(-757f)))), func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2382f, -141f, 1607f, -1120f) * vec4<f32>(-1340f, 144f, 1194f, -673f))), func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 20549i, u_input.a, u_input.a), vec4<i32>(u_input.a, 25853i, u_input.a, 2147483647i)))), _wgslsmith_mod_vec2_i32(~(-vec2<i32>(u_input.a, 52902i)), vec2<i32>(u_input.a << (global2.a % 32u), -u_input.a)), (-2147483647i == u_input.a) != (global4.x & (u_input.d < global2.b.x))), reverseBits(_wgslsmith_clamp_vec4_u32(~global1.b, abs(vec4<u32>(u_input.d, global1.b.x, 0u, 95132u) | vec4<u32>(global2.a, u_input.c, 4294967295u, 0u)), vec4<u32>(0u, reverseBits(u_input.c), global2.a, ~global2.a))));
    var var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(u_input.a, min(-11279i, -abs(u_input.a))));
    var var_2 = var_0.b;
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    var_1 = countOneBits(21819i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global2.b.x, 52474u, 0u), vec3<u32>(u_input.d, global2.b.x, var_2.b.x)), var_0.c.zwz) << (vec3<u32>(_wgslsmith_sub_u32(~global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.b.a), vec3<u32>(55538u, 0u, var_0.c.x))), func_2().a, 1u) % vec3<u32>(32u)));
}

