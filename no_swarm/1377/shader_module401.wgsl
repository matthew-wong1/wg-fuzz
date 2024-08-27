struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true));

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(u_input.a.yz, !global0[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    global1 = i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 1i), 1i);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(311f + arg_0), _wgslsmith_f_op_f32(min(arg_0, 243f)), -1806f, _wgslsmith_f_op_f32(arg_0 * arg_0)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, 1769f, 1267f, arg_0) * vec4<f32>(arg_0, -1664f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 207f, arg_0, 185f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-639f, -1689f, -229f, arg_0) - vec4<f32>(550f, arg_0, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-694f, arg_0, 498f, arg_0))) - vec4<f32>(arg_0, -2526f, arg_0, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -517f), -1045f, _wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_f32(abs(arg_0))), vec4<bool>(true, !arg_1.b.x, arg_0 != -1194f, true)))), true));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(select(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) >> (u_input.a.zz % vec2<u32>(32u)), reverseBits(u_input.a.yx)), select(vec2<u32>(~u_input.a.x, ~13167u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), ~u_input.a.zx), false), true), !vec4<bool>(-1448f <= _wgslsmith_f_op_f32(step(-724f, 1140f)), all(!global0[_wgslsmith_index_u32(25463u, 24u)]), false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(-2649f))))), -1000f, -801f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 517f, -386f, var_1.x))), true)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(881f, var_1.x, -2313f, var_1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -489f, 504f) + vec4<f32>(1153f, var_1.x, -577f, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-2845f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * _wgslsmith_div_f32(649f, 503f)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -2556f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1488f), var_0)))));
    let var_2 = any(var_0.b);
    global0 = array<vec4<bool>, 24>();
    return Struct_2(firstLeadingBit(~u_input.a), var_0, var_0, var_0, Struct_1(u_input.a.zz, var_0.b));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_1(u_input.a.xx >> (arg_2.c.a % vec2<u32>(32u)), vec4<bool>(true, any(vec4<bool>(true, true, any(arg_2.b.b.wz), arg_2.b.b.x)), false, true));
    global0 = array<vec4<bool>, 24>();
    let var_1 = arg_2.c;
    global0 = array<vec4<bool>, 24>();
    let var_2 = vec3<bool>(true, any(!select(func_2().b.b.yzy, vec3<bool>(false, var_1.b.x, var_1.b.x), select(vec3<bool>(var_1.b.x, false, arg_2.c.b.x), vec3<bool>(var_0.b.x, arg_2.b.b.x, var_1.b.x), arg_2.e.b.wzz))), arg_2.a.x != _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2.e.a.x, ~arg_2.e.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.a.x, 94631u, 0u))), select(~var_1.a.x, ~var_0.a.x, select(var_0.b.x, var_0.b.x, arg_2.c.b.x))));
    return vec4<u32>(60262u, arg_2.e.a.x, 0u, ~firstTrailingBit(var_1.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    global1 = _wgslsmith_mod_i32(((42806i >> (~u_input.a.x % 32u)) >> (4294967295u % 32u)) >> ((~(~arg_0.a.x) & (~arg_0.a.x >> (arg_0.a.x % 32u))) % 32u), -1i);
    var var_0 = 68544u;
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    var var_1 = firstTrailingBit(~(func_4(vec3<i32>(1i, -13014i, 36058i) << (u_input.a % vec3<u32>(32u)), 11919u, func_2()) | countOneBits(~vec4<u32>(u_input.a.x, 23892u, 70863u, arg_0.a.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(firstTrailingBit(~max(u_input.a.xz, u_input.a.xy)), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true)), any(!vec2<bool>(all(vec3<bool>(false, true, false)), true)));
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_mod_u32(30882u, _wgslsmith_add_u32(100948u, ~firstLeadingBit(select(11860u, var_1.a.x, var_0.b.b.x))));
    var var_3 = func_1(Struct_1(func_1(func_2().e, ~1u != max(var_1.a.x, 4294967295u)).a.xx, var_1.b), var_1.b.x & all(func_2().b.b.yx)).c;
    var_3 = Struct_1(~var_0.d.a, vec4<bool>(!((var_1.b.x && true) == true), var_3.b.x, true, var_0.c.b.x | select(var_1.b.x, true, all(var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.a));
}

