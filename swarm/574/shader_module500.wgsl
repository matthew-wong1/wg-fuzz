struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(765f, true, Struct_2(vec4<u32>(37863u, 26200u, 36809u, 0u), vec3<i32>(i32(-2147483648), 30332i, 5573i), Struct_1(4294967295u, 91217u, vec4<i32>(-3569i, 0i, 1i, i32(-2147483648)), true, false)), vec2<f32>(-767f, 1251f)), Struct_3(1000f, false, Struct_2(vec4<u32>(60684u, 4294967295u, 0u, 4294967295u), vec3<i32>(-43149i, 0i, -8842i), Struct_1(4294967295u, 0u, vec4<i32>(0i, 1i, 44393i, 0i), true, true)), vec2<f32>(807f, -1826f)), Struct_3(-183f, false, Struct_2(vec4<u32>(13938u, 1u, 1u, 4294967295u), vec3<i32>(-35466i, -15280i, 2147483647i), Struct_1(49006u, 9321u, vec4<i32>(1i, -1i, 22786i, 20066i), true, false)), vec2<f32>(1379f, 448f)), Struct_3(-362f, true, Struct_2(vec4<u32>(8100u, 46879u, 4294967295u, 65459u), vec3<i32>(-1i, 7674i, -1i), Struct_1(26381u, 0u, vec4<i32>(2147483647i, 2147483647i, 49456i, 4147i), true, true)), vec2<f32>(-1230f, 1000f)), Struct_3(813f, true, Struct_2(vec4<u32>(40836u, 12805u, 52349u, 1u), vec3<i32>(2147483647i, 1i, 0i), Struct_1(14100u, 40748u, vec4<i32>(28551i, 2147483647i, 2147483647i, i32(-2147483648)), true, true)), vec2<f32>(-762f, 186f)), Struct_3(-407f, false, Struct_2(vec4<u32>(76065u, 68243u, 20202u, 14202u), vec3<i32>(-6550i, 117i, 1i), Struct_1(0u, 4294967295u, vec4<i32>(-1i, -25982i, 14930i, -1i), true, true)), vec2<f32>(-673f, 1551f)), Struct_3(-896f, false, Struct_2(vec4<u32>(4294967295u, 9821u, 4294967295u, 4294967295u), vec3<i32>(4818i, 0i, 1i), Struct_1(158u, 4294967295u, vec4<i32>(-21110i, 14551i, -1i, 38669i), true, false)), vec2<f32>(1000f, 635f)), Struct_3(-1000f, true, Struct_2(vec4<u32>(55174u, 41422u, 0u, 24498u), vec3<i32>(1i, -1i, -68707i), Struct_1(59801u, 25601u, vec4<i32>(2147483647i, 12482i, -23107i, 1i), true, false)), vec2<f32>(-1185f, 1065f)), Struct_3(782f, true, Struct_2(vec4<u32>(9774u, 52288u, 21330u, 0u), vec3<i32>(2147483647i, 61881i, 1506i), Struct_1(1955u, 0u, vec4<i32>(0i, 6527i, 15353i, -22361i), true, false)), vec2<f32>(1265f, -1162f)), Struct_3(-302f, true, Struct_2(vec4<u32>(103263u, 24068u, 32097u, 25037u), vec3<i32>(6459i, -37855i, 0i), Struct_1(42641u, 4294967295u, vec4<i32>(i32(-2147483648), 14870i, i32(-2147483648), -1i), false, false)), vec2<f32>(-723f, 471f)), Struct_3(1000f, true, Struct_2(vec4<u32>(36683u, 85840u, 57910u, 1u), vec3<i32>(3310i, 16922i, 1i), Struct_1(52885u, 40724u, vec4<i32>(0i, 1i, 0i, -74177i), false, false)), vec2<f32>(-510f, -498f)));

var<private> global2: vec2<f32>;

var<private> global3: vec2<i32>;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(global2.x + global2.x), false && (-105f < _wgslsmith_f_op_f32(global2.x - -1502f)), Struct_2(~(~vec4<u32>(67029u, 0u, 16123u, 0u)), vec3<i32>(_wgslsmith_mod_i32(-34801i, abs(-70854i)), _wgslsmith_div_i32(i32(-1i) * -1i, arg_1.x), min(select(-17790i, arg_1.x, true), -7638i)), Struct_1(~(~4294967295u), _wgslsmith_clamp_u32(~4294967295u, 0u, arg_0.x), vec4<i32>(-2147483647i, 0i, u_input.a.x, -40507i) | vec4<i32>(arg_1.x, u_input.d, arg_1.x, 0i), true, false && all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(-1170f, -1062f)), vec2<f32>(global2.x, global2.x))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(global2.x)), false, var_0.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.d))));
    let var_2 = var_0;
    global0 = -2147483647i;
    let var_3 = _wgslsmith_f_op_f32(-702f - -1000f);
    return _wgslsmith_mod_u32(~(u_input.b >> (countOneBits(var_0.c.c.a << (42715u % 32u)) % 32u)), reverseBits(0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_1(42044u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x >> (_wgslsmith_mod_u32(24841u, 1u) % 32u), ~13016u, arg_1.b), vec3<u32>(firstTrailingBit(arg_2.c.b << (arg_2.a.x % 32u)), arg_2.c.a, _wgslsmith_sub_u32(arg_2.a.x, select(u_input.b, arg_2.c.a, arg_1.e)))), ~vec4<i32>(-2147483647i, ~1i, -abs(u_input.c), _wgslsmith_add_i32(arg_2.b.x, global3.x)), !any(!vec4<bool>(arg_2.c.d, false, arg_2.c.e, arg_0)) & (any(select(vec3<bool>(arg_2.c.d, arg_0, true), vec3<bool>(true, true, true), true)) | (u_input.e != func_3(arg_2.a.zy, arg_2.c.c.wy))), !arg_1.d);
    let var_1 = _wgslsmith_sub_i32(u_input.c, select(1i, _wgslsmith_sub_i32(~(-arg_2.b.x), ~(1i << (1u % 32u))), all(vec2<bool>(!var_0.e, true))));
    let var_2 = vec4<i32>(-(i32(-1i) * -_wgslsmith_dot_vec4_i32(arg_1.c, vec4<i32>(16107i, var_0.c.x, 15332i, arg_1.c.x))), reverseBits(0i), _wgslsmith_clamp_i32(max(-global3.x, 1i), 19723i, -25849i ^ -u_input.d), ~_wgslsmith_sub_i32(12587i, firstLeadingBit(u_input.a.x)));
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 528f)) + vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, -882f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, global2.x) + vec2<f32>(global2.x, -276f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(-261f + global2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) + _wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_div_f32(684f, _wgslsmith_f_op_f32(f32(-1f) * -267f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1070f, 116f, global2.x, -1195f) + vec4<f32>(global2.x, global2.x, global2.x, 917f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)), !vec4<bool>(arg_2.c.d, arg_2.c.d, arg_2.c.e, true))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -509f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))))));
    return ~(~abs(arg_2.a.zz));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.d.x, -227f))))))));
    var var_0 = ~(~countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.c.a, vec4<u32>(arg_0.c.a.x, 0u, arg_2.x, arg_0.c.a.x)), ~vec4<u32>(50530u, 4294967295u, 0u, arg_0.c.a.x))));
    global4 = -2147483647i;
    return max(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(func_2(arg_0.b, Struct_1(var_0.x, arg_1.c.a.x, arg_0.c.c.c, true, false), arg_1.c).x, 51777u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~0u, arg_0.c.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c.c.b, arg_0.c.a.x, 4294967295u), arg_1.c.a)), _wgslsmith_add_u32(~arg_0.c.c.b, arg_1.c.c.a)), arg_0.c.c.a << (44633u % 32u)), 0u);
}

fn func_1() -> Struct_2 {
    var var_0 = -1i >> (~reverseBits(func_4(global1[_wgslsmith_index_u32(838u, 11u)], global1[_wgslsmith_index_u32(24930u, 11u)], func_2(false, Struct_1(u_input.b, 61679u, vec4<i32>(-2147483647i, 2147483647i, 1i, u_input.c), true, true), Struct_2(vec4<u32>(11701u, 23217u, u_input.e, u_input.e), vec3<i32>(global3.x, -10174i, u_input.a.x), Struct_1(0u, u_input.e, vec4<i32>(global3.x, u_input.a.x, 16619i, 0i), true, false))))) % 32u);
    var var_1 = -1188f;
    let var_2 = global1[_wgslsmith_index_u32(~0u, 11u)];
    return Struct_2(_wgslsmith_add_vec4_u32(reverseBits(~_wgslsmith_sub_vec4_u32(var_2.c.a, vec4<u32>(1u, 4294967295u, 4294967295u, u_input.e))), vec4<u32>(~_wgslsmith_sub_u32(var_2.c.a.x, var_2.c.a.x), ~(~27864u), 0u, 1u)), _wgslsmith_mod_vec3_i32(~u_input.a, var_2.c.b), var_2.c.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1210f, _wgslsmith_f_op_f32(-1f)))), !arg_0.c.e, arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-701f, arg_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(327f, 1587f), vec2<f32>(global2.x, arg_2)) + vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.x)))), vec2<bool>(false, all(select(vec2<bool>(true, arg_0.c.e), vec2<bool>(true, arg_0.c.e), false))))));
    global3 = -select(var_0.c.c.c.yx, -max(vec2<i32>(arg_0.c.c.x, 2147483647i), _wgslsmith_div_vec2_i32(arg_3.b.yz, vec2<i32>(-2147483647i, arg_0.c.c.x))), !any(vec3<bool>(false, arg_0.c.e, false)));
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.c.a, arg_0.c.a, 20946u, var_0.c.a.x), vec4<u32>(abs(u_input.b), 4294967295u, func_4(Struct_3(1000f, arg_1.x, arg_3, var_0.d), Struct_3(var_0.a, false, arg_3, var_0.d), vec2<u32>(var_0.c.a.x, arg_0.a.x)), 10447u)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(arg_3.a, vec4<u32>(0u, 4294967295u, arg_0.c.a, 13557u)), var_0.c.a), ~(~firstLeadingBit(arg_3.a))), vec4<u32>(_wgslsmith_div_u32(arg_3.c.b, arg_0.a.x), (~arg_0.c.a ^ 1u) >> (~var_0.c.a.x % 32u), 4294967295u, func_2(any(arg_1), func_1().c, func_1()).x));
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), global2.x, global2.x, global2.x)));
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.yy), vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.d.x, 603f, false)), _wgslsmith_f_op_f32(sign(var_0.x)))))))));
    var var_1 = 6737u;
    var var_2 = !(!(abs(49050u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 63024u), vec2<u32>(arg_2.x, 6143u))));
    let var_3 = _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1))), !(arg_3.b || true))) + _wgslsmith_f_op_vec4_f32(trunc(arg_1))));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.d.x)))))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = countOneBits(_wgslsmith_add_vec2_i32(-u_input.a.yy, -abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, global3.x), vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(global3.x, -2453i)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(func_6(2147483647i & abs(u_input.c), vec4<f32>(_wgslsmith_div_f32(-525f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-332f * global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f * _wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)))), select(select(func_5(Struct_2(vec4<u32>(60822u, 56031u, u_input.b, 1u), vec3<i32>(0i, 12517i, 0i), Struct_1(30114u, 32060u, vec4<i32>(u_input.c, global3.x, global3.x, u_input.d), true, false)), vec2<bool>(true, true), global2.x, func_1()), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 26992u, 1u), vec4<u32>(21368u, 50505u, u_input.e, 38184u)) >> (func_1().a % vec4<u32>(32u)), false), vec4<u32>(~func_2(true, Struct_1(u_input.e, u_input.e, vec4<i32>(0i, u_input.d, global3.x, -2147483647i), true, true), Struct_2(vec4<u32>(41539u, 0u, 1u, 6331u), vec3<i32>(u_input.a.x, u_input.c, 9297i), Struct_1(0u, 0u, vec4<i32>(2147483647i, global3.x, -40756i, 1601i), true, true))).x, u_input.e, _wgslsmith_mod_u32(~u_input.b, u_input.b), _wgslsmith_sub_u32(~4294967295u, u_input.e)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1735f))), true, Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 14316u), vec3<u32>(u_input.e, u_input.e, 4294967295u)), ~u_input.e, u_input.e, ~u_input.e), vec3<i32>(1i, global3.x, -2147483647i), Struct_1(~40862u, 0u >> (1u % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, global3.x, 78653i, -22009i), vec4<i32>(-2147483647i, 221i, u_input.c, -29462i)), true, select(false, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(124f, -1573f), vec2<f32>(316f, -1143f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 665f)))))));
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-83068i, u_input.a.x), vec2<i32>(u_input.c, abs(-1i)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27907u, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.b, u_input.b, u_input.e)), select(1u, 55146u, false)) % vec2<u32>(32u))));
    var var_2 = 4294967295u;
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<f32>(2159f, -328f, -837f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - global2.x), global2.x)) + global2.x)), vec2<f32>(-2078f, _wgslsmith_f_op_f32(abs(1236f))), 2896u);
}

