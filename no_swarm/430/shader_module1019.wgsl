struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<vec3<bool>, 28>;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648), vec2<i32>(-1i, -7237i), vec2<i32>(37811i, -15010i), vec3<u32>(11037u, 9062u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, false), 13874i, vec2<i32>(49706i, -67791i), vec2<i32>(2147483647i, 27836i), vec3<u32>(19713u, 0u, 4294967295u)), vec3<u32>(0u, 71120u, 34667u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global2.c.x, _wgslsmith_mod_i32(-24540i, arg_0.c.a.b), ~(~(-15797i))), -arg_1.c.x);
    global1 = array<vec3<bool>, 28>();
    var var_1 = countOneBits(-u_input.c);
    var_0 = -firstTrailingBit(max(-39602i, 1i)) ^ 37909i;
    let var_2 = global3.a.e.x;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-42254i, _wgslsmith_div_i32(_wgslsmith_add_i32(firstTrailingBit(arg_0.c.b.d.x), global3.b.d.x), 26436i)), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.b.d.x, global2.b) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), min(vec2<i32>(-22421i, 1i), var_1.yz)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    global2 = Struct_1(select(select(select(select(global3.b.a, vec4<bool>(true, global2.a.x, global2.a.x, true), false), !vec4<bool>(global2.a.x, global2.a.x, false, true), vec4<bool>(true, global3.a.a.x, global2.a.x, true)), !vec4<bool>(global2.a.x, global2.a.x, true, false), all(!global2.a)), !select(vec4<bool>(true, true, global3.b.a.x, global2.a.x), select(vec4<bool>(true, global2.a.x, global2.a.x, global3.b.a.x), global2.a, true), true), select(!select(global3.b.a, global2.a, vec4<bool>(false, global2.a.x, true, global2.a.x)), vec4<bool>(false, !global2.a.x, global3.b.a.x, false | global2.a.x), global2.a)), arg_0, ~(~min(firstTrailingBit(vec2<i32>(0i, -1i)), u_input.d.zz)), vec2<i32>(~1i, -1i), vec3<u32>(~countOneBits(73405u), 10685u, 25576u) << (vec3<u32>(~reverseBits(global2.e.x), 4294967295u, ~(~25364u)) % vec3<u32>(32u)));
    let var_0 = global3.b;
    global0 = array<f32, 18>();
    var var_1 = Struct_3(~(_wgslsmith_mod_u32(u_input.b.x, 15738u) >> (min(48844u << (var_0.e.x % 32u), _wgslsmith_add_u32(u_input.b.x, 4294967295u)) % 32u)), arg_1.xxy, Struct_2(Struct_1(!(!var_0.a), (0i | arg_2) << (firstLeadingBit(global3.a.e.x) % 32u), ~func_3(Struct_3(var_0.e.x, arg_1.zwz, Struct_2(global3.a, Struct_1(vec4<bool>(false, global2.a.x, true, global2.a.x), -38127i, vec2<i32>(global2.c.x, u_input.c.x), var_0.d, vec3<u32>(123228u, 1u, 77748u)), var_0.e), vec4<bool>(global2.a.x, false, global2.a.x, global3.b.a.x)), Struct_1(vec4<bool>(global2.a.x, global2.a.x, var_0.a.x, var_0.a.x), global2.b, var_0.c, u_input.c.xw, vec3<u32>(u_input.b.x, 0u, 7737u))), vec2<i32>(arg_0, u_input.a), reverseBits(vec3<u32>(0u, u_input.b.x, global2.e.x)) ^ firstTrailingBit(vec3<u32>(18750u, 1u, global3.a.e.x))), global3.b, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(global2.e.x, 46311u, 12409u)), ~vec3<u32>(55616u, 24978u, 4294967295u)), global2.e ^ var_0.e)), !vec4<bool>(global3.b.a.x, false, false, !all(var_0.a.wy)));
    var var_2 = ~(~abs(min(firstLeadingBit(global2.e.x), ~global3.c.x)));
    return 4294967295u;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = false;
    var_0 = all(vec3<bool>(true, false | all(global3.b.a), !global3.b.a.x));
    global3 = Struct_2(global3.a, Struct_1(vec4<bool>(!any(global1[_wgslsmith_index_u32(22881u, 28u)]), !(!global3.a.a.x), global2.a.x, true), _wgslsmith_mult_i32(_wgslsmith_sub_i32(reverseBits(u_input.c.x), countOneBits(0i)), 0i), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d << (arg_1.zzz % vec3<u32>(32u))), max(_wgslsmith_mod_i32(12093i, global3.b.b), _wgslsmith_div_i32(global3.a.b, global3.a.b))), vec2<i32>(min(1i, _wgslsmith_sub_i32(-26643i, u_input.a)), global3.b.d.x), arg_1.yzw << (~(arg_1.ywy ^ global3.b.e) % vec3<u32>(32u))), select(~(~(global3.c & vec3<u32>(arg_1.x, 4294967295u, arg_1.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(min(global2.e, vec3<u32>(global2.e.x, 1u, global2.e.x)), global3.a.e), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 8557u, 15992u), vec3<u32>(2772u, arg_1.x, global2.e.x))), global1[_wgslsmith_index_u32(~arg_1.x, 28u)]));
    var_0 = true;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-2111f + -1169f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x << (74661u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 1u, 30582u))), 18u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 18u)] + global0[_wgslsmith_index_u32(global3.c.x, 18u)])))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-814f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global3.b.e.x, 18u)])))), _wgslsmith_f_op_f32(-1550f + arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2059f, 1236f, 1477f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2244f, arg_0, -622f), vec3<f32>(arg_0, arg_0, global0[_wgslsmith_index_u32(25415u, 18u)]))))));
    return Struct_2(Struct_1(!vec4<bool>(any(global1[_wgslsmith_index_u32(57359u, 28u)]), true, true, any(global3.b.a)), _wgslsmith_sub_i32(0i, firstLeadingBit(~global3.b.c.x)), u_input.c.xz, firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(0i, global3.a.c.x), _wgslsmith_mult_i32(2147483647i, global3.b.c.x))), ~(~vec3<u32>(arg_1.x, global2.e.x, global3.a.e.x))), Struct_1(vec4<bool>(all(vec2<bool>(false, global2.a.x)), global2.a.x, !any(global2.a), true), 1i, ~abs(global3.a.d & vec2<i32>(global2.d.x, 0i)), vec2<i32>(u_input.c.x & (global3.a.c.x ^ 1i), countOneBits(18847i)), vec3<u32>(arg_1.x, max(arg_1.x & 0u, _wgslsmith_mod_u32(global3.a.e.x, 0u)), 1u)), _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(global2.e, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), select(vec3<u32>(1u, 11215u, 65313u) << (global3.b.e % vec3<u32>(32u)), countOneBits(arg_1.xzx), vec3<bool>(false, global3.a.a.x, global2.a.x))) ^ vec3<u32>(global2.e.x, _wgslsmith_mod_u32(~global3.b.e.x, abs(34333u)), global2.e.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(-1209f)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.e.x, ~arg_1, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, global2.e.x)), _wgslsmith_mod_u32(90856u, 54081u)), _wgslsmith_sub_vec4_u32(vec4<u32>(12576u, 1u, 27841u, 58989u), firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, arg_1)))), vec4<u32>(1u, 3526u, select(func_2(2147483647i, vec4<f32>(-598f, 1000f, global0[_wgslsmith_index_u32(arg_1, 18u)], 879f), arg_0), ~arg_1, global3.a.a.x && false), 0u)));
    var_0 = Struct_2(var_0.a, global3.a, ~(abs(firstLeadingBit(vec3<u32>(var_0.b.e.x, global3.c.x, 0u))) >> (var_0.a.e % vec3<u32>(32u))));
    global3 = Struct_2(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -375f))), vec4<u32>(58599u, arg_2 ^ arg_1, ~0u, func_2(global2.b, vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 18u)], -606f, global0[_wgslsmith_index_u32(1u, 18u)], arg_3.x), 33380i)) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 6586u, 0u, var_0.a.e.x), vec4<u32>(36859u, 1u, global2.e.x, 0u)) & _wgslsmith_add_vec4_u32(vec4<u32>(global2.e.x, arg_1, 4294967295u, arg_2), vec4<u32>(107741u, arg_1, 50394u, u_input.b.x)))).a, global3.a, ~vec3<u32>(54049u, func_4(_wgslsmith_f_op_f32(trunc(-676f)), vec4<u32>(global2.e.x, 4294967295u, 42660u, arg_2) | vec4<u32>(50958u, 1u, 2338u, arg_2)).b.e.x, u_input.b.x));
    return _wgslsmith_f_op_vec2_f32(exp2(arg_3.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_add_i32(_wgslsmith_add_i32(-407i, u_input.d.x), -1476i & global2.b), global2.e.x, global3.c.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)])))))))));
    let var_1 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.e.x, 15820u) << (_wgslsmith_add_u32(19006u, _wgslsmith_mult_u32(func_2(global3.a.c.x, vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], 1785f, var_0.x, global0[_wgslsmith_index_u32(39744u, 18u)]), global2.b), 8481u)) % 32u), 18u)], -501f));
    var var_2 = Struct_2(global3.a, func_4(_wgslsmith_f_op_f32(step(-1399f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + 524f), _wgslsmith_f_op_f32(var_0.x - -1515f))))), _wgslsmith_div_vec4_u32(vec4<u32>(func_4(var_0.x, vec4<u32>(global3.c.x, u_input.b.x, 103448u, 58021u)).c.x, global3.b.e.x & 1u, ~1u, ~14729u), abs(~vec4<u32>(17382u, global2.e.x, 4294967295u, u_input.b.x)))).a, _wgslsmith_div_vec3_u32(global3.a.e, ~vec3<u32>(max(36302u, 4294967295u), ~0u, 4294967295u)));
    var var_3 = Struct_3(global3.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1238f, _wgslsmith_f_op_f32(sign(840f)), var_1)), func_4(_wgslsmith_f_op_vec2_f32(func_1(~(global2.c.x & global2.c.x), var_2.c.x, min(90421u, global3.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, 126f), vec3<f32>(-1000f, 1343f, var_0.x), true))))).x, vec4<u32>(71655u, ~0u, _wgslsmith_add_u32(4294967295u, global2.e.x), var_2.a.e.x) | ~(vec4<u32>(0u, 1u, 21901u, 0u) | vec4<u32>(0u, 53540u, global2.e.x, 5327u))), vec4<bool>(global2.a.x, true, all(vec2<bool>(true, global3.c.x > 25365u)), any(var_2.b.a.xww)));
    var_3 = Struct_3(18253u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b)), Struct_2(func_4(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u ^ global2.e.x, 18u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_3.c.b.e.x, 18u)], 1000f)), var_3.d.x || var_2.b.a.x)), vec4<u32>(0u, u_input.b.x, ~9394u, var_2.a.e.x)).b, func_4(_wgslsmith_div_f32(var_3.b.x, 170f), vec4<u32>(0u, ~var_3.c.b.e.x, 0u, min(global2.e.x, var_2.a.e.x))).b, _wgslsmith_mod_vec3_u32(select(global3.c, var_2.c, vec3<bool>(false, false, var_2.b.a.x)), global3.a.e) & global3.c), !select(!vec4<bool>(true, false, true, var_2.b.a.x), !vec4<bool>(true, global2.a.x, var_2.b.a.x, true), vec4<bool>(true, func_4(global0[_wgslsmith_index_u32(var_2.c.x, 18u)], vec4<u32>(u_input.b.x, global3.c.x, var_3.c.a.e.x, global3.c.x)).a.a.x, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(countOneBits(global3.b.e.x), min(global2.e.x, 1u), 0u, var_3.c.c.x)));
}

