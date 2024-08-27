struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(select(true, true, true) | true, vec4<bool>(true, _wgslsmith_f_op_f32(min(1000f, 453f)) == _wgslsmith_f_op_f32(select(-906f, -159f, true)), !all(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), true)), Struct_1(!any(global0[_wgslsmith_index_u32(u_input.d, 10u)]) && false, vec4<bool>(false, true, false, true)), u_input.b | u_input.c.x, arg_0);
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1071f + -1291f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1111f, _wgslsmith_f_op_f32(f32(-1f) * -367f))) - -2216f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f + -2099f)) - _wgslsmith_div_f32(350f, _wgslsmith_f_op_f32(ceil(494f)))), -151f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u)))), 132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f))), 1f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -194f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1087f + var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -112f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-273f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + 1411f))))) + var_0.x), _wgslsmith_f_op_f32(-var_0.x), -1736f);
    var var_1 = Struct_1(true, select(vec4<bool>(true, true, !(u_input.d > u_input.a.x), all(vec2<bool>(true, true))), !vec4<bool>(select(false, true, false), true, true, any(vec3<bool>(false, false, true))), !vec4<bool>(true, false, false, 20826u != u_input.a.x)));
    var var_2 = Struct_1(var_1.b.x || any(vec2<bool>(true, var_1.a)), select(select(vec4<bool>(!var_1.a, any(var_1.b.wx), var_1.b.x, true & var_1.b.x), select(!vec4<bool>(var_1.b.x, false, true, false), var_1.b, all(var_1.b.wyx)), var_1.b), !var_1.b, true));
    return Struct_2(Struct_1(var_1.b.x, select(select(select(vec4<bool>(true, false, false, var_1.a), var_2.b, var_1.b), var_1.b, !vec4<bool>(true, false, var_2.b.x, var_1.a)), vec4<bool>(all(var_2.b), true, all(vec4<bool>(var_1.b.x, true, true, var_1.a)), all(var_2.b.xz)), any(select(var_1.b.zyz, var_1.b.wxw, false)))), Struct_1(false, vec4<bool>(var_0.x <= var_0.x, var_1.b.x, false, var_0.x != var_0.x)), _wgslsmith_dot_vec2_i32(u_input.c, abs(vec2<i32>(u_input.b, -1i))), u_input.a.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = func_2();
    var var_2 = -(vec3<i32>(-1144i, firstTrailingBit(var_1.c), -_wgslsmith_add_i32(arg_2.x, arg_2.x)) << (select(~(vec3<u32>(47360u, 20219u, 0u) >> (vec3<u32>(var_1.d, u_input.a.x, 0u) % vec3<u32>(32u))), firstLeadingBit(~vec3<u32>(var_1.d, 53113u, 4294967295u)), select(vec3<bool>(true, arg_3.b.x, var_1.b.b.x), !arg_3.b.zyx, select(arg_3.b.wxz, vec3<bool>(var_1.b.a, true, var_1.a.b.x), arg_3.a))) % vec3<u32>(32u)));
    let var_3 = abs(~reverseBits(vec3<u32>(14691u, var_1.d, 4294967295u)) ^ abs(~(~vec3<u32>(4294967295u, 52516u, var_1.d))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1010f, _wgslsmith_f_op_f32(ceil(1016f))) + _wgslsmith_f_op_f32(f32(-1f) * -436f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-950f, _wgslsmith_f_op_f32(f32(-1f) * -1029f))))));
    return func_2().a;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> bool {
    let var_0 = arg_0.b;
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_sub_vec2_i32(~(~u_input.c), vec2<i32>(i32(-1i) * -arg_0.c, u_input.c.x));
    var var_3 = max(vec4<i32>(-abs(~(-352i)), _wgslsmith_clamp_i32(arg_0.c & -arg_0.c, var_2.x, 2147483647i), ~(-var_2.x), u_input.b), -vec4<i32>(17231i, -73800i, -35216i >> (_wgslsmith_mod_u32(arg_0.d, u_input.d) % 32u), ~u_input.b));
    var_2 = vec2<i32>(reverseBits(-3741i), u_input.c.x);
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(true, vec4<bool>(!any(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(1249f)) < _wgslsmith_f_op_f32(f32(-1f) * -1166f), u_input.d == u_input.a.x)), Struct_1(true, vec4<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), all(vec2<bool>(true, true)), u_input.b >= u_input.b)), 4066i, _wgslsmith_dot_vec2_u32(~vec2<u32>(52589u >> (u_input.a.x % 32u), 1u), vec2<u32>(24805u, 26969u)));
    let var_1 = select(vec4<bool>(var_0.a.b.x, var_0.b.a, func_4(Struct_2(var_0.a, func_1(u_input.d, 1u, vec3<i32>(var_0.c, 1i, var_0.c), var_0.b), -1i, reverseBits(9548u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-215f - 1551f))), ~var_0.d, vec2<bool>(true, !var_0.b.a)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, var_0.d, 4294967295u, u_input.d), vec4<u32>(0u, 1u, u_input.d, 1u), var_0.b.b), countOneBits(vec4<u32>(u_input.a.x, var_0.d, 69436u, 128531u))) < var_0.d), func_2().a.b, var_0.a.b);
    let var_2 = 15593u;
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, u_input.d)), ~vec2<u32>(705u, var_0.d))), abs((vec2<u32>(var_0.d, 4294967295u) | vec2<u32>(4040u, u_input.d)) >> (select(u_input.a, u_input.a, false) % vec2<u32>(32u))), !vec2<bool>(!var_1.x, true)), ~0u, _wgslsmith_div_vec2_i32(vec2<i32>(-(~0i), 13195i), u_input.c), vec3<i32>(u_input.b, 28497i, -var_0.c), 22373i);
}

