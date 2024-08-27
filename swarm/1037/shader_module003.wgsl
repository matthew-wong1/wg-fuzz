struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<i32> {
    global0 = array<i32, 26>();
    var var_0 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(43037u, ~u_input.b.x), u_input.b.x), abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(true, false, true, false)), ~vec4<u32>(6855u, 74080u, 69302u, u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x >> (0u % 32u), ~1u))), 8185u, ~(~firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x))));
    var_0 = ~_wgslsmith_mult_vec4_u32(~(~(vec4<u32>(29792u, 0u, var_0.x, var_0.x) ^ vec4<u32>(1u, var_0.x, u_input.b.x, 53105u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.b.x, 24304u), vec4<u32>(var_0.x, var_0.x, 2562u, var_0.x)) | select(vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, u_input.b.x), ~vec4<u32>(0u, 37501u, var_0.x, 0u), true));
    var_0 = vec4<u32>(~8857u, _wgslsmith_mod_u32(1428u ^ _wgslsmith_clamp_u32(u_input.b.x >> (var_0.x % 32u), _wgslsmith_clamp_u32(var_0.x, u_input.b.x, var_0.x), var_0.x), u_input.b.x), var_0.x, _wgslsmith_sub_u32(var_0.x, _wgslsmith_clamp_u32(var_0.x >> (24922u % 32u), 0u, ~0u)) & reverseBits(29284u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, u_input.b.x, var_0.x), vec4<u32>(var_0.x, u_input.b.x, u_input.b.x, 15115u)) % 32u)));
    var var_1 = Struct_2(-vec2<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 26u)] & -2026i, 0i), abs(_wgslsmith_add_i32(-2147483647i, 1i))), -u_input.a, arg_2.c);
    return ~vec2<i32>(-1i, _wgslsmith_clamp_i32(firstLeadingBit(~(-2147483647i)), min(1i, 32835i), arg_2.c.a.x << (abs(u_input.b.x) % 32u)));
}

fn func_2() -> vec2<u32> {
    let var_0 = !(u_input.b.x <= u_input.b.x);
    global0 = array<i32, 26>();
    let var_1 = Struct_2(((select(vec2<i32>(u_input.a, 1i), vec2<i32>(1i, u_input.a), true) >> ((u_input.b.xx << (u_input.b.zz % vec2<u32>(32u))) % vec2<u32>(32u))) ^ select(~vec2<i32>(u_input.a, 1i), func_3(Struct_1(vec3<i32>(1i, -2741i, -16843i), vec3<f32>(638f, 1514f, 854f)), vec4<f32>(-1125f, -1702f, 2189f, -1177f), Struct_2(vec2<i32>(u_input.a, 49972i), 10806i, Struct_1(vec3<i32>(2147483647i, 0i, -21800i), vec3<f32>(817f, 260f, 1453f)))), var_0)) >> (vec2<u32>(~(u_input.b.x >> (u_input.b.x % 32u)), u_input.b.x) % vec2<u32>(32u)), _wgslsmith_add_i32(u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, 0u), 12243u, ~74026u), abs(~vec3<u32>(29738u, u_input.b.x, 0u))), 26u)]), Struct_1(vec3<i32>(-2147483647i, -abs(-11061i), select(global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 26u)], u_input.a, var_0)), vec3<f32>(_wgslsmith_div_f32(-1553f, 310f), _wgslsmith_f_op_f32(ceil(-1684f)), 1608f)));
    var var_2 = var_1;
    global0 = array<i32, 26>();
    return ~(~u_input.b.yy);
}

fn func_1() -> vec4<u32> {
    global0 = array<i32, 26>();
    var var_0 = _wgslsmith_dot_vec2_u32(~select(func_2(), ~vec2<u32>(22574u, u_input.b.x), true), firstTrailingBit(firstLeadingBit(u_input.b.xx)));
    var_0 = 16382u;
    let var_1 = _wgslsmith_f_op_f32(-1737f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-219f, -352f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1006f)))))));
    var_0 = ~u_input.b.x;
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, ~abs(u_input.b.x)), firstTrailingBit(select(~min(vec4<u32>(4294967295u, u_input.b.x, 20930u, 14523u), vec4<u32>(u_input.b.x, 35549u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, countOneBits(1u), u_input.b.x | u_input.b.x, 17484u), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + -309f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(308f, -462f))))));
    let var_1 = reverseBits(func_1());
    var var_2 = !select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true))), select(vec4<bool>(any(vec3<bool>(false, true, false)), 802f < var_0.x, false, false), vec4<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, false)), true, true), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), true)), !vec4<bool>(global0[_wgslsmith_index_u32(25513u, 26u)] == u_input.a, any(vec4<bool>(false, true, false, true)), true, true));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1675f, _wgslsmith_f_op_f32(-261f + var_0.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -353f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1009f, var_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -824f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(step(var_0.x, -878f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1782f, -1553f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1860f * _wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_div_f32(1933f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-187f, 107f))))));
    let var_4 = abs(~_wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(4294967295u, u_input.b.x) ^ u_input.b.yx) & _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(56346u, var_1.x), _wgslsmith_mult_u32(var_1.x, var_1.x), countOneBits(u_input.b.x), var_1.x), _wgslsmith_div_vec4_u32(max(vec4<u32>(var_1.x, u_input.b.x, 0u, var_1.x), var_1), abs(var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, 217f)))))), 30313u, 1u & ~u_input.b.x, _wgslsmith_f_op_f32(-var_0.x));
}

