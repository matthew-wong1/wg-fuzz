struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4889u, 108u, 14092u, 4294967295u), vec4<u32>(8477u, 4294967295u, 1u, 68832u), vec4<u32>(29906u, 1u, 91386u, 4294967295u), vec4<u32>(42307u, 1u, 22532u, 31598u), vec4<u32>(4294967295u, 3473u, 33544u, 0u), vec4<u32>(0u, 15716u, 0u, 0u), vec4<u32>(67308u, 1u, 4294967295u, 1u), vec4<u32>(2606u, 0u, 77198u, 135340u), vec4<u32>(37526u, 104708u, 14857u, 4294967295u));

var<private> global2: array<f32, 4> = array<f32, 4>(1459f, -920f, -1000f, -527f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f - arg_0)) * global0.c))), Struct_1(_wgslsmith_f_op_f32(1913f + global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0.b, 40567u), 4u)]), ~firstLeadingBit(0u), -1709f, select(global0.d, global0.d, global0.d)), reverseBits(select(firstLeadingBit(~vec4<u32>(global0.b, 54314u, 0u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], vec4<u32>(23595u, 1u, global0.b, u_input.b), vec4<u32>(global0.b, 1u, u_input.b, global0.b)), false)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_3, arg_3), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(399f, global2[_wgslsmith_index_u32(4294967295u, 4u)], 135f)))))))), !((!global0.d.x || global0.d.x) || (all(global0.d) != false)));
    let var_1 = min(select(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~var_0.c, global1[_wgslsmith_index_u32(1u, 9u)]), ~var_0.c), var_0.c, false), ~(vec4<u32>(15664u << (u_input.b % 32u), ~global0.b, ~30625u, reverseBits(109790u)) << ((firstTrailingBit(vec4<u32>(var_0.b.b, 0u, var_0.c.x, global0.b)) | abs(var_0.c)) % vec4<u32>(32u))));
    global2 = array<f32, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.d)), vec3<f32>(-1055f, 1616f, global0.c), !vec3<bool>(true, true, global0.d.x))), vec3<f32>(_wgslsmith_div_f32(arg_3.x, global2[_wgslsmith_index_u32(1u, 4u)]), -1854f, _wgslsmith_f_op_f32(f32(-1f) * -841f))))));
    global1 = array<vec4<u32>, 9>();
    return var_0.b.b;
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = select(~global1[_wgslsmith_index_u32(~global0.b, 9u)], min(~max(vec4<u32>(8470u, 102356u, global0.b, 1u), vec4<u32>(4294967295u, u_input.b, 1u, 39724u)) << (vec4<u32>(46927u, 25576u, _wgslsmith_add_u32(u_input.b, 57646u), 58435u) % vec4<u32>(32u)), max(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(1u, 9u)] | ~vec4<u32>(20606u, u_input.b, u_input.b, u_input.b))), vec4<bool>(true, !(arg_0 == true), false, !global0.d.x));
    var_0 = ~global1[_wgslsmith_index_u32(1u, 9u)];
    var_0 = vec4<u32>(var_0.x, 4294967295u, u_input.b, _wgslsmith_sub_u32(~func_3(global2[_wgslsmith_index_u32(global0.b, 4u)], u_input.a.x, vec3<i32>(u_input.c, arg_1, 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1365f, global2[_wgslsmith_index_u32(1u, 4u)]))), ~(~global0.b)));
    var_0 = vec4<u32>(0u, 0u, 43925u, 77482u);
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.x, 69519u), 4294967295u), 4u)], Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(53090u, 4u)]), 5570u, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(1u, 4u)])), !select(global0.d, select(vec4<bool>(arg_0, arg_0, global0.d.x, true), vec4<bool>(arg_0, true, arg_0, arg_0), true), true)), global1[_wgslsmith_index_u32(92867u, 9u)] << (_wgslsmith_clamp_vec4_u32(vec4<u32>(49130u, 1u, 1u | var_0.x, u_input.b | 14857u), global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(42025u, 9u)]) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-777f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 4u)]), global0.c) + vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u >> (global0.b % 32u), abs(u_input.b)), 4u)], global0.c, global0.a)), 1u < u_input.b);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-529f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f - 1169f) + _wgslsmith_f_op_f32(106f - 754f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec2<f32> {
    global2 = array<f32, 4>();
    global2 = array<f32, 4>();
    var var_0 = -abs(u_input.a.yx);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(907f + _wgslsmith_f_op_f32(exp2(arg_1.x))), arg_0.b, _wgslsmith_f_op_f32(arg_1.x + 806f), arg_0.d);
    var_0 = select(u_input.a.zy, ~u_input.a.xx, all(select(select(vec3<bool>(true, var_1.d.x, false), vec3<bool>(global0.d.x, true, true), var_1.d.x), select(select(var_1.d.wyx, var_1.d.xzz, vec3<bool>(true, true, global0.d.x)), vec3<bool>(false, global0.d.x, var_1.d.x), true), arg_0.d.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(808f, 462f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(arg_0.b, 4u)]))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, -8730i))), ~0u, _wgslsmith_f_op_f32(1906f * arg_0.x), !global0.d);
    let var_0 = 453u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1463f), Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b << (u_input.b % 32u), countOneBits(0u)), 4u)]), ~1u, 966f, global0.d), ~global1[_wgslsmith_index_u32(arg_3.x, 9u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1280f, global2[_wgslsmith_index_u32(19284u, 4u)], true)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 4u)], arg_0.x)), 1144f))), all(select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true), select(global0.d, vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false), select(vec4<bool>(global0.d.x, false, false, true), vec4<bool>(true, false, false, false), false)), global0.d.x)));
    global1 = array<vec4<u32>, 9>();
    var var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(floor(-452f)), 25320u, _wgslsmith_f_op_f32(var_2.b.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a))), -1000f)), vec4<bool>(true, false, !global0.d.x, var_1.b.d.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    global2 = array<f32, 4>();
    var var_0 = ~arg_2.b;
    let var_1 = Struct_2(global0.c, func_5(_wgslsmith_f_op_vec2_f32(func_4(arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(func_2(global0.d.x, -20893i)), _wgslsmith_f_op_f32(-global0.c), -232f), vec3<u32>(~4294967295u, 1u, 38636u))), max(_wgslsmith_add_i32(u_input.c, -1i), 2147483647i) << ((64239u >> ((67307u | global0.b) % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec3<u32>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -770f), u_input.c, firstLeadingBit(vec3<i32>(u_input.c, -1i, 3939i)), _wgslsmith_f_op_vec3_f32(arg_0.ywx - vec3<f32>(arg_1.a, 1793f, -306f))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 25004u), vec3<u32>(arg_2.b, 12563u, global0.b)), 26023u)), min(abs(max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.b, global0.b, 1u), vec4<u32>(u_input.b, u_input.b, global0.b, 4294967295u)), 9u)], vec4<u32>(14522u, 0u, arg_1.c.x, arg_1.b.b))), vec4<u32>(~1u >> (1u % 32u), ~(~arg_1.b.b), 4294967295u, arg_2.b)), vec3<f32>(-642f, arg_2.c, -1641f), select(arg_1.e, select(true, any(vec2<bool>(false, global0.d.x)), true), all(select(vec2<bool>(arg_2.d.x, false), vec2<bool>(false, false), arg_3.x))) && (arg_3.x | (all(arg_2.d.wwy) | true)));
    let var_2 = _wgslsmith_f_op_f32(func_2(~(firstTrailingBit(32832i) & _wgslsmith_sub_i32(2147483647i, 1819i)) >= (2576i ^ (u_input.a.x ^ _wgslsmith_add_i32(u_input.a.x, -38986i))), ~u_input.a.x));
    var var_3 = vec2<bool>(true, arg_1.e);
    return vec4<bool>(_wgslsmith_add_u32(u_input.b, 0u) >= _wgslsmith_div_u32(arg_2.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(124362u, arg_2.b), max(1u, 0u))), all(select(select(vec4<bool>(global0.d.x, arg_1.b.d.x, var_3.x, arg_2.d.x), vec4<bool>(var_3.x, arg_3.x, true, var_3.x), true), select(arg_1.b.d, global0.d, vec4<bool>(global0.d.x, true, global0.d.x, true)), arg_3.x)) | var_1.b.d.x, !(-36052i > -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = -1155f;
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.c), ~_wgslsmith_mult_u32(25587u, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(300f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1150f, global0.c, false)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.b, 4u)] + global2[_wgslsmith_index_u32(4294967295u, 4u)]))) - global2[_wgslsmith_index_u32(~1u, 4u)]), !select(select(select(global0.d, vec4<bool>(true, true, false, global0.d.x), global0.d.x), !vec4<bool>(false, global0.d.x, false, false), global0.d), !func_1(vec4<f32>(565f, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(52609u, 4u)], global0.c), Struct_2(480f, Struct_1(1251f, 4294967295u, -294f, global0.d), global1[_wgslsmith_index_u32(global0.b, 9u)], vec3<f32>(1536f, global2[_wgslsmith_index_u32(u_input.b, 4u)], 779f), global0.d.x), Struct_1(1000f, global0.b, global2[_wgslsmith_index_u32(44912u, 4u)], global0.d), global0.d.zz), func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-1231f, global2[_wgslsmith_index_u32(0u, 4u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)])), u_input.c >> (u_input.b % 32u), -3039f, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 34280u), vec3<u32>(0u, global0.b, 40385u))).d));
    var_1 = global2[_wgslsmith_index_u32(global0.b ^ _wgslsmith_dot_vec3_u32(abs(vec3<u32>(61522u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 1u, u_input.b)) | ~select(vec3<u32>(65972u, 0u, 1u), vec3<u32>(92125u, 68065u, 4294967295u), false), vec3<u32>(abs(global0.b), global0.b, ~4294967295u)), 4u)];
    var_0 = _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.b, u_input.b) & vec3<u32>(12822u, global0.b, 4294967295u), vec3<u32>(4294967295u, u_input.b, 0u)), 31160u | ~global0.b), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(33234u, 19486u), vec2<u32>(global0.b, 7414u)))));
    let var_2 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-232f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(1u, 1u), global0.b), 4u)])), u_input.c, global2[_wgslsmith_index_u32(1u, 4u)], vec3<u32>(func_5(vec2<f32>(global0.c, -1000f), u_input.a.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 4u)] - global0.c), ~vec3<u32>(99319u, global0.b, 52199u)).b, ~global0.b ^ u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.b, 4294967295u), vec3<u32>(29229u, u_input.b, 16882u))) | (~vec3<u32>(1u, 1u, 83016u) & ~(~vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global0.b, 4u)], var_2.a)), abs(21901u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2010f - _wgslsmith_f_op_f32(-1008f + _wgslsmith_f_op_f32(500f + -1481f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(463f + -523f), global0.c) + _wgslsmith_f_op_f32(-var_2.a))), vec4<bool>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, 980f, 1131f, -137f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, 293f, -1000f, 575f))), Struct_2(_wgslsmith_f_op_f32(-var_2.c), func_5(vec2<f32>(-912f, global0.a), -37574i, -357f, vec3<u32>(0u, 0u, 49189u)), global1[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(1369f, 155f, 343f)), global2[_wgslsmith_index_u32(9350u, 4u)] <= global2[_wgslsmith_index_u32(9435u, 4u)]), Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 4u)]), 1u, var_2.c, vec4<bool>(global0.d.x, global0.d.x, true, false)), var_2.d.xy).x, u_input.c >= 1i, global0.d.x, global0.d.x));
    var var_4 = !var_3.d.x;
    var var_5 = _wgslsmith_f_op_f32(select(418f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)) * _wgslsmith_f_op_vec2_f32(func_4(Struct_1(global0.c, u_input.b, global0.a, global0.d), vec3<f32>(395f, 1973f, global2[_wgslsmith_index_u32(var_3.b, 4u)]), select(vec3<u32>(global0.b, u_input.b, 4294967295u), vec3<u32>(10813u, 37531u, 0u), var_2.d.wwz))).x))), !all(global0.d.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) + -160f), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, var_2.c), vec2<f32>(1054f, 736f))), u_input.c, -196f, ~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b, var_3.b, global0.b), vec3<u32>(49045u, 34498u, var_2.b))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(49513u, u_input.b), 4u)] + -1000f))), ~(~select(~vec2<u32>(6939u, u_input.b), vec2<u32>(var_2.b, global0.b) | vec2<u32>(var_3.b, u_input.b), func_5(vec2<f32>(597f, 484f), u_input.c, global0.c, vec3<u32>(1u, global0.b, 1u)).d.x)), ~vec2<i32>(2147483647i, u_input.c ^ countOneBits(u_input.c)));
}

