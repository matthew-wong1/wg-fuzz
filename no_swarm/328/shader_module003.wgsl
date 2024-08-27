struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11>;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: array<f32, 17>;

var<private> global4: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec2<i32> {
    let var_0 = ~(arg_1 ^ ((4294967295u >> (_wgslsmith_add_u32(u_input.a.x, arg_1) % 32u)) ^ _wgslsmith_clamp_u32(34093u, ~u_input.a.x, 3124u | arg_1)));
    let var_1 = u_input.d.xz;
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -(~(-1i)), -45121i), vec3<i32>(-(~5954i), 1i, -(1i | u_input.c)), vec3<i32>(1i, u_input.e, ~(-24733i)) >> (u_input.b % vec3<u32>(32u))), ~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(6680i, arg_2.x, -1i) | vec3<i32>(-30716i, u_input.e, -38691i)), vec3<i32>(-1i, max(35261i, 32704i), select(-70042i, 2147483647i, true))));
    global0 = array<vec2<bool>, 11>();
    let var_3 = vec3<u32>(~(23535u << (firstTrailingBit(var_1.x) % 32u)), 13863u, _wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_1, u_input.d.x) << (_wgslsmith_add_u32(select(var_1.x, 1u, true), global4.x) % 32u), ~4294967295u));
    return vec2<i32>(~_wgslsmith_sub_i32(i32(-1i) * -u_input.c, -u_input.e), arg_2.x);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global1 = true;
    let var_0 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(u_input.d.x, 17u)] != 1988f), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), u_input.b.x >= ~u_input.d.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 4294967295u, 4294967295u), u_input.b), 17u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f - global3[_wgslsmith_index_u32(4294967295u, 17u)]) * _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(global4.x, 17u)], 1414f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(23364u, 17u)])))))), global3[_wgslsmith_index_u32(~u_input.a.x, 17u)]);
    let var_2 = ~(~(func_3(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global4.x, 17u)])), ~4294967295u, -vec2<i32>(u_input.c, 2147483647i), 2207f) | ~(~vec2<i32>(-337i, -21571i))));
    let var_3 = any(global0[_wgslsmith_index_u32(~global4.x, 11u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(32912u, 17u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.x, 17u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(55203u, 17u)] - -1054f))))) + _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 29790u ^ global4.x), 17u)])));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<vec2<bool>, 11>();
    var var_0 = vec4<f32>(arg_1.x, 1000f, arg_1.x, arg_1.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.e, -u_input.e), u_input.e, ~_wgslsmith_add_i32(u_input.c, u_input.e))));
    global2 = array<vec4<i32>, 24>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(min(firstTrailingBit(vec3<i32>(-2147483647i, var_1.a.a, 50953i)), vec3<i32>(0i, u_input.e, 26094i) ^ vec3<i32>(51035i, u_input.c, u_input.c)), vec3<i32>(var_1.a.a, -40586i, var_1.a.a) >> (select(u_input.d, u_input.b, false) % vec3<u32>(32u)))));
    return Struct_2(Struct_1(_wgslsmith_add_i32(var_2.a.a, max(i32(-1i) * -1i, var_1.a.a))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    global4 = countOneBits(vec2<u32>(max(reverseBits(~23257u), reverseBits(abs(1u))), (firstLeadingBit(global4.x) | (10329u ^ u_input.d.x)) & 0u));
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    let var_0 = arg_3.a.a >> (abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 120091u, global4.x, 84741u), vec4<u32>(65058u, u_input.b.x, global4.x, 1u)), vec4<u32>(u_input.a.x, 32467u, arg_2.x, 1u)) << (37611u % 32u)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.x, 17u)]));
    return Struct_1((-(~u_input.c) ^ 0i) | arg_1.a);
}

fn func_1() -> f32 {
    let var_0 = func_5(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(27553i, -1i, u_input.e), select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, u_input.c), vec3<i32>(1i, u_input.e, u_input.e)), _wgslsmith_add_vec3_i32(vec3<i32>(-18322i, u_input.e, 2147483647i), vec3<i32>(3107i, u_input.c, 9801i)), vec3<bool>(true, true, true)), -vec3<i32>(2147483647i, 61417i, -35546i)), Struct_1(u_input.e), u_input.a, func_4(4294967295u, vec2<f32>(global3[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(~25911u, 24u)])))));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(func_3(-288f, global4.x, vec2<i32>(_wgslsmith_mult_i32(var_0.a, var_0.a), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], 110f, true)))).x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.a), ~vec2<i32>(var_0.a, var_0.a)), -1i), _wgslsmith_sub_i32(firstLeadingBit(~u_input.e), 2147483647i ^ _wgslsmith_div_i32(var_0.a, var_0.a))), -(~abs(vec3<i32>(4419i, -1i, 44780i) >> (u_input.a % vec3<u32>(32u)))));
    global1 = !(!(!(true || any(vec4<bool>(false, true, true, false)))));
    global1 = false;
    let var_2 = max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a.x, global4.x, global4.x, u_input.d.x)), ~vec4<u32>(u_input.d.x, 818u, global4.x, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(14137u, global4.x, global4.x, u_input.d.x))), ~(~vec4<u32>(u_input.a.x, u_input.b.x, 24347u, 6413u))) ^ max(max(_wgslsmith_div_u32(u_input.d.x, global4.x), u_input.a.x), global4.x), ~u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2066u, 17u)]))) * _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.d.zy, ~vec2<u32>(global4.x, 28045u)), 17u)], _wgslsmith_f_op_f32(abs(-1701f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    let var_0 = u_input.e;
    let var_1 = vec4<i32>(u_input.c | var_0, u_input.c, -6837i, ~var_0);
    global1 = 1000f != _wgslsmith_f_op_f32(func_1());
    let var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(u_input.d.x, ~4294967295u, u_input.a.x >> (global4.x % 32u), global4.x), ~vec4<u32>(0u, 8212u, 0u, var_2), !(629f != global3[_wgslsmith_index_u32(8900u, 17u)])), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(global4.x, 12780u), ~global4.x, _wgslsmith_sub_u32(global4.x, global4.x), 1u)), ~(~(~vec4<u32>(31605u, 4294967295u, var_2, u_input.b.x)))), u_input.d.x, vec4<u32>(~select(global4.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(4294967295u, u_input.d.x)), true), 45983u, u_input.a.x, firstTrailingBit(~var_2)));
}

