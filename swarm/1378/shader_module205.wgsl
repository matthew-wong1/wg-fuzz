struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> f32 {
    return global0.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2401f, arg_0.c, -1488f, global0.c)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1418f, global0.c, -835f, global0.c)), vec4<f32>(arg_0.c, -466f, global0.c, 568f), true)))))));
    global1 = array<Struct_3, 11>();
    var var_1 = -1i;
    var var_2 = vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(global0.b), arg_0.b), select(~countOneBits(vec2<u32>(u_input.c, 0u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(65324u, u_input.c), ~vec2<u32>(23101u, global0.b)), false)));
    let var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(353f, 476f, true))))), 763f), -337f, Struct_1(firstLeadingBit(-global0.a) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, arg_0.b, var_2.x, 55434u), ~vec4<u32>(global0.b, arg_0.b, var_2.x, 21444u)) % vec4<u32>(32u)), 64132u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(147f)) - 998f)), vec3<f32>(_wgslsmith_f_op_f32(-global0.c), 1430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(global0.c + arg_0.c))))));
    return (-_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.x, -7366i), global0.a.wy) > _wgslsmith_dot_vec2_i32(arg_0.a.zz, global0.a.zw)) | !arg_1.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = func_3(arg_0.b, select(arg_1, vec4<bool>(false, any(arg_1.ywz), true & (arg_1.x && false), _wgslsmith_f_op_f32(f32(-1f) * -1447f) != _wgslsmith_f_op_f32(func_2(1u, vec2<u32>(3996u, 4294967295u), arg_0.a.wx, vec2<i32>(0i, 11972i)))), arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1518f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c * arg_0.d.c), _wgslsmith_f_op_f32(f32(-1f) * -907f))))));
    var var_2 = max(vec3<u32>(u_input.c & 38520u, _wgslsmith_div_u32(0u, 1u), ~arg_0.c), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(select(1u, 4294967295u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_0.c), vec3<u32>(global0.b, 10852u, global0.b)), _wgslsmith_add_u32(global0.b, global0.b)), reverseBits(countOneBits(vec3<u32>(23840u, arg_0.c, 4294967295u)))), vec3<u32>(global0.b, 0u, u_input.c)));
    let var_3 = arg_0;
    global0 = Struct_1(reverseBits(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global0.a.x, arg_0.b.a.x, -2147483647i))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(sign(var_1)))))));
    return Struct_1(countOneBits(arg_0.b.a), _wgslsmith_add_u32(max(var_2.x >> (~var_2.x % 32u), _wgslsmith_add_u32(~46499u, _wgslsmith_sub_u32(var_3.b.b, var_3.d.b))), 0u), -191f);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    global0 = func_1(arg_2, select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true), !(~4294967295u < ~arg_2.d.b)), arg_2.b.a.x);
    global1 = array<Struct_3, 11>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2.a), Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(arg_2.b.a, vec4<i32>(0i, arg_1, 67136i, 2147483647i))), arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(100829u, vec2<u32>(154705u, global0.b), arg_2.a.zz, vec2<i32>(u_input.a.x, -2147483647i))))))), ~arg_2.c, func_1(Struct_2(_wgslsmith_f_op_vec4_f32(sign(arg_2.a)), arg_2.d, arg_2.b.b, func_1(Struct_2(vec4<f32>(arg_2.b.c, 1768f, arg_0.x, arg_2.a.x), arg_2.b, 37390u, arg_2.b), vec4<bool>(true, true, true, true), arg_1)), select(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), -2147483647i));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(arg_2.c, u_input.c, 0u)), vec3<u32>(firstTrailingBit(global0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.b, u_input.c), vec2<u32>(arg_2.d.b, 33859u)), 5863u ^ global0.b)), countOneBits(reverseBits(vec3<u32>(10184u, u_input.c, 47269u))) << (~(~vec3<u32>(1u, var_0.d.b, 84036u)) % vec3<u32>(32u))), abs(_wgslsmith_clamp_u32(global0.b, 1u, 74934u)), 0u), 11u)];
    var var_2 = true;
    return ~(~firstLeadingBit(arg_2.d.a.x));
}

fn func_5(arg_0: f32, arg_1: i32) -> vec2<u32> {
    var var_0 = -1153f;
    let var_1 = func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(733f, -803f, global0.c, 698f), vec4<f32>(global0.c, global0.c, 857f, 556f)))), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, 196f, 424f, global0.c)), func_1(Struct_2(vec4<f32>(arg_0, 879f, arg_0, -1676f), Struct_1(vec4<i32>(-21743i, u_input.e.x, 1i, -1i), 3765u, -1309f), global0.b, Struct_1(vec4<i32>(arg_1, -2147483647i, -13827i, u_input.a.x), u_input.c, arg_0)), vec4<bool>(false, false, false, true), arg_1), firstLeadingBit(42810u), Struct_1(global0.a, 24826u, global0.c)), vec4<bool>(true, true, true, true), firstTrailingBit(-u_input.b)), 11617u, Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global0.a, global0.a), global0.a), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, global0.b, u_input.c)), ~vec3<u32>(29702u, global0.b, global0.b)), -654f)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), false, true, true), true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), true)), arg_1);
    global1 = array<Struct_3, 11>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 + var_1.c), -1134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(global0.c - -219f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1108f, 1380f, -348f), _wgslsmith_div_vec3_f32(vec3<f32>(global0.c, -599f, 1627f), vec3<f32>(1068f, -508f, var_1.c)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(320f, _wgslsmith_f_op_f32(func_2(71947u, vec2<u32>(global0.b, var_1.b), vec2<f32>(299f, arg_0), vec2<i32>(0i, -1i))), -923f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0.c, 546f) * vec3<f32>(-257f, var_1.c, -1047f))))));
    var var_3 = vec2<u32>(u_input.c, ~(60799u >> (max(global0.b, _wgslsmith_mult_u32(34781u, global0.b)) % 32u)));
    return vec2<u32>(~(~countOneBits(161164u)), ~(~max(var_1.b, global0.b)) >> (49163u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) - -220f);
    var var_1 = global0.c;
    global1 = array<Struct_3, 11>();
    var var_2 = global0.b;
    var_2 = _wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(global0.b, global0.b)), vec2<u32>(countOneBits(0u) << (u_input.c % 32u), ~38752u), any(vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true))), func_5(-157f, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1218f)), ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 458f, 902f, 325f)), Struct_1(vec4<i32>(-1i, -21072i, u_input.d, 68291i), global0.b, global0.c), ~u_input.c, func_1(Struct_2(vec4<f32>(var_0, -243f, var_0, 162f), Struct_1(global0.a, 23492u, global0.c), 14930u, Struct_1(global0.a, global0.b, global0.c)), vec4<bool>(false, true, true, false), global0.a.x)))));
    var_2 = _wgslsmith_dot_vec4_u32(max(firstLeadingBit(vec4<u32>(global0.b, u_input.c, 4294967295u, 0u) | abs(vec4<u32>(global0.b, 0u, 1u, global0.b))), firstLeadingBit(~vec4<u32>(global0.b, u_input.c, global0.b, global0.b))), select(~vec4<u32>(_wgslsmith_div_u32(1u, 1u), func_1(Struct_2(vec4<f32>(-1045f, global0.c, 1000f, global0.c), Struct_1(global0.a, u_input.c, -679f), 1u, Struct_1(global0.a, global0.b, global0.c)), vec4<bool>(false, false, false, true), u_input.b).b, ~26726u, u_input.c), max(~reverseBits(vec4<u32>(4294967295u, 17374u, u_input.c, u_input.c)), ~vec4<u32>(105600u, 1u, 4294967295u, 0u) ^ abs(vec4<u32>(u_input.c, u_input.c, global0.b, 4294967295u))), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~9030i, vec2<i32>(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1689f, 1000f, -1476f) + vec3<f32>(global0.c, -1824f, 554f))), u_input.a.x, Struct_2(vec4<f32>(global0.c, -813f, -2837f, global0.c), func_1(Struct_2(vec4<f32>(global0.c, var_0, 576f, -1003f), Struct_1(vec4<i32>(42933i, global0.a.x, global0.a.x, -12947i), u_input.c, var_0), 41900u, Struct_1(global0.a, global0.b, global0.c)), vec4<bool>(true, true, true, true), u_input.a.x), ~global0.b, func_1(Struct_2(vec4<f32>(var_0, -1000f, 1000f, -693f), Struct_1(global0.a, global0.b, var_0), 26852u, Struct_1(global0.a, 15605u, 719f)), vec4<bool>(false, false, true, true), -15719i))), 0i), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, global0.b), firstTrailingBit(vec2<u32>(1u, global0.b))), 113244u));
}

