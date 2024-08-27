struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1272f, 1000f, -937f);

var<private> global1: vec2<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    global1 = select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(false, arg_0.x)), select(!vec2<bool>(global1.x, arg_2.b.x), global2.zy, !(!vec2<bool>(true, arg_2.b.x))), !global2.yz), global2.xz, !select(vec2<bool>(all(arg_0), select(true, true, true)), !select(arg_0.wz, vec2<bool>(true, global2.x), vec2<bool>(true, false)), !select(vec2<bool>(false, false), vec2<bool>(global2.x, false), global2.x)));
    global1 = !select(arg_2.b.yz, !(!(!vec2<bool>(false, global1.x))), !global1.x);
    var var_0 = arg_2;
    let var_1 = Struct_2(arg_2, 4294967295u, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x));
    var var_2 = -(vec2<i32>(reverseBits(1i), countOneBits(_wgslsmith_mult_i32(29519i, 9292i))) << (vec2<u32>(1u, ~var_0.a.x) % vec2<u32>(32u)));
    return _wgslsmith_sub_u32(20202u, arg_2.d);
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(vec3<u32>(~_wgslsmith_div_u32(u_input.a.x << (8900u % 32u), 58336u), 4294967295u, ~(~u_input.a.x) << (~u_input.a.x % 32u)), !vec3<bool>(_wgslsmith_mod_u32(u_input.b, u_input.b) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 19710u, 1u, 4294967295u), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 1u)), !global1.x, true), (global0.x != global0.x) & false, (u_input.b ^ _wgslsmith_mod_u32(0u << (1u % 32u), 1217u)) ^ u_input.a.x);
    let var_1 = Struct_2(Struct_1(~u_input.a, var_0.b, global2.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.d, reverseBits(u_input.b)), ~1u)), ~func_3(vec4<bool>(global2.x, false, global2.x, var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 1000f) + vec4<f32>(-965f, -187f, -705f, -1143f)), Struct_1(var_0.a, var_0.b, false, var_0.d)) | var_0.a.x, var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-952f * 1000f))));
    var var_2 = ~_wgslsmith_mod_u32(abs(~1554u), 55490u);
    let var_3 = u_input.a.x;
    let var_4 = Struct_1(vec3<u32>(var_3, select(var_3, _wgslsmith_sub_u32(~var_1.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(40805u, 4294967295u, 1u), vec3<u32>(var_0.d, 29276u, 1u))), global1.x), 0u), var_1.a.b, true, func_3(!(!vec4<bool>(global1.x, var_0.b.x, var_1.a.c, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, -1128f, 2188f, -2276f), vec4<f32>(var_1.d, 537f, 567f, -257f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1383f, var_1.d, 878f, -319f))))))), var_1.c));
    return vec3<f32>(594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f - global0.x) - var_1.d) * global0.x) * var_1.d), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 722f))));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2())))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-297f, global0.x, global0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-604f))), _wgslsmith_f_op_f32(f32(-1f) * -828f), -846f));
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(28867u), ~u_input.a.x, _wgslsmith_mod_u32(u_input.b, u_input.b)), vec3<u32>(46588u >> (u_input.a.x % 32u), ~9998u, _wgslsmith_add_u32(1u, u_input.b))) & u_input.a, !vec3<bool>(!(!global2.x), global1.x, all(select(vec3<bool>(false, true, true), vec3<bool>(true, global2.x, true), global1.x))), global2.x, u_input.a.x);
    var var_1 = ~(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-25781i, -2147483647i), vec2<i32>(15047i, -59135i), vec2<i32>(11269i, -21127i)), select(vec2<i32>(-24882i, 0i), vec2<i32>(-1i, -52635i), vec2<bool>(var_0.c, global2.x))), _wgslsmith_div_i32(~(-2147483647i), abs(2147483647i))) << (firstLeadingBit(max(abs(u_input.a.zz), ~vec2<u32>(u_input.b, 49844u))) % vec2<u32>(32u)));
    let var_2 = Struct_2(var_0, ~(~u_input.a.x), Struct_1(vec3<u32>(max(0u, u_input.b) & (35584u | var_0.d), 12372u, func_3(vec4<bool>(false, global2.x, global1.x, true), vec4<f32>(-173f, 269f, -1087f, global0.x), Struct_1(u_input.a, var_0.b, true, 31473u)) ^ countOneBits(var_0.a.x)), !(!vec3<bool>(global1.x, global1.x, false)), all(select(!vec4<bool>(global1.x, false, false, true), vec4<bool>(false, true, global2.x, true), vec4<bool>(true, false, true, global1.x))), 69097u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x));
    global1 = global2.zx;
    return Struct_1(~select(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, u_input.a.x, 1u), vec3<u32>(var_0.d, u_input.a.x, 59889u)), select(var_2.a.a, var_0.a, true), vec3<u32>(var_0.a.x, 23204u, 63887u)), vec3<u32>(_wgslsmith_add_u32(19063u, 37685u), 0u, 9669u), !(global1.x == false)), !(!var_0.b), any(select(vec4<bool>(!var_0.b.x, true, global1.x, any(vec4<bool>(global2.x, global2.x, false, global2.x))), select(!vec4<bool>(var_0.b.x, var_2.a.c, true, global1.x), select(vec4<bool>(false, true, var_2.a.c, true), vec4<bool>(global1.x, true, true, var_2.c.c), vec4<bool>(var_0.b.x, false, false, global2.x)), vec4<bool>(true, false, true, var_2.a.c)), true && global1.x)), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, _wgslsmith_f_op_f32(min(924f, global0.x)), -1282f)))))));
    var var_0 = Struct_2(arg_0, ~_wgslsmith_mod_u32(63956u, ~_wgslsmith_div_u32(2380u, u_input.b)), Struct_1(countOneBits(~u_input.a) >> (arg_0.a % vec3<u32>(32u)), arg_0.b, all(vec4<bool>(all(vec3<bool>(global2.x, true, true)), true, all(vec3<bool>(global1.x, global1.x, false)), global1.x)), arg_0.a.x), _wgslsmith_f_op_f32(sign(1000f)));
    let var_1 = Struct_2(var_0.a, 49874u, var_0.c, 1000f);
    let var_2 = true;
    let var_3 = var_1.c;
    return StorageBuffer(51493u, _wgslsmith_f_op_f32(-arg_1), var_0.d, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.a.d), u_input.a.xx) << (abs(vec2<u32>(var_3.a.x, var_1.c.a.x)) % vec2<u32>(32u)), vec2<u32>(7715u, max(33600u, 0u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 4294967295u, 1u, var_0.b) ^ vec4<u32>(18450u, var_0.a.a.x, 31030u, 68689u)), select(~vec4<u32>(0u, 65383u, var_3.a.x, 106426u), vec4<u32>(arg_0.a.x, 72881u, var_0.a.a.x, 0u) >> (vec4<u32>(34974u, var_1.a.d, arg_0.a.x, 1u) % vec4<u32>(32u)), select(vec4<bool>(var_3.b.x, true, true, true), vec4<bool>(false, var_2, false, arg_0.b.x), true))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x - 125f))))));
}

