struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(33971u, 1u, 16769u), vec3<u32>(1u, 1u, 1u)) | firstTrailingBit(firstTrailingBit(vec3<u32>(5447u, 0u, 41090u))), ~vec3<u32>(24912u, 1u, max(1u, 13139u))), (vec3<u32>(4294967295u, select(1u, 7380u, true), _wgslsmith_sub_u32(4294967295u, 4294967295u)) ^ ~vec3<u32>(0u, 4294967295u, 1u)) & min(min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 58516u, 82842u), vec3<u32>(4294967295u, 57409u, 30155u)), max(vec3<u32>(1u, 1u, 17942u), vec3<u32>(4294967295u, 95913u, 119510u))), vec3<u32>(1u, 1u, 1u)));
    let var_1 = _wgslsmith_dot_vec3_u32(select(~(var_0 | select(var_0, vec3<u32>(var_0.x, 6346u, var_0.x), false)), ~(~(~vec3<u32>(1u, 31270u, 4294967295u))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, false, false))))), var_0);
    let var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), select(true, true, true)), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 799f, 891f, 2114f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, -1183f, _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(f32(-1f) * -418f))))), u_input.b, select(select(vec4<bool>(true, var_1 != var_1, var_0.x != var_0.x, true), vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, any(vec3<bool>(false, true, true))), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(select(select(false, true, false), all(vec2<bool>(true, true)), all(vec2<bool>(false, true))), true, var_1 <= 0u, _wgslsmith_f_op_f32(sign(1011f)) > _wgslsmith_div_f32(1488f, -292f))), vec2<i32>(-6626i, 1i));
    return false;
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~(~(~(~vec2<u32>(1u, 0u)))));
    var var_1 = u_input.b;
    var var_2 = false;
    var var_3 = Struct_1(!(!vec2<bool>(true, any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-667f, 166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1570f * -235f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(321f)), 1205f), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2627f, 1675f, 364f, -1515f) - vec4<f32>(-1700f, -1448f, 672f, 982f)))), !vec4<bool>(func_3(), 2467u == var_0.x, true, func_3()))), firstTrailingBit(abs(~30357i)), vec4<bool>(false, ~u_input.a.x <= (0i >> (_wgslsmith_mult_u32(var_0.x, 1u) % 32u)), true, false), vec2<i32>(~(-1i), ~(min(u_input.a.x, u_input.b) >> (5254u % 32u))));
    let var_4 = Struct_1(!vec2<bool>(_wgslsmith_add_i32(var_3.e.x, -1i) <= 2147483647i, any(var_3.d) & true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(911f, var_3.b.x, var_3.b.x, 922f))))), -4383i, !(!vec4<bool>(!var_3.a.x, true, !var_3.d.x, any(vec2<bool>(var_3.a.x, true)))), vec2<i32>(-1i) * -vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 8u)]), u_input.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-782f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.b.x, var_4.b.x)) + var_4.b.x), var_3.b.x, -643f);
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 8>();
    let var_0 = ~vec3<u32>(1335u, _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(0u, 37122u)), ~vec2<u32>(1u, 1u)), select(~_wgslsmith_mod_u32(0u, 65416u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(0u, 4294967295u)), true));
    var var_1 = vec2<i32>(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(max(u_input.a.xx, vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(1u, 8u)])), vec2<i32>(-17182i, u_input.a.x)), u_input.a.zy >> (vec2<u32>(1u, var_0.x) % vec2<u32>(32u)))), _wgslsmith_dot_vec3_i32(u_input.a ^ reverseBits(u_input.a ^ vec3<i32>(u_input.a.x, u_input.b, global0[_wgslsmith_index_u32(var_0.x, 8u)])), vec3<i32>((i32(-1i) * -44287i) ^ -u_input.a.x, ~u_input.b ^ global0[_wgslsmith_index_u32(~var_0.x, 8u)], ~(-1233i >> (var_0.x % 32u)))));
    let var_2 = Struct_1(vec2<bool>(!(any(vec3<bool>(true, true, true)) && true), true), _wgslsmith_f_op_vec4_f32(func_2()), i32(-1i) * -1i, !vec4<bool>(true, func_3(), _wgslsmith_add_u32(var_0.x, 39706u) >= 1u, func_3()), vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(global0[_wgslsmith_index_u32(abs(0u), 8u)]), ~var_1.x >> (1u % 32u)), firstLeadingBit(60961i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * -301f) - _wgslsmith_f_op_f32(-var_2.b.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1386f))))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_vec4_f32(func_2()).x)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f))) - _wgslsmith_f_op_f32(-var_0.b.x)));
    var_1 = 158f;
    let var_2 = 1186f;
    let x = u_input.a;
    s_output = StorageBuffer(-36981i, vec3<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)), -2495f), -1712f);
}

