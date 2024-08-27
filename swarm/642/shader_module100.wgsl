struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 7>;

var<private> global2: vec2<i32> = vec2<i32>(0i, -1i);

var<private> global3: array<i32, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    global3 = array<i32, 17>();
    let var_0 = min(u_input.b, vec4<u32>(countOneBits(u_input.a), u_input.b.x, reverseBits(1u), _wgslsmith_div_u32(firstTrailingBit(14779u), u_input.b.x & u_input.b.x) | firstLeadingBit(abs(u_input.a))));
    let var_1 = -firstLeadingBit(vec2<i32>(34134i, ~global3[_wgslsmith_index_u32(7291u << (u_input.c % 32u), 17u)]));
    let var_2 = Struct_1(abs(~var_1.x), global0.b);
    global3 = array<i32, 17>();
    return global0.b;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(-6034i, _wgslsmith_f_op_vec3_f32(func_3()));
    let var_1 = Struct_1(global2.x, global0.b);
    let var_2 = var_1;
    var var_3 = Struct_1(i32(-1i) * -43400i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-389f, _wgslsmith_f_op_f32(-153f * global1[_wgslsmith_index_u32(u_input.c, 7u)]), _wgslsmith_f_op_f32(abs(var_1.b.x))), var_1.b))));
    var_3 = Struct_1(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3()).x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(48448u, 7u)], _wgslsmith_f_op_f32(-global0.b.x)))))));
    return _wgslsmith_dot_vec2_i32(~(-firstLeadingBit(vec2<i32>(-37171i, global0.a) ^ vec2<i32>(var_0.a, 9406i))), ~(-select(vec2<i32>(-6956i, -2147483647i) >> (vec2<u32>(u_input.c, 49332u) % vec2<u32>(32u)), select(vec2<i32>(-4186i, var_0.a), vec2<i32>(global2.x, global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(false, false)), u_input.a > u_input.c)));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(46903u, countOneBits(~(~47517u))), 17u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1643f)) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 7u)]) * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 25759u), 7u)]), 689f)));
    global3 = array<i32, 17>();
    global0 = Struct_1(-13481i, var_0.b);
    let var_1 = false;
    let var_2 = var_0;
    return Struct_1(_wgslsmith_sub_i32(~(-_wgslsmith_div_i32(var_0.a, 6659i)), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 18979u), 17u)], 33555i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1050f, 147f)) * global1[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -330f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(691f, 1582f))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~1i, arg_2.a | ~global2.x) << (u_input.c % 32u);
    global2 = ~firstTrailingBit(-_wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_2.a, 2147483647i), vec2<i32>(arg_0.a, global2.x), true), arg_1.yz));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(1u, 7u)], global0.b.x, -475f, arg_0.b.x), vec4<f32>(arg_0.b.x, 793f, -1509f, 937f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.x, global1[_wgslsmith_index_u32(34026u, 7u)], global0.b.x, -524f), vec4<f32>(-451f, -387f, -313f, 2921f)), false)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1574f, global0.b.x, -1078f, -1288f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], -1611f, 388f, global0.b.x) + vec4<f32>(-123f, arg_2.b.x, global0.b.x, arg_0.b.x)))), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 848f, -1643f, -1636f) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], -574f, 236f, 715f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1925f, global1[_wgslsmith_index_u32(4294967295u, 7u)], -288f, arg_2.b.x) - vec4<f32>(516f, -1169f, global1[_wgslsmith_index_u32(u_input.c, 7u)], arg_2.b.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -2741f, 1937f, 215f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1073f, 2069f, -308f, -760f) * vec4<f32>(arg_0.b.x, arg_2.b.x, global1[_wgslsmith_index_u32(68190u, 7u)], 590f))))))));
    var var_2 = arg_2;
    let var_3 = vec3<i32>(-2147483647i, global0.a, var_2.a);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = min(_wgslsmith_add_u32((abs(arg_3.x) >> (firstLeadingBit(u_input.a) % 32u)) & u_input.c, abs(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec2_u32(arg_3.xw, u_input.b.zw)))), _wgslsmith_add_u32(15527u, firstLeadingBit(min(u_input.c, arg_3.x))));
    let var_1 = func_4(vec4<i32>(select(global2.x, abs(-1i), u_input.a <= 31961u) | 1i, -19452i, _wgslsmith_div_i32(global2.x, ~(global2.x ^ -15826i)), global3[_wgslsmith_index_u32(arg_3.x, 17u)])).a;
    global1 = array<f32, 7>();
    let var_2 = !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true)));
    global0 = Struct_1(arg_0.a & -arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * arg_2.wwz));
    return func_4(~countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, global2.x, global0.a, -1i), vec4<i32>(17130i, 40261i, -1i, 60412i))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> Struct_1 {
    global2 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(0i, global2.x)), vec2<i32>(0i, global3[_wgslsmith_index_u32(u_input.b.x, 17u)]))), ~countOneBits(vec2<i32>(-53778i, global0.a) >> (u_input.b.wy % vec2<u32>(32u)))), vec2<i32>(reverseBits(countOneBits(-arg_1)), countOneBits(global3[_wgslsmith_index_u32(0u, 17u)])));
    var var_0 = func_6(func_5(func_4(vec4<i32>(-1i | global3[_wgslsmith_index_u32(arg_0, 17u)], -global2.x, func_2(global0.b.x), global3[_wgslsmith_index_u32(~arg_0, 17u)])), vec4<i32>(5861i, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, ~arg_0), 17u)], _wgslsmith_add_i32(-50100i, arg_1) ^ (-1i >> (arg_0 % 32u)), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(55196u, 17u)], 0i)), Struct_1(func_4(vec4<i32>(1i, arg_1, global2.x, 17865i)).a ^ -global2.x, _wgslsmith_f_op_vec3_f32(global0.b + global0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(515f, 1000f, global1[_wgslsmith_index_u32(78981u, 7u)]))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(44726u, 7u)], 450f, -584f, 348f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, 533f, global1[_wgslsmith_index_u32(70017u, 7u)], -715f) - vec4<f32>(-605f, 760f, global1[_wgslsmith_index_u32(arg_0, 7u)], global1[_wgslsmith_index_u32(arg_0, 7u)])))))), select(firstTrailingBit(u_input.b), select(~vec4<u32>(arg_0, 24862u, 0u, u_input.a), ~u_input.b, !arg_2), select(select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(false, arg_2, false, arg_2), arg_2), !vec4<bool>(arg_2, arg_2, true, arg_2), select(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2), true))) | ~select(reverseBits(u_input.b), u_input.b, select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2))));
    var var_1 = func_6(func_4(max(max(countOneBits(vec4<i32>(63905i, -72141i, 5700i, 1i)), vec4<i32>(arg_1, 0i, 13220i, -16889i)), ~(-vec4<i32>(-70338i, arg_1, global2.x, 2147483647i)))), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2724f), _wgslsmith_div_f32(304f, 304f), _wgslsmith_f_op_f32(f32(-1f) * -547f)))), ~u_input.b);
    var var_2 = func_4(-min((vec4<i32>(global0.a, 23302i, -16254i, -53370i) >> (u_input.b % vec4<u32>(32u))) | abs(vec4<i32>(var_0.a, var_0.a, global2.x, global3[_wgslsmith_index_u32(u_input.a, 17u)])), -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_1, 53358i, -2147483647i), vec4<i32>(2147483647i, -1i, var_1.a, var_0.a))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(654f, 996f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(746f)), -949f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(934f * _wgslsmith_div_f32(1514f, var_1.b.x)), -1179f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x - 747f), _wgslsmith_f_op_f32(-var_2.b.x)))));
    return func_4(vec4<i32>(func_2(_wgslsmith_f_op_f32(-1297f - _wgslsmith_div_f32(-2355f, 727f))), abs(0i), _wgslsmith_clamp_i32(-49138i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(4784i, -69939i), vec2<i32>(-36982i, arg_1)), firstLeadingBit(vec2<i32>(var_0.a, -2147483647i))), 20427i), _wgslsmith_mod_i32(~(var_0.a << (u_input.b.x % 32u)), firstLeadingBit(var_1.a) & _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 11718i), vec2<i32>(global0.a, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(u_input.b.xyz);
    global0 = func_1(20515u, global0.a, false);
    let var_1 = func_1(var_0.x, -min(-67000i, -countOneBits(global2.x)), true);
    global3 = array<i32, 17>();
    var var_2 = func_5(Struct_1(_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(global2.x, 2147483647i, 30151i, global0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, global0.a, global2.x, global3[_wgslsmith_index_u32(0u, 17u)]), vec4<i32>(global0.a, 0i, 9617i, var_1.a)), vec4<bool>(true, true, true, true)), vec4<i32>(select(var_1.a, var_1.a, true), global3[_wgslsmith_index_u32(var_0.x, 17u)], -global0.a, select(-28959i, -2147483647i, false))), _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, global0.b.x, -308f), vec3<f32>(285f, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(var_0.x, 7u)]), true)))), countOneBits(select(~(vec4<i32>(1i, -11514i, global0.a, -1i) ^ vec4<i32>(2147483647i, -2147483647i, var_1.a, var_1.a)), _wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, global0.a, global0.a, global2.x), -vec4<i32>(26143i, -13487i, global3[_wgslsmith_index_u32(14774u, 17u)], var_1.a)), all(vec3<bool>(false, false, false)))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.b.xz), 0u, firstTrailingBit(~1u), u_input.b.xx, -737f);
}

