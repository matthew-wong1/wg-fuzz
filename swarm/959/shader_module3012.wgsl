struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> bool {
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = (all(vec3<bool>(true, true, true)) && false) & (-40128i < firstTrailingBit(firstLeadingBit(u_input.b.x)));
    let var_1 = select(select(vec3<bool>(true, all(select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, true))), false), !(!(!vec3<bool>(var_0, true, false))), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1260f)), -min(u_input.b.x, -1i))), vec3<bool>(true || !var_0, true, var_0), var_0);
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(false, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, 478f) + vec2<f32>(-990f, -791f)) - vec2<f32>(1f, 1f)), _wgslsmith_clamp_i32(2147483647i << (u_input.d.x % 32u), ~1i, u_input.a.x)), true), true);
    var var_3 = _wgslsmith_mult_i32(~(u_input.c & 1i) | u_input.a.x, u_input.c);
    var_3 = firstLeadingBit(_wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, u_input.b.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.b.x)), u_input.c), u_input.b.wy, !var_2.yz), u_input.b.wy));
    return select(!var_1.zz, !(!(!select(var_1.yx, var_1.xx, true))), !(_wgslsmith_dot_vec3_i32(-u_input.b.wzx, vec3<i32>(-28421i, u_input.a.x, u_input.c)) >= ~(-2147483647i)));
}

fn func_1() -> bool {
    return any(!func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(select(_wgslsmith_div_u32(4294967295u, firstLeadingBit(56045u)), 0u, func_1()), u_input.d.x << (23163u % 32u)), select(u_input.d.x, ~u_input.d.x, func_3(vec2<f32>(-490f, _wgslsmith_f_op_f32(f32(-1f) * -579f)), -u_input.b.x >> (u_input.d.x % 32u))), min(~_wgslsmith_mult_u32(50973u, u_input.d.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 26673u) & ~4294967295u, 61169u)));
    var var_1 = -vec3<i32>(firstTrailingBit(-63615i >> (0u % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-6770i, u_input.c, -11331i), u_input.a) & firstTrailingBit(u_input.b.x), 0i);
    let var_2 = Struct_5(_wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(50447i, 1i, ~u_input.c << (0u % 32u))), Struct_2(0u == (abs(var_0.x) | ~12873u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(880f, 527f) + vec2<f32>(1217f, -355f)))), reverseBits(select(~vec4<u32>(51442u, u_input.d.x, u_input.d.x, var_0.x), min(vec4<u32>(4294967295u, var_0.x, 0u, var_0.x), vec4<u32>(0u, u_input.d.x, u_input.d.x, 4294967295u)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)))), reverseBits(5721i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.x)), 1f, !(var_2.b.a & false))) + var_2.b.b.x));
    var_1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(~var_2.c | (-25869i ^ var_1.x), (var_1.x << (var_2.b.c.x % 32u)) & _wgslsmith_add_i32(var_1.x, u_input.c), ~0i), ~(~abs(u_input.a)));
    var_1 = u_input.b.zwz;
    var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(-30434i, abs(-2147483647i))), var_1.x, 44287i);
    let var_4 = 0i;
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xx << (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(19917u, 0u)), u_input.d.yx) % vec2<u32>(32u)));
}

