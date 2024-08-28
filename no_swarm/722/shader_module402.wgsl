struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec3<f32>, 13>;

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> i32 {
    global0 = !vec2<bool>(global0.x, global0.x);
    var var_0 = -691f;
    var_0 = _wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(423f)) + _wgslsmith_div_f32(2077f, 843f))))));
    var_0 = -292f;
    global1 = array<vec3<f32>, 13>();
    return i32(-1i) * -53696i;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = vec3<bool>(arg_2, all(!vec3<bool>(false, !global0.x, any(vec2<bool>(global0.x, arg_2)))), true);
    var var_1 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(abs(29308u), u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x | u_input.d.x, u_input.d.x, ~u_input.d.x)));
    var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(43969u), 40782u, var_1.a.x), vec3<u32>(~u_input.d.x, 4294967295u, u_input.d.x))));
    global2 = _wgslsmith_clamp_vec3_i32(u_input.e ^ ~firstTrailingBit(abs(u_input.e)), firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_mod_i32(u_input.c, global2.x), -u_input.c, -1i))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, arg_1, 2147483647i), ~((vec3<i32>(-1i, -1i, -12095i) ^ u_input.b) >> ((vec3<u32>(23076u, u_input.d.x, var_1.a.x) << (var_1.a % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_2 = select(vec3<bool>(!all(vec4<bool>(global0.x, true, true, false)), true, arg_2 & (!var_0.x && any(vec4<bool>(false, false, var_0.x, false)))), select(!(!var_0), var_0, !var_0.x), vec3<bool>(arg_2, false, false));
    return all(select(vec4<bool>(any(vec3<bool>(var_0.x, false, true)), true, _wgslsmith_sub_i32(13506i, 4325i) >= arg_1, all(vec2<bool>(arg_2, var_2.x))), vec4<bool>(arg_0 < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_1), u_input.e), true, true, !any(vec3<bool>(true, var_0.x, false))), select(!(!vec4<bool>(true, var_2.x, true, true)), select(vec4<bool>(var_2.x, false, false, false), select(vec4<bool>(arg_2, true, false, global0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, global0.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(false, global0.x, global0.x, arg_2))), any(vec3<bool>(var_2.x, false, global0.x)))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = select(!(!(!select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, global0.x, false, global0.x)))), select(vec4<bool>(-global2.x == -2147483647i, u_input.d.x >= u_input.d.x, false, true), select(vec4<bool>(!global0.x, global0.x | global0.x, all(vec2<bool>(global0.x, true)), global0.x), vec4<bool>(!global0.x, true, false, true), (50451u >= u_input.d.x) == false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true)), !global0.x), vec4<bool>(false, false, global0.x, true), select(vec4<bool>(global0.x, false, false, true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, false)), false))), vec4<bool>(_wgslsmith_clamp_u32(max(u_input.d.x, u_input.d.x), 1u, u_input.d.x) == ~(~21661u), select(func_3(-15949i, _wgslsmith_mod_i32(u_input.c, arg_1.x), false), all(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x))), !(global0.x & false)), true, true));
    var var_1 = arg_2.x;
    let var_2 = true;
    let var_3 = Struct_1(u_input.d.www);
    var var_4 = var_3;
    return Struct_1(vec3<u32>(u_input.d.x, 29870u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.a.x, 4294967295u, 10889u), var_3.a), ~var_4.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~abs(min(u_input.d.yxw, vec3<u32>(u_input.d.x, 0u, u_input.d.x) ^ u_input.d.wzy)));
    let var_1 = global1[_wgslsmith_index_u32(~(~(~(~(~var_0.a.x)))), 13u)];
    let var_2 = ~(-vec4<i32>(_wgslsmith_add_i32(-1i, -85287i) << (min(var_0.a.x, var_0.a.x) % 32u), -(~(-2147483647i)), _wgslsmith_mod_i32(-u_input.a, reverseBits(global2.x)), u_input.e.x | ~25739i));
    let var_3 = func_2(var_1.x, vec4<i32>(~(var_2.x | -7761i) >> (~var_0.a.x % 32u), func_1(), _wgslsmith_mult_i32(_wgslsmith_div_i32(~u_input.a, -var_2.x), ~var_2.x ^ ~1i), _wgslsmith_dot_vec3_i32(var_2.xzx, var_2.xxw) << (u_input.d.x % 32u)), global2.zx, ~(-1i));
    let var_4 = !select(!vec4<bool>(true, true, 325f >= var_1.x, global0.x), !vec4<bool>(global0.x || global0.x, true, false, true), func_3(40125i, var_2.x, !any(vec4<bool>(false, global0.x, true, global0.x))));
    var var_5 = var_3;
    let var_6 = var_3;
    var var_7 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_1.x, -256f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~var_6.a.xz) ^ vec2<u32>(var_5.a.x, var_3.a.x), abs(var_5.a.zy)), ~_wgslsmith_mod_vec3_i32(var_2.zyx, _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 9194i, -15146i), reverseBits(u_input.b))), var_2.x);
}

