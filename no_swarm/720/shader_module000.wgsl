struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    let var_0 = true;
    global0 = array<Struct_1, 30>();
    var var_1 = -146f;
    let var_2 = select(vec4<bool>(var_0, _wgslsmith_add_i32(firstLeadingBit(-2147483647i), 687i) == _wgslsmith_add_i32(-1i >> (u_input.a % 32u), 13645i), all(select(vec4<bool>(var_0, true, false, var_0), !vec4<bool>(arg_0, var_0, true, arg_0), any(vec4<bool>(var_0, arg_0, false, false)))), arg_0), !vec4<bool>(var_0, 265f < arg_1.x, true, -408f > _wgslsmith_f_op_f32(trunc(arg_1.x))), true);
    var_1 = 543f;
    return ~(~_wgslsmith_mult_u32(reverseBits(abs(u_input.a)), abs(1u | u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(7426u, _wgslsmith_add_u32(39725u, arg_0.a.x) >> (arg_1 % 32u)), 30u)];
    let var_1 = _wgslsmith_mult_vec4_u32(firstTrailingBit(~(~arg_0.d)), arg_0.d ^ ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 21304u, 0u), vec4<u32>(u_input.a, 15162u, arg_1, 36579u)) ^ arg_0.d));
    let var_2 = vec2<bool>(true, true);
    var_0 = Struct_1(-841f);
    global0 = array<Struct_1, 30>();
    return all(select(!(!select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, false, false), var_2.x)), select(vec4<bool>(true, any(vec4<bool>(var_2.x, false, true, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, true, true)), var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, true, false, false), any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), true), var_2.x));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2837f)));
    let var_1 = select(vec4<bool>(func_4(Struct_2(~vec3<u32>(0u, 15243u, 50610u), var_0, func_3(true, vec4<f32>(var_0.a, var_0.a, var_0.a, -161f)), vec4<u32>(u_input.a, 32832u, 1u, u_input.a)), _wgslsmith_clamp_u32(func_3(true, vec4<f32>(-106f, var_0.a, var_0.a, 410f)), 1u, ~0u), ~vec2<u32>(u_input.a, u_input.a) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), true, true, true), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(!(-1844f != _wgslsmith_f_op_f32(max(var_0.a, var_0.a))), any(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, true)), false, true || all(vec3<bool>(true, true, true))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return u_input.a;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = ~vec2<u32>(~_wgslsmith_sub_u32(~u_input.a, 1u), ~(~min(u_input.a, u_input.a)));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~func_2(2147483647i), ~1u) << (var_0.x % 32u), 30u)];
    var var_2 = -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), select(-vec4<i32>(-23814i, -1i, -5075i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 2147483647i, 38673i), vec4<i32>(-19992i, 18132i, 1i, 2147483647i), vec4<i32>(-8515i, 2147483647i, -5669i, -2147483647i)), vec4<bool>(true, true, true, true))), abs(~(~vec4<i32>(-29871i, 0i, -40755i, -2147483647i))));
    return global0[_wgslsmith_index_u32(u_input.a, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(firstLeadingBit(~vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.a)), ~u_input.a)), func_1(), 4294967295u, vec4<u32>(u_input.a, 57870u, ~u_input.a, ~(~(u_input.a | 0u))));
    var var_1 = !vec3<bool>(!select(true, any(vec2<bool>(false, false)), false), false, true);
    let var_2 = countOneBits(vec2<i32>(_wgslsmith_clamp_i32(1i, 0i, 0i), ~1i) | abs(abs(vec2<i32>(0i, -16704i)))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(29081u), 4294967295u >> (var_0.d.x % 32u)), var_0.a.yx), var_0.a.yx << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(16504u, 1u), vec2<u32>(var_0.c, var_0.d.x), reverseBits(var_0.d.yz)) % vec2<u32>(32u)), vec2<u32>(~(~11073u), select(~u_input.a, max(var_0.a.x, 0u), true))) % vec2<u32>(32u));
    let var_3 = Struct_2(max(select(var_0.d.yww, vec3<u32>(51946u, ~0u, 1u), var_1.x), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_0.a.x, 4294967295u), var_0.a), var_0.d.ywz, var_0.d.yxy)), func_1(), var_0.a.x, var_0.d);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) ^ (vec4<i32>(-10959i, -36086i, 44351i, var_2.x) >> (var_4.d % vec4<u32>(32u))))), ~(~u_input.a), 656f, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, var_2.x) >> (~(var_3.d.zy & var_0.a.xz) % vec2<u32>(32u)), abs(abs(var_2))), u_input.a);
}

