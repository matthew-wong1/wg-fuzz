struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = any(!vec2<bool>(_wgslsmith_mod_u32(arg_2.b.x, 1u) <= ~arg_2.b.x, arg_3.a));
    global0 = true;
    let var_0 = -select(vec3<i32>(abs(-2147483647i), arg_3.d.x, arg_1), -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, arg_3.d.x), u_input.d), vec3<i32>(-12363i, 12791i, 2147483647i)), any(select(vec2<bool>(true, true), select(vec2<bool>(arg_3.a, arg_2.a), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(arg_2.a, arg_3.a), vec2<bool>(false, arg_3.a), arg_2.a))));
    let var_1 = vec3<i32>(-24211i, -reverseBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_3.d.x, 1i, 0i, 6101i), vec4<i32>(1i, arg_3.d.x, arg_1, 14410i), vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a)), vec4<i32>(var_0.x, 30082i, 0i, u_input.b.x))), arg_2.d.x);
    let var_2 = vec4<u32>(_wgslsmith_sub_u32((~arg_2.b.x | firstTrailingBit(arg_3.b.x)) >> (94826u % 32u), arg_2.b.x), abs((~arg_3.b.x & 62112u) >> (_wgslsmith_div_u32(arg_2.b.x, firstLeadingBit(u_input.c)) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_3.b.x, 22160u, arg_2.b.x, arg_2.b.x)), reverseBits(vec4<u32>(143u, u_input.c, 2119u, 44944u))) << (~(vec4<u32>(54432u, 4294967295u, 1u, 1u) & vec4<u32>(36250u, u_input.c, arg_2.b.x, 1u)) % vec4<u32>(32u)), ~(vec4<u32>(arg_3.b.x, 4294967295u, 0u, 23436u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.x, u_input.c, u_input.c, arg_3.b.x), vec4<u32>(u_input.c, 61663u, 0u, 1u)) % vec4<u32>(32u)))), arg_3.b.x);
    return all(select(vec2<bool>(false, true), !(!vec2<bool>(false, arg_3.a)), vec2<bool>(true, arg_2.a)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = any(!vec4<bool>(true, false, true, any(vec4<bool>(true, true, true, false)))) && all(vec4<bool>(!(u_input.a.x == 16779i), true, true, 108412u > u_input.c));
    var_0 = any(vec2<bool>(!func_3(u_input.d.yy, i32(-1i) * -38071i, Struct_1(true, vec3<u32>(u_input.c, 4294967295u, u_input.c), -1221f, u_input.d), Struct_1(false, vec3<u32>(u_input.c, 0u, 1u), arg_0, vec3<i32>(u_input.b.x, 2147483647i, u_input.d.x))), false));
    var var_1 = -953f;
    global0 = any(vec2<bool>(func_3(u_input.b, u_input.d.x, Struct_1(false, vec3<u32>(u_input.c, 0u, u_input.c), arg_0, vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x)), Struct_1(true, vec3<u32>(4294967295u, 36847u, 1u), -260f, u_input.d)) & true, any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true))));
    var var_2 = true;
    return Struct_1(true, firstLeadingBit(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 8363u, u_input.c), vec3<u32>(u_input.c, 51027u, u_input.c)))), arg_0, reverseBits(u_input.d));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-383f)), _wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(step(-502f, 720f))))));
    var var_1 = !select(!(!select(vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(var_0.a, true, var_0.a, false), true)), vec4<bool>(var_0.c == _wgslsmith_f_op_f32(-var_0.c), var_0.a, var_0.a, all(!vec2<bool>(var_0.a, var_0.a))), !all(vec3<bool>(var_0.a, true, false)));
    var var_2 = _wgslsmith_clamp_u32(1u, func_2(-1641f).b.x, min(firstLeadingBit(1u), ~(~u_input.c) | u_input.c));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-639f, 157f, var_1.x))), 885f)) - _wgslsmith_f_op_f32(f32(-1f) * -621f)), -398f));
    var var_4 = vec4<bool>(var_0.a, var_3 > -1650f, all(!select(!vec4<bool>(false, false, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, true, var_0.a))), true);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, 1u & u_input.c), _wgslsmith_add_u32(0u, 22233u)), ~_wgslsmith_add_u32(u_input.c, 12956u)), u_input.c, ~u_input.c, reverseBits(func_1(1u)) | ~(~47574u));
    var var_1 = 1f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1128f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -821f)))) * func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(445f + 458f) - 638f)).c));
    var var_3 = reverseBits(vec4<i32>((firstLeadingBit(1i) | firstTrailingBit(u_input.b.x)) & _wgslsmith_div_i32(_wgslsmith_mult_i32(5707i, var_2.d.x), u_input.a.x >> (var_0.x % 32u)), ~_wgslsmith_mult_i32(7985i, abs(-1i)), 32059i, -(i32(-1i) * -56017i)));
    var_1 = 422f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1574f, _wgslsmith_f_op_f32(-718f * var_2.c)))));
    let var_4 = var_0.x;
    var var_5 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.c)) - -1160f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(_wgslsmith_mod_i32(var_5.d.x, -2147483647i), _wgslsmith_mod_i32(var_3.x, 2147483647i)) << (~var_0.wz % vec2<u32>(32u))), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, _wgslsmith_f_op_f32(round(var_2.c)), _wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_add_vec2_i32(max(min(vec2<i32>(1i, -1i), var_2.d.xy) & vec2<i32>(u_input.b.x, -43565i), vec2<i32>(~(-19237i), _wgslsmith_div_i32(var_3.x, var_5.d.x))), u_input.d.yy));
}

