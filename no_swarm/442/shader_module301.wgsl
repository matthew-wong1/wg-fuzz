struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(false);

var<private> global3: Struct_3 = Struct_3(false);

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) * -595f)))), true, u_input.d);
    global2 = Struct_3(var_0.b);
    let var_1 = Struct_2(-1235f, all(select(vec2<bool>(false, !var_0.b), vec2<bool>(false, var_0.b), var_0.b)), _wgslsmith_mod_i32(20941i, -61612i));
    let var_2 = true;
    global1 = min(reverseBits(firstTrailingBit(-16748i >> (_wgslsmith_clamp_u32(u_input.a, 4294967295u, 4294967295u) % 32u))), 0i);
    return Struct_1(8540i, 1u | _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14596u, u_input.b.x), u_input.b.xyz), u_input.a), u_input.a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    global0 = global2.a;
    global2 = Struct_3(func_2().b >= 4358u);
    var var_0 = ~(~u_input.b.wzx);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.x, -1000f)), 134f)))), global2.a, 9016i);
    global0 = global3.a;
    return 317f;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global2 = Struct_3(global3.a);
    var var_0 = _wgslsmith_f_op_f32(func_3(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-895f, -735f, -1909f) + vec3<f32>(-104f, -171f, 985f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, -1044f, -2321f) + vec3<f32>(707f, 1051f, 1249f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(861f, 1782f, 630f)))))), true));
    global4 = 0u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(149f)) * -939f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)))));
    var var_2 = _wgslsmith_add_i32(~(-u_input.d), 0i);
    return Struct_3(false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(vec2<u32>(1u, 59554u));
    var var_0 = func_2();
    var var_1 = func_1(max(u_input.b.ww, _wgslsmith_mult_vec2_u32(u_input.b.wx, u_input.b.zz)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 60361u) ^ reverseBits(u_input.b.yy), countOneBits(vec2<u32>(14122u, u_input.a))) % vec2<u32>(32u)));
    var var_2 = vec3<i32>(select(_wgslsmith_div_i32(max(-1i, u_input.c) >> (select(18125u, u_input.a, global3.a) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_0.a, u_input.c), select(vec3<i32>(u_input.d, -2147483647i, -32911i), vec3<i32>(var_0.a, u_input.d, 20962i), false))), _wgslsmith_mult_i32(-u_input.d, ~var_0.a), true), ~u_input.d, -var_0.a);
    let var_3 = u_input.a;
    var var_4 = Struct_3(true);
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1465f), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-935f))), -459f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, 173f)), _wgslsmith_f_op_f32(min(797f, -1250f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(710f)), _wgslsmith_f_op_f32(step(865f, -437f)), -223f, 195f)), select(vec4<bool>(global3.a, all(vec4<bool>(true, var_1.a, global2.a, true)), false, true), !(!vec4<bool>(var_1.a, global3.a, true, false)), global3.a))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(114f, _wgslsmith_f_op_f32(select(-647f, 948f, global2.a)), _wgslsmith_f_op_f32(sign(551f)), _wgslsmith_f_op_f32(min(-588f, 893f))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1238f, -1000f)), _wgslsmith_f_op_f32(980f + -394f))), -456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(988f - -749f) * _wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(-1701f + -1843f)))));
    let var_6 = Struct_1(1i, var_0.b ^ var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_f32(-var_5.x));
}

