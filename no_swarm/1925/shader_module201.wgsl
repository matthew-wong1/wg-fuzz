struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> vec3<bool> {
    var var_0 = vec4<i32>(-1i) * -(~(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, -11474i, 2147483647i), vec4<i32>(arg_0.b, 0i, -2147483647i, arg_0.b)) & -vec4<i32>(arg_0.b, 2147483647i, 2147483647i, 0i)));
    return vec3<bool>(!(!arg_2), true, !arg_1.x);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = select(select(select(func_3(Struct_1(vec3<u32>(15040u, 1u, 0u), 0i, vec4<bool>(true, true, arg_0, true)), !vec4<bool>(arg_0, global3.x, true, true), true, _wgslsmith_add_u32(u_input.c, u_input.a)), select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 14u)], !global2[_wgslsmith_index_u32(58265u, 14u)], true), func_3(global1[_wgslsmith_index_u32(4912u, 32u)], !vec4<bool>(false, false, global3.x, false), true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), vec4<u32>(8532u, 6384u, 4294967295u, 10242u)))), func_3(global1[_wgslsmith_index_u32(u_input.c, 32u)], vec4<bool>(true, arg_0, global3.x && arg_0, global3.x), arg_0, 1u), any(vec4<bool>(true, true, all(global2[_wgslsmith_index_u32(0u, 14u)]), arg_0 && false))), select(select(vec3<bool>(global3.x, true, arg_0), vec3<bool>(arg_0, true, true), select(func_3(Struct_1(vec3<u32>(u_input.c, 4294967295u, 4294967295u), 4004i, vec4<bool>(global3.x, global3.x, arg_0, global3.x)), vec4<bool>(arg_0, true, global3.x, false), false, u_input.b), vec3<bool>(false, false, global3.x), global2[_wgslsmith_index_u32(~u_input.a, 14u)])), !vec3<bool>(true, !arg_0, true), select(arg_0, select(true, false, !global3.x), false)), global3.x);
    global3 = func_3(Struct_1(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, 0u)), ~vec3<u32>(4294967295u, 11510u, 1u), ~vec3<u32>(17989u, 1u, u_input.c)), ~_wgslsmith_clamp_i32(40421i, 1i, 4406i), vec4<bool>(true, true, global3.x, !all(vec4<bool>(global3.x, global3.x, true, true)))), vec4<bool>(true, !arg_0, global3.x, any(var_0)), !(!all(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.x, false, true)))), 21143u);
    let var_1 = arg_0;
    global0 = array<vec3<i32>, 15>();
    let var_2 = Struct_1(max(~(~(~vec3<u32>(29703u, 73326u, 23490u))), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(0u, u_input.a, 10526u)) << ((firstLeadingBit(vec3<u32>(u_input.a, 93646u, 4294967295u)) | (vec3<u32>(u_input.a, 19154u, u_input.a) | vec3<u32>(4294967295u, u_input.a, u_input.b))) % vec3<u32>(32u))), 1i, select(select(vec4<bool>(var_0.x, true, var_1, any(vec3<bool>(global3.x, arg_0, arg_0))), vec4<bool>(true, var_1, all(var_0.zx), arg_0), any(select(vec2<bool>(var_0.x, true), vec2<bool>(true, global3.x), true))), !(!(!vec4<bool>(global3.x, arg_0, arg_0, var_0.x))), !select(global3.x, all(vec3<bool>(global3.x, false, var_1)), global3.x)));
    return select(34655u, min(~42181u, countOneBits(16653u)), all(vec2<bool>(!var_2.c.x, true))) & 13061u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global3 = arg_0.c.wxz;
    var var_0 = select(vec2<bool>(func_2(true) < (arg_0.a.x ^ 0u), all(!arg_0.c.xyx)), vec2<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(step(431f, 2081f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(722f, -1000f)), _wgslsmith_f_op_f32(min(1400f, 1059f)))), false);
    var var_1 = -1i;
    global3 = vec3<bool>(false, true, global3.x);
    let var_2 = Struct_1(arg_0.a, ~arg_0.b, select(select(!arg_0.c, !vec4<bool>(global3.x, var_0.x, false, var_0.x), !vec4<bool>(global3.x, false, global3.x, true)), !(!vec4<bool>(false, false, true, var_0.x)), arg_0.c));
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    var var_1 = global1[_wgslsmith_index_u32(~arg_1.a.x, 32u)];
    let var_2 = !vec2<bool>(all(func_3(arg_1, arg_1.c, !arg_2, countOneBits(u_input.b))), false);
    let var_3 = -1000f;
    var var_4 = func_1(Struct_1(~countOneBits(vec3<u32>(1u, var_1.a.x, u_input.c)), var_1.b, !select(!vec4<bool>(true, true, arg_2, var_2.x), vec4<bool>(false, var_1.c.x, var_1.c.x, false), arg_2)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, -1121f))) - vec2<f32>(_wgslsmith_f_op_f32(max(arg_3, 429f)), _wgslsmith_f_op_f32(905f - arg_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(global3.x, true || global3.x, true, !global3.x), func_1(global1[_wgslsmith_index_u32(u_input.a, 32u)]), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(445f - 957f))))))) + vec2<f32>(1051f, _wgslsmith_f_op_vec2_f32(func_4(!(!vec4<bool>(false, global3.x, global3.x, global3.x)), Struct_1(~vec3<u32>(u_input.c, 99963u, u_input.c), ~0i, select(vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, false, global3.x, false), global3.x)), any(vec2<bool>(global3.x, global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-417f)), -1000f, global3.x)))).x));
    global0 = array<vec3<i32>, 15>();
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(16975u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.b), u_input.a, 38645u, ~1u >> (firstTrailingBit(u_input.b) % 32u)), firstLeadingBit(~vec4<u32>(41419u, 20031u, 4294967295u, 36447u))));
    var var_2 = Struct_1(~vec3<u32>(abs(44974u), u_input.c, 1u), -firstLeadingBit(-31988i), select(select(!vec4<bool>(true, global3.x, global3.x, false), !vec4<bool>(false, true, false, global3.x), true), vec4<bool>(all(vec4<bool>(global3.x, true, false, false)), !func_3(Struct_1(vec3<u32>(u_input.b, 4294967295u, 29862u), 2147483647i, vec4<bool>(true, false, false, false)), vec4<bool>(global3.x, true, global3.x, true), global3.x, 1u).x, 19486u < u_input.c, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(max(var_0.x, -311f))), select(!(!vec4<bool>(global3.x, true, true, global3.x)), vec4<bool>(select(false, global3.x, global3.x), true, true, all(vec3<bool>(true, global3.x, global3.x))), global3.x)));
    var var_3 = Struct_1(var_2.a, 2147483647i, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_mult_i32(var_2.b | 2028i, min(var_2.b, var_3.b)), -(i32(-1i) * -2147483647i), abs(var_2.b), _wgslsmith_div_i32(_wgslsmith_mult_i32(-46668i, 3612i), 72884i)));
}

