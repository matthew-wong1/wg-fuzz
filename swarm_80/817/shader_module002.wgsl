struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> bool {
    let var_0 = 6307u;
    let var_1 = 2147483647i;
    return var_0 < var_0;
}

fn func_3() -> bool {
    global0 = !(!vec2<bool>(all(!vec4<bool>(global0.x, false, false, global0.x)), !(global0.x != false)));
    var var_0 = Struct_1(u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1437f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1279f, 338f) * -1000f), 27875i != u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-758f * -744f)) - _wgslsmith_f_op_f32(1575f - -740f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1137f, -1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1719f, 403f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, 565f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1682f)))), !global0.x))));
    let var_2 = true;
    var var_3 = _wgslsmith_mod_i32(~firstTrailingBit(abs(var_0.a)), 35619i);
    return global0.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec4<bool>(!func_2(), true, (global0.x || func_3()) | global0.x, (_wgslsmith_add_i32(arg_1.a, _wgslsmith_mult_i32(2147483647i, arg_2.a)) & ~(-28352i)) >= 20989i);
    let var_1 = ~(~vec4<i32>(-2147483647i, -1i, -1i, abs(-1i >> (0u % 32u))));
    var_0 = vec4<bool>(any(!(!(!var_0.zyy))), select(global0.x & !(u_input.a.x < 11023i), var_0.x, true), false, !select(true, !all(var_0.zxy), false));
    let var_2 = Struct_2(1u, _wgslsmith_clamp_i32(1i, ~(~(-7019i)), firstLeadingBit(arg_1.a) ^ -22594i), vec3<f32>(-899f, -380f, _wgslsmith_f_op_f32(1f + 1f)));
    var_0 = select(!select(!(!vec4<bool>(var_0.x, global0.x, true, var_0.x)), select(!vec4<bool>(false, var_0.x, global0.x, global0.x), vec4<bool>(var_0.x, true, global0.x, true), vec4<bool>(true, var_0.x, true, var_0.x)), true), select(!(!vec4<bool>(false, true, false, global0.x)), select(vec4<bool>(u_input.a.x >= 2147483647i, u_input.a.x < arg_1.a, all(vec3<bool>(global0.x, var_0.x, true)), true), vec4<bool>(!global0.x, !global0.x, any(var_0.ywz), global0.x), func_3()), true), true && any(!(!vec3<bool>(var_0.x, global0.x, global0.x))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1440f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(135f))));
}

fn func_4(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = countOneBits(_wgslsmith_clamp_u32(1u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(12592u, 4294967295u)) % 32u), 1u, 16615u));
    let var_1 = Struct_1(-5192i);
    global0 = vec2<bool>(any(!vec3<bool>(arg_0, all(vec3<bool>(arg_1, false, arg_1)), true)), any(!vec4<bool>(true, all(vec2<bool>(global0.x, true)), false && arg_1, true)));
    let var_2 = _wgslsmith_mod_vec4_i32(max(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(19032i, u_input.a.x, -2147483647i, u_input.a.x) << (vec4<u32>(var_0, 65902u, 75466u, var_0) % vec4<u32>(32u))), -select(vec4<i32>(-3473i, var_1.a, -82290i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), arg_1)), ~(vec4<i32>(u_input.a.x, var_1.a, 4706i, var_1.a) & _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, 34080i, var_1.a, u_input.a.x), vec4<i32>(var_1.a, 0i, u_input.a.x, -83306i)))), countOneBits(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(u_input.a.x, -47296i, 27866i, var_1.a)), ~(~vec4<i32>(-38998i, 1i, u_input.a.x, 2147483647i)))));
    var var_3 = _wgslsmith_mod_i32(reverseBits(var_2.x), abs(~(~min(9442i, 24593i))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(~(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10591u, 1u, 3194u), vec4<u32>(0u, 1u, 1u, 4294967295u))) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(40420u, 10820u), select(vec2<u32>(1u, 88910u), vec2<u32>(0u, 86589u), true)) % 32u)), 16762u, 0u);
    var_0 = 0u;
    let var_1 = reverseBits(_wgslsmith_mod_vec2_i32(~((vec2<i32>(-4451i, u_input.a.x) & vec2<i32>(-4406i, u_input.a.x)) & ~vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(46646i, -abs(u_input.a.x))));
    let var_2 = Struct_1(var_1.x);
    var var_3 = u_input.a.x;
    var var_4 = 977f;
    var var_5 = Struct_2(~func_4(any(vec4<bool>(false, false, false, true)) & all(vec4<bool>(global0.x, true, false, false)), !func_1(var_2.a, Struct_1(u_input.a.x), var_2)), ~(-var_2.a) | (i32(-1i) * -53723i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1456f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1478f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(145f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) - _wgslsmith_f_op_f32(round(-1709f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_6 = Struct_1(1i);
    global0 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~vec3<u32>(24464u, 1u, var_5.a) & ~vec3<u32>(var_5.a, var_5.a, 16597u)));
}

