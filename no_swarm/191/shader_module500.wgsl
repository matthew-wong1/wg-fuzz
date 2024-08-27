struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: u32) -> vec2<u32> {
    global0 = array<bool, 27>();
    var var_0 = all(select(select(!select(vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a), true), vec2<bool>(arg_0.b, true), true), !vec2<bool>(arg_0.b, true), true));
    var var_1 = Struct_1(-879f != arg_1.x, arg_2.x > 1i);
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(max(~(~arg_3), arg_3 >> (_wgslsmith_sub_u32(26357u, 50589u & arg_3) % 32u)), 27u)], !any(vec3<bool>(false, select(true, arg_0.b, arg_0.a), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_0.b, global0[_wgslsmith_index_u32(arg_3, 27u)], false)))));
    global0 = array<bool, 27>();
    return vec2<u32>(firstTrailingBit(arg_3), ~abs(4294967295u >> (arg_3 % 32u))) | firstTrailingBit(abs(~vec2<u32>(arg_3, 1u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global0 = array<bool, 27>();
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -688f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))))))));
    var var_0 = u_input.a;
    let var_1 = vec4<u32>(1u, ~0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(select(select(vec3<u32>(51181u, 0u, 16040u), vec3<u32>(4294967295u, 6958u, 1u), vec3<bool>(false, false, arg_0.b)), vec3<u32>(4294967295u, 4294967295u, 4294967295u), arg_1), vec3<u32>(1u, 1u, 1u))), ~93527u);
    var_0 = _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-8123i, u_input.d, u_input.a, u_input.d)) >> (var_1 % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 36709i, -9946i, -1i), ~vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 1i))), ~_wgslsmith_mod_i32(u_input.c.x, -u_input.a)), u_input.d);
    return min(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, var_1.x), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), var_1.xw)), var_1.xz), vec2<u32>(~_wgslsmith_add_u32(142463u, var_1.x), ~var_1.x)), var_1.xy);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = ~((select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(1u, arg_1, arg_1)), vec3<u32>(0u, arg_1, arg_1), global0[_wgslsmith_index_u32(0u, 27u)]) >> (~vec3<u32>(122658u, 27589u, arg_1) % vec3<u32>(32u))) >> (~abs(vec3<u32>(0u, 28435u, arg_1) >> (vec3<u32>(25447u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(var_0.x, arg_1)), _wgslsmith_sub_vec2_u32(abs((vec2<u32>(22235u, 123u) >> (var_0.yx % vec2<u32>(32u))) | min(var_0.xz, vec2<u32>(arg_1, 4294967295u))), _wgslsmith_clamp_vec2_u32(var_0.xy, vec2<u32>(arg_1, arg_1), func_2(Struct_1(true, true), vec4<f32>(global1.x, 507f, global1.x, global1.x), vec2<i32>(u_input.b, u_input.c.x), var_0.x)) & func_3(Struct_1(global0[_wgslsmith_index_u32(86736u, 27u)], true), global0[_wgslsmith_index_u32(max(arg_1, 0u), 27u)])));
    var_1 = ~25490u;
    var var_2 = Struct_1(!(global1.x > _wgslsmith_f_op_f32(global1.x * global1.x)) || !global0[_wgslsmith_index_u32(5095u, 27u)], var_0.x < _wgslsmith_mod_u32(50255u, ~(~4294967295u)));
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(4294967295u & var_0.x, 27u)], var_2.a);
    return var_3;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = func_1(~firstLeadingBit(~vec4<i32>(u_input.a, -1i, 14251i, u_input.c.x) << (select(vec4<u32>(4294967295u, 0u, 46500u, 49222u), vec4<u32>(95836u, 4294967295u, 49595u, 83834u), arg_0.b) % vec4<u32>(32u))), ~(1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 22775u), countOneBits(vec3<u32>(4294967295u, 0u, 4294967295u))) % 32u)), firstTrailingBit(u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(-807f));
    var var_2 = arg_0;
    var var_3 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.d, u_input.b)), u_input.c), vec2<i32>(~abs(u_input.d), 1i));
    var var_4 = Struct_1(global0[_wgslsmith_index_u32(0u, 27u)], false);
    return _wgslsmith_add_u32(66783u, ~_wgslsmith_div_u32(~func_2(arg_0, vec4<f32>(global1.x, 518f, global1.x, -1762f), vec2<i32>(-2147483647i, 1i), 0u).x, ~abs(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = vec2<bool>(any(!(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true, false), vec3<bool>(true, false, false)))), (4294967295u != func_4(func_1(vec4<i32>(31687i, 2147483647i, u_input.d, -36044i), 1u, -1i))) | !(!global0[_wgslsmith_index_u32(~33524u, 27u)]));
    var var_1 = Struct_1(false, true);
    let var_2 = abs(27632u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, abs(vec2<u32>(var_2, var_2)));
}

