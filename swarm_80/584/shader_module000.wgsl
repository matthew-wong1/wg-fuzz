struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    return select(vec4<bool>(false, true, true, all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false))), !(!vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, true)), false)), !select(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, 0u > u_input.c), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_3();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -551f), Struct_1(_wgslsmith_f_op_f32(903f * _wgslsmith_f_op_f32(f32(-1f) * -402f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-750f, -577f, -1737f) + vec3<f32>(-1830f, 1470f, -2103f)))), true, vec3<bool>(!(!var_0.x), var_0.x, any(func_3().xwz)), -vec4<i32>(1i, 1i, -30043i, -2505i) | -reverseBits(vec4<i32>(u_input.b, -2147483647i, -1i, u_input.b))), vec3<bool>(_wgslsmith_f_op_f32(select(-1033f, _wgslsmith_f_op_f32(-1000f - 724f), arg_0.x)) >= 1f, false, arg_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(736f + 1632f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-679f, -1172f, 1167f))), !select(var_0.x, true, var_0.x) | var_0.x, var_0.yxx, ~(-(vec4<i32>(u_input.b, -1i, u_input.b, 49435i) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    var var_2 = ~abs(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x)), max(vec4<u32>(u_input.c, 104440u, 35140u, u_input.a.x), vec4<u32>(4294967295u, 0u, 0u, 61303u)))) << (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(978u, u_input.a.x, 4294967295u, u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.c), ~4294967295u, 4294967295u, u_input.c), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 60721u), ~vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u));
    let var_3 = Struct_3(var_1, var_1.b, Struct_2(_wgslsmith_f_op_f32(1509f - _wgslsmith_f_op_f32(trunc(var_1.a))), Struct_1(var_1.a, vec3<f32>(-122f, _wgslsmith_f_op_f32(1567f + -464f), _wgslsmith_f_op_f32(var_1.d.b.x - -1000f)), firstTrailingBit(var_1.b.e.x) < var_1.d.e.x, vec3<bool>(any(arg_0.ww), false | arg_0.x, true), var_1.d.e & firstTrailingBit(vec4<i32>(u_input.b, -14915i, var_1.b.e.x, 30457i))), !vec3<bool>(false, any(var_0), select(arg_0.x, false, var_0.x)), Struct_1(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(185f * 1287f), _wgslsmith_f_op_f32(871f + var_1.b.a)), false, arg_0.wwy, var_1.b.e)));
    var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~(1u << (min(var_2.x, u_input.c) % 32u)), u_input.a.x, reverseBits(~_wgslsmith_div_u32(1u, var_2.x))), firstLeadingBit(~(~vec4<u32>(1u, 100303u, 0u, 60378u))));
    return var_1;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1135f - var_0.a)))), func_2(vec4<bool>(true, true, true, true)).b, vec3<bool>(!var_0.d.d.x, true, var_0.d.c), var_0.b);
    var var_1 = vec4<bool>(var_0.d.d.x, false | !(true == var_0.d.d.x), true, any(vec2<bool>(~2779i > var_0.b.e.x, var_0.d.c)));
    var_1 = select(vec4<bool>(var_0.c.x, !select(!var_1.x, false, any(vec2<bool>(var_0.b.d.x, false))), all(vec4<bool>(true, !var_1.x, !var_0.c.x, true)), !(_wgslsmith_dot_vec3_i32(var_0.d.e.yyx, var_0.d.e.zzy) != _wgslsmith_sub_i32(30879i, -14344i))), select(!vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(select(true, var_0.d.c, true), 4294967295u > _wgslsmith_add_u32(u_input.a.x, u_input.c), !(!var_0.c.x), var_1.x | !var_1.x), vec4<bool>(any(vec4<bool>(true, var_0.b.d.x, true, var_0.d.c)), true, false, false)), ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, u_input.c), 1u << (u_input.a.x % 32u)) >= 1u);
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-480f))))), Struct_1(_wgslsmith_f_op_f32(min(var_0.b.a, _wgslsmith_f_op_f32(var_0.d.b.x * -211f))), func_2(vec4<bool>(true, var_1.x, select(false, false, false), true)).d.b, var_0.d.c, !var_0.c, -(~var_0.b.e)), func_3().wxx, Struct_1(var_0.b.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.b, var_0.b.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(var_0.b.b, var_0.d.b)))), true)), any(var_1.zy), func_3().yxw, var_0.b.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), func_1().b, func_1());
    var var_1 = 0u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2176f - func_1().d.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a + var_0.b.b.x), _wgslsmith_f_op_f32(-var_0.a.d.a)))), _wgslsmith_f_op_vec3_f32(-var_0.b.b), var_0.a.b.c, !var_0.c.c, _wgslsmith_clamp_vec4_i32(var_0.c.b.e, ~var_0.a.b.e, ~var_0.a.d.e));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a)));
    var_1 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2846f)));
    let x = u_input.a;
    s_output = StorageBuffer(((u_input.a.xz << (~u_input.a.zz % vec2<u32>(32u))) ^ u_input.a.yz) & u_input.a.zx);
}

