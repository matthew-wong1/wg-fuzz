struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(1u, vec3<i32>(-7965i, -20012i, 30331i), vec4<u32>(4294967295u, 4396u, 15586u, 94593u), vec2<i32>(-1i, 53545i));

var<private> global2: Struct_1;

var<private> global3: array<bool, 21> = array<bool, 21>(false, true, false, false, true, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global1 = Struct_1(firstLeadingBit(~global2.a), vec3<i32>((min(0i, global1.d.x) >> (_wgslsmith_div_u32(1u, 1u) % 32u)) ^ ~1i, -u_input.a, ~(~global1.d.x >> (~42374u % 32u))), ~(~global1.c), global1.b.yy | _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.d.x, -2147483647i) << (~global2.c.yz % vec2<u32>(32u)), ~global1.b.yz, global1.d));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1107f, -2231f), vec3<f32>(2076f, 1721f, -301f), global3[_wgslsmith_index_u32(global2.c.x, 21u)])))))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -418f))), -1037f));
    var var_1 = 4294967295u;
    var var_2 = any(!vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.a | 4294967295u, 15653u, global2.a << (global1.c.x % 32u)), 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)]));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2026f, 616f, true)))), global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.x))))), var_0));
    return vec4<u32>(global1.c.x, _wgslsmith_add_u32(1u, global2.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~global1.c.yyy ^ ~global1.c.zyw, min(~vec3<u32>(global2.a, global2.c.x, 16672u), _wgslsmith_sub_vec3_u32(global1.c.zzy, vec3<u32>(0u, global2.c.x, global2.a)))), _wgslsmith_div_u32(0u, global2.a)), 64865u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = Struct_1(52350u & (global1.a & global2.a), vec3<i32>(-24458i, global2.d.x, i32(-1i) * -1i), _wgslsmith_clamp_vec4_u32(global2.c, global1.c, global2.c >> (~(~global2.c) % vec4<u32>(32u))), -(-vec2<i32>(2147483647i, 0i) & ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-30796i, global2.d.x), global2.d, global1.b.xz)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-1155f - global0.x), global0.x));
    var var_0 = reverseBits(~(~(~global1.c.yxz)));
    let var_1 = vec2<u32>(~4294967295u, ~53053u);
    var var_2 = vec3<bool>(true, !(!(!any(vec4<bool>(true, global3[_wgslsmith_index_u32(global2.a, 21u)], false, true)))), global3[_wgslsmith_index_u32(max(78557u, 65478u), 21u)]);
    return Struct_1(global2.c.x, vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global1.d.x, global1.d.x) | global1.b, vec3<i32>(global1.d.x, -2147483647i, -41193i)), ~_wgslsmith_clamp_vec4_u32((vec4<u32>(53968u, arg_0.x, global2.a, 0u) & vec4<u32>(var_0.x, 22715u, 0u, global1.a)) >> (global2.c % vec4<u32>(32u)), func_3(-20681i), abs(~global2.c)), vec2<i32>(~countOneBits(global1.d.x), -(-14161i >> (0u % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    global1 = arg_0.b;
    let var_0 = abs(-vec4<i32>(arg_2.d.x, countOneBits(~arg_2.b.x), 0i, -1i | ~arg_0.b.d.x));
    global1 = func_2(select(vec3<u32>(arg_0.a.x, _wgslsmith_mod_u32(4294967295u, 2177u), reverseBits(max(arg_1, global1.a))), global2.c.xyy, select(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(arg_2.a, 21u)]), !vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 21u)], true), false), vec3<bool>(global3[_wgslsmith_index_u32(1u, 21u)], any(vec3<bool>(global3[_wgslsmith_index_u32(global2.c.x, 21u)], false, false)), true), true)));
    var var_1 = vec2<bool>(true, all(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(56690u, 21u)], false, global3[_wgslsmith_index_u32(global2.a, 21u)], global3[_wgslsmith_index_u32(1u, 21u)])))));
    let var_2 = Struct_1(arg_0.b.c.x, var_0.xyy, _wgslsmith_add_vec4_u32(~arg_0.b.c >> (arg_0.b.c % vec4<u32>(32u)), func_2(func_2(select(global2.c.wxz, global1.c.zyw, vec3<bool>(var_1.x, false, true))).c.ywz).c), min(_wgslsmith_sub_vec2_i32(vec2<i32>(-30013i, 2147483647i), countOneBits(vec2<i32>(var_0.x, arg_0.b.d.x))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, 10718i), vec2<i32>(arg_2.b.x, 75980i)) << ((vec2<u32>(arg_2.a, 0u) ^ vec2<u32>(24289u, arg_1)) % vec2<u32>(32u))) << (vec2<u32>(arg_0.b.c.x, ~54810u) % vec2<u32>(32u)));
    return ~(vec2<u32>(firstLeadingBit(0u), _wgslsmith_div_u32(1u & global1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 56u, 4294967295u, 9542u), global2.c))) & firstTrailingBit(vec2<u32>(1u, 1u)));
}

fn func_1() -> f32 {
    global3 = array<bool, 21>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(global2.c.zz, vec2<u32>(0u, global2.a >> (1u % 32u)), func_4(Struct_2(firstLeadingBit(vec2<u32>(global1.c.x, global2.a)), func_2(vec3<u32>(global2.a, global1.c.x, global1.a))), ~global2.a, func_2(~vec3<u32>(global2.c.x, global1.a, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -618f))), Struct_1(4294967295u, firstLeadingBit(~global2.b), vec4<u32>(1u, ~(~global1.c.x), ~global2.c.x | ~global1.a, select(_wgslsmith_mod_u32(2672u, 38791u), global1.c.x, all(vec3<bool>(global3[_wgslsmith_index_u32(global2.a, 21u)], true, global3[_wgslsmith_index_u32(47786u, 21u)])))), vec2<i32>(~u_input.a << (~global2.a % 32u), _wgslsmith_sub_i32(1i, -1i))));
    var var_1 = func_2(vec3<u32>(global1.a, ~var_0.b.a, ~4473u >> (global2.c.x % 32u)) >> (max(var_0.b.c.xzw, var_0.b.c.yyx) % vec3<u32>(32u)));
    var_1 = Struct_1(~1u, func_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 1u, global1.a, global2.a), vec4<u32>(4294967295u, var_0.b.a, var_0.b.c.x, var_0.b.a) >> (vec4<u32>(global1.a, global1.c.x, 58895u, 4294967295u) % vec4<u32>(32u))), global1.c.x, 1u)).b, ~global1.c, firstLeadingBit(~func_2(vec3<u32>(var_0.a.x, 48517u, 0u)).d ^ vec2<i32>(var_0.b.d.x, ~global1.d.x)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(942f, _wgslsmith_f_op_f32(-1876f * global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 752f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1047f, -772f), vec2<f32>(945f, global0.x))), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1323f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-607f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1014f, global0.x))))))), select(global3[_wgslsmith_index_u32(min(var_0.a.x << (6820u % 32u), 0u), 21u)], select(true, false, false) | true, false) || any(vec3<bool>(false, select(global3[_wgslsmith_index_u32(55956u, 21u)], true, false), true))));
    return _wgslsmith_f_op_f32(662f - -1354f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), global0.x);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), false))), global0.x));
    let var_1 = any(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(global2.c.x, 21u)]), true), !vec2<bool>(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(global1.a, 21u)]), true), select(!vec2<bool>(global3[_wgslsmith_index_u32(3952u, 21u)], false), vec2<bool>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(3790u, 21u)]), !global3[_wgslsmith_index_u32(global2.c.x, 21u)]), global3[_wgslsmith_index_u32(~global1.a, 21u)]));
    var var_2 = !(!(!select(vec4<bool>(var_1, global3[_wgslsmith_index_u32(0u, 21u)], false, var_1), select(vec4<bool>(var_1, var_1, global3[_wgslsmith_index_u32(global2.a, 21u)], global3[_wgslsmith_index_u32(global1.a, 21u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1.a, 21u)], global3[_wgslsmith_index_u32(global1.a, 21u)], var_1, true), vec4<bool>(var_1, false, true, global3[_wgslsmith_index_u32(7158u, 21u)])), !vec4<bool>(false, global3[_wgslsmith_index_u32(64440u, 21u)], false, global3[_wgslsmith_index_u32(global2.c.x, 21u)]))));
    let var_3 = abs(2147483647i);
    var var_4 = Struct_1(_wgslsmith_clamp_u32(~(~abs(global2.a)), ~firstLeadingBit(51185u), 4294967295u), vec3<i32>(global2.b.x, 1i, _wgslsmith_clamp_i32(7177i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.b.x, 4955i, var_3), ~vec4<i32>(global1.d.x, global1.d.x, var_3, 1i)), -1i)), firstTrailingBit(~global1.c), firstTrailingBit(countOneBits(-vec2<i32>(var_3, var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -169f, -2068f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1368f, 856f, 497f))))), _wgslsmith_clamp_u32((0u | var_4.c.x) & var_4.c.x, 6852u, 4294967295u), -106f, ~countOneBits(func_2(countOneBits(vec3<u32>(global1.a, global2.a, 4294967295u))).a));
}

