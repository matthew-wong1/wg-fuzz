struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(63254u, 4294967295u, 36498u);

var<private> global1: f32 = 1000f;

var<private> global2: array<i32, 4> = array<i32, 4>(i32(-2147483648), 18401i, 1i, 2965i);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(72444i, 23116i, -14284i, -68416i), vec2<u32>(40732u, 1u), 1u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec4<f32> {
    global3 = Struct_1(-u_input.d, _wgslsmith_mod_vec2_u32(max(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(14825u, u_input.a), 3u)], _wgslsmith_clamp_u32(35330u, 4294967295u, 59881u)), ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], global0[_wgslsmith_index_u32(global3.c, 3u)])), global3.b), global3.c | global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.a | 0u, 3u)], 1u), 3u)]);
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(-(~_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(global3.a.x, global2[_wgslsmith_index_u32(global3.b.x, 4u)], 0i, -28409i))), vec4<i32>(-32318i, _wgslsmith_div_i32(countOneBits(-35776i), 21371i), ~(~global3.a.x), u_input.d.x)), ~min(vec2<u32>(u_input.a, min(global0[_wgslsmith_index_u32(u_input.e, 3u)], global3.b.x)), vec2<u32>(40870u, reverseBits(global3.c))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)]), 3u)], 4294967295u, _wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(27308u, 3u)]), global0[_wgslsmith_index_u32(23147u & u_input.c, 3u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.x, 0u, 16608u, u_input.e), vec4<u32>(46496u, 58964u, 4294967295u, u_input.e)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.c), vec4<u32>(20346u, 112704u, global0[_wgslsmith_index_u32(4294967295u, 3u)], global3.c)))));
    global3 = var_0;
    let var_1 = countOneBits(18375u);
    var var_2 = max(select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1, 52783u, var_1, 0u), countOneBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 1u))), ~(reverseBits(vec4<u32>(var_0.b.x, 1u, var_1, 6473u)) >> (firstTrailingBit(vec4<u32>(11474u, 4294967295u, 0u, var_1)) % vec4<u32>(32u))), any(select(!arg_0, !arg_0, arg_0.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, ~0u, ~var_0.c, 23914u), max(vec4<u32>(18607u, u_input.e, 4294967295u, 1u), reverseBits(vec4<u32>(0u, var_1, var_0.c, 14583u)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-1085f - -1562f), arg_1.x, arg_1.x, -330f);
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, 128f, 241f) - vec3<f32>(-1605f, 1113f, 120f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1538f, 431f, -229f)))))))));
    var var_1 = global3.a.x >= (3404i | min(select(-1i >> (global3.c % 32u), ~(-2147483647i), true), u_input.b.x));
    let var_2 = Struct_1(firstTrailingBit(abs(countOneBits(-vec4<i32>(-3495i, global2[_wgslsmith_index_u32(1u, 4u)], u_input.b.x, u_input.b.x)))), vec2<u32>(~(~global3.b.x), (~67794u << (firstTrailingBit(global0[_wgslsmith_index_u32(0u, 3u)]) % 32u)) | _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.c, 3u)], 12299u)), u_input.e);
    global1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = Struct_1(reverseBits(vec4<i32>(-countOneBits(0i), select(reverseBits(0i), var_2.a.x, any(vec3<bool>(true, false, false))), u_input.d.x, _wgslsmith_add_i32(u_input.b.x, 27928i) ^ (global3.a.x >> (62356u % 32u)))), firstTrailingBit(reverseBits(_wgslsmith_mod_vec2_u32(min(global3.b, global3.b), _wgslsmith_add_vec2_u32(var_2.b, vec2<u32>(global0[_wgslsmith_index_u32(20711u, 3u)], global3.c))))), 15334u);
    return select(~max(~abs(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(36780u, 3u)], 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.x, global3.c, var_2.b.x), vec3<u32>(var_3.c, 57749u, var_2.c)), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], 51909u, u_input.e)))), abs(max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 0u, var_2.c), vec3<u32>(24833u, var_3.b.x, var_3.b.x)), ~(vec3<u32>(36484u, 1u, var_2.c) >> (vec3<u32>(var_3.b.x, 0u, 16967u) % vec3<u32>(32u))))), any(!vec3<bool>(false, true, all(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = arg_1;
    let var_2 = Struct_1(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(-(var_1.a.wz | vec2<i32>(var_1.a.x, -27176i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_1.a.x) ^ vec2<i32>(u_input.d.x, -1i), u_input.d.yz & vec2<i32>(-29i, -2147483647i))), 7225i, abs(-1i)), arg_1.b, 31259u);
    var var_3 = var_1;
    let var_4 = Struct_1(-(~vec4<i32>(firstTrailingBit(24834i), ~(-2147483647i), var_3.a.x, ~1i)), var_1.b, 44849u);
    return Struct_1(~var_3.a, vec2<u32>(func_2().x, 108113u), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -336f;
    var var_1 = !vec4<bool>(false, false, any(vec4<bool>(true, true, true, false)), true);
    let var_2 = Struct_1(_wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(-3117i, -1i, 0i, u_input.d.x)), vec4<i32>(-35825i, _wgslsmith_dot_vec4_i32(u_input.d, firstLeadingBit(vec4<i32>(arg_0.a.x, global3.a.x, global3.a.x, -4289i))), -61800i & global3.a.x, abs(global3.a.x))), ~global3.b, global3.b.x);
    let var_3 = select(select(select(select(vec4<bool>(var_1.x, true, true, true), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), true), true), !(!vec4<bool>(true, true, false, var_1.x)), var_1.x), !(!(!vec4<bool>(true, false, true, var_1.x))), select(select(select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, false, false, true)), !vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, false, true)), select(!vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, var_1.x, true, var_1.x), any(var_1.yw)), select(vec4<bool>(true, var_1.x, var_1.x, true), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, var_1.x, false, false)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, true), true)))), !(!select(select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true))), vec4<bool>(false, !var_1.x, true, var_1.x & var_1.x));
    let var_4 = vec4<i32>(-_wgslsmith_div_i32(-_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(23724u, 4u)], 0i), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 4u)], global3.a.x ^ 0i)), _wgslsmith_dot_vec4_i32(var_2.a, ~vec4<i32>(u_input.b.x, -9990i, 1409i, 1i)) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(8892u, u_input.c, global0[_wgslsmith_index_u32(20252u, 3u)], arg_1.b.x)), vec4<u32>(4294967295u, ~global3.b.x, ~var_2.b.x, reverseBits(26883u))) % 32u), -(~(-(0i << (arg_0.c % 32u)))), 32718i);
    return Struct_1(_wgslsmith_sub_vec4_i32(~(~(~var_2.a)), _wgslsmith_clamp_vec4_i32(-max(arg_1.a, vec4<i32>(-2147483647i, global3.a.x, 0i, 0i)), var_4, var_2.a)), var_2.b, u_input.c);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~reverseBits(u_input.d), arg_3.b, u_input.e);
    global0 = array<u32, 3>();
    let var_1 = Struct_1(-vec4<i32>(global2[_wgslsmith_index_u32(select(~8985u, func_1(arg_1.x, Struct_1(arg_3.a, vec2<u32>(0u, 28479u), var_0.c)).b.x, arg_1.x), 4u)], func_1(select(arg_1.x, true, arg_1.x), arg_3).a.x, var_0.a.x & 45251i, global3.a.x), vec2<u32>(1u, 2001u), var_0.c);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-282f, 242f))))) - _wgslsmith_f_op_f32(f32(-1f) * -124f));
    var var_2 = !(!arg_1.wz);
    return Struct_1(-select(firstTrailingBit(arg_3.a & arg_3.a), vec4<i32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, global3.a.x) | _wgslsmith_mod_vec4_i32(global3.a, u_input.d), true), arg_0.ww, _wgslsmith_clamp_u32(~(~42407u) | (_wgslsmith_mult_u32(global3.b.x, global3.c) & ~var_0.c), 4294967295u, _wgslsmith_dot_vec2_u32(var_0.b, ~vec2<u32>(global3.c, global0[_wgslsmith_index_u32(arg_2.x, 3u)]))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(-6661i), select(37580i, -9124i, true), arg_2.a.x, _wgslsmith_sub_i32(20053i, u_input.d.x)), -(arg_0.a & vec4<i32>(2147483647i, 6846i, global3.a.x, 1i)), vec4<i32>(arg_2.a.x, -36057i, arg_2.a.x, -2147483647i) | -vec4<i32>(arg_1.a.x, -11760i, global3.a.x, -2147483647i)), arg_2.a, vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true));
    let var_1 = arg_1;
    let var_2 = select(0u, u_input.a, true) | ~_wgslsmith_dot_vec2_u32(var_1.b, func_2().xz);
    global3 = Struct_1(_wgslsmith_mod_vec4_i32(arg_2.a, ~countOneBits(var_1.a)), max(~vec2<u32>(_wgslsmith_mod_u32(var_1.b.x, arg_1.b.x), _wgslsmith_sub_u32(var_1.b.x, 1u)), abs(~abs(vec2<u32>(75810u, 9924u)))), 0u);
    var var_3 = global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(1u, ~arg_0.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, 4294967295u, 0u, arg_0.c), vec4<u32>(30565u, 1u, global3.c, arg_1.b.x)), vec4<u32>(16846u, 0u, 47106u, global0[_wgslsmith_index_u32(var_1.c, 3u)]))) ^ global0[_wgslsmith_index_u32(~abs(0u) | func_1(true, Struct_1(vec4<i32>(61687i, -2147483647i, var_1.a.x, 0i), vec2<u32>(var_2, 4294967295u), u_input.a)).b.x, 3u)]), 4u)];
    return func_1(select(true, true, !(~global2[_wgslsmith_index_u32(11534u, 4u)] < (i32(-1i) * -5820i))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, any(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), false)), false, true);
    var var_1 = _wgslsmith_mod_i32(firstTrailingBit(1i) ^ _wgslsmith_mod_i32(~u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-18903i, u_input.d.x, global3.a.x), u_input.b) << (_wgslsmith_dot_vec2_u32(global3.b, vec2<u32>(u_input.a, u_input.e)) % 32u)), ~countOneBits(firstLeadingBit(global3.a.x)));
    global3 = Struct_1(abs(global3.a), select(~vec2<u32>(u_input.a, 3474u), _wgslsmith_sub_vec2_u32(~global3.b, firstTrailingBit(global3.b)), true == var_0.x), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.c, 3u)], _wgslsmith_mod_u32(abs(abs(u_input.a)), global3.b.x)));
    var var_2 = func_6(func_5(vec4<u32>(global3.b.x, _wgslsmith_dot_vec2_u32(global3.b >> (global3.b % vec2<u32>(32u)), vec2<u32>(global3.c, u_input.e)), _wgslsmith_mod_u32(49337u, ~global3.b.x), _wgslsmith_clamp_u32(15497u, 1u, _wgslsmith_add_u32(global3.b.x, global0[_wgslsmith_index_u32(global3.b.x, 3u)]))), select(vec4<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), false, var_0.x, true), vec4<bool>(any(vec4<bool>(false, true, var_0.x, true)), u_input.a != 0u, var_0.x, !var_0.x), 24419u == _wgslsmith_div_u32(global3.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.x, 3u)], 3u)])), vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(31264u, 3u)], ~0u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global3.c, 19813u), 4294967295u ^ global0[_wgslsmith_index_u32(17229u, 3u)]), 3u)], _wgslsmith_add_u32(abs(0u), ~1u), global0[_wgslsmith_index_u32(1u, 3u)]), func_4(func_1(global2[_wgslsmith_index_u32(u_input.e, 4u)] > -2147483647i, Struct_1(u_input.d, global3.b, 27170u)), func_1(true, func_1(var_0.x, Struct_1(u_input.d, global3.b, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -1000f, _wgslsmith_f_op_f32(sign(-1000f))))), func_5(vec4<u32>(global3.c, ~u_input.a, func_2().x, global3.b.x), !select(var_0, var_0, vec4<bool>(false, var_0.x, var_0.x, true)), vec4<u32>(global0[_wgslsmith_index_u32(global3.b.x & firstTrailingBit(u_input.c), 3u)], u_input.a, 36964u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(63406u, 4294967295u, global0[_wgslsmith_index_u32(10408u, 3u)], global3.c), vec4<u32>(17726u, u_input.e, 6566u, global3.b.x)), select(vec4<u32>(global3.b.x, u_input.a, 1u, u_input.c), vec4<u32>(57049u, global3.c, 34316u, 15570u), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), Struct_1(global3.a, _wgslsmith_mult_vec2_u32(firstTrailingBit(global3.b), vec2<u32>(global0[_wgslsmith_index_u32(17510u, 3u)], 109391u)), 58778u)), func_4(Struct_1(firstLeadingBit(vec4<i32>(-73882i, 0i, u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 4u)])), ~firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), 0u), func_4(func_5(~vec4<u32>(81350u, 0u, global3.c, u_input.c), select(var_0, var_0, true), ~vec4<u32>(0u, 4294967295u, 28718u, u_input.c), func_4(Struct_1(global3.a, vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 3u)]), u_input.e), Struct_1(u_input.d, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59178u, 3u)], 3u)], 1u), global0[_wgslsmith_index_u32(global3.c, 3u)]), vec3<f32>(-1000f, -691f, -1259f))), Struct_1(abs(vec4<i32>(48587i, u_input.b.x, -2147483647i, global3.a.x)), vec2<u32>(global0[_wgslsmith_index_u32(1u, 3u)], global3.b.x) << (global3.b % vec2<u32>(32u)), 0u), _wgslsmith_f_op_vec4_f32(func_3(!var_0.ww, vec3<f32>(383f, 973f, -1663f))).wwx), _wgslsmith_f_op_vec4_f32(func_3(!var_0.zz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2153f, 330f, 998f)))).yxw));
    global0 = array<u32, 3>();
    global3 = Struct_1(~vec4<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(33248u, u_input.e)), 4u)], _wgslsmith_dot_vec2_i32(var_2.a.wy, -global3.a.yy), ~_wgslsmith_sub_i32(u_input.d.x, global2[_wgslsmith_index_u32(1u, 4u)]), countOneBits(~global2[_wgslsmith_index_u32(94764u, 4u)])), vec2<u32>(global3.b.x, _wgslsmith_sub_u32(~(global3.c << (u_input.a % 32u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global3.c, 3u)], _wgslsmith_div_u32(u_input.c, 1u)))), ~var_2.b.x);
    global0 = array<u32, 3>();
    let var_3 = func_6(Struct_1(~vec4<i32>(~2147483647i, 10727i, u_input.b.x, -18191i), global3.b, ~(u_input.a & _wgslsmith_add_u32(114614u, 0u))), func_6(Struct_1(~(-vec4<i32>(-82231i, 2147483647i, var_2.a.x, -1765i)), vec2<u32>(_wgslsmith_div_u32(38766u, 3357u), ~72556u), _wgslsmith_add_u32(select(var_2.c, 26615u, var_0.x), ~var_2.c)), Struct_1(_wgslsmith_mod_vec4_i32(var_2.a, -vec4<i32>(-12738i, global3.a.x, u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 4u)])), ~vec2<u32>(4294967295u, 0u) >> (var_2.b % vec2<u32>(32u)), global3.b.x), func_6(Struct_1(~vec4<i32>(-15583i, -1i, u_input.b.x, var_2.a.x), vec2<u32>(91782u, global0[_wgslsmith_index_u32(global3.b.x, 3u)]), _wgslsmith_sub_u32(var_2.c, 58054u)), func_4(Struct_1(u_input.d, vec2<u32>(4294967295u, 100627u), u_input.e), func_5(vec4<u32>(u_input.e, u_input.e, 26583u, 1u), vec4<bool>(true, var_0.x, var_0.x, false), vec4<u32>(814u, 4294967295u, 85360u, u_input.e), Struct_1(vec4<i32>(-1i, -2147483647i, global2[_wgslsmith_index_u32(1u, 4u)], -2147483647i), vec2<u32>(u_input.e, global0[_wgslsmith_index_u32(var_2.c, 3u)]), 115295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1502f, 266f, 1084f) - vec3<f32>(1055f, 761f, -623f))), Struct_1(~vec4<i32>(-2147483647i, -19413i, var_2.a.x, -2147483647i), vec2<u32>(global3.b.x, 5666u), u_input.e))), func_4(Struct_1(abs(-u_input.d), vec2<u32>(abs(2427u), 1u), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global3.c), 3u)]), Struct_1(_wgslsmith_sub_vec4_i32(u_input.d << (vec4<u32>(0u, global3.c, 4294967295u, var_2.c) % vec4<u32>(32u)), vec4<i32>(var_2.a.x, 1i, 7177i, var_2.a.x)), global3.b, 4294967295u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(386f * -170f), _wgslsmith_f_op_f32(round(1893f)), -484f)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_3(select(!select(!var_0.yw, var_0.wz, var_0.x), vec2<bool>(var_0.x, all(select(var_0, vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, true, var_0.x, var_0.x)))), var_0.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-258f + -652f), _wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_div_f32(273f, -522f)))) * vec3<f32>(1330f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2081f, 1230f) + _wgslsmith_f_op_f32(step(155f, 475f))), _wgslsmith_f_op_f32(-575f - 1000f))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2324u, 10491u, 68063u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.x, global3.b.x, u_input.e), vec3<u32>(var_2.c, 0u, global3.b.x), vec3<u32>(global3.c, var_2.b.x, 51984u))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, global0[_wgslsmith_index_u32(1u, 3u)], u_input.c, var_2.b.x), vec4<u32>(var_2.c, 1u, var_2.c, u_input.c)), 0u << (u_input.a % 32u))), 58420u), var_2.a, vec3<i32>(global2[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 45468u), 3u)] >> (u_input.a % 32u)) ^ 2029u, 4u)], _wgslsmith_div_i32(25318i, var_2.a.x & reverseBits(-1i)), -_wgslsmith_dot_vec3_i32(global3.a.ywx, vec3<i32>(u_input.b.x, 5234i, global2[_wgslsmith_index_u32(global3.c, 4u)]))), min(global3.a.xwz, vec3<i32>(var_2.a.x, u_input.b.x ^ _wgslsmith_mod_i32(var_3.a.x, 7611i), min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50791u, u_input.c, var_2.b.x), vec3<u32>(101672u, global3.b.x, global3.c)), 4u)], _wgslsmith_mod_i32(var_3.a.x, global3.a.x)))), 14928u);
}

