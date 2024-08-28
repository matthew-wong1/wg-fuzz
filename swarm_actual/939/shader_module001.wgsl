struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_4,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_4(-vec2<i32>(-23604i, _wgslsmith_mod_i32(u_input.a, u_input.a)), vec4<f32>(983f, _wgslsmith_f_op_f32(max(arg_0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -892f))), _wgslsmith_f_op_f32(abs(-1075f)), -2476f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a, ~u_input.a), ~var_0.a), -2966f, u_input.a & 2416i), Struct_1(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.b.a, arg_0.a.c), vec3<i32>(-19270i, -2147483647i, 2147483647i)), 14653i), _wgslsmith_f_op_f32(ceil(217f)), 2147483647i), arg_0.c);
    return vec4<bool>(any(var_1.c.yzx), arg_0.b.c >= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, abs(-76892i), 12677i, -18554i), vec4<i32>(var_0.a.x, _wgslsmith_add_i32(-720i, var_0.a.x), -1i, -var_0.a.x)), true, arg_0.c.x);
}

fn func_2() -> vec2<u32> {
    global0 = array<u32, 23>();
    var var_0 = !select(select(vec4<bool>(true, true, true, true), func_3(Struct_2(Struct_1(u_input.a, -598f, u_input.a), Struct_1(u_input.a, 109f, -19586i), vec4<bool>(true, true, true, true)), ~4294967295u), func_3(Struct_2(Struct_1(u_input.a, 1365f, -5515i), Struct_1(-2147483647i, 184f, u_input.a), vec4<bool>(true, true, false, true)), abs(4294967295u))), vec4<bool>(func_3(Struct_2(Struct_1(-27465i, 371f, -22385i), Struct_1(u_input.a, -162f, u_input.a), vec4<bool>(false, false, true, false)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 23u)], 23u)], 23u)], 23u)]).x & true, all(vec3<bool>(true, true, true)), true, false), vec4<bool>(true, true, true, true));
    var_0 = !select(vec4<bool>(false, var_0.x, _wgslsmith_mult_u32(u_input.b.x, 0u) != 0u, var_0.x), !vec4<bool>(func_3(Struct_2(Struct_1(u_input.a, 1070f, -11226i), Struct_1(1786i, -1912f, 2147483647i), vec4<bool>(false, var_0.x, var_0.x, false)), global0[_wgslsmith_index_u32(32277u, 23u)]).x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, true || var_0.x));
    let var_1 = 1f;
    var_0 = func_3(Struct_2(Struct_1(countOneBits(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(floor(-303f)), 26021i), Struct_1(1i, _wgslsmith_f_op_f32(step(var_1, -161f)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, -1i), vec3<i32>(68202i, 42243i, 18785i)))), vec4<bool>(false, all(!vec4<bool>(true, false, var_0.x, var_0.x)), var_0.x, countOneBits(u_input.b.x) >= ~0u)), 0u);
    return min(firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 23u)] ^ global0[_wgslsmith_index_u32(4294967295u, 23u)])) & ~(~(~u_input.b.ww)), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], u_input.c), u_input.b.wy), vec2<u32>(global0[_wgslsmith_index_u32(~1u, 23u)], 1u)) << (u_input.b.zx % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    let var_0 = Struct_4(~vec2<i32>(1i, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(814f, -104f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2066f + 1709f), -148f), _wgslsmith_div_f32(986f, 690f)) + vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = any(select(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !select(false, true, true)), vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_2 = ~(~vec4<u32>(0u, ~global0[_wgslsmith_index_u32(476u, 23u)], ~global0[_wgslsmith_index_u32(1u, 23u)], ~u_input.c)) >> (vec4<u32>(~(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(59358u, 23u)], 23u)]), u_input.c, ~firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.b.x)), abs(_wgslsmith_div_u32(1u, u_input.c) ^ global0[_wgslsmith_index_u32(~u_input.c, 23u)])) % vec4<u32>(32u));
    let var_3 = !(!vec2<bool>(any(!vec2<bool>(var_1, var_1)), false));
    var var_4 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(func_2(), vec2<u32>(~var_2.x, _wgslsmith_clamp_u32(19279u, u_input.c, firstTrailingBit(47560u)))), vec2<u32>(~(~reverseBits(1u)), 1u), func_2());
    return var_0.b.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<i32>) -> u32 {
    global0 = array<u32, 23>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(Struct_4(-min(vec2<i32>(55493i, -20479i), vec2<i32>(-3286i, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-461f * 1157f), _wgslsmith_f_op_f32(func_1()), -1400f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_5(all(vec2<bool>(true, true)), Struct_4(min(vec2<i32>(-14885i, -2147483647i), vec2<i32>(u_input.a, u_input.a)), vec4<f32>(-1145f, 215f, 1260f, -937f)), Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-24652i, 0i)), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_sub_u32(min(1u, 0u), 0u), vec4<i32>(firstLeadingBit(u_input.a), abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 48451i), vec2<i32>(40681i, u_input.a)), u_input.a)), _wgslsmith_div_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(53607i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, -1i) | vec2<i32>(0i, -2147483647i), 4294967295u == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)]), -_wgslsmith_div_vec2_i32(vec2<i32>(84964i, u_input.a), vec2<i32>(u_input.a, -1i))));
    global0 = array<u32, 23>();
    let var_1 = Struct_5(true, Struct_4(vec2<i32>(u_input.a, ~u_input.a ^ _wgslsmith_mult_i32(6578i, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) * -2345f), 827f, _wgslsmith_f_op_f32(f32(-1f) * -1686f), _wgslsmith_f_op_f32(func_1()))), Struct_4(vec2<i32>(u_input.a, -u_input.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(148f, 890f)), _wgslsmith_f_op_f32(round(452f)), _wgslsmith_f_op_f32(f32(-1f) * -169f), -1476f)))), abs(4294967295u & ~(~var_0)), _wgslsmith_mult_vec4_i32(countOneBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-6190i, u_input.a, u_input.a, 53532i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)))), vec4<i32>((u_input.a | 0i) >> (~5832u % 32u), abs(reverseBits(16302i)), ~(~(-1i)), u_input.a)));
    var var_2 = _wgslsmith_div_vec3_f32(var_1.c.b.xzz, _wgslsmith_f_op_vec3_f32(min(var_1.c.b.ywy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-413f, 1829f, var_1.c.b.x), vec3<f32>(var_1.b.b.x, var_1.c.b.x, var_1.b.b.x), true)) - var_1.b.b.yyz)))));
    global0 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~var_1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -abs(u_input.a)), var_1.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.c.b.x, -1000f), -1477f, 114f, var_1.c.b.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_1.b.b, vec4<f32>(-403f, var_2.x, 192f, 828f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, -1705f, var_2.x, var_1.b.b.x), var_1.b.b)), select(vec4<bool>(true, false, var_1.a, true), vec4<bool>(var_1.a, true, var_1.a, true), var_1.a)))) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_1.c.b.x - _wgslsmith_f_op_f32(select(var_1.b.b.x, var_1.c.b.x, false))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) + _wgslsmith_f_op_f32(ceil(504f))))), _wgslsmith_div_vec3_f32(vec3<f32>(1564f, var_2.x, 1502f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1556f), _wgslsmith_f_op_f32(select(var_2.x, 1330f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.b.x, 495f, var_1.a))), var_2.x)), -var_1.b.a);
}

