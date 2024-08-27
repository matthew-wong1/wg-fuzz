struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32347i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(4294967295u, 1u);
    global0 = i32(-1i) * -(i32(-1i) * -29278i);
    global0 = -283i;
    let var_1 = true;
    var var_2 = u_input.b;
    return Struct_1(max(_wgslsmith_clamp_i32(countOneBits(2147483647i), i32(-1i) * -1i, -1i), ~(~1154i) << ((reverseBits(1u) | var_0) % 32u)), countOneBits(~vec3<i32>(-54196i, -25590i, 0i) & vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-2147i, 75832i)), _wgslsmith_mod_i32(51708i, 67170i), abs(-9265i))));
}

fn func_1() -> i32 {
    global0 = -(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, -2614i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -20879i, 2147483647i, -27908i), vec4<i32>(-16557i, 18737i, 17331i, -1i)), _wgslsmith_div_i32(51416i, -30803i)), ~(vec3<i32>(40898i, -2147483647i, -47662i) << (u_input.c % vec3<u32>(32u)))));
    var var_0 = -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, -2147483647i, -103437i, -1i)) >> (firstLeadingBit(vec4<u32>(1u, u_input.c.x, u_input.a, u_input.b)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2138i, -2147483647i, -12381i), vec4<i32>(-1i, 972i, 1i, 2147483647i)) >> (~vec4<u32>(48851u, u_input.b, 1u, 30732u) % vec4<u32>(32u))) << (max(vec4<u32>(~17671u, u_input.b, ~19620u, u_input.b), vec4<u32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, u_input.b)), ~10215u, ~1u)) % vec4<u32>(32u));
    let var_1 = func_2();
    return ~(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1430f) - -324f);
    var var_2 = -15972i;
    global0 = ~1i;
    let var_3 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) - _wgslsmith_f_op_f32(step(-307f, -263f))) == -345f, true, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), any(vec4<bool>(false, true, true, true))))), 1i < (func_1() >> (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-2147483647i, _wgslsmith_mult_i32(0i, -1i), _wgslsmith_mult_i32(-29721i, ~(-16045i)), -49586i), ~vec3<u32>(32351u, firstTrailingBit(6099u), 1u), u_input.c);
}

