struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(634f, -933f), _wgslsmith_f_op_f32(-arg_3)));
    var var_1 = Struct_2(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) - _wgslsmith_f_op_f32(sign(-1134f)))))), arg_1.b, select(arg_1.c, arg_1.c, true));
    let var_2 = vec2<i32>(u_input.d, ~(-36966i));
    let var_3 = Struct_4(_wgslsmith_mult_u32(~(~u_input.b.x), u_input.c) | 32530u, arg_1, 1i, arg_1);
    global0 = array<vec2<bool>, 26>();
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = vec4<bool>(false, ((101630u == _wgslsmith_clamp_u32(arg_1.x, arg_1.x, u_input.c)) & func_3(_wgslsmith_f_op_vec4_f32(-arg_0), Struct_2(arg_0.zz, u_input.b.x, vec3<bool>(true, true, true)), any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -766f))) == all(vec3<bool>(false, true, true)), select(!all(vec3<bool>(true, true, true)), false, true), any(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(any(global0[_wgslsmith_index_u32(1u, 26u)]), true, false))));
    var var_1 = _wgslsmith_add_i32(u_input.d, -(~(~(u_input.a.x | 6114i))));
    let var_2 = Struct_3(abs(~max(abs(arg_1), arg_3.a)));
    var_0 = vec4<bool>(var_0.x, !var_0.x, var_0.x, ~abs(u_input.a.x) > reverseBits(u_input.d));
    var var_3 = vec3<bool>(select(any(!global0[_wgslsmith_index_u32(~7727u, 26u)]), select(~u_input.d == 1i, func_3(_wgslsmith_f_op_vec4_f32(-arg_0), Struct_2(arg_2.xx, arg_3.a.x, vec3<bool>(var_0.x, var_0.x, true)), var_0.x, 1000f), !(!var_0.x)), !var_0.x), !((var_2.a.x > 1u) && true), true);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(arg_2.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, -629f)), arg_2.yx)))));
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_4(4294967295u, Struct_2(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, 570f, -604f, 1045f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(367f, 1261f, -565f, 108f)))), ~u_input.b.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, 636f, 1372f))), Struct_3(~u_input.b.zz))), ~reverseBits(4294967295u), vec3<bool>(true, true, true)), firstTrailingBit(100310i), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(990f, 1000f) * vec2<f32>(-818f, 293f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, -523f))))), _wgslsmith_mult_u32(select(~u_input.c, ~u_input.c, true), min(u_input.b.x & 5817u, ~1u)), vec3<bool>(all(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(26909u, 26u)], false)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)))));
    let var_1 = select(var_0.d.c, select(!vec3<bool>(var_0.d.c.x, any(var_0.b.c), true), !vec3<bool>(true, -205f >= var_0.d.a.x, any(vec3<bool>(var_0.d.c.x, var_0.d.c.x, false))), select(!var_0.b.c, select(var_0.b.c, select(var_0.b.c, var_0.d.c, vec3<bool>(var_0.d.c.x, false, false)), any(vec2<bool>(true, false))), select(var_0.b.c, !var_0.d.c, true))), var_0.b.c.x);
    var var_2 = Struct_1(-15371i, var_0.b.a.x, u_input.d, var_0.d.c.x, select(vec4<bool>(var_0.d.a.x > _wgslsmith_f_op_f32(step(-1032f, var_0.d.a.x)), var_0.d.c.x, true, true), select(vec4<bool>(true, !var_0.b.c.x, all(vec4<bool>(var_1.x, var_0.d.c.x, true, var_1.x)), !var_0.d.c.x), !vec4<bool>(false, false, var_0.b.c.x, var_0.d.c.x), !select(vec4<bool>(false, var_1.x, var_0.d.c.x, true), vec4<bool>(true, false, false, true), vec4<bool>(var_0.b.c.x, var_0.d.c.x, true, var_0.d.c.x))), -2147483647i < var_0.c));
    var_2 = Struct_1(u_input.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f * -817f))), ~reverseBits(1521i), true, var_2.e);
    var_0 = Struct_4(~firstLeadingBit(var_0.b.b) << (var_0.b.b % 32u), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-var_2.b))), 1u, select(!var_2.e.yzz, vec3<bool>(true, true, select(false, var_0.d.c.x, var_2.d)), vec3<bool>(var_0.b.c.x, var_0.b.c.x, !var_0.b.c.x))), _wgslsmith_sub_i32(23742i, ~(-var_2.a)) ^ (var_0.c ^ var_2.c), var_0.d);
    return var_0.b.a;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_clamp_u32(50737u << ((6200u << (u_input.b.x % 32u)) % 32u), u_input.b.x ^ 89674u, u_input.c), firstTrailingBit(max(1u, _wgslsmith_sub_u32(u_input.c, 61485u)))));
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_1 = vec4<f32>(-1077f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + -633f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 824f) - -777f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0))))))), -1515f);
    return vec4<bool>(true, false && all(vec3<bool>(true, true, true)), select(any(vec3<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), false)), false & func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, -414f, arg_0, var_1.x)), Struct_2(vec2<f32>(881f, 1472f), u_input.c, vec3<bool>(true, false, true)), false, _wgslsmith_f_op_f32(var_1.x + arg_1.x)), !all(vec4<bool>(true, true, true, true))), true);
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u), u_input.b), firstLeadingBit(17217u)) & 10227u);
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(arg_1, -_wgslsmith_clamp_i32(arg_0.x, -u_input.d, -18767i)), -countOneBits(arg_1));
    var_1 = arg_0;
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_mult_i32(u_input.a.x, -2147483647i), ~2147483647i, -9442i) >> (vec4<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, 28946u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 0u) % vec4<u32>(32u)), countOneBits(~reverseBits(vec4<i32>(1i, u_input.a.x, -54074i, -2147483647i)))));
    var var_3 = arg_0.x >> (_wgslsmith_add_u32(min(u_input.b.x, u_input.c), _wgslsmith_mult_u32(u_input.b.x, u_input.c) ^ 1u) % 32u);
    return Struct_4(_wgslsmith_mod_u32(~abs(firstTrailingBit(4294967295u)), u_input.c), Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, -2537f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1537f)))), vec2<f32>(870f, _wgslsmith_f_op_f32(238f - -918f)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(9854u, 29611u, 0u, 14312u), ~vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x)), u_input.c), vec3<bool>(any(select(vec2<bool>(true, arg_2.x), vec2<bool>(arg_2.x, true), arg_2.ww)), true, !arg_2.x)), abs(min(firstTrailingBit(arg_0.x) ^ -u_input.d, min(-arg_1, 1i))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 878f), _wgslsmith_f_op_f32(f32(-1f) * -202f))), -1193f), u_input.c, vec3<bool>(true, any(select(vec2<bool>(false, arg_2.x), vec2<bool>(true, arg_2.x), vec2<bool>(arg_2.x, true))), arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_mult_u32(1u, 82021u), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 11479u, 18025u), vec4<u32>(44229u, u_input.c, u_input.c, u_input.b.x)), ~u_input.c, max(u_input.b.x, 4294967295u), ~1u), reverseBits(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x)) << (~vec4<u32>(u_input.c, u_input.c, u_input.c, 10577u) % vec4<u32>(32u)))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-957f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)))));
    let var_3 = func_5(u_input.a.zy, u_input.a.x, !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)), _wgslsmith_f_op_vec2_f32(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-u_input.d, abs(-4245i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -33087i, var_3.c, u_input.a.x), vec4<i32>(-1i, var_3.c, u_input.d, 1i)), countOneBits(vec4<i32>(-87655i, -2147483647i, var_3.c, 24523i)))), _wgslsmith_clamp_vec2_i32(max(-u_input.a.yz, vec2<i32>(2147483647i, var_3.c)), u_input.a.zz, u_input.a.xx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2050f, var_3.b.a.x))));
}

