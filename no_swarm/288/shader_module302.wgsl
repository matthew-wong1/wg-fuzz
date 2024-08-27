struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_mod_u32(82582u, ~(~(~11246u)));
    let var_1 = 13757u;
    var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(~46607u, 71107u, ~6078u)), u_input.a.yx), 41633u);
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true))), abs(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b.xz, ~u_input.b.yz, ~u_input.b.zw))), vec2<bool>(true, false), false);
    return !var_3.a;
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = vec3<bool>(true, (~(-u_input.c.x) <= countOneBits(u_input.c.x)) & true, all(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)));
    let var_1 = _wgslsmith_sub_u32(u_input.a.x, ~39814u);
    var var_2 = Struct_1(select(vec4<bool>(true, false, !any(vec3<bool>(false, var_0.x, var_0.x)), !any(vec4<bool>(true, true, false, var_0.x))), select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !func_3(), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(any(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, var_0.x, false, var_0.x), false)), true, true, var_0.x || !var_0.x)), vec2<i32>((1i | u_input.c.x) & abs(31530i), ~(-7200i & u_input.b.x)), func_3().wz, true);
    let var_3 = Struct_1(select(select(vec4<bool>(true, true, true, var_2.a.x), var_2.a, var_2.a), !vec4<bool>(all(var_2.a.zz), var_2.d && var_0.x, 28486i < u_input.c.x, var_2.c.x), var_2.a), firstLeadingBit(select(var_2.b, ~u_input.c.xy, vec2<bool>(select(var_2.d, true, var_0.x), var_0.x))), !var_0.xy, func_3().x);
    var var_4 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yz), _wgslsmith_mult_u32(var_1, 34486u))), vec3<u32>(~4294967295u, 1u, var_1));
    return min(_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 1u, var_1, var_4.x), vec4<u32>(0u, 27872u, 0u, 4294967295u)), vec4<u32>(1262u, select(u_input.a.x, var_4.x, true), var_1, var_4.x), countOneBits(~vec4<u32>(0u, 30482u, 1u, var_1))) | _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1, 79600u, var_4.x, var_4.x), firstLeadingBit(vec4<u32>(77933u, var_1, var_1, 22246u)), vec4<u32>(var_4.x, u_input.a.x, var_1, 50303u)), vec4<u32>(var_1 << (var_1 % 32u), var_4.x << (var_4.x % 32u), ~0u, _wgslsmith_div_u32(var_4.x, 62292u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(15167u, var_1, 0u, 56570u), vec4<u32>(u_input.a.x, 21907u, var_4.x, var_1)), min(vec4<u32>(var_4.x, var_4.x, 4294967295u, u_input.a.x), vec4<u32>(0u, var_4.x, 28487u, 83490u))), countOneBits(vec4<u32>(u_input.a.x, ~4294967295u, ~4294967295u, max(4294967295u, u_input.a.x)))));
}

fn func_1() -> i32 {
    let var_0 = true;
    var var_1 = u_input.c | ((u_input.c >> (~select(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(36780u, u_input.a.x, 0u, 43967u), var_0) % vec4<u32>(32u))) >> (func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1536f, 1525f))))) % vec4<u32>(32u)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1047f)))), _wgslsmith_f_op_f32(ceil(1529f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f + 1134f) * _wgslsmith_f_op_f32(abs(-222f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(610f)), _wgslsmith_f_op_f32(f32(-1f) * -144f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f - _wgslsmith_div_f32(-945f, -1595f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-317f))))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, var_3, -1636f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-144f, var_3), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-1863f + var_3), _wgslsmith_f_op_f32(round(-1433f))) + vec4<f32>(var_3, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2217f, 1395f))));
    return ~(-max(u_input.c.x, _wgslsmith_sub_i32(firstLeadingBit(-1i), _wgslsmith_add_i32(var_1.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<bool>(u_input.a.x != _wgslsmith_add_u32(1u, u_input.a.x), any(vec2<bool>(false, false)), true, select(true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec2<i32>(-21158i, u_input.c.x), vec2<bool>(u_input.b.x > -41470i, true), !(firstTrailingBit(2147483647i) != (abs(u_input.b.x) & func_1())));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1661f, -1423f, -392f, -158f), vec4<f32>(-1006f, -231f, 797f, -232f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(690f, -1000f, -1334f, 1000f))))) * vec4<f32>(1196f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-389f, 571f, var_1.x)), -1089f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f - -1571f)), _wgslsmith_f_op_f32(-1724f * _wgslsmith_f_op_f32(1007f - -702f))))));
    let var_3 = Struct_1(vec4<bool>(!select(any(vec4<bool>(var_0.c.x, false, var_0.c.x, var_1.x)), false, false), false, _wgslsmith_f_op_f32(f32(-1f) * -2518f) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), (var_0.b.x == _wgslsmith_dot_vec4_i32(u_input.c, u_input.b)) | any(func_3().wx)), _wgslsmith_sub_vec2_i32(-u_input.b.yw, -var_0.b), select(var_0.c, func_3().zz, var_0.a.wx), false);
    var_2 = vec4<f32>(1165f, var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 183f)), -1012f)), 1000f);
    var var_4 = u_input.a.x & 0u;
    let x = u_input.a;
    s_output = StorageBuffer(77050u, ~(-1i));
}

