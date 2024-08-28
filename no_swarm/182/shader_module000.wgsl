struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = -u_input.a.xy;
    var var_1 = Struct_3(arg_0.a, ~max(vec2<i32>(u_input.a.x, -1i), -u_input.a.yy) | u_input.a.zx, arg_0.c, !select(!(!arg_0.d), !arg_0.d, arg_0.d.x));
    return var_1.d;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2206f))), 131f, arg_1.a, arg_1.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, 1019f, -1468f) - vec4<f32>(528f, arg_1.a, arg_1.a, 132f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-698f, arg_1.a, 237f, -1412f)))))));
    global0 = array<Struct_2, 32>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32((_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(0u, arg_1.c.c.x), max(31083u, 1u)) << (countOneBits(arg_1.c.c.x) % 32u)) & arg_1.c.c.x, _wgslsmith_mod_u32(arg_1.c.c.x << ((_wgslsmith_div_u32(arg_1.c.c.x, 0u) << (~48105u % 32u)) % 32u), max(arg_1.c.c.x, abs(arg_1.c.c.x) << (1u % 32u)))), 32u)];
    let var_2 = Struct_3(-500f, reverseBits(abs(select(abs(vec2<i32>(35895i, var_1.b.a.x)), -vec2<i32>(-2147483647i, 0i), vec2<bool>(arg_1.d.x, arg_1.d.x)))), arg_1.c, arg_1.d);
    var var_3 = _wgslsmith_f_op_f32(ceil(-1050f));
    return vec2<i32>(select(u_input.a.x, arg_1.c.a, arg_1.d.x), _wgslsmith_clamp_i32(abs(reverseBits(-1i | arg_0.x)), 13392i, ~u_input.a.x));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_3 {
    global0 = array<Struct_2, 32>();
    let var_0 = 257f;
    global0 = array<Struct_2, 32>();
    var var_1 = ~arg_0;
    var_1 = ~(~47011u);
    return Struct_3(704f, -(vec2<i32>(-u_input.a.x, arg_2.a.x) | -select(u_input.a.xx, vec2<i32>(6569i, u_input.a.x), vec2<bool>(true, true))), Struct_2(_wgslsmith_mult_i32(arg_1.x, abs(arg_1.x << (0u % 32u))), Struct_1(u_input.a), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(43410u, arg_0), vec2<u32>(0u, arg_0)) >> (vec2<u32>(4294967295u, 48817u) % vec2<u32>(32u)))), !(!func_2(Struct_3(307f, arg_2.a.xz, global0[_wgslsmith_index_u32(arg_0, 32u)], vec2<bool>(true, false)))));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    global0 = array<Struct_2, 32>();
    var var_0 = func_4(68268u, _wgslsmith_add_vec2_i32(func_3(_wgslsmith_mult_vec3_i32(-vec3<i32>(7133i, u_input.a.x, -3503i), firstTrailingBit(u_input.a)), Struct_3(-1740f, vec2<i32>(929i, 37018i), global0[_wgslsmith_index_u32(48982u, 32u)], func_2(Struct_3(293f, vec2<i32>(arg_0, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<bool>(true, false))))), countOneBits(vec2<i32>(min(arg_0, -2147483647i), firstTrailingBit(34674i)))), Struct_1(min(vec3<i32>(-arg_0, _wgslsmith_div_i32(arg_0, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0, -26946i, u_input.a.x), vec4<i32>(-19997i, 2147483647i, arg_0, 6186i))), vec3<i32>(abs(23725i), -u_input.a.x, u_input.a.x << (29638u % 32u)))));
    var var_1 = select(true, true, var_0.a == -325f) && false;
    var var_2 = _wgslsmith_mod_u32(reverseBits((~var_0.c.c.x << (min(4294967295u, 22894u) % 32u)) | var_0.c.c.x), ~72994u);
    var_2 = ~var_0.c.c.x;
    return vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.c.b.a.x, -16027i), countOneBits(u_input.a.x)) | u_input.a.x, _wgslsmith_mod_i32(~(~(-63469i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0, arg_0), arg_0))), -(_wgslsmith_mult_i32(arg_0, -u_input.a.x) & ~2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 331f, any(vec3<bool>(true, false, false)))) - _wgslsmith_f_op_f32(select(-802f, _wgslsmith_f_op_f32(sign(369f)), true))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(591f * -656f), 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-435f)), _wgslsmith_f_op_f32(-1000f + 1296f)), true))), firstLeadingBit(u_input.a.yx), global0[_wgslsmith_index_u32(0u, 32u)], vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), i32(-1i) * -11681i, abs(u_input.a.x)) >= max(u_input.a.x, 2147483647i)));
    global0 = array<Struct_2, 32>();
    let var_2 = func_1(var_1.c.b.a.x & firstLeadingBit(-10803i));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(52901u, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.c.x ^ 44004u, countOneBits(3288u), var_1.c.c.x, 22004u) << (~reverseBits(vec4<u32>(var_1.c.c.x, var_1.c.c.x, 0u, var_1.c.c.x)) % vec4<u32>(32u)), ~firstLeadingBit(abs(vec4<u32>(0u, 51064u, 0u, 65416u)))), -2014f, -(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, var_3.x, 25443i, var_2.x)));
}

