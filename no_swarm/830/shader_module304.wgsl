struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: f32;

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = abs(global2.b);
    var var_1 = vec3<bool>(true, global2.a.x, (~_wgslsmith_dot_vec2_u32(arg_2.b, arg_1.b) >= 4294967295u) & true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-793f, -1239f, 735f, -107f), vec4<f32>(881f, 1037f, 586f, -854f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-221f, 593f, 697f, 688f), vec4<f32>(789f, -344f, -178f, 1455f), arg_3.a.x)))))));
    let var_3 = arg_3;
    let var_4 = global2.b;
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    global0 = global2.a;
    global0 = global2.a;
    let var_0 = ~_wgslsmith_clamp_u32(54u, firstLeadingBit(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)), ~(~u_input.a.x));
    var var_1 = firstLeadingBit(~vec4<u32>(1u, u_input.a.x, 36276u & var_0, _wgslsmith_sub_u32(var_0, func_3(vec2<u32>(u_input.a.x, 130752u), Struct_1(vec3<bool>(global0.x, global2.a.x, global2.a.x), u_input.a.xx), Struct_1(global2.a, vec2<u32>(global2.b.x, 35608u)), Struct_1(global2.a, vec2<u32>(u_input.a.x, 0u))))));
    let var_2 = Struct_1(vec3<bool>(all(!(!vec4<bool>(false, global2.a.x, false, global0.x))), !all(select(vec4<bool>(global2.a.x, false, global0.x, global0.x), vec4<bool>(false, true, true, false), false)), all(!vec3<bool>(true, global2.a.x, global0.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(var_0), _wgslsmith_mult_u32(global2.b.x, global2.b.x)), ~abs(vec2<u32>(51691u, 1u)), u_input.a.zx));
    return Struct_1(vec3<bool>(true, true, true), countOneBits(var_2.b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 699f) + vec2<f32>(-895f, 664f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1590f, 336f) - vec2<f32>(1000f, -183f)), u_input.a.x < arg_0.b.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(498f, 1482f), vec2<f32>(611f, 865f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-598f, 1198f) * vec2<f32>(-841f, 781f)), true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(544f, 1071f))), vec2<f32>(1000f, 147f))))), 1067f);
    global0 = !(!(!vec3<bool>(true, select(false, global2.a.x, true), true)));
    global2 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1021f, -210f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(159f, -1487f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1114f, 364f))), vec2<bool>(true, true))))), arg_1.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1033f)), -851f) + _wgslsmith_f_op_f32(floor(-4224f))), -3279f)));
    var var_0 = vec2<u32>(~_wgslsmith_mult_u32(0u, arg_0.b.x >> ((global2.b.x & arg_0.b.x) % 32u)), arg_0.b.x);
    let var_1 = Struct_1(vec3<bool>(any(!vec3<bool>(global2.a.x, arg_1.a.x, true)), any(vec2<bool>(arg_0.a.x, global0.x)), (min(17124u, 4294967295u) ^ global2.b.x) >= reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(global2.b.x, arg_1.b.x)))), ~(~firstLeadingBit(~arg_1.b)));
    return min(33981i, -(i32(-1i) * -52146i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(Struct_1(!(!vec3<bool>(true, global2.a.x, global0.x)), _wgslsmith_div_vec2_u32(~u_input.a.zy, ~u_input.a.yx)), Struct_1(select(global2.a, vec3<bool>(false, global2.a.x, global2.a.x), select(vec3<bool>(global0.x, true, true), global2.a, global0.x)), firstLeadingBit(global2.b)));
    let var_1 = true;
    let var_2 = global2.a.zy;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(223f, -1897f, true))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1658f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1597f), !(u_input.a.x > (0u << ((21450u | global2.b.x) % 32u)))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1251f - -1000f), _wgslsmith_f_op_f32(abs(308f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2124f)))))) + 573f)));
    global0 = select(select(!(!global2.a), select(!vec3<bool>(var_2.x, global0.x, var_2.x), !(!vec3<bool>(var_1, false, var_2.x)), 31273u == u_input.a.x), global2.a), global2.a, select(!vec3<bool>(global2.a.x, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, var_2.x), true), !vec3<bool>(global2.a.x, var_2.x, global2.a.x), select(global0.x, false, false)), global2.a, true), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1144f, 671f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f), vec2<i32>(46871i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-13469i, var_0), ~(-1998i)) & _wgslsmith_add_i32(func_1(Struct_1(vec3<bool>(false, true, false), vec2<u32>(global2.b.x, 1u)), Struct_1(vec3<bool>(true, true, false), u_input.a.xy)), 29533i << (u_input.a.x % 32u))), reverseBits(-max(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-59674i, var_0)), _wgslsmith_sub_vec2_i32(vec2<i32>(15189i, var_0), vec2<i32>(18642i, var_0)))));
}

