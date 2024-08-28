struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(49707u), Struct_4(37094u), Struct_4(3229u), Struct_4(10777u));

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<u32>(4294967295u, 49688u, 0u)), Struct_3(vec3<u32>(8207u, 46038u, 11434u)), Struct_3(vec3<u32>(55047u, 4294967295u, 1u)), Struct_3(vec3<u32>(0u, 40250u, 17669u)), Struct_3(vec3<u32>(1u, 0u, 33854u)), Struct_3(vec3<u32>(43256u, 75266u, 40578u)), Struct_3(vec3<u32>(36539u, 1u, 1u)), Struct_3(vec3<u32>(111390u, 1u, 19801u)), Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 1u, 1u)), Struct_3(vec3<u32>(15274u, 0u, 26791u)), Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec3<u32>(49041u, 6180u, 15803u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    global1 = array<Struct_3, 14>();
    return Struct_1((79464u >> (select(max(arg_1.a.x, 20613u), countOneBits(20810u), true) % 32u)) << (32492u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-906f)) * _wgslsmith_f_op_f32(ceil(986f))) * arg_0.x), -846f);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = vec2<bool>(!(!(arg_0.b.x <= arg_1.b.x) && true), all(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))));
    global0 = array<Struct_4, 4>();
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-570f, arg_0.c.b) + arg_1.c.c) + _wgslsmith_f_op_f32(1188f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)))));
    global0 = array<Struct_4, 4>();
    return -5195i;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(func_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 20173u), vec4<f32>(-546f, 992f, 703f, 1037f), Struct_1(4294967295u, 970f, -653f)), Struct_2(vec3<u32>(71983u, 44978u, 4294967295u), vec4<f32>(-1516f, 324f, 1259f, 525f), Struct_1(88000u, 597f, 1000f))), u_input.c >> (4294967295u % 32u)), -42647i) | -1i, u_input.d.x >> (~(~91921u) % 32u), ~firstTrailingBit(countOneBits(u_input.a.x ^ u_input.a.x)));
    global0 = array<Struct_4, 4>();
    global1 = array<Struct_3, 14>();
    global1 = array<Struct_3, 14>();
    var var_1 = min(_wgslsmith_dot_vec3_u32(select(min(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 1u, 0u)), vec3<u32>(1u, 1u, 1u), true), ~vec3<u32>(21549u, 1u, 0u)) & _wgslsmith_div_u32(38200u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(22361u, 1u, 28912u, 0u)) & 28746u), _wgslsmith_dot_vec4_u32(vec4<u32>(~firstLeadingBit(20411u), 41828u, 1u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(58632u, 4294967295u), vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u))), (firstTrailingBit(vec4<u32>(20979u, 1u, 1u, 39717u)) ^ vec4<u32>(1u, 1u, 1u, 1u)) ^ vec4<u32>(1u, 1u, 1u, 1u)));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~func_1(vec2<f32>(-523f, -643f), global1[_wgslsmith_index_u32(4294967295u, 14u)]).a, ~_wgslsmith_div_u32(55840u, 40349u)), ~26021u, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, 275f) + vec2<f32>(347f, -884f)), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 66729u, 4294967295u), vec3<u32>(1u, 0u, 20011u))), 14u)]).a, 1u), ~vec4<u32>(reverseBits(63795u), 55060u, _wgslsmith_sub_u32(max(4294967295u, 108282u), ~35991u), 1u), ~vec4<u32>(0u, select(1u, 4294967295u, false), ~0u, 2242u) ^ ~vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = ~_wgslsmith_clamp_u32(1u >> (_wgslsmith_clamp_u32(627u, ~52003u, 1u) % 32u), 55564u, _wgslsmith_div_u32(arg_2.x, 66633u));
    global0 = array<Struct_4, 4>();
    let var_1 = _wgslsmith_add_u32(55413u, firstLeadingBit(countOneBits(countOneBits(arg_2.x)))) < arg_1.a;
    global1 = array<Struct_3, 14>();
    let var_2 = Struct_5(Struct_2(arg_2.xww, vec4<f32>(-289f, 1329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f + arg_3) + _wgslsmith_f_op_f32(max(-1478f, -361f))), arg_3), arg_1), ~1u, Struct_4(arg_1.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1546f), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 14>();
    var var_0 = Struct_3(vec3<u32>(44554u | _wgslsmith_clamp_u32(0u, ~14440u, countOneBits(1u)), 1u, 0u));
    var var_1 = Struct_2(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1464f, _wgslsmith_f_op_f32(-1091f - -549f))))), _wgslsmith_f_op_f32(-1445f + 271f), _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, 337f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.yy, var_0.a.yy), 14u)]), ~func_2(), -1434f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-784f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3003f, -1000f)), true != any(vec3<bool>(false, false, false))))), Struct_1(~(var_0.a.x & 1u) | ~(~var_0.a.x), -377f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_1(vec2<f32>(-525f, -821f), Struct_3(var_0.a)).b)))));
    global0 = array<Struct_4, 4>();
    let var_2 = vec4<bool>(true, true, var_1.a.x >= 40246u, false);
    var_0 = Struct_3(max(min(var_0.a, vec3<u32>(4294967295u, 24002u, 1u)) >> (var_1.a % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.a, 0u, 16913u), var_1.a))) ^ firstTrailingBit(countOneBits(vec3<u32>(43543u, var_0.a.x, var_1.c.a) >> (vec3<u32>(4294967295u, 50041u, 54693u) % vec3<u32>(32u)))));
    var_1 = Struct_2(_wgslsmith_add_vec3_u32(~var_1.a, ~vec3<u32>(func_1(vec2<f32>(-767f, var_1.c.c), Struct_3(vec3<u32>(40707u, 28041u, var_1.c.a))).a, var_0.a.x, 10109u)), _wgslsmith_f_op_vec4_f32(-var_1.b), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(45877u, var_0.a.x, _wgslsmith_mod_i32(19702i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 18528i, 0i), vec4<i32>(-1i, 45359i, u_input.d.x, -4383i))) & _wgslsmith_div_i32(-1i, 1i), var_1.a.x);
}

