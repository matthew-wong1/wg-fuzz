struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2489f, -1000f, -641f);

var<private> global1: bool = true;

var<private> global2: f32 = 1292f;

var<private> global3: f32;

var<private> global4: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = Struct_4(vec2<i32>(max(-(~5357i), ~u_input.b), _wgslsmith_sub_i32(0i, u_input.b)), u_input.c, _wgslsmith_sub_i32(max(firstLeadingBit(1i), u_input.c), _wgslsmith_mod_i32(-2147483647i, -1i)) << (_wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(u_input.d, u_input.a.x)), u_input.a.x) % 32u));
    return _wgslsmith_mult_u32(~(~u_input.a.x), ~(~1u ^ u_input.d));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = !(global0.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_1 = max(abs(~firstLeadingBit(select(arg_0, arg_0, vec4<bool>(false, var_0, true, true)))), _wgslsmith_add_vec4_u32(arg_0, ~_wgslsmith_sub_vec4_u32(arg_0 & arg_0, abs(arg_0))));
    var var_2 = Struct_5(-263f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, -1340f), vec4<f32>(428f, -320f, 622f, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1149f, -2035f, -1002f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(887f, global0.x, 438f, -114f), vec4<f32>(global0.x, global0.x, -1000f, 552f))))))), Struct_2(u_input.a.x ^ countOneBits(~arg_0.x)), ~min(select(vec4<u32>(var_1.x, 20578u, 101844u, 0u), vec4<u32>(var_1.x, 65923u, arg_0.x, var_1.x), !vec4<bool>(true, var_0, true, true)), var_1), Struct_2(13107u));
    var var_3 = (~_wgslsmith_add_u32(var_1.x, ~var_2.c.a) & var_1.x) ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(~11507u | _wgslsmith_add_u32(1u, var_1.x), ~(~var_2.c.a), var_1.x), 4294967295u << (firstLeadingBit(_wgslsmith_dot_vec3_u32(var_1.yyw, vec3<u32>(21283u, var_1.x, 26135u))) % 32u));
    var var_4 = _wgslsmith_dot_vec3_u32(countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.e.a, 41062u, 0u), var_2.d.yww, vec3<u32>(1u, 27793u, 4294967295u)) >> (u_input.a % vec3<u32>(32u))), vec3<u32>(arg_0.x, _wgslsmith_div_u32(arg_0.x, var_2.e.a) & 15007u, 4294967295u) ^ _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 1u, 50820u), countOneBits(var_1.zzx)), ~(~arg_0.zzz)));
    return _wgslsmith_f_op_f32(f32(-1f) * -263f);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    global1 = true;
    var var_0 = true;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(2259f * -1567f), 155f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), 852f, -1186f)))), Struct_2(63403u), select(vec4<u32>(func_2(), 11679u << (u_input.a.x % 32u), ~arg_1, _wgslsmith_div_u32(0u, arg_1)), vec4<u32>(16329u, 4294967295u, 0u, ~56680u), vec4<bool>(true, true, true, true)) ^ vec4<u32>(~(~u_input.d), min(~4294967295u, _wgslsmith_mult_u32(80849u, arg_1)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(111669u, arg_1, 40496u, 69296u), vec4<u32>(6304u, arg_1, arg_1, arg_1)), countOneBits(vec4<u32>(arg_1, arg_1, arg_1, 41616u))), u_input.d), Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xy, ~u_input.a.xz), arg_1)));
    let var_2 = _wgslsmith_f_op_f32(func_3(~firstTrailingBit(var_1.d)));
    var var_3 = select(select(vec4<bool>(!(var_2 <= -127f), true, any(vec2<bool>(false, false)), true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), !(!all(vec3<bool>(true, true, false)))), !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true));
    return firstLeadingBit(10752u);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(select(744f, -908f, arg_1))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1435f * global0.x) + global0.x), _wgslsmith_f_op_f32(ceil(193f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1712f - -238f))))));
    let var_1 = ~0u;
    var var_2 = var_0;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * _wgslsmith_f_op_f32(select(450f, global0.x, true))), _wgslsmith_f_op_f32(-514f + global0.x));
    return abs(select(~(0u << (u_input.d % 32u)), ~41203u, arg_0.x) | var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = true;
    let var_0 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-890f, 775f)))) * global0.x));
    let var_1 = Struct_2(~u_input.a.x);
    let var_2 = u_input.a.zx;
    let var_3 = var_1;
    var var_4 = 0i;
    var var_5 = Struct_1(func_4(vec3<bool>(func_1(vec4<i32>(17033i, u_input.b, 24092i, -2147483647i), 59089u) >= 1u, true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))), ~firstTrailingBit(var_3.a) > abs(select(0u, 91135u, true))), _wgslsmith_f_op_vec2_f32(trunc(global0.xx)), u_input.a, !(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)))));
    let var_6 = Struct_5(-595f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-482f, _wgslsmith_f_op_f32(var_0 + -1037f), _wgslsmith_f_op_f32(trunc(1667f)), _wgslsmith_f_op_f32(f32(-1f) * -2188f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1501f, var_5.b.x, -1603f)), vec4<f32>(var_5.b.x, var_5.b.x, 127f, global0.x)), ~(-1i) <= u_input.b)))), var_3, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, var_1.a & var_1.a, select(42044u, 4294967295u, var_5.d.x), reverseBits(4294967295u)), min(vec4<u32>(79347u, 54051u, 1u, 0u), vec4<u32>(0u, 1u, var_3.a, var_5.a)) | (vec4<u32>(114046u, u_input.d, 0u, 1u) & vec4<u32>(u_input.d, var_1.a, 1u, var_3.a))), ~(abs(vec4<u32>(var_3.a, u_input.a.x, 0u, u_input.a.x)) >> (vec4<u32>(47994u, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u)))), Struct_2(u_input.d));
    var var_7 = Struct_3(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1015f, 447f) * vec2<f32>(989f, _wgslsmith_f_op_f32(exp2(var_5.b.x)))))), 79605u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(var_5.c.xz), ~vec2<u32>(2060u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 8354u), var_5.c.xy, u_input.a.zz)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_5.a, var_5.a), var_6.d.zw), var_2), reverseBits(9680u << (~_wgslsmith_mult_u32(var_5.c.x, var_7.c) % 32u)));
}

