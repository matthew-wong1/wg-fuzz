struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec3<bool>(any(vec2<bool>(true, false)), false, !global0.c)), !vec3<bool>(global0.c & !global0.b, _wgslsmith_sub_i32(u_input.c.x, -20793i) > ~1i, all(select(vec2<bool>(global0.d, global0.b), vec2<bool>(false, false), vec2<bool>(true, false)))), !all(vec3<bool>(true, global0.d, !global0.c)));
    var var_1 = 16189i;
    let var_2 = -_wgslsmith_div_i32(_wgslsmith_clamp_i32(max(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), 1i), -28568i | select(u_input.a, -10278i, false), _wgslsmith_add_i32(54668i, u_input.a << (u_input.e % 32u))), -10311i);
    var var_3 = var_2;
    var_1 = -2147483647i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(ceil(global0.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(sign(-820f)), global0.a.x), vec3<bool>(global0.b, false, false))), !(!(!select(false, true, global0.d))), -abs(~var_2) <= (abs(abs(var_2)) >> (u_input.e % 32u)), !(!global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(_wgslsmith_mod_u32(~4294967295u, 1u), firstTrailingBit(reverseBits(u_input.e)), ~(~u_input.e))), -(~(-6048i)));
}

