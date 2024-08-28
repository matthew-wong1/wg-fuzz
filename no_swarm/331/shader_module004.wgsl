struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<u32, 29>;

var<private> global2: array<vec3<f32>, 7>;

var<private> global3: Struct_2;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 396f) + _wgslsmith_f_op_f32(-global3.a)));
    global4 = all(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, any(vec2<bool>(false, false)), global3.a == global3.a, all(vec2<bool>(true, false))), !(107597u >= arg_1.b.x))) || all(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_1(_wgslsmith_sub_i32(abs(arg_3.c), -arg_3.c), vec2<u32>(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.b, 0u, 1u, 0u), vec4<u32>(1u, arg_3.b.x, arg_3.b.x, 31907u)), ~abs(vec4<u32>(4294967295u, 78279u, 4294967295u, 11979u))), _wgslsmith_div_u32(firstLeadingBit(0u ^ arg_3.b.x), ~_wgslsmith_dot_vec2_u32(arg_3.b, vec2<u32>(1u, 0u)))), u_input.c.x);
    global0 = array<Struct_1, 23>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, global3.a)) * _wgslsmith_f_op_f32(f32(-1f) * -582f)), true)) + -1334f), _wgslsmith_f_op_f32(abs(-710f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(574f)), _wgslsmith_f_op_f32(-1017f * arg_3))) - 1000f))), global3.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a), -2513f)), _wgslsmith_f_op_f32(func_3(~(-1i), global0[_wgslsmith_index_u32(~44059u, 23u)], vec4<f32>(1887f, global3.a, 1000f, -698f), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(47587u, 29u)], 23u)]))) * arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-652f + 1914f))) + _wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(trunc(global3.a)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, 1455f)), _wgslsmith_f_op_f32(trunc(-623f))))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 0u, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(_wgslsmith_sub_u32(abs(51166u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], 29u)]), ~(~35246u)), ~u_input.b, global1[_wgslsmith_index_u32(1u, 29u)])), 23u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, -1534f, var_0.x, -222f)), var_0)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0)));
    let var_3 = Struct_1(min(0i, -u_input.c.x), countOneBits(vec2<u32>(17595u, ~u_input.a) ^ abs(var_1.b)), ~select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, var_1.a, 8071i), vec3<i32>(0i, var_1.c, -1i)), -u_input.c.x, false) << (0u % 32u));
    return !select(!vec3<bool>(!arg_2, all(vec2<bool>(arg_2, arg_2)), arg_2 & arg_2), vec3<bool>(arg_2, arg_2, arg_2), arg_2);
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    global1 = array<u32, 29>();
    var var_0 = _wgslsmith_f_op_f32(func_3(0i, global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, global3.a, 1855f, 150f) - vec4<f32>(global3.a, global3.a, global3.a, global3.a)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a, 825f, 1707f, 270f)))))), global0[_wgslsmith_index_u32(min((_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(130122u, 29u)], u_input.b) >> (global1[_wgslsmith_index_u32(abs(u_input.b), 29u)] % 32u)) ^ abs(149129u), 1u & ~_wgslsmith_sub_u32(67086u, global1[_wgslsmith_index_u32(u_input.b, 29u)])), 23u)]));
    global3 = Struct_2(-433f);
    global3 = Struct_2(-305f);
    global2 = array<vec3<f32>, 7>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = ~vec2<i32>(i32(-1i) * -u_input.c.x, -(~_wgslsmith_sub_i32(-18043i, u_input.c.x)));
    global3 = func_4(func_2(firstTrailingBit(vec2<i32>(3165i, ~var_0.x)), u_input.c, !(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]) == ~4294967295u), _wgslsmith_f_op_f32(floor(arg_0.x))));
    var var_1 = func_4(vec3<bool>(select(true, true, true), !select(true, false, true) && true, -u_input.c.x <= _wgslsmith_mult_i32(max(u_input.c.x, 17242i), reverseBits(-2147483647i))));
    var var_2 = ~(31192u & firstTrailingBit(global1[_wgslsmith_index_u32(58873u << (u_input.b % 32u), 29u)]));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), global3.a, _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-var_1.a)))));
    return any(select(vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), all(vec4<bool>(true, true, true, true)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(1u, 29u)] < u_input.b), _wgslsmith_f_op_f32(ceil(-1753f)) <= -379f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 7>();
    var var_0 = vec3<bool>(all(vec4<bool>(true, true, !(global3.a == global3.a), true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(func_1(vec4<f32>(global3.a, 544f, global3.a, global3.a)), u_input.c.x < u_input.c.x, false))), func_2(vec2<i32>(24522i, u_input.c.x), _wgslsmith_sub_vec3_i32(~u_input.c, countOneBits(u_input.c) ^ u_input.c), global3.a > _wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(round(-358f))), _wgslsmith_f_op_f32(trunc(-188f))).x);
    global2 = array<vec3<f32>, 7>();
    var var_1 = Struct_1(u_input.c.x, ~(~vec2<u32>(~1u, 9328u)), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, -1i, u_input.c.x), ~(-1i)) ^ reverseBits(select(-u_input.c.x, u_input.c.x, true)));
    let var_2 = Struct_2(821f);
    global3 = Struct_2(-996f);
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(round(-1068f)))) > -635f;
    var_1 = global0[_wgslsmith_index_u32(select(43266u, countOneBits(global1[_wgslsmith_index_u32(select(firstTrailingBit(u_input.b), u_input.b, true), 29u)]) & 1u, any(vec3<bool>(true, true, true))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, 512f, global3.a, var_2.a)) + vec4<f32>(1013f, -681f, global3.a, global3.a)))), _wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 11951u, u_input.a, 304u))) << (max(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(var_1.b.x, 29u)], u_input.a, global1[_wgslsmith_index_u32(1u, 29u)]), min(vec4<u32>(1u, 98934u, global1[_wgslsmith_index_u32(4294967295u, 29u)], 1u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26313u, 29u)], 29u)], global1[_wgslsmith_index_u32(var_1.b.x, 29u)], 0u, var_1.b.x))) % vec4<u32>(32u)), countOneBits(~select(vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, 0u), vec4<u32>(5170u, 0u, 0u, 50015u), vec4<bool>(var_0.x, false, var_0.x, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.a, global3.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1002f, -1671f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.x, Struct_1(var_1.c, vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], 52365u), var_1.a), vec4<f32>(1091f, global3.a, global3.a, -324f), Struct_1(1i, var_1.b, var_1.a)))), _wgslsmith_f_op_f32(sign(470f)))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -57451i, var_1.c, -42693i), vec4<i32>(-26261i, -14900i, min(-23124i, u_input.c.x), abs(var_1.a))), _wgslsmith_mod_i32(1i, (21337i << (u_input.a % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, var_1.a), u_input.c))), _wgslsmith_div_f32(global3.a, global3.a));
}

