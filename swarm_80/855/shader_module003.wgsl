struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: i32 = 1i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    var var_0 = Struct_1(true, true, 1375f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, -1346f));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = -firstTrailingBit(~0i);
    return _wgslsmith_f_op_f32(-arg_0.c);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = 1000f;
    var var_1 = Struct_1(func_2() | false, false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -586f))));
    var_1 = Struct_1(_wgslsmith_mod_u32(~arg_0, 1u) < ~14031u, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(select(757u, _wgslsmith_add_u32(arg_0, u_input.a), false), 4u)], Struct_1(true, false, 1f)))));
    global0 = array<Struct_1, 4>();
    var var_2 = true;
    return max(select(-44698i, 1i, true), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 22895u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(54983u, u_input.a)))) | (i32(-1i) * -1i)) << (44411u % 32u);
    global1 = func_1(4294967295u) >> (~u_input.a % 32u);
    let var_1 = true;
    var var_2 = !(!vec2<bool>(all(vec4<bool>(var_1, var_1, true, false)), (u_input.a ^ u_input.a) < ~u_input.a));
    var var_3 = 49626u;
    var_3 = 0u & _wgslsmith_clamp_u32(~(~abs(u_input.a)), u_input.a, u_input.a);
    let var_4 = countOneBits(vec3<u32>(~(~14682u), 1u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.x), _wgslsmith_div_f32(106f, 405f), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(-57729i), -2147483647i, firstTrailingBit(abs(-498i)), func_1(min(62715u, var_4.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-42257i, 23709i, 2147483647i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-18126i, 1i, -1i, 2147483647i), vec4<i32>(40845i, 1i, -1i, -1i)), vec4<i32>(-2147483647i, 29208i, 2147483647i, -1i)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 2973u, u_input.a), vec4<u32>(55102u, u_input.a, 6685u, var_4.x)), vec4<u32>(var_4.x, 1u, 4437u, 15780u), firstTrailingBit(vec4<u32>(var_4.x, var_4.x, var_4.x, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32((vec4<u32>(var_4.x, 1u, 4294967295u, 0u) >> (vec4<u32>(1u, var_4.x, 1u, 23700u) % vec4<u32>(32u))) << (vec4<u32>(80534u, 11941u, 4294967295u, 98010u) % vec4<u32>(32u)), ~vec4<u32>(var_4.x, u_input.a, 4294967295u, 1u) << (abs(vec4<u32>(var_4.x, var_4.x, var_4.x, var_4.x)) % vec4<u32>(32u))), ~vec4<u32>(u_input.a >> (var_4.x % 32u), _wgslsmith_dot_vec2_u32(var_4.xz, var_4.xx), u_input.a, u_input.a)));
}

