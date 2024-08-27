struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
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

var<private> global0: i32 = 39540i;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<f32, 8>;

var<private> global3: i32 = 0i;

var<private> global4: array<u32, 9> = array<u32, 9>(10956u, 25799u, 77373u, 4294967295u, 12994u, 1u, 0u, 4294967295u, 50764u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    let var_0 = vec3<u32>(~u_input.d.x, 609u, ~(~(~u_input.a) | (52804u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12486u, 9u)], 9u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 9u)]), u_input.b))));
    let var_1 = var_0.x;
    global0 = _wgslsmith_add_i32(-1i, arg_0.e.c.x);
    var var_2 = arg_2.a.x;
    global0 = abs(29254i);
    return _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(60060u, global4[_wgslsmith_index_u32(1u, 9u)], u_input.b.x, var_1) >> (vec4<u32>(global4[_wgslsmith_index_u32(80801u, 9u)], 1u, 4294967295u, 7861u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(42142u, u_input.b.x, 1u, var_0.x) >> (vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1, 9u)], 9u)], 9u)], 36616u, 25438u) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.e, u_input.a, global4[_wgslsmith_index_u32(55762u, 9u)]))), countOneBits(abs(vec4<u32>(11709u, 4294967295u << (u_input.d.x % 32u), var_1 | var_0.x, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1, 9u)], 9u)], 4294967295u)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec4<bool> {
    global3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, arg_0.x, u_input.c.x), vec4<i32>(-16991i, -2147483647i, arg_2.x, u_input.c.x)) >> (func_3(Struct_4(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 9u)], 8u)], -368f, 19932i, Struct_2(Struct_1(vec2<bool>(true, true), -2147483647i), vec3<i32>(0i, arg_2.x, 45811i), arg_0, Struct_1(vec2<bool>(false, global1.x), 79725i)), Struct_3(arg_0.x, vec3<f32>(1521f, 556f, 1664f), vec4<i32>(5317i, -1i, 39151i, 12136i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1028f, 1672f, 1473f)), Struct_1(vec2<bool>(false, global1.x), -2147483647i), _wgslsmith_div_f32(arg_1.x, -1046f)) % vec4<u32>(32u)), max(vec4<i32>(arg_2.x, 1i & arg_2.x, 2147483647i, ~(-5449i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(12402i, u_input.c.x, arg_2.x, -37635i), vec4<i32>(-1i, u_input.c.x, arg_0.x, arg_2.x)), ~vec4<i32>(1i, -2147483647i, -1i, 0i)))), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, 1i, arg_2.x), abs(vec3<i32>(-41138i, 62687i, -16671i)), vec3<bool>(true, global1.x, global1.x)), ~(vec3<i32>(arg_2.x, 2147483647i, 24332i) | vec3<i32>(3644i, arg_0.x, arg_0.x))));
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.e, 8u)] <= -1000f), !select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)), !(global1.x || global1.x)), ~_wgslsmith_clamp_i32(0i, 24196i, u_input.c.x)), arg_0, ~(vec3<i32>(arg_2.x, u_input.c.x, u_input.c.x) & vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -10358i, arg_0.x, u_input.c.x), vec4<i32>(0i, arg_0.x, u_input.c.x, 2147483647i)), ~(-82578i), _wgslsmith_dot_vec4_i32(vec4<i32>(-13122i, -1i, -1i, 2147483647i), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -2147483647i)))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(global1.x, false), vec2<bool>(false, true), vec2<bool>(true, global1.x)), !global1.x), vec2<bool>(any(vec4<bool>(true, global1.x, global1.x, false)), true)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.x, u_input.c.x, -47714i), abs(vec3<i32>(0i, arg_2.x, 53117i)))));
    let var_1 = vec4<bool>(false, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.b.x) << (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18804u, 9u)], 9u)], global4[_wgslsmith_index_u32(u_input.b.x, 9u)], global4[_wgslsmith_index_u32(0u, 9u)], 4294967295u) % vec4<u32>(32u)), select(vec4<u32>(13835u, 1u, global4[_wgslsmith_index_u32(u_input.b.x, 9u)], global4[_wgslsmith_index_u32(70079u, 9u)]), vec4<u32>(u_input.a, 45311u, 45885u, u_input.e), vec4<bool>(true, true, false, true)))) <= global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(82793u), 1u), 9u)], ~(~u_input.e)), 9u)], all(select(!vec4<bool>(true, var_0.d.a.x, true, true), !(!vec4<bool>(var_0.d.a.x, false, true, true)), (1u >> (0u % 32u)) != ~global4[_wgslsmith_index_u32(u_input.a, 9u)])), 54566u > ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38965u, 1u, 1u, u_input.d.x), vec4<u32>(global4[_wgslsmith_index_u32(u_input.e, 9u)], u_input.e, u_input.d.x, 4294967295u)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(27034u, global4[_wgslsmith_index_u32(35493u, 9u)]), 9u)]));
    var var_2 = vec4<f32>(1000f, _wgslsmith_f_op_f32(min(arg_1.x, 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(389f)) - _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(51953u << (u_input.a % 32u), 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-185f * -449f))))), global2[_wgslsmith_index_u32(4294967295u | ~max(4294967295u, abs(global4[_wgslsmith_index_u32(4947u, 9u)])), 8u)]);
    let var_3 = -vec3<i32>(0i, max(_wgslsmith_mod_i32(~arg_0.x, var_0.b.x & 2147483647i), reverseBits(arg_2.x)), ~(-14555i));
    return vec4<bool>(var_0.d.a.x, global1.x, true || !(!var_1.x | (-11729i == arg_2.x)), var_0.d.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = arg_2.x;
    let var_1 = select(func_2(vec3<i32>(u_input.c.x, 0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b, u_input.c.x, u_input.c.x), ~vec3<i32>(arg_0.b, arg_0.b, 46923i))), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 15850u, u_input.e), arg_1.yzx >> (arg_2 % vec3<u32>(32u))), 8u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(14281u, 8u)]), 729f)), vec2<i32>(firstTrailingBit(~u_input.c.x), arg_0.b)), vec4<bool>(all(!vec4<bool>(false, true, global1.x, arg_0.a.x)), true, arg_0.a.x, true), vec4<bool>(!(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(arg_2.x, 8u)], global2[_wgslsmith_index_u32(arg_1.x, 8u)])) != global2[_wgslsmith_index_u32(4294967295u, 8u)]), all(select(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(arg_0.a.x, global1.x, global1.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, global1.x)), func_2(vec3<i32>(-3420i, -56385i, 2147483647i), vec2<f32>(-2152f, 261f), vec2<i32>(-11214i, arg_0.b)), true)), true, global1.x != true));
    let var_2 = 798f;
    let var_3 = 988f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(32906u, 8u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f))));
    let var_4 = arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2, global2[_wgslsmith_index_u32(select(~4294967295u, ~(var_0 ^ 62729u), var_3), 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-162f)))) + -910f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = -312f;
    var var_1 = Struct_4(355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(global1.x, false), u_input.c.x), vec4<u32>(45814u, global4[_wgslsmith_index_u32(arg_1.x, 9u)], u_input.e, arg_1.x) & vec4<u32>(4294967295u, 82513u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33790u, 9u)], 9u)], 9u)], 9u)], 19u), firstTrailingBit(arg_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, 19375u), 8u)] - _wgslsmith_f_op_f32(max(834f, arg_0.x))))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-28651i, 1i, u_input.c.x, -32287i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(39635u, arg_1.x, 44993u, u_input.e) & vec4<u32>(48551u, arg_1.x, 3373u, 1u), abs(vec4<u32>(0u, 1u, u_input.d.x, u_input.d.x))) % vec4<u32>(32u)), select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -29523i), vec4<i32>(u_input.c.x, -1i, u_input.c.x, -1i)), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x)), vec4<i32>(u_input.c.x, -3213i, 4118i, 0i) >> (~vec4<u32>(1u, 9226u, 1u, 25228u) % vec4<u32>(32u)), any(func_2(vec3<i32>(u_input.c.x, -1i, 10056i), arg_0.zx, u_input.c).ww))), Struct_2(Struct_1(vec2<bool>(!global1.x, true), countOneBits(_wgslsmith_mod_i32(u_input.c.x, 5631i))), select(vec3<i32>(-2147483647i, u_input.c.x ^ u_input.c.x, reverseBits(2147483647i)), vec3<i32>(1i, select(5750i, 33042i, global1.x), u_input.c.x), select(!vec3<bool>(true, global1.x, global1.x), func_2(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec2<f32>(arg_0.x, 680f), u_input.c).yww, true)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c), 24449i), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.c.x, -1i)), Struct_1(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-36295i, 63616i, 8514i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(step(arg_0.zy, arg_0.yw)), vec2<i32>(u_input.c.x, u_input.c.x)).xx, ~(~(-42047i)))), Struct_3(~u_input.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + 399f), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -744f)) - vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 8u)])), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 9u)] ^ 16781u, 8u)])), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 25461i), vec4<i32>(-27867i, 0i, u_input.c.x, -16179i))), _wgslsmith_div_i32(abs(u_input.c.x), u_input.c.x), -32466i, -1i)));
    global3 = ~u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(var_1.d.a, ~select(reverseBits(vec4<u32>(1u, 27765u, 34139u, 1u)), vec4<u32>(global4[_wgslsmith_index_u32(45607u, 9u)], arg_1.x, u_input.e, u_input.e), global1.x), ~(~(~arg_1)))), global2[_wgslsmith_index_u32(1u, 8u)]));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(909f, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(true, false), u_input.c.x), ~vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 9u)], u_input.d.x, 48639u, 20802u), u_input.b)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, u_input.b.x), vec4<u32>(1u, global4[_wgslsmith_index_u32(u_input.d.x, 9u)], global4[_wgslsmith_index_u32(u_input.d.x, 9u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54931u, 9u)], 9u)], 9u)])), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42356u, u_input.b.x, global4[_wgslsmith_index_u32(1u, 9u)], 9632u), vec4<u32>(u_input.a, 4294967295u, global4[_wgslsmith_index_u32(1u, 9u)], 7694u)), 9u)]), 8u)], 818f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)], true)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 2142f), -780f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 8u)], -1117f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(50698u, 9u)], 8u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(1601u, 9u)], 99305u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36277u, 9u)], 9u)], u_input.b.x)), 8u)], -647f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~vec3<u32>(~u_input.d.x, _wgslsmith_div_u32(abs(42338u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(22866u, u_input.e), 9u)], 9u)]), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, global4[_wgslsmith_index_u32(39268u, 9u)] << (4294967295u % 32u), reverseBits(global4[_wgslsmith_index_u32(1u, 9u)])) & 0u, 8u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32((global4[_wgslsmith_index_u32(14316u, 9u)] & 13974u) & u_input.e, 8u)]), !global1.x)));
}

