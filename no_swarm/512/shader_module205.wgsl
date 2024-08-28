struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> f32 {
    global0 = 261f;
    return 286f;
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f));
    var var_0 = -1i;
    var_0 = 10420i;
    return abs(vec4<i32>(arg_0.b.x, (arg_0.d >> (_wgslsmith_div_u32(u_input.b.x, u_input.a) % 32u)) << (u_input.a % 32u), max(6327i, arg_0.b.x & 0i) | 0i, firstLeadingBit(-1i)));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(-14158i, -2147483647i, -23645i), true, u_input.a)) + _wgslsmith_f_op_f32(trunc(-121f))))))));
    var var_0 = -_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-45299i, 1i)), vec2<i32>(31216i, -2147483647i)), 15235i);
    var_0 = -max(1i, -2147483647i);
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(31869i, _wgslsmith_clamp_i32(-2147483647i, ~(-2147483647i), -1i)) | -2147483647i, _wgslsmith_dot_vec4_i32(func_3(Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-26116i, 1i), vec2<i32>(27309i, -18104i)), vec2<i32>(1i, 1i), firstTrailingBit(-2147483647i), min(0i, -1198i))), -vec4<i32>(-19181i, _wgslsmith_mult_i32(-39373i, -15672i), _wgslsmith_div_i32(8912i, 63730i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2557i, -182i), vec3<i32>(-1i, 0i, -8954i)))), ~_wgslsmith_sub_i32(func_3(Struct_2(vec2<i32>(-1406i, 2147483647i), vec2<i32>(-2147483647i, 50294i), -1i, 0i)).x, countOneBits(0i)));
    let var_1 = ~_wgslsmith_add_i32(~1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(3601i, _wgslsmith_dot_vec3_i32(vec3<i32>(-33599i, 1i, -2147483647i), vec3<i32>(18183i, -56382i, -5829i))), ~0i));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x) & ~vec4<u32>(6534u, 87819u, u_input.a, u_input.a), (vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.a)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 7624u), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))));
    var var_1 = func_1();
    var_1 = any(!(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true)));
    let var_2 = min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-2147483647i, -64559i)) >> (select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, 4294967295u), false) % vec2<u32>(32u))), _wgslsmith_mult_i32(1i, max(_wgslsmith_sub_i32(1i, -24502i), -2147483647i)), -1i, 24511i), select(-select(vec4<i32>(2147483647i, -24739i, 0i, -1i), vec4<i32>(-32966i, 15262i, 29440i, 1i), vec4<bool>(true, false, false, true)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_0.x, u_input.b.x, var_0.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.x) << (vec4<u32>(58754u, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, firstTrailingBit(1i), i32(-1i) * -52947i, -3209i), vec4<bool>(true, true, true, true)));
    var_0 = vec4<u32>(43060u, ~(~u_input.b.x), select(4294967295u, 25772u, true), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_2.x) ^ ~var_2.x, ~1u, vec2<i32>(reverseBits(firstTrailingBit(1i) ^ -34888i), -60133i), u_input.a);
}

