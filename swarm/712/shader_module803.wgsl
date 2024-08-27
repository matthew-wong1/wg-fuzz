struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(21753i, -12193i, 0i, -1i);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: Struct_1 = Struct_1(6367u);

var<private> global4: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = true;
    global2 = array<vec2<bool>, 23>();
    var_0 = true;
    global1 = array<Struct_1, 29>();
    let var_1 = vec2<bool>(true, any(select(vec3<bool>(all(vec3<bool>(true, false, false)), true, true), vec3<bool>(true, 29815i == global0.x, true), vec3<bool>(true, true, true))));
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -4231i, _wgslsmith_mod_i32(2147483647i, global0.x)), -(_wgslsmith_clamp_vec3_i32(global0.xyw, global0.ywy, vec3<i32>(global4.x, global4.x, global0.x)) & (vec3<i32>(0i, -63157i, global0.x) ^ global0.zzz))) >> ((reverseBits(global3.a) >> (~0u % 32u)) % 32u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = 86167u;
    let var_1 = vec2<u32>(global3.a, ~(~abs(1u)));
    var var_2 = any(vec4<bool>(false, !(0i >= global4.x), global3.a <= 4294967295u, true));
    var var_3 = select(select(select(vec4<bool>(false, true, any(vec4<bool>(true, false, true, false)), all(global2[_wgslsmith_index_u32(44102u, 23u)])), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), 1i > (arg_0 << (var_1.x % 32u))), vec4<bool>(any(vec4<bool>(true, false, false, false)), false, _wgslsmith_add_u32(u_input.a, global3.a) != ~56974u, true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), !all(global2[_wgslsmith_index_u32(14724u, 23u)]))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, false, true), select(true, true, true), true, true), !vec4<bool>(true, select(true, false, false), false, false)), vec4<bool>((true | any(vec2<bool>(false, true))) & any(vec4<bool>(true, true, true, true)), true, !any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))));
    global4 = -vec3<i32>(select(-18171i << (u_input.b % 32u), _wgslsmith_clamp_i32(arg_0, -2147483647i, arg_0), !var_3.x), arg_0 << (_wgslsmith_clamp_u32(4294967295u, var_1.x, 4294967295u) % 32u), _wgslsmith_div_i32(abs(global0.x), -2147483647i)) << (vec3<u32>(_wgslsmith_add_u32(1u, u_input.a), var_1.x, ~(~(~global3.a))) % vec3<u32>(32u));
    return select(true, true, var_3.x & any(!var_3.zxz));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> bool {
    global3 = global1[_wgslsmith_index_u32(0u, 29u)];
    var var_0 = global1[_wgslsmith_index_u32(2576u ^ min(47626u, select(u_input.b, ~global3.a >> (u_input.b % 32u), true)), 29u)];
    var var_1 = all(global2[_wgslsmith_index_u32(max(min(~select(global3.a, global3.a, false), _wgslsmith_add_u32(global3.a, _wgslsmith_mod_u32(4294967295u, u_input.b))), reverseBits(20856u)), 23u)]);
    var var_2 = global1[_wgslsmith_index_u32(~0u >> (u_input.b % 32u), 29u)];
    var var_3 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 29597i, -15794i, global4.x) ^ vec4<i32>(-1i, 28104i, arg_1, 6136i), _wgslsmith_sub_vec4_i32(vec4<i32>(-54304i, 0i, arg_1, global4.x), vec4<i32>(global0.x, global0.x, -1i, global0.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 39917u, 1u, var_0.a), vec4<u32>(4276u, 4294967295u, var_0.a, var_0.a), vec4<u32>(0u, 0u, u_input.b, 93070u)) % vec4<u32>(32u))) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.a, 9498u, 1u, global3.a) ^ vec4<u32>(u_input.b, u_input.b, var_2.a, u_input.a)), ~vec4<u32>(~4294967295u, var_0.a | var_0.a, 17137u | u_input.a, 1u)) % 32u);
    return func_3(func_2(global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(u_input.a, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(64139u, global3.a, global3.a, global3.a), vec4<u32>(17200u, 4294967295u, u_input.b, 59963u)), global3.a, any(vec3<bool>(true, true, true)))));
    global2 = array<vec2<bool>, 23>();
    var var_1 = select(vec4<bool>(false, all(vec4<bool>(false, true, false, false)) & all(vec2<bool>(true, true)), !all(!global2[_wgslsmith_index_u32(56702u, 23u)]), all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(false, true, false))))), !(!vec4<bool>(true, func_1(vec4<f32>(-1000f, -192f, -217f, -1000f), 18739i), func_3(global0.x), true)), select(any(global2[_wgslsmith_index_u32(1u, 23u)]), ~(~var_0.a) <= ~92189u, true));
    global4 = _wgslsmith_add_vec3_i32(vec3<i32>(global0.x ^ ~(-357i), global4.x, global0.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 30169i | global0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, 2147483647i, -977i) ^ vec3<i32>(global0.x, 0i, global4.x), -vec3<i32>(5461i, -2147483647i, global0.x), _wgslsmith_mod_vec3_i32(global0.zzz, global0.zyx))), ~min(0i, ~global0.x), ~(~_wgslsmith_div_i32(global4.x, 1i))));
    let var_2 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-187f)))) + _wgslsmith_f_op_f32(round(-390f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -668f), 1f)))));
}

