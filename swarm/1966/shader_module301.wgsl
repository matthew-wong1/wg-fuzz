struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = select(!vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false)), true, true), vec4<bool>(false, ((4294967295u == u_input.b.x) == true) | false, select(false, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true))), select(any(vec4<bool>(true, true, false, false)), arg_0 != arg_0, false) & true), vec4<bool>(select(true, all(vec3<bool>(false, true, true)) | true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), any(vec3<bool>(true, true, true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true));
    let var_1 = ((vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(20356u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, u_input.a)), ~4294967295u, countOneBits(38179u), u_input.a) << (~abs(vec4<u32>(1u, 0u, 52426u, 4294967295u)) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(u_input.a, ~u_input.a, u_input.b.x, firstTrailingBit(u_input.b.x))) % vec4<u32>(32u))) >> (~_wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(0u, u_input.b.x, u_input.a, 18331u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 52050u, 70572u, u_input.b.x), vec4<u32>(63217u, u_input.b.x, 0u, 53549u), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.b.x))) % vec4<u32>(32u));
    global0 = array<vec3<i32>, 16>();
    var var_2 = select(var_0, select(select(select(var_0, !var_0, var_0), vec4<bool>(true, false, !var_0.x, var_0.x), any(vec3<bool>(var_0.x, true, true))), var_0, vec4<bool>(false, false, all(vec3<bool>(var_0.x, var_0.x, true)), !(26308u < u_input.a))), var_0);
    var_2 = !var_0;
    return ~var_1 << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, countOneBits(firstLeadingBit(u_input.b.x)), abs(var_1.x) << (1u % 32u)), var_1 & vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.yxy, var_1.wwz), abs(u_input.b.x), 4294967295u, 1u)) % vec4<u32>(32u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 1813f;
    global0 = array<vec3<i32>, 16>();
    let var_1 = select(~min(-2147483647i, _wgslsmith_mod_i32(1i, ~1224i)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(min(~global0[_wgslsmith_index_u32(u_input.b.x, 16u)], vec3<i32>(1i, 1i, 1i)), abs(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b.x), 16u)]))), arg_0);
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    return Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(max(4294967295u, 0u), ~u_input.a, u_input.b.x, u_input.a ^ 8554u), _wgslsmith_mod_vec4_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2472f)), select(vec4<u32>(u_input.a, 37175u, u_input.b.x, u_input.a) | vec4<u32>(23646u, 4917u, u_input.a, u_input.b.x), ~vec4<u32>(1052u, 1u, 4294967295u, 55254u), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, arg_0, arg_0))))), arg_0, var_1);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_2;
    global0 = array<vec3<i32>, 16>();
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1.a.a, arg_1.b.a), ~func_3(_wgslsmith_f_op_f32(ceil(-1424f)))), !(!(!select(arg_1.c.b, true, false))), abs(_wgslsmith_add_i32(abs(_wgslsmith_sub_i32(1i, arg_1.c.c)), -41495i | _wgslsmith_div_i32(arg_1.d, arg_1.d))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) + -684f)));
    let var_3 = ~(~firstTrailingBit(~arg_1.b.a.yzx));
    return !(~(-1i) > firstLeadingBit(arg_1.c.c));
}

fn func_1() -> vec3<bool> {
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_0 = select(select(vec4<bool>(59787u <= abs(u_input.a), true, true, true), vec4<bool>(!all(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true)), select(true, true, true)), any(vec3<bool>(false, false, select(true, true, false)))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), vec4<bool>(true, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 34706u)) > u_input.b.x, (4294967295u & u_input.b.x) != (u_input.a >> (44681u % 32u)), true), !all(vec4<bool>(true, true, true, true))), vec4<bool>(func_4(1u, Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a, u_input.b.x, 11559u), false, -1i), func_2(true), func_2(true), _wgslsmith_div_i32(-4512i, -49031i), true), 48851u | u_input.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, -1546f, -1076f, -101f) * vec4<f32>(-1842f, -505f, -641f, -2449f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1417f, 257f, -829f, 846f) + vec4<f32>(1735f, 1410f, 2594f, 140f)), true))), !any(vec4<bool>(false, false, true, true)), !any(vec4<bool>(true, true, true, true)), select(true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))));
    var var_1 = true;
    var var_2 = true;
    return vec3<bool>(true, var_0.x, var_0.x);
}

fn func_5(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a, 25669u), vec4<u32>(u_input.a, 0u, u_input.b.x, 8700u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 68104u, 10292u, 4294967295u))) >> (~(~max(vec4<u32>(0u, 114385u, u_input.b.x, u_input.a), vec4<u32>(u_input.a, 1u, 0u, 20563u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b.x), vec3<u32>(28343u, u_input.a, u_input.b.x)), u_input.a, 78650u), min(vec4<u32>(u_input.a, u_input.b.x, 1u, 0u), vec4<u32>(232u, 41245u, u_input.a, u_input.b.x) >> (vec4<u32>(0u, u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u))), ~vec4<u32>(1u, 4294967295u, 0u, 1u)) & vec4<u32>(u_input.a, _wgslsmith_add_u32(20839u, 53917u) << (u_input.a % 32u), 34837u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 34723u), u_input.b)), vec4<u32>(~(u_input.b.x >> (u_input.a % 32u)) >> (1u % 32u), 1u, _wgslsmith_add_u32(~abs(u_input.a), 4294967295u), u_input.b.x));
    let var_1 = Struct_4(abs(60280i));
    global0 = array<vec3<i32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(131f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1885f)), _wgslsmith_f_op_f32(sign(222f))))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f * -916f)))), var_2)));
    return func_2(any(!select(!vec3<bool>(arg_0, false, arg_1), select(vec3<bool>(false, true, true), vec3<bool>(arg_1, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_1, arg_0), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(select(vec3<bool>(u_input.a < 1u, true, true), func_1(), vec3<bool>(any(vec3<bool>(false, false, true)), true, false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(40258i));
}

