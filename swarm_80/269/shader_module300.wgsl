struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(1000f, -639f, Struct_1(false, vec2<f32>(-1308f, -761f), false, vec3<f32>(1389f, -1054f, -752f), vec3<f32>(-258f, -919f, 1172f)), Struct_1(true, vec2<f32>(1088f, -376f), false, vec3<f32>(416f, 1000f, -1437f), vec3<f32>(1000f, 476f, -1000f))), Struct_3(-241f, 411f, Struct_1(false, vec2<f32>(1951f, -949f), true, vec3<f32>(474f, 895f, 1269f), vec3<f32>(-1796f, -519f, -343f)), Struct_1(false, vec2<f32>(-675f, 1759f), false, vec3<f32>(1055f, -3544f, -318f), vec3<f32>(1000f, 1124f, -751f))), vec3<i32>(-15622i, -2600i, -3892i), 47583u, vec2<f32>(-1198f, -652f));

var<private> global1: array<u32, 16>;

var<private> global2: array<u32, 14>;

var<private> global3: array<bool, 30> = array<bool, 30>(false, true, false, true, false, true, true, true, false, true, false, true, true, true, false, false, true, false, false, false, false, true, true, true, false, true, false, true, true, false);

var<private> global4: array<Struct_4, 21>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global0 = Struct_4(global0.b, global0.a, abs(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 1i, 1i), global0.c))), ~9615u, global0.a.c.e.zz);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -612f))))))) + _wgslsmith_f_op_f32(-global0.e.x));
    var var_1 = Struct_2(!select(vec4<bool>(global0.b.d.a, !global3[_wgslsmith_index_u32(0u, 30u)], true, !global0.a.d.c), !select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 30u)], false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0.d, 30u)], global0.a.d.c), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38034u, 14u)], 14u)], 30u)]), global0.b.c.a));
    var var_2 = _wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], global0.d))), ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(global0.d, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 14u)], 4294967295u)), ~vec2<u32>(global2[_wgslsmith_index_u32(31651u, 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52385u, 16u)], 14u)]), min(vec2<u32>(global0.d, 12223u), vec2<u32>(4294967295u, global0.d)))) | global1[_wgslsmith_index_u32(1u >> (1u % 32u), 16u)];
    global2 = array<u32, 14>();
    return ~abs(_wgslsmith_dot_vec3_i32(-(~u_input.a), -(vec3<i32>(arg_0.x, global0.c.x, global0.c.x) & vec3<i32>(2147483647i, -36569i, arg_0.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 14u)], 30u)], global3[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44912u, 14u)] | 62557u, 16u)]), 30u)] || select(all(select(vec3<bool>(global0.b.d.c, global0.b.d.a, true), vec3<bool>(global0.b.c.c, global3[_wgslsmith_index_u32(arg_1.d, 30u)], global3[_wgslsmith_index_u32(arg_1.d, 30u)]), vec3<bool>(false, false, global0.a.c.c))), arg_1.b.c.a == !global3[_wgslsmith_index_u32(arg_1.d, 30u)], !any(vec3<bool>(false, global0.b.c.a, true))), !(0i != arg_0));
    var var_1 = !(true | (arg_1.b.c.c & true));
    var var_2 = ~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0.d, arg_1.d), select(global0.d, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.d, 16u)], 14u)], false), abs(0u)), vec3<u32>(abs(4294967295u), global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(1u, 14u)]), 14u)], _wgslsmith_add_u32(42986u, arg_1.d))));
    var var_3 = arg_1.a.c;
    let var_4 = Struct_4(Struct_3(-344f, 1012f, Struct_1(_wgslsmith_div_i32(-58461i, u_input.a.x) >= 2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, var_3.d.x)), select(false, global0.b.c.c && var_0.x, false), global0.a.d.e, _wgslsmith_f_op_vec3_f32(min(arg_1.a.d.d, _wgslsmith_f_op_vec3_f32(-var_3.d)))), Struct_1(global0.c.x > _wgslsmith_mod_i32(-45445i, u_input.a.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(996f, arg_1.a.d.e.x))), _wgslsmith_div_vec2_f32(var_3.e.zx, vec2<f32>(global0.b.a, 358f)))), any(vec2<bool>(var_3.a, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.a.c.e - var_3.e))), arg_1.a.d.d)), global0.a, vec3<i32>(-2147483647i, 0i, 20470i), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(38111u, 5143u, arg_1.d)), firstLeadingBit(vec3<u32>(arg_1.d, arg_1.d, 1u) >> (vec3<u32>(88488u, arg_1.d, global2[_wgslsmith_index_u32(17214u, 14u)]) % vec3<u32>(32u)))), 14u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.e.zx * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, var_3.b.x) - var_3.e.zx))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global0.b.c.b, vec2<f32>(var_3.b.x, -329f), true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(589f, global0.a.c.e.x))), var_0.yz)))))));
    return false;
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = vec4<bool>(func_4(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.c.x, u_input.b.x), _wgslsmith_div_i32(func_3(vec3<i32>(-1i, global0.c.x, global0.c.x)), func_3(vec3<i32>(u_input.b.x, 34128i, global0.c.x)))), Struct_4(global0.b, global0.b, ~global0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(80819u, global2[_wgslsmith_index_u32(1u, 14u)]), vec2<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 37710u)), ~vec2<u32>(global2[_wgslsmith_index_u32(45105u, 14u)], 32560u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1038f, -448f) * global0.e))), false, !(!arg_0.x), _wgslsmith_mult_u32(~select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 16u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9207u, 16u)], 14u)], true), min(~4294967295u, firstLeadingBit(0u))) < ~(~27535u));
    var var_1 = global0.b.d;
    global3 = array<bool, 30>();
    global3 = array<bool, 30>();
    let var_2 = global4[_wgslsmith_index_u32(select(_wgslsmith_add_u32(abs(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14358u, 14u)], 14u)], 14u)], 16u)]), 9904u), ~0u, ~1u == (global0.d >> (global0.d % 32u))) >> (firstTrailingBit(select(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~1u), 14u)], 14u)], any(arg_0.zy))) % 32u), 21u)];
    return global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 21u)];
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> StorageBuffer {
    let var_0 = func_2(!vec4<bool>(arg_2.c.a, any(select(vec2<bool>(global0.b.c.c, true), vec2<bool>(global3[_wgslsmith_index_u32(18311u, 30u)], false), global0.a.d.a)), global3[_wgslsmith_index_u32(56811u << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.d, arg_1.x), 16u)] % 32u), 30u)], any(!vec3<bool>(true, true, arg_2.d.c))));
    global4 = array<Struct_4, 21>();
    var var_1 = ~(((vec4<i32>(-1i) * -vec4<i32>(global0.c.x, global0.c.x, -1i, global0.c.x)) ^ vec4<i32>(func_3(var_0.c), -2147483647i, 3044i, -1i)) >> (vec4<u32>(59528u, ~1u, 55596u, 9353u & arg_1.x) % vec4<u32>(32u)));
    let var_2 = vec3<bool>(!global0.a.d.c, global0.b.d.c, global0.a.d.c);
    let var_3 = _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c.x, -(i32(-1i) * -1i), (var_1.x ^ var_0.c.x) & var_1.x, -12113i), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, -2214i, -2147483647i, 1i) >> (vec4<u32>(1u, 1u, 2869u, 60853u) % vec4<u32>(32u)), select(vec4<i32>(var_0.c.x, global0.c.x, global0.c.x, -15645i), vec4<i32>(1i, 8193i, -15733i, 2147483647i), var_0.b.d.a)), ~min(vec4<i32>(-1i, u_input.a.x, var_1.x, -14848i), vec4<i32>(u_input.a.x, var_0.c.x, 1i, var_0.c.x)), vec4<i32>(reverseBits(u_input.a.x), _wgslsmith_add_i32(var_1.x, -13851i), _wgslsmith_mult_i32(u_input.a.x, -23789i), -20764i))));
    return StorageBuffer(0u, var_3, reverseBits(vec4<i32>(0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 39919i), vec2<i32>(-1i, 2147483647i)), abs(12839i), var_1.x)), (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(9338u, global2[_wgslsmith_index_u32(1u, 14u)], 4294967295u, 4294967295u), vec4<u32>(45189u, 388u, global2[_wgslsmith_index_u32(9769u, 14u)], 4294967295u))) << (abs(vec4<u32>(89494u, 0u, 4294967295u, global1[_wgslsmith_index_u32(var_0.d, 16u)])) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(22348u ^ global2[_wgslsmith_index_u32(4294967295u, 14u)], 67212u, var_0.d, 4294967295u), ~vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(46302u, 16u)], 8244u) ^ select(vec4<u32>(global1[_wgslsmith_index_u32(global0.d, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4860u, 16u)], 14u)], arg_1.x), vec4<u32>(0u, 0u, global0.d, arg_1.x), vec4<bool>(false, global3[_wgslsmith_index_u32(global0.d, 30u)], global3[_wgslsmith_index_u32(var_0.d, 30u)], true))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4[_wgslsmith_index_u32(20254u, 21u)];
    let var_0 = vec4<f32>(-771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(928f, -1064f))) * _wgslsmith_f_op_f32(step(-145f, global0.a.b))), _wgslsmith_f_op_f32(sign(-1402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(global0.b.b * 636f)), _wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(f32(-1f) * -1209f))))));
    global3 = array<bool, 30>();
    let var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(global0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(abs(-1418f)))) * global0.b.b));
    let var_2 = true;
    var var_3 = global0.c.x | global0.c.x;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(abs(999f)), reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(64354u, 23522u) & vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 14u)], 17740u), ~vec2<u32>(115374u, global0.d), select(vec2<u32>(49388u, 38033u), vec2<u32>(global0.d, global0.d), true))), global0.a, var_0.x);
}

