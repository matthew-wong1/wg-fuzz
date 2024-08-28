struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> f32 {
    global0 = array<Struct_2, 28>();
    return arg_1.a.x;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1035f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2974f, -489f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_f32(f32(-1f) * -1181f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-325f * var_0.a), var_0.a))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1322f, -740f), vec2<f32>(var_0.a, 497f)))) * vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.b, 28u)], 2137u)), var_0.a)))));
    return var_1.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<u32> {
    global0 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~abs(arg_0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), u_input.a), ~_wgslsmith_add_u32(1u, 12833u)) | u_input.a, vec3<u32>(_wgslsmith_clamp_u32(arg_0.x, ~_wgslsmith_div_u32(6304u, 4294967295u), 54070u), arg_0.x, u_input.a.x), select(max(max(u_input.a, u_input.a), ~_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a)), u_input.a, vec3<bool>(false, true, true)));
    var var_1 = vec3<i32>(countOneBits(-31891i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(0i << (1u % 32u), -35341i, ~2147483647i), vec3<i32>(reverseBits(-2147483647i), 1i, 1i), vec3<bool>(false, true, true)), _wgslsmith_add_vec3_i32(min(vec3<i32>(15069i, -52811i, -4304i), vec3<i32>(12469i, -8323i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(13793i, -1i, -1i) << (var_0 % vec3<u32>(32u)), -vec3<i32>(2147483647i, -2147483647i, 2147483647i)))), _wgslsmith_add_i32(abs(abs(1i)), 1i));
    var var_2 = 4637i;
    global0 = array<Struct_2, 28>();
    return u_input.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_3(u_input.a.zy, Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2565f, -375f, 1375f))), global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<f32>(_wgslsmith_f_op_f32(616f + 713f), _wgslsmith_f_op_f32(min(554f, 1000f)), _wgslsmith_f_op_f32(sign(710f)), _wgslsmith_f_op_f32(func_1(u_input.a.x)))));
    var var_1 = 1552f;
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1510f, 574f, -491f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, -198f, 1063f)))), global0[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 28u)], vec4<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -425f), -2226f)), 1732f, 2529f)), firstLeadingBit(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -709f);
    var var_4 = var_2.a.c;
    var_1 = var_4.x;
    var var_5 = false;
    var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.a.c, var_2.a.c)) + var_2.a.c);
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(var_2.a.c))))), -vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, 24591i)), vec2<i32>(1i, 1i)), 52663i, -24174i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(60562u, 1u)) % 32u), ~(i32(-1i) * -24340i)), _wgslsmith_sub_u32(1913u, func_3(_wgslsmith_mult_vec2_u32(~var_0, reverseBits(vec2<u32>(18674u, var_2.b))), var_2.a).x), var_4.x);
}

