struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true, vec3<bool>(true, true, false), 1266f);

var<private> global3: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    return !select(select(select(global2.b, global1.b, global2.b.x), select(global1.b, vec3<bool>(global2.b.x, false, global2.b.x), select(vec3<bool>(global2.a, true, global1.b.x), global2.b, true)), select(select(global1.b, vec3<bool>(true, global2.b.x, global1.a), global1.a), !global1.b, true)), global1.b, false);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(695f * _wgslsmith_f_op_f32(ceil(-1278f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-137f)) - _wgslsmith_f_op_f32(f32(-1f) * -505f))), !select(select(global1.b, global1.b, !global2.a), select(global1.b, func_3(), vec3<bool>(false, global2.a, arg_0)), select(func_3(), global2.b, !global2.b)), _wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(f32(-1f) * -509f)));
    global1 = var_1;
    let var_2 = ~reverseBits(min((vec4<u32>(u_input.a, 21652u, 80146u, 1u) | vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 4294967295u)) >> (firstLeadingBit(vec4<u32>(1u, u_input.b.x, 87508u, 26210u)) % vec4<u32>(32u)), vec4<u32>(1u, u_input.b.x, _wgslsmith_sub_u32(u_input.a, u_input.a), 17156u)));
    var var_3 = firstLeadingBit(var_2.wx);
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = any(!(!vec3<bool>(true, true, select(false, true, true))));
    global0 = vec2<f32>(global0.x, global2.c);
    global1 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c - global0.x)))) == 794f, min(-1i, -(-2147483647i << (~arg_1.x % 32u))), global2.b.x, arg_3);
    global2 = Struct_1(var_0, !vec3<bool>(global2.b.x == true, true, false), 907f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(arg_3)))));
    return func_2(true, 0i, all(!global2.b), vec2<f32>(-1085f, global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_i32(~(-(~(-51440i))), _wgslsmith_mod_i32(i32(-1i) * -32816i, select(~(-34307i), _wgslsmith_clamp_i32(0i, -76014i, -7763i), global2.a))) | reverseBits(abs(13669i));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -615f))), _wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(1554f - _wgslsmith_f_op_f32(f32(-1f) * -487f))));
    var var_0 = global1.a | (u_input.c <= 19001u);
    global1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<u32>(~(~abs(u_input.a)), u_input.c, abs(54069u), _wgslsmith_div_u32(~(16334u << (u_input.d.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(27740u, 27153u, 4294967295u, 0u), vec4<u32>(0u, u_input.b.x, u_input.a, 21909u)))), abs((vec3<u32>(u_input.c, 43672u, u_input.a) & vec3<u32>(u_input.d.x, 4294967295u, u_input.b.x)) & (vec3<u32>(u_input.d.x, 4294967295u, u_input.b.x) | (vec3<u32>(u_input.c, u_input.b.x, 12461u) >> (vec3<u32>(30031u, u_input.a, 64787u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1610f, global0.x))))));
    global2 = Struct_1(global2.a, !global1.b, _wgslsmith_f_op_f32(-func_1(global0.x, countOneBits(max(vec4<u32>(u_input.d.x, u_input.a, 72328u, u_input.d.x), vec4<u32>(u_input.b.x, 18404u, 17228u, u_input.a))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(4294967295u, u_input.b.x, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(u_input.c, u_input.a, u_input.d.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-324f, 880f), vec2<f32>(-1817f, global1.c))))).c));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(~vec2<i32>(0i, 15930i), vec2<i32>(1i, 1i), global2.b.yx), _wgslsmith_sub_vec2_i32(~vec2<i32>(-5677i, 2147483647i), vec2<i32>(-23275i, -55163i)), global2.b.x) | abs(-(vec2<i32>(1i, 0i) >> (vec2<u32>(u_input.c, u_input.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-845f)) - -519f), -1300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(206f)) * _wgslsmith_f_op_f32(1122f + global2.c)), global2.c)));
}

