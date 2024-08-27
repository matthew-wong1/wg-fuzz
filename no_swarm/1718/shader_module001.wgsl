struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    global0 = ~select(_wgslsmith_add_vec3_u32(~u_input.a.wyy, vec3<u32>(~5331u, countOneBits(u_input.b), u_input.b << (u_input.b % 32u))), ~u_input.a.zyz, vec3<bool>(true, all(vec2<bool>(true, true)), true & any(vec3<bool>(false, true, false))));
    var var_0 = 35343u;
    let var_1 = 507f;
    global1 = array<Struct_1, 30>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0.x, u_input.b) << (1u % 32u), 4294967295u), 30u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(48604u, 34836u, 0u), 0u) << (min(_wgslsmith_dot_vec2_u32(global0.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), vec2<u32>(1u, 9663u)) | firstTrailingBit(var_2.a)), var_2.a.x) % 32u), 30u)];
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<bool> {
    global0 = u_input.a.zyy;
    global0 = ~vec3<u32>(arg_0, 8099u, ~(arg_1 >> (~arg_0 % 32u)));
    var var_0 = -961f;
    var var_1 = Struct_1(firstLeadingBit(global0.yz));
    var var_2 = ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(4995u, ~arg_0), ~u_input.a.x, max(arg_1 << (0u % 32u), global0.x ^ 4294967295u)));
    return select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))))), vec2<bool>(true, true), false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = 14058u;
    global0 = vec3<u32>(~global0.x, ~(~(~u_input.a.x) | max(arg_1.a.x, arg_0.a.x)), global0.x);
    return all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(var_0, 58899u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true | func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(0u, 67939u)), 30u)], func_1(vec3<f32>(-1062f, 207f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, 780f)), -1576f)), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true), false)), func_3(~u_input.b, global0.x).x, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1933f))) != -1000f));
    let var_1 = Struct_1(firstLeadingBit(~global0.xz << (u_input.a.xy % vec2<u32>(32u))) ^ ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(global0.xz, vec2<u32>(u_input.a.x, u_input.b)), global0.xz));
    global1 = array<Struct_1, 30>();
    let var_2 = abs(vec3<i32>(select(-1i, reverseBits(2147483647i), false | var_0.x), -1i, _wgslsmith_add_i32(1i, -1i)) | vec3<i32>(min(0i, 1i), 0i, -2147483647i));
    var var_3 = -var_2.x;
    var var_4 = var_1.a;
    var var_5 = vec4<u32>(_wgslsmith_clamp_u32(~var_1.a.x, ~0u, 0u), global0.x, 40743u, reverseBits(var_1.a.x)) >> (u_input.a % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-843f, _wgslsmith_f_op_f32(f32(-1f) * -464f)), 3135u, var_2.x);
}

