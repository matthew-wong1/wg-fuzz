struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 100f;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(4294967295u, 0u), vec2<u32>(52657u, 4294967295u), vec2<u32>(47330u, 5909u), vec2<u32>(20289u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 7217u), vec2<u32>(4294967295u, 51367u), vec2<u32>(68678u, 9484u), vec2<u32>(86615u, 41529u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(159f)) * -499f)))), 1386f);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = ~abs(~78862u);
    var var_1 = var_0;
    let var_2 = Struct_1(any(!(!vec3<bool>(arg_1.x, arg_1.x, true))) || !all(arg_1.yx), true, -1000f, abs(4294967295u));
    let var_3 = var_2;
    var var_4 = vec4<u32>((~(0u << (u_input.a % 32u)) << (u_input.a % 32u)) << (~firstLeadingBit(max(var_0, var_0)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(14515u & var_0, ~19856u), _wgslsmith_add_vec2_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(4759u, 9u)], global1[_wgslsmith_index_u32(var_3.d, 9u)]))) ^ ~abs(~var_0), ~_wgslsmith_mod_u32(var_0 | 1u, _wgslsmith_sub_u32(1u, var_0 << (0u % 32u))), abs(1165u));
    return select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, -1643f)) < _wgslsmith_f_op_f32(floor(634f)), arg_1.x, any(select(select(vec4<bool>(true, false, false, var_2.a), vec4<bool>(false, var_3.a, true, var_3.a), var_2.a), select(vec4<bool>(false, var_3.b, true, arg_1.x), vec4<bool>(false, true, var_3.b, false), false), !vec4<bool>(var_3.b, var_3.b, true, var_2.a))), var_2.a), select(vec4<bool>(var_3.b != any(vec4<bool>(true, false, var_2.a, var_2.a)), var_2.b, false, true), !(!select(vec4<bool>(var_3.a, arg_1.x, arg_1.x, false), vec4<bool>(true, arg_1.x, true, var_3.b), false)), !select(select(vec4<bool>(arg_1.x, var_2.a, false, var_2.a), vec4<bool>(arg_1.x, true, false, false), vec4<bool>(true, arg_1.x, var_2.b, true)), vec4<bool>(var_2.a, false, true, var_2.a), select(vec4<bool>(var_3.b, false, arg_1.x, var_2.b), vec4<bool>(var_2.a, var_3.b, true, false), var_3.a))), all(arg_1.yx));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1332f)) - _wgslsmith_f_op_f32(-1000f * arg_0.a)), _wgslsmith_f_op_f32(285f - _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(trunc(arg_0.a)), true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(486f)))), _wgslsmith_f_op_f32(-2257f - 457f))));
    var_0 = vec4<f32>(-621f, -345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1690f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * -735f) - -354f))))));
    let var_1 = !select(!func_3(-9549i, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), vec4<bool>(max(0u, arg_0.b) > 57594u, true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)));
    global0 = 1337f;
    let var_2 = Struct_4(~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(1i, 11372i), vec2<i32>(-6733i, -1i)), vec2<i32>(1233i, -24493i)) | _wgslsmith_mult_vec2_i32(select(vec2<i32>(-18588i, 37174i), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -28666i), vec2<i32>(-1i, -12800i)), var_1.xw), -(~vec2<i32>(2147483647i, 1i))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(floor(1073f))), -1328f), 20645u | arg_0.b));
    return var_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1673f * _wgslsmith_f_op_f32(f32(-1f) * -2390f)))), _wgslsmith_sub_u32(28641u, func_1(Struct_3(_wgslsmith_div_f32(-1000f, -690f), 1u))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f - 666f)), -514f))));
    var_0 = select(vec3<bool>(var_0.x, var_1.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f - 681f)), true), !(!vec3<bool>(true && var_0.x, true, var_0.x)), select(true, true, true));
    var_1 = Struct_3(var_1.a, 1u);
    var_0 = vec3<bool>(select(!any(vec3<bool>(var_0.x, var_0.x, true)) != var_0.x, -964f > var_1.a, all(func_3(1i, vec3<bool>(false, true, false)).wzw)), true, func_3(1i, vec3<bool>(!var_0.x, true, true)).x || (!(-1804f < var_1.a) & (!var_0.x & var_0.x)));
    var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f), 389f), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 4294967295u);
}

