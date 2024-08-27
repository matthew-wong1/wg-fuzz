struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<i32, 13> = array<i32, 13>(-4821i, 61220i, -3312i, 2147483647i, 7452i, 0i, 2147483647i, 24786i, 15696i, -48028i, -9061i, 76835i, 2147483647i);

var<private> global2: array<vec2<f32>, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> bool {
    let var_0 = u_input.a;
    var var_1 = Struct_1(~(-5573i) & (u_input.c | -_wgslsmith_sub_i32(-1i, 1i)), 0u, arg_1, _wgslsmith_mod_i32(-_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, -49171i), _wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(-256i, -1i, global1[_wgslsmith_index_u32(u_input.a, 13u)], arg_3.x))), abs(-(-44501i & u_input.b))));
    global0 = array<Struct_1, 18>();
    global2 = array<vec2<f32>, 15>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~91097u, _wgslsmith_mod_u32(~var_1.b, ~4294967295u), 1u), 18u)];
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    global1 = array<i32, 13>();
    global2 = array<vec2<f32>, 15>();
    global0 = array<Struct_1, 18>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(-256f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1572f))))), 833f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2402f))))));
    return !(!func_2(true, _wgslsmith_add_i32(1i, arg_2.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_div_f32(2738f, var_1.x), _wgslsmith_f_op_f32(272f * -301f), _wgslsmith_f_op_f32(-499f + -1000f)), ~(~vec4<i32>(arg_1.c, u_input.b, 1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~firstTrailingBit(max(vec4<u32>(u_input.a, 1u, 1u, 4294967295u), vec4<u32>(14574u, 8993u, u_input.a, 385u)))));
    let var_1 = select(vec3<bool>(!any(vec3<bool>(false, true, false)) | true, (true | select(true, false, false)) || true, func_1(firstTrailingBit(~vec2<u32>(var_0.x, var_0.x)), Struct_1(reverseBits(-39165i), var_0.x, -2147483647i, reverseBits(-2147483647i)), global0[_wgslsmith_index_u32(min(~var_0.x, ~u_input.a), 18u)])), !vec3<bool>(true, true, all(vec3<bool>(true, false, false))), false);
    let var_2 = global0[_wgslsmith_index_u32(~var_0.x, 18u)];
    global2 = array<vec2<f32>, 15>();
    global2 = array<vec2<f32>, 15>();
    global0 = array<Struct_1, 18>();
    global2 = array<vec2<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(7352u, 13u)], ~var_2.c), ~741i), countOneBits(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(47436u ^ u_input.a, var_2.b), 13u)]));
}

