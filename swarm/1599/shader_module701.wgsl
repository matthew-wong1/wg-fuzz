struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1u, vec2<bool>(false, false), true, 2147483647i), Struct_1(4294967295u, vec2<bool>(false, true), true, 40381i), Struct_1(51640u, vec2<bool>(false, true), false, 1i), Struct_1(49330u, vec2<bool>(true, false), true, -2953i), Struct_1(4294967295u, vec2<bool>(false, true), false, 0i), Struct_1(4294967295u, vec2<bool>(true, true), true, -9578i), Struct_1(28587u, vec2<bool>(true, false), false, 23417i), Struct_1(84718u, vec2<bool>(true, true), false, 26508i), Struct_1(0u, vec2<bool>(false, false), false, i32(-2147483648)), Struct_1(82105u, vec2<bool>(true, false), false, -2050i), Struct_1(4294967295u, vec2<bool>(true, true), false, -38208i), Struct_1(1u, vec2<bool>(true, false), true, 9062i));

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<vec2<u32>, 27>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, -2128f), arg_0.x, -313f, _wgslsmith_div_f32(-538f, _wgslsmith_f_op_f32(round(arg_0.x)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(576f)), 812f, arg_0.x, 178f), vec4<f32>(_wgslsmith_f_op_f32(-708f * arg_0.x), _wgslsmith_f_op_f32(floor(-1803f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-292f - arg_0.x)), true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1108f, -1194f, arg_0.x, -1076f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-985f, arg_0.x, -688f, arg_0.x) - vec4<f32>(arg_0.x, 705f, arg_0.x, arg_0.x))))), !select(vec4<bool>(true, arg_1, true, false), select(vec4<bool>(arg_1, false, false, true), vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, true, false, arg_1)), true)))));
    let var_1 = abs(-abs(2147483647i));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, -853f, var_0.x, 615f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 721f, arg_0.x, 1013f)))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2179f))), _wgslsmith_f_op_f32(-527f + arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(393f + arg_0.x)), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -1164f) + vec3<f32>(arg_0.x, 758f, arg_0.x))) * var_0.zxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), var_0.x, _wgslsmith_f_op_f32(308f + 133f)) + vec3<f32>(786f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), -1009f))));
    var var_3 = var_2.xz;
    return 41779u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(func_3(vec3<f32>(-1000f, -392f, arg_1.x), true)), ~arg_3), 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)], arg_0.x, ~21614u);
    let var_1 = _wgslsmith_f_op_f32(round(1589f));
    let var_2 = Struct_4(Struct_2(var_0.b, Struct_1(~125460u & func_3(vec3<f32>(472f, arg_1.x, 740f), true), vec2<bool>(!var_0.a.b.x, true), var_0.a.b.x, _wgslsmith_clamp_i32(-37108i, 0i, 67470i)), firstLeadingBit(min(var_0.c, 1i)) ^ ((arg_0.x & 8356i) & (297i ^ arg_2.x)), ~0u), Struct_3(Struct_1(_wgslsmith_sub_u32(arg_3, func_3(vec3<f32>(1077f, 1248f, 968f), var_0.a.c)), var_0.b.b, var_0.a.c == true, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_2.x, -2147483647i, arg_0.x)), abs(vec3<i32>(var_0.a.d, -1i, arg_0.x))))), -2147483647i, Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(28575u, 25592u, 48535u, 1u), vec4<u32>(global0.x, 0u, var_0.d, 45307u), vec4<u32>(52521u, 1u, 6181u, 0u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(13314u, 0u, 4294967295u, var_0.a.a)), vec4<u32>(global0.x, 69905u, global0.x, global0.x), vec4<u32>(arg_3, global0.x, var_0.d, 23220u) | vec4<u32>(var_0.a.a, var_0.a.a, 4294967295u, 1u))), var_0.a.b, !var_0.a.b.x, -2147483647i), 11872u);
    var var_3 = countOneBits(global0.x);
    var var_4 = ~1i;
    return _wgslsmith_add_u32(20963u, ~55835u);
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(arg_0.x & ~global0.x, u_input.a >> (~(~4294967295u) % 32u)), _wgslsmith_div_u32(func_2(-(~vec2<i32>(0i, 3359i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-936f * -1941f)), vec2<i32>(max(-39038i, -1i), 1i), ~(~global0.x)), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2725f, -837f, -653f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(388f, -1194f, 1000f))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), all(vec4<bool>(false, true, false, true)))), _wgslsmith_div_i32(~(-1i >> (arg_0.x % 32u)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10403i, -1i, -18909i), vec4<i32>(1i, -1i, 0i, -8165i)), i32(-1i) * -57054i)) <= ~_wgslsmith_dot_vec2_i32(vec2<i32>(21461i, -1i), reverseBits(vec2<i32>(9814i, 9874i)))), 12u)];
    let var_1 = select(!(!(!vec3<bool>(var_0.b.x, var_0.c, var_0.b.x))), !(!select(vec3<bool>(false, var_0.c, true), !vec3<bool>(var_0.c, var_0.b.x, var_0.c), !vec3<bool>(var_0.c, true, true))), !select(select(!vec3<bool>(var_0.b.x, var_0.c, var_0.c), !vec3<bool>(var_0.c, false, var_0.c), var_0.b.x), vec3<bool>(all(vec2<bool>(var_0.c, true)), false || var_0.b.x, false), select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, false, false), !var_0.b.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-537f, -674f, 633f) - vec3<f32>(808f, 176f, 169f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-505f, 818f, -1049f), vec3<f32>(-1345f, -606f, -461f), false)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1141f, 179f), vec3<f32>(-425f, -173f, 512f), true))))));
    global3 = array<vec2<u32>, 27>();
    return Struct_4(Struct_2(global1[_wgslsmith_index_u32(~(~arg_0.x), 12u)], Struct_1(_wgslsmith_mult_u32(~arg_0.x, 4294967295u | global0.x), !(!vec2<bool>(true, var_0.c)), false, -19668i), var_0.d, var_0.a), Struct_3(Struct_1(18064u, !var_1.xy, any(vec3<bool>(false, false, false)), var_0.d)), var_0.d, global1[_wgslsmith_index_u32(var_0.a, 12u)], u_input.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> vec2<bool> {
    global3 = array<vec2<u32>, 27>();
    var var_0 = _wgslsmith_clamp_i32(arg_3.b.a.d, -arg_2.c, -arg_2.b.d);
    let var_1 = vec4<i32>(-1i) * -reverseBits(vec4<i32>(_wgslsmith_add_i32(-1i, 33515i), arg_3.d.d | arg_1.d, ~10372i, ~44548i));
    let var_2 = _wgslsmith_div_i32(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), var_1.xwy) & ~4780i) | _wgslsmith_sub_i32(_wgslsmith_sub_i32(48311i | arg_1.d, -45857i), ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_3.b.a.d, arg_3.d.d, 1i), arg_1.d));
    var var_3 = func_1(global0.zx).d;
    return vec2<bool>(-select(_wgslsmith_div_i32(var_1.x, var_1.x), -2147483647i, true) > -_wgslsmith_mult_i32(-20616i, -29969i), all(vec3<bool>(true, false, all(!vec3<bool>(arg_0, false, var_3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 27>();
    let var_0 = !vec2<bool>(all(func_4(false, global2[_wgslsmith_index_u32(2554u, 1u)], Struct_2(Struct_1(0u, vec2<bool>(true, true), false, 1i), Struct_1(41644u, vec2<bool>(true, false), false, -2147483647i), 38688i, 39096u), func_1(vec2<u32>(global0.x, 0u)))), ~reverseBits(global0.x) < firstLeadingBit(func_2(vec2<i32>(1i, 1i), vec2<f32>(2338f, 253f), vec2<i32>(12196i, 1i), 48908u)));
    global2 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-684f)) - 813f);
    global2 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~max(_wgslsmith_mult_i32(3763i, -4723i), _wgslsmith_dot_vec4_i32(vec4<i32>(17509i, 0i, 0i, -9318i), vec4<i32>(9724i, 0i, -1i, -31343i))), 1i, reverseBits(1i)), _wgslsmith_sub_vec4_u32(abs(~(vec4<u32>(u_input.a, 52399u, u_input.a, u_input.a) << (vec4<u32>(0u, global0.x, global0.x, 1u) % vec4<u32>(32u)))), max(abs(vec4<u32>(4294967295u, global0.x, 4294967295u, 1u)) >> (~vec4<u32>(0u, 20797u, u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))));
}

