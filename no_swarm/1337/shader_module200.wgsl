struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<f32>(-499f, -1000f)), Struct_2(vec2<f32>(123f, 1188f)), Struct_2(vec2<f32>(640f, -1078f)), Struct_2(vec2<f32>(-154f, -549f)));

var<private> global3: array<vec3<bool>, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = u_input.b.x;
    global3 = array<vec3<bool>, 29>();
    let var_1 = arg_2;
    let var_2 = Struct_1(arg_1.a, u_input.a.x, arg_1.a.x << (arg_1.a.x % 32u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.x, 321f, 1486f, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, var_1.a.x, 863f, var_1.a.x))))))));
    let var_3 = -var_0;
    return -578f;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = min(vec4<u32>(~arg_2.a.x, arg_0.x, ~arg_0.x, firstLeadingBit(arg_0.x)), ~vec4<u32>(min(select(1u, 1u, global0.x), _wgslsmith_sub_u32(arg_0.x, 49580u)), ~1u, firstLeadingBit(arg_0.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0), abs(arg_0))));
    let var_1 = Struct_1(~(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.x), vec2<u32>(arg_2.c, 0u)))), _wgslsmith_dot_vec2_i32(~u_input.a.xz, vec2<i32>(2147483647i, -arg_2.b >> (arg_2.c % 32u))), ~68352u, _wgslsmith_f_op_vec4_f32(arg_2.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, _wgslsmith_f_op_f32(trunc(1437f)), _wgslsmith_div_f32(1730f, arg_1), _wgslsmith_f_op_f32(1327f - arg_2.d.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d - vec4<f32>(159f, arg_2.d.x, 1122f, 1000f))))));
    var var_2 = global2[_wgslsmith_index_u32(10404u, 4u)];
    let var_3 = _wgslsmith_dot_vec2_u32(~max(vec2<u32>(arg_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u)) ^ vec2<u32>(arg_0.x, ~21696u), vec2<u32>(113716u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0, arg_0), min(vec3<u32>(0u, arg_2.c, var_0.x), arg_0)))) ^ abs(var_0.x);
    global1 = all(vec3<bool>(global0.x && select(true, true, all(global0.ww)), !(true | (4296i < u_input.b.x)), all(!global3[_wgslsmith_index_u32(countOneBits(var_3), 29u)])));
    return _wgslsmith_f_op_f32(f32(-1f) * -437f);
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -333f))) * 1f) * _wgslsmith_f_op_f32(func_4(vec3<u32>(arg_0.x, 14235u, 1u) | (vec3<u32>(arg_0.x, 1u, 10072u) & arg_0.zyy), _wgslsmith_f_op_f32(func_3(!global3[_wgslsmith_index_u32(18912u, 29u)], Struct_1(arg_0.xy, u_input.a.x, 4294967295u, vec4<f32>(-380f, 738f, 991f, 353f)), Struct_2(vec2<f32>(-1248f, 590f)))), Struct_1(arg_0.yw, 1i, ~arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, -882f, 449f, 1081f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-541f)) * _wgslsmith_f_op_f32(419f * -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -784f))), global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(710f)))), _wgslsmith_f_op_f32(max(-493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-480f + -485f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f - 260f) * 239f)))));
    var var_1 = reverseBits(~vec2<i32>(reverseBits(abs(u_input.b.x)), -1023i));
    var var_2 = min(arg_0.x, ~arg_0.x << (33323u % 32u));
    global1 = true;
    var var_3 = _wgslsmith_sub_i32(reverseBits(~_wgslsmith_div_i32(1i, max(var_1.x, u_input.b.x))), var_1.x);
    return max(1u, 0u);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = any(vec2<bool>(arg_0, true));
    global2 = array<Struct_2, 4>();
    global0 = vec4<bool>(true | !global0.x, false, true, all(!global0.wy));
    let var_0 = 18666i;
    var var_1 = global0.wxy;
    return Struct_1(firstTrailingBit(vec2<u32>(~0u, ~49355u) & max(select(vec2<u32>(0u, 13834u), vec2<u32>(1u, 4294967295u), false), ~vec2<u32>(48577u, 57141u))), -18375i, 1u & func_2(vec4<u32>(~12680u, 1u, ~9349u, ~1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(875f)), _wgslsmith_f_op_f32(-2212f + 284f), _wgslsmith_f_op_f32(f32(-1f) * -377f), -823f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, -1040f, 420f, 244f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-695f, -973f, 745f, 701f))) * vec4<f32>(-248f, -288f, -140f, 689f))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> bool {
    global2 = array<Struct_2, 4>();
    var var_0 = max(-22958i, ~_wgslsmith_sub_i32(u_input.a.x, max(-41760i ^ u_input.a.x, u_input.b.x >> (arg_1.c % 32u))));
    global3 = array<vec3<bool>, 29>();
    var var_1 = _wgslsmith_div_i32(arg_1.b, reverseBits(0i) >> (firstTrailingBit(select(arg_1.c << (3687u % 32u), 1u >> (arg_1.c % 32u), true)) % 32u));
    var var_2 = global2[_wgslsmith_index_u32(arg_2, 4u)];
    return !any(select(vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x), any(global3[_wgslsmith_index_u32(4294967295u, 29u)]))) && false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec4<bool>(true, 2848i >= u_input.b.x, true, true), vec4<bool>(true, !global0.x, any(global0.yzy), all(global0.xxy)), vec4<bool>(any(global0.yyw), any(vec4<bool>(true, false, false, false)), true, true)));
    let var_1 = all(select(vec3<bool>(any(var_0.yxx), func_5(u_input.b, func_1(var_0.x), 42649u), !global0.x), select(global0.wxw, vec3<bool>(global0.x, false, u_input.a.x == -1i), all(global3[_wgslsmith_index_u32(abs(4294967295u), 29u)])), select(true, global0.x, true)));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 0u, 5655u, 38481u), vec4<u32>(1u, 1u, 1u, 1u), false), _wgslsmith_div_vec4_u32(~max(vec4<u32>(4294967295u, 0u, 77483u, 1u), vec4<u32>(13300u, 4294967295u, 1u, 2423u)), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), ~1u, ~1u, 1u))), 4u)];
    var var_3 = func_1(!any(global0.yyw));
    var var_4 = func_1(var_1);
    let var_5 = _wgslsmith_f_op_vec4_f32(-var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) - -378f))));
}

