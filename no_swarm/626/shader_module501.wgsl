struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 0u, false, vec4<f32>(1077f, -852f, -746f, -780f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = !vec4<bool>(true, !(_wgslsmith_sub_u32(1u, 0u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(22293u, 57791u, 2857u, 1u), vec4<u32>(global0.b, global0.b, u_input.a.x, 39418u))), arg_0.x, global0.c);
    let var_1 = global0.d.wy;
    return global0.d.x;
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_add_u32(min(reverseBits(u_input.a.x), u_input.b << (countOneBits(firstTrailingBit(0u)) % 32u)), firstTrailingBit(78659u) & max(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 12739u), _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yx)), firstTrailingBit(_wgslsmith_div_u32(4294967295u, 28591u))));
    var var_1 = any(!(!vec3<bool>(false, global0.c, true)));
    var var_2 = ~firstLeadingBit(u_input.d.x);
    var var_3 = true;
    global0 = Struct_1(26333u, countOneBits(58317u), true, _wgslsmith_f_op_vec4_f32(-global0.d));
    return vec4<i32>(~max(0i, u_input.d.x), -4340i, abs(_wgslsmith_mult_i32((i32(-1i) * -34846i) | _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), reverseBits(-u_input.d.x))), u_input.d.x);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global0 = arg_2;
    global0 = Struct_1(~0u, max(max(_wgslsmith_add_u32(arg_2.b, arg_2.b), max(0u, global0.a)) >> (~10414u % 32u), arg_2.b), all(select(!(!vec3<bool>(true, false, arg_2.c)), vec3<bool>(global0.c, true, !global0.c), select(!vec3<bool>(global0.c, arg_2.c, true), !vec3<bool>(global0.c, arg_2.c, false), vec3<bool>(arg_2.c, true, true)))), _wgslsmith_f_op_vec4_f32(-arg_2.d));
    global0 = arg_2;
    global0 = Struct_1(u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.b, 37305u, 0u, 1u), vec4<u32>(u_input.b, arg_2.b, 4294967295u, 64094u)), ~vec4<u32>(u_input.a.x, global0.b, global0.a, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_2.a, global0.a, 10102u), ~vec4<u32>(global0.a, arg_2.a, 59289u, global0.a) | vec4<u32>(global0.b, 0u, 19915u, global0.a))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.d.x)), _wgslsmith_f_op_f32(min(arg_2.d.x, global0.d.x)), _wgslsmith_f_op_f32(global0.d.x + 302f), -416f))));
    let var_0 = vec3<i32>(1i, -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, -2147483647i, 0i)) ^ arg_1.yyw, arg_1.xww), select((19240i << (1u % 32u)) >> (~firstLeadingBit(arg_2.a) % 32u), -_wgslsmith_add_i32(countOneBits(38424i), -arg_1.x), arg_2.c));
    return _wgslsmith_f_op_f32(func_2(!vec2<bool>(all(select(vec3<bool>(arg_2.c, false, false), vec3<bool>(arg_2.c, arg_2.c, true), global0.c)), any(vec2<bool>(arg_2.c, false)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = Struct_1(~(_wgslsmith_add_u32(u_input.a.x, 0u) & 0u) | u_input.b, countOneBits(_wgslsmith_dot_vec3_u32(select(u_input.a, vec3<u32>(74893u, 21068u, u_input.c), vec3<bool>(false, false, global0.c)), u_input.a)), _wgslsmith_div_i32(u_input.d.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-83040i, -8950i), u_input.d), u_input.d.x) != -(~(-9499i ^ u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, global0.d.x, 1000f, global0.d.x) + global0.d)) + global0.d)));
    global0 = Struct_1(~(~u_input.b), u_input.a.x, true, global0.d);
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_i32(-28631i, 18752i), func_3(), Struct_1(u_input.b, u_input.b, global0.c, vec4<f32>(-1514f, -1000f, -2189f, -264f))))), _wgslsmith_f_op_f32(func_4(~35619i, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -11391i, -1i), vec4<i32>(u_input.d.x, -11788i, 3793i, u_input.d.x)) & reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i)), Struct_1(u_input.c, select(u_input.a.x, global0.a, false), global0.c, _wgslsmith_f_op_vec4_f32(exp2(global0.d))))))));
    global0 = Struct_1(u_input.c ^ _wgslsmith_add_u32(global0.b, select(16732u, u_input.e, all(vec3<bool>(global0.c, false, global0.c)))), ~0u, global0.c, vec4<f32>(-644f, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-257f - 319f) - var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(929f, var_0.x)))), -1036f));
    var var_1 = true;
    return Struct_1(_wgslsmith_sub_u32(countOneBits(select(17691u, 1u, global0.c)) >> (1736u % 32u), 1u), select(0u, select(firstLeadingBit(4294967295u), 1u, all(vec4<bool>(global0.c, global0.c, true, true))) << (~global0.b % 32u), any(vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(global0.c, global0.c, true))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d * global0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))));
    let var_0 = Struct_1(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, global0.a), reverseBits(vec2<u32>(global0.a, global0.b))), ~(~u_input.b & ~56108u)), ~_wgslsmith_sub_u32(global0.a, global0.b), !global0.c, _wgslsmith_f_op_vec4_f32(-global0.d));
    let var_1 = firstTrailingBit(~(-vec4<i32>(37472i, 17441i, 11758i, u_input.d.x) | ~vec4<i32>(0i, -347i, 2147483647i, u_input.d.x)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(74324u, u_input.c, 4294967295u, u_input.a.x) | vec4<u32>(u_input.e, global0.b, var_0.a, 40456u), ~(~vec4<u32>(var_0.b, 0u, 31360u, 0u))) % vec4<u32>(32u)));
    global0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-35428i, vec4<i32>(52959i, 54779i, u_input.d.x, -28490i), Struct_1(1u, 0u, false, vec4<f32>(-734f, var_0.d.x, global0.d.x, -953f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1278f, global0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 1009f)), _wgslsmith_f_op_f32(func_4(2147483647i, var_1, Struct_1(1u, 0u, var_0.c, global0.d)))), !any(vec4<bool>(global0.c, global0.c, true, var_0.c))))));
    global0 = Struct_1(~_wgslsmith_mod_u32(3737u, ~23685u), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_0.b), vec3<u32>(var_0.b, 9201u, 1u)), var_0.b, 47578u), u_input.a.x, ~(~0u)), !(66845u <= ~(~u_input.e)), _wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.d.x)), global0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2595f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x))))));
    var var_2 = func_1(var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2776f, ~select(var_1, vec4<i32>(37405i >> (u_input.a.x % 32u), 2147483647i, _wgslsmith_sub_i32(var_1.x, u_input.d.x), -var_1.x), true));
}

