struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-153f, 690f);

var<private> global1: array<f32, 20>;

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = all(select(vec2<bool>(!(global1[_wgslsmith_index_u32(65356u, 20u)] < global0.x), !all(arg_0.xw)), vec2<bool>(!(!arg_0.x), all(arg_0.wzz)), vec2<bool>(arg_0.x, true)));
    var var_1 = min(~vec3<i32>(-1i, 1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-50497i, 41178i), vec2<i32>(1i, 1i))), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 8089i), vec3<i32>(-1i, 0i, 13168i)) << (global2[_wgslsmith_index_u32(u_input.a.x, 22u)] % vec3<u32>(32u))) ^ min(reverseBits(vec3<i32>(-21328i, -2147483647i, 1095i)), vec3<i32>(-25442i, i32(-1i) * -28980i, i32(-1i) * -2147483647i)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, global1[_wgslsmith_index_u32(reverseBits(33083u), 20u)], arg_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(347f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 20u)], arg_1.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, arg_1.b, global0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), global0.x, global1[_wgslsmith_index_u32(~0u, 20u)])) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1958f, -982f, -1000f)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1154f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(~global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), 29u)], 20u)])))));
    global1 = array<f32, 20>();
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)) - _wgslsmith_f_op_f32(arg_1.a.x - -1099f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)))) + vec3<f32>(472f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-2048f + 2213f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, arg_1.a.x, 583f) * _wgslsmith_div_vec3_f32(vec3<f32>(-359f, arg_1.b, arg_0.b), vec3<f32>(arg_1.a.x, arg_1.a.x, -882f))) * vec3<f32>(1019f, _wgslsmith_f_op_f32(round(578f)), global0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(28107u, 20u)], arg_0.a.x, 1311f))), vec3<f32>(arg_0.b, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17535u, 29u)], 29u)], 29u)], 20u)]), true)))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a.x), 20u)]) - var_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, var_0.x) + vec2<f32>(-401f, -775f)), !vec2<bool>(!(arg_2.x >= 32074i), any(vec4<bool>(false, false, false, false)) == true)));
    var var_3 = vec4<u32>(u_input.a.x, ~(~(~46506u)), ~50122u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(vec4<bool>(false, true, false, false), arg_1), _wgslsmith_mult_u32(4294967295u, 1u)), 29u)] << (0u % 32u), 29u)], max(29415u, 29811u));
    var var_4 = Struct_1(vec2<f32>(-363f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(round(var_1.a.x)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, _wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.b), global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, arg_1.a.x, -771f, arg_0.a.x)))))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 971f, -1594f, 185f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec2<f32>(-2539f, -725f), arg_0.x), arg_3.b, vec3<i32>(-3401i, -1i, -2147483647i))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -661f, arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) - vec4<f32>(2159f, arg_1.x, arg_1.x, arg_2.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-259f, -787f, arg_1.x, 859f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_3.a.a.x, arg_2.a.x, arg_3.b.b))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2418f, global0.x, 2279f, -496f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.b, -1000f, 1375f, arg_0.x) * vec4<f32>(104f, 260f, arg_2.a.x, -293f))) + vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(min(arg_3.b.b, global1[_wgslsmith_index_u32(1521u, 20u)])), arg_0.x, _wgslsmith_f_op_f32(sign(arg_3.a.b))))), !vec4<bool>(all(vec2<bool>(true, true)), true, false, true)));
    return arg_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_div_i32(select(firstTrailingBit(-22638i), ~(-1i), arg_3.x), -8107i), firstTrailingBit(_wgslsmith_div_i32(-49249i, _wgslsmith_dot_vec4_i32(vec4<i32>(6400i, -2147483647i, 97954i, -22127i), vec4<i32>(64404i, 38349i, 15254i, 45365i)))), _wgslsmith_add_i32(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(8908i, -8309i, -15897i), vec3<i32>(0i, 19189i, 40735i)))), vec4<i32>(max(~4082i, -1i), -(~_wgslsmith_sub_i32(-2147483647i, 0i)), ~1i, 1i), arg_2);
    let var_1 = ~(select(vec2<u32>(func_3(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), arg_0), countOneBits(0u)), _wgslsmith_div_vec2_u32(u_input.a, ~vec2<u32>(38894u, 4294967295u)), select(!arg_3.xx, select(arg_3.xz, arg_3.yx, arg_3.x), !arg_3.x)) << (vec2<u32>(~global3[_wgslsmith_index_u32(~1u, 29u)], u_input.a.x) % vec2<u32>(32u)));
    let var_2 = ~vec4<u32>(~4294967295u ^ abs(~global3[_wgslsmith_index_u32(12075u, 29u)]), _wgslsmith_div_u32(~0u, u_input.a.x >> (var_1.x % 32u)), _wgslsmith_sub_u32(select(global3[_wgslsmith_index_u32(~u_input.a.x, 29u)], 1u, true), select(var_1.x, _wgslsmith_add_u32(u_input.a.x, global3[_wgslsmith_index_u32(22533u, 29u)]), !arg_3.x)), abs(4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(25630u, 4294967295u))));
    var var_3 = arg_1;
    global1 = array<f32, 20>();
    return all(vec3<bool>(!arg_3.x, arg_3.x, select(arg_3.x, !any(vec3<bool>(true, false, true)), true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = vec2<f32>(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(25629u, 29u)], u_input.a.x, 13789u)), (vec4<u32>(38639u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], u_input.a.x, 23374u) << (vec4<u32>(36991u, global3[_wgslsmith_index_u32(1u, 29u)], u_input.a.x, 67796u) % vec4<u32>(32u))) & abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 1u, global3[_wgslsmith_index_u32(436u, 29u)], 25406u)))), 20u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 20u)]);
    global1 = array<f32, 20>();
    var var_0 = arg_1;
    let var_1 = select(_wgslsmith_add_vec4_i32(select(-vec4<i32>(-60345i, 1i, 1i, -2147483647i), ~vec4<i32>(-33174i, -42803i, -35352i, 2147483647i), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)) & max(countOneBits(vec4<i32>(-1i, -17262i, 0i, 21113i)), abs(vec4<i32>(-6626i, 11518i, 40298i, -1i))), ~(-vec4<i32>(-718i, -2147483647i, 12924i, 10450i) << (vec4<u32>(58464u, u_input.a.x, 0u, 35903u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, -15316i, 1i), vec4<i32>(-2147483647i, 1i, -2147483647i, -12652i)), vec4<i32>(1i, 1i, 1i, 1i)), firstLeadingBit(vec4<i32>(58190i, -1087i, -4705i, 1i)) >> (reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 57224u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_div_i32(2147483647i, countOneBits(1i)), -1i, -1029i), !(!arg_0.x));
    var var_2 = _wgslsmith_mod_i32(var_1.x, -4852i) & max(-1i, _wgslsmith_sub_i32(~var_1.x, -29787i));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<bool>(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(975f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27760u, 29u)], 20u)]))), _wgslsmith_f_op_f32(sign(258f))), Struct_1(vec2<f32>(global0.x, global0.x), global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_2(func_1(vec2<f32>(-682f, -1252f), vec3<f32>(964f, 804f, 882f), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6607u, 29u)], 20u)], global0.x), 279f), Struct_2(Struct_1(vec2<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), -642f), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], global0.x), global0.x))), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 20u)], -1217f), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 20u)])), vec4<bool>(true, true, true, true)), true), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 20u)], -786f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(646f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 20u)], global1[_wgslsmith_index_u32(3651u, 20u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), true)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(812f, global1[_wgslsmith_index_u32(64000u, 20u)]), vec2<f32>(-2568f, -1486f), false)), _wgslsmith_f_op_f32(global0.x + global0.x)), Struct_2(func_1(vec2<f32>(-2331f, 256f), vec3<f32>(global0.x, -904f, -884f), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global0.x), -297f), Struct_2(Struct_1(vec2<f32>(-1094f, -1311f), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 20u)]), Struct_1(vec2<f32>(-247f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), global1[_wgslsmith_index_u32(0u, 20u)]))), Struct_1(vec2<f32>(1000f, 1983f), -947f))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(2071f)), global1[_wgslsmith_index_u32(~1u, 20u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(869f * -696f))))), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global1[_wgslsmith_index_u32(19971u, 20u)], 1582f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 668f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -541f, global0.x)) + vec3<f32>(-1433f, 907f, global0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), _wgslsmith_f_op_f32(-1017f * global1[_wgslsmith_index_u32(4294967295u, 20u)])), Struct_2(func_1(vec2<f32>(-3169f, global0.x), vec3<f32>(global1[_wgslsmith_index_u32(25229u, 20u)], global0.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 20u)]), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(61781u, 20u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 20u)]), global0.x), Struct_2(Struct_1(vec2<f32>(991f, global1[_wgslsmith_index_u32(0u, 20u)]), global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_1(vec2<f32>(-317f, global0.x), -967f))), func_1(vec2<f32>(global0.x, -1128f), vec3<f32>(-344f, global1[_wgslsmith_index_u32(18686u, 20u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38478u, 29u)], 20u)]), Struct_1(vec2<f32>(-493f, -326f), 1101f), Struct_2(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], -639f), global0.x), Struct_1(vec2<f32>(-1053f, -251f), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(97136u, 29u)], 20u)]))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1232f - global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30132u, 29u)], 20u)]), _wgslsmith_f_op_f32(step(226f, global1[_wgslsmith_index_u32(1u, 20u)]))), 240f)));
    var var_1 = _wgslsmith_sub_i32(6748i, 1i) ^ -_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 44656i, 0i) << (_wgslsmith_add_vec3_u32(vec3<u32>(28363u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 0u), vec3<u32>(u_input.a.x, 38360u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)])) % vec3<u32>(32u)));
    let var_2 = abs(1i);
    let var_3 = false;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1274f, 1000f, 599f, 225f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 302f, 657f))))), vec4<f32>(var_0.b, global1[_wgslsmith_index_u32(~(~u_input.a.x), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -410f), global0.x), vec4<bool>(var_3, any(vec2<bool>(false, false)), var_3 & false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec3<i32>(abs(~reverseBits(-38192i)), ~(~8817i), -_wgslsmith_sub_i32(var_2, ~var_2)));
}

