struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32302i;

var<private> global1: Struct_1;

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 23040u, 1u, 0u, 1u, 24554u, 1u, 4294967295u, 1u, 839u, 51829u, 113734u, 31419u, 59573u, 69051u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(global1.b.wz, global1.b.yy), global1.b.xz), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 10004u), ~u_input.b.zy), ~global1.b.wy, vec2<u32>(countOneBits(44020u), ~1u)));
    var var_1 = Struct_1(-arg_0.x, ~(~vec4<u32>(4000u, var_0, global2[_wgslsmith_index_u32(49659u, 15u)], 71996u) ^ countOneBits(u_input.b)), _wgslsmith_f_op_f32(floor(global1.c)));
    var var_2 = arg_0.xzz;
    global0 = _wgslsmith_div_i32(var_2.x, _wgslsmith_mult_i32(max(global1.a, u_input.a), 1i));
    let var_3 = Struct_1(global1.a, ~u_input.b, global1.c);
    return var_1.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec3<f32>(1027f, 1920f, 2031f), _wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0)))), ~func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, -63536i, global1.a), vec3<i32>(10811i, u_input.a, 33610i)), -23063i, _wgslsmith_sub_i32(0i, -25153i), arg_1.a)), Struct_1(global1.a, select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, global2[_wgslsmith_index_u32(51765u, 15u)], arg_1.b.x), max(arg_1.b, u_input.b), global1.b), vec4<u32>(_wgslsmith_add_u32(arg_1.b.x, 40564u), _wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(305u, 0u)), ~23229u, 32666u), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c - global1.c), global1.c)), _wgslsmith_f_op_f32(1938f * -633f)))));
    global0 = -18509i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), var_0.a.x, var_0.b.x);
    global1 = Struct_1(_wgslsmith_add_i32(arg_1.a, _wgslsmith_mod_i32(arg_1.a, var_0.c)), vec4<u32>(~(~global2[_wgslsmith_index_u32(global1.b.x, 15u)] & var_0.d.b.x), 4294967295u, 24449u, max(var_0.d.b.x, 1u) >> (max(23326u, _wgslsmith_add_u32(51815u, 1u)) % 32u)), -1662f);
    global1 = Struct_1(0i, ~vec4<u32>(_wgslsmith_clamp_u32(~0u, arg_1.b.x, ~var_0.d.b.x), ~21623u, select(min(4294967295u, global1.b.x), ~global2[_wgslsmith_index_u32(u_input.b.x, 15u)], true), global1.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(790f, _wgslsmith_f_op_f32(global1.c * var_0.b.x)))), 169f)));
    return var_0.d;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1425f - global1.c);
    global1 = func_2(vec2<f32>(-109f, -1690f), Struct_1(select(arg_1.c, ~_wgslsmith_clamp_i32(4613i, -1i, global1.a), true), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, global1.c) - _wgslsmith_f_op_f32(min(1000f, arg_3.c)))));
    global1 = arg_1.d;
    global0 = arg_3.a | _wgslsmith_add_i32(global1.a, -82066i);
    global1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.yy - arg_1.a.xy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1000f) * arg_1.b)))), arg_3);
    return !(~4294967295u != ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 24681i;
    var var_1 = !(!select(vec4<bool>(true, true, func_1(vec4<u32>(1u, 51076u, 0u, 14233u), Struct_2(vec3<f32>(global1.c, global1.c, global1.c), vec2<f32>(-2312f, global1.c), 1i, Struct_1(u_input.a, vec4<u32>(75184u, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global1.b.x, 15u)], 4294967295u), 224f)), vec3<u32>(1u, 4460u, global1.b.x), Struct_1(u_input.a, vec4<u32>(0u, global1.b.x, global1.b.x, global1.b.x), global1.c)), false), vec4<bool>(true, select(true, true, false), global1.c > global1.c, true), select(true, true, true)));
    let var_2 = 0u;
    let var_3 = firstTrailingBit(vec2<i32>(firstLeadingBit(abs(global1.a)), 4067i));
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.c, 1000f, 651f)))) + vec3<f32>(916f, _wgslsmith_f_op_f32(f32(-1f) * -1614f), global1.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, 1795f, global1.c) - vec3<f32>(-1086f, global1.c, 1444f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 1043f, -218f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-979f, global1.c, global1.c), vec3<f32>(global1.c, -699f, 524f))) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.c, 426f, -696f), vec3<f32>(global1.c, -236f, global1.c))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1193f, global1.c))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, global1.c) - vec2<f32>(-1348f, global1.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 2054f) + _wgslsmith_div_vec2_f32(vec2<f32>(global1.c, global1.c), vec2<f32>(1470f, 520f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), 208f))));
}

