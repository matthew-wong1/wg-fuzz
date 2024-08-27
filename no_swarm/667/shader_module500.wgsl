struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2098f, vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-746f, vec4<bool>(false, false, false, true)), Struct_1(1281f, vec4<bool>(false, true, true, true)), Struct_1(-1444f, vec4<bool>(false, true, false, false)), Struct_1(1638f, vec4<bool>(false, false, false, true)), Struct_1(-1782f, vec4<bool>(true, true, false, false)), Struct_1(741f, vec4<bool>(true, false, true, true)), Struct_1(152f, vec4<bool>(true, true, false, true)), Struct_1(669f, vec4<bool>(true, false, true, false)), Struct_1(-1224f, vec4<bool>(false, true, true, true)), Struct_1(1000f, vec4<bool>(true, true, true, false)), Struct_1(-399f, vec4<bool>(true, false, true, true)), Struct_1(-234f, vec4<bool>(false, true, false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec4<f32> {
    var var_0 = Struct_1(-856f, global0.b);
    var var_1 = firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(abs(4294967295u), 4294967295u & u_input.b.x, ~u_input.a.x), select(~vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), vec3<u32>(0u, u_input.b.x, 20212u), all(vec4<bool>(false, arg_0.x, true, true)))));
    let var_2 = global0.b;
    var var_3 = _wgslsmith_clamp_vec2_u32(max(var_1.xy, firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.xy, var_1.xy), 1u))), vec2<u32>(_wgslsmith_div_u32(~var_1.x, 5605u), u_input.a.x), _wgslsmith_sub_vec2_u32(select(min(~vec2<u32>(var_1.x, u_input.b.x), ~var_1.yz), ~u_input.a, var_0.b.ww), reverseBits(vec2<u32>(select(u_input.b.x, u_input.b.x, arg_0.x), max(0u, var_1.x)))));
    var var_4 = Struct_2(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(firstLeadingBit(var_3.x), 12u)]);
    return vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.a), _wgslsmith_f_op_f32(step(var_4.b.a, -913f))))), _wgslsmith_f_op_f32(-global0.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(-1909f, select(vec4<bool>(all(vec3<bool>(global0.b.x, global0.b.x, global0.b.x)), global0.b.x, arg_1.x, false), global0.b, vec4<bool>(false, all(vec2<bool>(global0.b.x, global0.b.x)), -441f >= global0.a, any(vec3<bool>(true, false, global0.b.x))))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~u_input.a.x), 12u)]);
    let var_1 = true;
    var var_2 = var_0;
    global0 = var_2.b;
    global0 = var_0.b;
    return var_2.b.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.b.xx))), global0.b.zzw)), vec4<bool>(!all(vec3<bool>(global0.b.x, global0.b.x, arg_0.b.x)), any(arg_0.b), false, all(!vec2<bool>(global0.b.x, global0.b.x)))), Struct_1(_wgslsmith_f_op_f32(1000f + global0.a), !arg_0.b));
    global0 = Struct_1(arg_1.x, select(select(vec4<bool>(global0.b.x, global0.b.x, false && var_0.a.b.x, any(var_0.b.b)), vec4<bool>(false, any(global0.b), true, any(var_0.b.b.xz)), arg_0.b.x), !(!vec4<bool>(arg_0.b.x, true, var_0.a.b.x, true)), !vec4<bool>(!global0.b.x, false, !var_0.a.b.x, true)));
    let var_1 = Struct_2(Struct_1(-305f, arg_0.b), Struct_1(1000f, global0.b));
    global1 = array<Struct_1, 12>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.b.a))))), var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - var_1.a.a) * _wgslsmith_f_op_f32(f32(-1f) * -256f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1608f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_1.a.a + -967f), -216f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 2345f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-145f)) - 784f), arg_0.a, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(global0.a - var_1.a.a))))) + _wgslsmith_f_op_vec4_f32(func_3(select(!select(vec2<bool>(var_1.b.b.x, true), vec2<bool>(var_0.b.b.x, false), global0.b.x), arg_0.b.wz, select(!var_0.a.b.x, global0.b.x, global0.b.x)))));
}

fn func_1() -> f32 {
    var var_0 = vec2<u32>(abs(u_input.a.x), ~u_input.b.x);
    global1 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.a), u_input.a) & _wgslsmith_sub_vec2_u32(select(u_input.a, vec2<u32>(var_0.x, 26274u), vec2<bool>(global0.b.x, global0.b.x)), u_input.b)) & var_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1314f, 2143f, global0.a, global0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(889f, global0.a, -131f, global0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(-360f, vec4<bool>(true, false, global0.b.x, false)), vec3<f32>(782f, -752f, 840f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(!vec2<bool>(global0.b.x, global0.b.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1713f, global0.a, -1341f, -1878f), vec4<f32>(307f, global0.a, -1266f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1203f, global0.a, global0.a, global0.a), vec4<f32>(global0.a, 1054f, global0.a, 364f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, -1000f, 746f, global0.a))) + vec4<f32>(1909f, global0.a, global0.a, global0.a))))));
    var_1 = _wgslsmith_div_u32(90374u, var_0.x);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a))), -263f, -2058f, _wgslsmith_f_op_f32(exp2(global0.a))) + vec4<f32>(428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f))), _wgslsmith_f_op_f32(func_1()), global0.a));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1500f + _wgslsmith_f_op_f32(round(340f))), global0.a), _wgslsmith_f_op_f32(-global0.a))), global0.b);
    let var_2 = select(var_1.b, !vec4<bool>(any(select(global0.b.yw, var_1.b.wy, false)), global0.b.x, any(vec3<bool>(true, true, global0.b.x)), all(!global0.b.xx)), vec4<bool>(true, false, false & (any(vec3<bool>(var_1.b.x, global0.b.x, false)) & global0.b.x), all(select(!vec4<bool>(true, false, var_1.b.x, var_1.b.x), !vec4<bool>(true, true, true, var_1.b.x), vec4<bool>(false, var_1.b.x, true, var_1.b.x)))));
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(~vec3<u32>(17532u, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 42836u)), vec3<bool>(global0.b.x, true, true))) << (vec3<u32>(4294967295u, _wgslsmith_add_u32(29069u, _wgslsmith_sub_u32(0u, u_input.b.x)), u_input.a.x) % vec3<u32>(32u)), -1i, ~vec3<u32>(1u << ((u_input.b.x | u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6429u, u_input.a.x), vec3<u32>(18386u, u_input.a.x, u_input.a.x)) << (u_input.a.x % 32u), ~4294967295u), vec4<i32>(firstLeadingBit(-49637i), _wgslsmith_sub_i32(~max(u_input.c, 53782i), 2959i), abs(u_input.c) | u_input.c, u_input.c), u_input.a.x);
}

