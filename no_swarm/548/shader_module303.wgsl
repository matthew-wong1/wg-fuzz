struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, vec3<f32>(875f, -591f, 950f), vec3<i32>(1i, 8305i, -66402i)), Struct_1(4294967295u, vec3<f32>(1505f, -1000f, -2475f), vec3<i32>(33126i, i32(-2147483648), 6997i)), Struct_1(0u, vec3<f32>(-1543f, -1405f, 1143f), vec3<i32>(-19308i, 35649i, -1i)), Struct_1(4294967295u, vec3<f32>(-1000f, 400f, -1000f), vec3<i32>(3977i, -14533i, 62152i)), Struct_1(1u, vec3<f32>(-627f, 1436f, -389f), vec3<i32>(-15129i, 0i, i32(-2147483648))), Struct_1(36861u, vec3<f32>(1317f, -349f, 999f), vec3<i32>(1i, -39842i, 1i)), Struct_1(19603u, vec3<f32>(-1063f, -263f, 271f), vec3<i32>(-53193i, -1i, -43387i)), Struct_1(1u, vec3<f32>(-464f, 149f, -1428f), vec3<i32>(4985i, 2147483647i, -45131i)), Struct_1(34491u, vec3<f32>(-369f, 352f, 1560f), vec3<i32>(25675i, -24404i, 2539i)));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(41368u, vec3<f32>(-900f, -980f, 240f), vec3<i32>(2147483647i, 9836i, -1i)), Struct_1(0u, vec3<f32>(1018f, -257f, -1000f), vec3<i32>(18103i, 1i, 0i)), Struct_1(1u, vec3<f32>(-1922f, -171f, -1912f), vec3<i32>(2147483647i, 12153i, 1i)), Struct_1(0u, vec3<f32>(-457f, -744f, -1182f), vec3<i32>(-3849i, 47051i, -1i)), Struct_1(0u, vec3<f32>(-229f, -131f, 463f), vec3<i32>(1i, -7530i, 11415i)), Struct_1(1u, vec3<f32>(1657f, -662f, -490f), vec3<i32>(-26548i, -14603i, 13023i)), Struct_1(25754u, vec3<f32>(-1905f, -123f, 1147f), vec3<i32>(18570i, 0i, 1i)), Struct_1(4294967295u, vec3<f32>(-993f, -1448f, -1127f), vec3<i32>(-25128i, 1i, 631i)), Struct_1(0u, vec3<f32>(854f, -2058f, 1280f), vec3<i32>(27595i, 0i, -1i)));

var<private> global2: array<i32, 9>;

var<private> global3: i32 = 44461i;

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global2 = array<i32, 9>();
    var var_0 = arg_0.a;
    let var_1 = Struct_1(reverseBits(~_wgslsmith_sub_u32(5694u, u_input.c) << (u_input.c % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-159f, arg_0.b.x), _wgslsmith_f_op_f32(ceil(global4.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -553f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, -430f, -1453f)))) - global4.b), global4.c);
    var var_2 = reverseBits(var_1.a);
    let var_3 = var_1.c;
    return _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, firstTrailingBit(2147483647i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_1.c.x, arg_0.c.x, var_1.c.x, -2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(-70164i, 0i, 0i, 2147483647i), abs(vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(var_1.a, 9u)], -14053i, var_1.c.x)))), ~arg_0.c.x), ~abs(~vec4<i32>(4239i, -1i, global2[_wgslsmith_index_u32(global4.a, 9u)], 6255i) & select(vec4<i32>(global4.c.x, 0i, global2[_wgslsmith_index_u32(var_1.a, 9u)], 1i), vec4<i32>(2104i, arg_0.c.x, 44091i, arg_0.c.x), false)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global4.c.x, global2[_wgslsmith_index_u32(u_input.c, 9u)], -40121i, 0i) | ~vec4<i32>(select(global4.c.x, global2[_wgslsmith_index_u32(global4.a, 9u)], true), min(2147483647i, -2147483647i), global4.c.x, -global4.c.x), _wgslsmith_div_vec4_i32(~(vec4<i32>(global4.c.x, -28306i, global2[_wgslsmith_index_u32(1u, 9u)], global4.c.x) >> (abs(vec4<u32>(u_input.c, arg_2, u_input.d, global4.a)) % vec4<u32>(32u))), reverseBits(func_3(global1[_wgslsmith_index_u32(0u, 9u)])) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 9u)], 1i, 2147483647i, -1i), -vec4<i32>(0i, 0i, 2147483647i, 2147483647i), vec4<i32>(-12271i, u_input.b, global4.c.x, -2945i))));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(max(1u, ~u_input.d), 4294967295u | countOneBits(arg_2))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.d, 4294967295u), _wgslsmith_mult_u32(58551u, u_input.c)), select(~vec2<u32>(global4.a, arg_2), select(vec2<u32>(70284u, global4.a), vec2<u32>(global4.a, global4.a), false), true)), arg_2)), 9u)];
    var var_0 = firstLeadingBit(arg_2);
    return global1[_wgslsmith_index_u32(global4.a ^ select(1u, 4294967295u, true), 9u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = min(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, -1i, -1i), arg_1), vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(global4.c), ~vec3<i32>(global4.c.x, arg_0.c.x, -54200i)), arg_1.x, func_2(vec3<f32>(arg_0.b.x, global4.b.x, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -1000f)), min(0u, arg_0.a)).c.x, reverseBits(~global2[_wgslsmith_index_u32(135953u, 9u)]))) & max(arg_1 | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 22650i, -2147483647i, -11585i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 16999i, global2[_wgslsmith_index_u32(30939u, 9u)], arg_1.x), vec4<i32>(30834i, 19300i, global4.c.x, arg_1.x), arg_1)), max(vec4<i32>(~0i, _wgslsmith_mod_i32(-57917i, arg_1.x), i32(-1i) * -1i, 0i), countOneBits(arg_1) >> (vec4<u32>(arg_0.a, global4.a, arg_0.a, arg_0.a) % vec4<u32>(32u))));
    global1 = array<Struct_1, 9>();
    global3 = -global2[_wgslsmith_index_u32(1u, 9u)];
    var var_1 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), false), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec3<f32>(global4.b.x, arg_0.b.x, global4.b.x), _wgslsmith_f_op_vec2_f32(-arg_0.b.zx), _wgslsmith_div_u32(u_input.d, arg_0.a)).b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x + -299f), _wgslsmith_f_op_f32(ceil(global4.b.x))), _wgslsmith_f_op_f32(global4.b.x - _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -109f))) + vec4<f32>(arg_0.b.x, 1738f, global4.b.x, arg_0.b.x));
    return Struct_1(_wgslsmith_sub_u32(min(~(~29517u), _wgslsmith_mod_u32(~arg_0.a, countOneBits(arg_0.a))), _wgslsmith_sub_u32(0u, u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.b))) + var_2.zyz) * global4.b), vec3<i32>(-min(_wgslsmith_add_i32(2147483647i, u_input.b), global4.c.x << (global4.a % 32u)), ~66274i, _wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(arg_0.a, 9u)], -40332i) >> (~global4.a % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(41779u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1.b - vec3<f32>(-318f, arg_1.b.x, 1225f)))), arg_1.b)), vec3<i32>(~_wgslsmith_add_i32(48619i, global4.c.x), ~_wgslsmith_dot_vec3_i32(-global4.c, firstTrailingBit(vec3<i32>(arg_3.x, global4.c.x, 2147483647i))), u_input.b));
    var var_1 = var_0.b.x;
    var var_2 = -29566i;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(1u), 1u), 9u)];
    var var_4 = arg_0;
    return 947f;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~45149u, 9u)];
    var var_1 = u_input.a;
    var var_2 = arg_0;
    let var_3 = global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d, var_2.a, 0u, var_0.a)), select(vec4<u32>(4294967295u, 6616u, 28126u, 18407u), vec4<u32>(global4.a, 0u, var_0.a, 4294967295u), vec4<bool>(false, true, true, true))), _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.a, 75098u, 1u), vec3<u32>(4294967295u, 1u, var_0.a)), vec3<u32>(17458u, 0u, 4294967295u))) >> (arg_0.a % 32u), reverseBits(4294967295u)), 9u)];
    let var_4 = var_2.b.x;
    return _wgslsmith_f_op_f32(func_5(func_4(func_2(arg_0.b, arg_0.b.xx, 0u), select(-(~vec4<i32>(arg_0.c.x, 4310i, arg_0.c.x, 2147483647i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(var_0.a, 9u)], -1i, 944i, global4.c.x)), firstLeadingBit(vec4<i32>(global4.c.x, -1i, -2147483647i, global4.c.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))))), arg_0, firstLeadingBit(vec4<u32>(min(var_3.a, reverseBits(var_0.a)), ~251u, _wgslsmith_mult_u32(u_input.d, var_0.a), abs(_wgslsmith_div_u32(var_0.a, 70184u)))), ~select(abs(arg_0.c.xz) ^ -vec2<i32>(0i, u_input.a), var_2.c.yz, vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -729f);
    var var_1 = global1[_wgslsmith_index_u32(0u, 9u)];
    global1 = array<Struct_1, 9>();
    let var_2 = Struct_1(~0u >> (1u % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(var_1.a, 9u)]))))), var_1.b.x, func_2(global4.b, vec2<f32>(global4.b.x, -710f), abs(46007u)).b.x), func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)), 1808f, 689f), var_1.b.yy, var_1.a), vec4<i32>(var_1.c.x, global4.c.x, global4.c.x, ~(~u_input.b))).c);
    var var_3 = select(var_1.a, (~u_input.d ^ _wgslsmith_add_u32(abs(var_2.a), 1u)) | 27293u, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    global3 = 2147483647i;
    let var_4 = !vec2<bool>(false, any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)));
    var_1 = global0[_wgslsmith_index_u32(global4.a, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -857f))), global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.b.xy * var_2.b.xz), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_2.b.zx)))))) - _wgslsmith_f_op_vec2_f32(min(var_1.b.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, 1639f) + vec2<f32>(-593f, -147f)))))));
}

