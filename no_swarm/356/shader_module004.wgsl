struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(i32(-2147483648), -7884i, -32366i, -39546i), vec2<f32>(607f, -1047f), i32(-2147483648)), Struct_1(vec4<i32>(-1i, 26078i, -10474i, 2147483647i), vec2<f32>(-1535f, -1106f), -597i), Struct_1(vec4<i32>(-43660i, 30505i, 1i, 4320i), vec2<f32>(-574f, 414f), 8681i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, 1i), vec2<f32>(1807f, -780f), i32(-2147483648)), Struct_1(vec4<i32>(0i, 0i, -1i, 39949i), vec2<f32>(629f, -363f), 2147483647i), Struct_1(vec4<i32>(-46180i, -16910i, -10921i, -1i), vec2<f32>(-1000f, -950f), -28527i), Struct_1(vec4<i32>(41499i, 2147483647i, 1i, 38439i), vec2<f32>(574f, -1723f), 2147483647i), Struct_1(vec4<i32>(-6501i, 44264i, -23355i, -1i), vec2<f32>(1889f, 1146f), 0i), Struct_1(vec4<i32>(0i, -63859i, -23629i, 31805i), vec2<f32>(-929f, 863f), 1i), Struct_1(vec4<i32>(-13093i, 28463i, 16039i, 0i), vec2<f32>(409f, -969f), -1i), Struct_1(vec4<i32>(-68884i, 1i, 0i, 0i), vec2<f32>(141f, 206f), i32(-2147483648)), Struct_1(vec4<i32>(43410i, -5i, -47837i, -13840i), vec2<f32>(-1981f, -806f), -4962i), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2147483647i), vec2<f32>(-250f, 652f), 58699i), Struct_1(vec4<i32>(10127i, 13747i, 15779i, -53079i), vec2<f32>(-1513f, -1000f), 0i), Struct_1(vec4<i32>(2147483647i, 30748i, 51341i, 0i), vec2<f32>(1000f, 367f), -1i), Struct_1(vec4<i32>(43448i, -24278i, -31668i, -18883i), vec2<f32>(-362f, 234f), 15475i), Struct_1(vec4<i32>(34397i, 36194i, -50791i, -1i), vec2<f32>(522f, -1046f), 0i), Struct_1(vec4<i32>(16102i, 54465i, -25635i, -20452i), vec2<f32>(1211f, -420f), 0i), Struct_1(vec4<i32>(68503i, -1i, -5550i, -15373i), vec2<f32>(118f, -908f), 1182i), Struct_1(vec4<i32>(46509i, -37568i, 11206i, -1i), vec2<f32>(-1000f, -124f), -35308i), Struct_1(vec4<i32>(22229i, 25813i, 2147483647i, 1i), vec2<f32>(-285f, 1000f), -58976i), Struct_1(vec4<i32>(i32(-2147483648), -38293i, i32(-2147483648), -1i), vec2<f32>(1213f, 1089f), i32(-2147483648)));

var<private> global2: vec3<u32> = vec3<u32>(1u, 2104u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * arg_3.b.x)), arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-863f))))), arg_2.b.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, arg_3.b.x)), 1402f, _wgslsmith_f_op_f32(arg_2.b.x * 1166f), 814f), vec4<f32>(610f, _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-arg_3.b.x), 724f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_3.b.x, arg_2.b.x, -230f) * vec4<f32>(arg_2.b.x, 1597f, -456f, -711f)))))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, arg_2.a.x), -9209i, ~14295i, _wgslsmith_add_i32(-49014i, -36869i)), vec4<i32>(_wgslsmith_div_i32(2147483647i, arg_1.x), 0i, 3652i, i32(-1i) * -1i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a << (u_input.a % 32u), global2.x, ~u_input.a), ~vec4<u32>(51597u, 0u, global2.x, global2.x) & select(vec4<u32>(4294967295u, 73781u, u_input.b.x, 1u), vec4<u32>(1u, 0u, 12247u, 169467u), true)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(select(arg_2.b.x, 1f, true)), _wgslsmith_f_op_f32(var_0.x * -1068f)), -(~(_wgslsmith_dot_vec2_i32(arg_0, arg_3.a.yw) >> (abs(1u) % 32u))));
    global0 = array<vec3<bool>, 13>();
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.b.x, var_0.x))))))), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(-1i, var_1.a.x))));
    let var_3 = firstTrailingBit(~(~reverseBits(_wgslsmith_add_vec2_u32(global2.xx, u_input.b.xx))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-356f * 1670f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1629f - arg_2.b.x) * _wgslsmith_f_op_f32(min(838f, 836f))))))), var_2.b.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = all(vec3<bool>(!(_wgslsmith_f_op_f32(ceil(1000f)) >= _wgslsmith_f_op_f32(func_3(arg_1.a.zy, arg_1.a, Struct_1(vec4<i32>(arg_1.a.x, arg_1.c, -1i, arg_1.a.x), arg_1.b, 0i), Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, -1000f), 2147483647i)))), arg_2, all(vec2<bool>(!arg_2, arg_1.c == arg_1.a.x))));
    global1 = array<Struct_1, 22>();
    global2 = _wgslsmith_mod_vec3_u32(arg_0, arg_0);
    let var_1 = Struct_1(-vec4<i32>(abs(_wgslsmith_mod_i32(-6360i, arg_1.c)), ~_wgslsmith_sub_i32(arg_1.a.x, arg_1.c), arg_1.c, max(-71395i, arg_1.a.x) & 1i), arg_1.b, -1i ^ ((_wgslsmith_clamp_i32(arg_1.c, -43493i, -47346i) << (arg_0.x % 32u)) >> (35966u % 32u)));
    let var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(585f, arg_1.b.x))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(var_1.b)), vec2<f32>(arg_1.b.x, var_1.b.x))))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, firstLeadingBit(1i), _wgslsmith_mod_i32(var_1.c, 20387i)), reverseBits(vec3<i32>(80831i, 5328i, arg_1.c))));
    return Struct_1(-arg_1.a, arg_1.b, select(-_wgslsmith_add_i32(var_2.c, var_1.a.x), _wgslsmith_sub_i32(-32256i, ~(arg_1.a.x << (global2.x % 32u))), ~(~global2.x) >= 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<vec3<bool>, 13>();
    let var_0 = 37311u;
    let var_1 = 0i;
    var var_2 = u_input.b.xx << (((vec2<u32>(select(u_input.b.x, var_0, false), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), global2.xx)) & (global2.yz >> (~vec2<u32>(5772u, 15680u) % vec2<u32>(32u)))) >> (u_input.b.yx % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = abs(vec4<u32>(~68360u, countOneBits(select(4294967295u, firstTrailingBit(7867u), select(false, false, false))), 28626u, 28775u));
    return (~arg_2.c >> (var_2.x % 32u)) <= _wgslsmith_dot_vec3_i32(~(-arg_0.a.ywx) | _wgslsmith_add_vec3_i32(~arg_2.a.zyx, _wgslsmith_add_vec3_i32(arg_0.a.xwz, vec3<i32>(-1i, arg_1.c, -634i))), max(-(arg_0.a.wyz >> (vec3<u32>(42626u, var_0, var_2.x) % vec3<u32>(32u))), vec3<i32>(1i, ~16202i, ~arg_1.c)));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = select(all(select(vec2<bool>(true, any(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), func_4(func_2(u_input.b, Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, arg_0.b.x) * arg_0.b), arg_0.a.x), false), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, -41435i, -22464i, 2147483647i) & arg_0.a, ~arg_0.a), arg_0.b, 2147483647i), arg_0), true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) > 1985f));
    let var_1 = func_2(~max(u_input.b, u_input.b), Struct_1(arg_0.a, vec2<f32>(arg_0.b.x, arg_0.b.x), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(arg_0.c, 2147483647i, arg_0.a.x), arg_0.a.x)), !(!(!func_4(arg_0, global1[_wgslsmith_index_u32(68775u, 22u)], Struct_1(vec4<i32>(12450i, 1i, arg_0.a.x, -44733i), vec2<f32>(-579f, arg_0.b.x), -30454i)))));
    global2 = ~u_input.b;
    var_0 = any(!vec3<bool>(true && func_4(Struct_1(vec4<i32>(arg_0.c, 0i, var_1.c, var_1.a.x), var_1.b, 0i), var_1, Struct_1(vec4<i32>(arg_0.a.x, arg_0.a.x, -71312i, var_1.a.x), var_1.b, -32298i)), false, false));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1536f, var_1.b.x, var_1.b.x, var_1.b.x), vec4<f32>(arg_0.b.x, var_1.b.x, arg_0.b.x, -609f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1420f, arg_0.b.x, arg_0.b.x, 1103f), vec4<f32>(arg_0.b.x, -893f, arg_0.b.x, var_1.b.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, var_1.b.x) - vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -1000f))), vec4<bool>(true, true, true, true))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, 250f, -1000f, arg_0.b.x), vec4<f32>(475f, arg_0.b.x, -764f, var_1.b.x), false)), vec4<f32>(1083f, -201f, var_1.b.x, -511f)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), 1000f, var_1.b.x, _wgslsmith_f_op_f32(trunc(arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-192f, arg_0.b.x, arg_0.b.x, 314f) - vec4<f32>(var_1.b.x, -1479f, arg_0.b.x, -2638f)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-668f, -1872f, arg_0.b.x, var_1.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, arg_0.b.x, var_1.b.x, 1398f))))));
    return StorageBuffer(vec2<i32>(_wgslsmith_add_i32(select(arg_0.c & 2147483647i, 1i, false), abs(var_1.a.x) << (~0u % 32u)), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(arg_0.a.zw, vec2<i32>(arg_0.a.x, arg_0.a.x) ^ vec2<i32>(-16640i, arg_0.c)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1362f, 1280f, 252f, 351f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, -998f, var_2.x, var_2.x)))))), 4294967295u, _wgslsmith_f_op_f32(-var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(~22002u, 22u)]);
}

