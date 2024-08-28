struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global2 = Struct_1(~(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.xxy), u_input.a.xyx) | _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global2.b.x), vec3<u32>(global2.a, global2.a, u_input.c)))), countOneBits(abs(global0[_wgslsmith_index_u32(1u, 4u)])));
    let var_0 = Struct_2(~(~(vec4<u32>(87547u, 0u, 0u, 17711u) >> (vec4<u32>(1u, 36196u, global2.b.x, 1u) % vec4<u32>(32u)))) >> (~u_input.a % vec4<u32>(32u)), Struct_1(0u | _wgslsmith_dot_vec2_u32(u_input.a.yw, _wgslsmith_mod_vec2_u32(u_input.a.wx, vec2<u32>(global2.b.x, global1.x))), global2.b << (u_input.a % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b));
    let var_1 = Struct_1(abs(global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(max(~53116u, firstTrailingBit(var_0.a.x)), ~(~u_input.c), global2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, global1.x), vec2<u32>(42427u, u_input.a.x)) | countOneBits(1u)), u_input.a));
    let var_2 = false;
    var var_3 = var_1;
    return all(select(!(!select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, false, var_2), false)), select(vec3<bool>(!var_2, true, true), vec3<bool>(false, false, var_2), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), !vec3<bool>(var_2, var_2, false))), !vec3<bool>(false, var_2, !var_2)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_sub_vec4_u32(global2.b, vec4<u32>(27365u, arg_0.x, 16089u, 11522u) & countOneBits(vec4<u32>(26949u, u_input.a.x, 69952u, 0u))), arg_2, -1i);
    var var_1 = vec3<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.b.zxy, max(vec3<u32>(7095u, 1u, var_0.a.x), var_0.a.xwx)), global1.x)), 0u, u_input.c);
    var var_2 = Struct_2(vec4<u32>(~firstTrailingBit(~19047u), 4294967295u, 7287u, var_1.x), Struct_1(_wgslsmith_add_u32(~32223u, _wgslsmith_sub_u32(arg_0.x, var_1.x) ^ u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, 0u, var_0.a.x, 4294967295u) | vec4<u32>(36441u, 0u, 13500u, arg_2.b.x), firstLeadingBit(vec4<u32>(11545u, 1u, global1.x, 0u))) | u_input.a), var_0.c);
    global3 = array<f32, 15>();
    var_1 = select(~abs((vec3<u32>(24414u, 9735u, 4294967295u) >> (vec3<u32>(29594u, arg_2.a, 1u) % vec3<u32>(32u))) ^ ~var_0.b.b.wwx), vec3<u32>(~(~u_input.a.x) << (var_1.x % 32u), _wgslsmith_mult_u32(arg_2.a, 1u) << (0u % 32u), ~(~u_input.a.x)), select(vec3<bool>(func_3(), func_3(), any(vec4<bool>(false, true, true, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true), !(_wgslsmith_mod_u32(var_0.a.x, 13900u) <= 1u)));
    return Struct_1(~firstTrailingBit(~abs(var_0.a.x)), global2.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global3 = array<f32, 15>();
    let var_0 = func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, arg_1.a), 2077u << (0u % 32u), ~arg_1.a, ~16887u), reverseBits(vec4<u32>(arg_0, 1u, arg_0, 82803u))), vec4<u32>(countOneBits(_wgslsmith_mult_u32(88813u, arg_1.b.x)), 1u, select(1u, arg_0, true), 1u), abs(vec4<u32>(~57971u, global2.b.x, 3390u, firstTrailingBit(arg_1.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 15u)] + global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.b.zy, vec2<u32>(0u, global1.x)), 15u)]))))), arg_1, vec2<i32>((2147483647i & firstLeadingBit(u_input.d)) >> (max(func_2(u_input.a, 1471f, Struct_1(u_input.c, vec4<u32>(global1.x, 0u, 77158u, 0u)), u_input.b.zz).b.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(4294967295u, 82583u))) % 32u), u_input.e));
    global1 = _wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(~_wgslsmith_div_u32(~arg_1.b.x, abs(17183u)), 0u));
    global2 = Struct_1(max(~global2.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~global0[_wgslsmith_index_u32(u_input.c, 4u)], _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global2.b.x, 4294967295u, arg_0, 0u), vec4<u32>(global2.b.x, 0u, arg_0, arg_0))), var_0.b)), u_input.a);
    let var_1 = Struct_1(~4294967295u, ~(~global0[_wgslsmith_index_u32(4294967295u, 4u)]) << (global2.b % vec4<u32>(32u)));
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = abs(~(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -21220i, u_input.e, u_input.d), vec4<i32>(u_input.e, -1i, 1i, u_input.d), false), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, u_input.d), vec4<i32>(-2147483647i, 0i, u_input.e, u_input.e)))));
    global2 = func_4(~(global2.a & ~(~u_input.c)), func_2(~(~global2.b), -486f, Struct_1(9357u, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global2.b, vec4<u32>(0u, 0u, global1.x, 73063u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 4294967295u, global2.b.x, 32576u), u_input.a, vec4<u32>(u_input.a.x, 41762u, 50838u, global2.a)))), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, ~u_input.b), _wgslsmith_clamp_i32(0i, ~u_input.b.x, u_input.b.x))));
    var var_1 = Struct_1(global2.b.x, ~firstLeadingBit(max(global0[_wgslsmith_index_u32(6503u, 4u)], vec4<u32>(1u, global2.b.x, 53788u, u_input.c)) ^ vec4<u32>(73206u, 4294967295u, global1.x, 108677u)));
    let var_2 = Struct_1(var_1.a, global2.b);
    let var_3 = var_2;
    return Struct_1(firstTrailingBit(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(24827u >> (global1.x % 32u), _wgslsmith_dot_vec4_u32(u_input.a, var_3.b)))), abs(select(~global2.b & ~global0[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 60972u), vec4<u32>(u_input.a.x, 4294967295u, 2303u, var_2.b.x)), true)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(1u, ~u_input.c), 24180u, ~reverseBits(1u)), ~firstTrailingBit(u_input.a.wwy | ~arg_3.b.b.zww));
    var var_1 = ~u_input.a.x;
    var var_2 = arg_3.b.b.xxz;
    let var_3 = arg_3;
    global1 = vec2<u32>(countOneBits(_wgslsmith_add_u32(~arg_3.a.x, func_4(4294967295u, Struct_1(46246u, vec4<u32>(33778u, 292u, 0u, 56064u))).a)) | _wgslsmith_div_u32(var_2.x, u_input.a.x), _wgslsmith_div_u32(global2.b.x << (firstLeadingBit(var_2.x >> (1u % 32u)) % 32u), global1.x));
    return arg_3.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec4<u32>, 4>();
    global0 = array<vec4<u32>, 4>();
    let var_0 = vec2<u32>((firstLeadingBit(~arg_0.b.x) << (arg_1.a.x % 32u)) << (35975u % 32u), arg_0.b.x);
    var var_1 = _wgslsmith_div_i32(~min(select(u_input.d, ~1i, true), -arg_1.c), 21668i);
    let var_2 = Struct_1(4294967295u, ~(vec4<u32>(~1u, 4294967295u, arg_0.b.x | arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(59872u, 1u, 53775u, arg_1.b.b.x), vec4<u32>(4294967295u, global2.a, global2.b.x, 62776u))) | firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_1.a.x, global2.a), vec4<u32>(33195u, 29029u, 22364u, u_input.c)))));
    return arg_1;
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = ~u_input.b;
    global3 = array<f32, 15>();
    var var_1 = false;
    var var_2 = countOneBits(arg_3.a.x);
    global0 = array<vec4<u32>, 4>();
    return select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), select(func_3(), 25435u < global2.a, !any(vec4<bool>(true, true, true, false)))), all(vec2<bool>(func_3(), true)) & (_wgslsmith_dot_vec2_u32(global2.b.zz, u_input.a.xy) >= _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_3.b.b.x, global2.b.x), _wgslsmith_dot_vec3_u32(u_input.a.zxx, arg_0.a.zxx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_i32(-2147483647i, ~(~(-48938i)));
    var var_1 = -u_input.e;
    let var_2 = func_7(func_6(func_5(!(var_0 < -14937i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(199f, 651f), _wgslsmith_f_op_vec2_f32(vec2<f32>(763f, 900f) + vec2<f32>(global3[_wgslsmith_index_u32(9180u, 15u)], global3[_wgslsmith_index_u32(global2.a, 15u)])))), Struct_2(u_input.a, func_1(), var_0)), Struct_2(vec4<u32>(_wgslsmith_div_u32(6322u, u_input.a.x), u_input.a.x, abs(23813u), global2.b.x), Struct_1(47210u, vec4<u32>(global1.x, 1u, 24000u, 19895u)), _wgslsmith_div_i32(-24658i << (u_input.a.x % 32u), abs(0i)))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(142f))) + 1079f), Struct_2(firstLeadingBit(vec4<u32>(countOneBits(69592u), global1.x & 0u, 1u, abs(u_input.a.x))), Struct_1(u_input.a.x, _wgslsmith_mult_vec4_u32(global2.b, ~vec4<u32>(72492u, 0u, u_input.c, 45150u))), (abs(-2147483647i) | u_input.d) ^ max(_wgslsmith_add_i32(-19466i, u_input.d), 18766i)));
    var var_3 = !(select(var_0, 36662i, true) != u_input.d);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(global2.a, 15u)]))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.a, 15u)] * global3[_wgslsmith_index_u32(global2.b.x, 15u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global3[_wgslsmith_index_u32(4294967295u, 15u)]))))));
    global1 = firstLeadingBit(vec2<u32>(func_5(!var_2.x, select(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x), var_2.x), !vec4<bool>(var_2.x, true, true, false), var_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1750f, var_4.x)), Struct_2(vec4<u32>(8448u, u_input.a.x, 0u, global1.x), func_1(), -31825i)).a, abs(global2.a) << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_mult_u32(~u_input.a.x, countOneBits(4294967295u)), Struct_1(global1.x, vec4<u32>(u_input.c, global2.a, reverseBits(u_input.a.x), ~global1.x))).b.x, _wgslsmith_add_u32(_wgslsmith_div_u32(global2.b.x, _wgslsmith_add_u32(global2.b.x, u_input.c)), 29931u), func_1().b.x);
}

