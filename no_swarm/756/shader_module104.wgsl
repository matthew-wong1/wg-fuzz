struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 19> = array<i32, 19>(221i, -55208i, -1i, 1i, -1i, -1i, -1i, 0i, -66853i, -12284i, 2147483647i, 10832i, 63960i, -12456i, -4590i, -42853i, 10657i, -69947i, 0i);

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<i32, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = !(any(vec3<bool>(true, true, true)) == true);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(abs(2998f))) + _wgslsmith_f_op_f32(sign(273f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * 1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(809f + arg_0.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(arg_0.b - -778f))))));
    let var_1 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(true, true, true))), vec2<bool>(true, false), true);
    var var_2 = select(vec2<bool>(!(!all(vec3<bool>(false, var_1.x, true))), true), var_1, all(select(!(!var_1), vec2<bool>(false && var_1.x, all(var_1)), false)));
    global2 = array<Struct_2, 10>();
    return var_1.x;
}

fn func_2(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = select(reverseBits(firstLeadingBit(vec3<u32>(0u, u_input.a, 11016u)) & (~vec3<u32>(66884u, 87548u, 17644u) | vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.b, 34117u, u_input.b), vec3<u32>(u_input.b, u_input.a, 4294967295u)), vec3<u32>(0u, 47141u, u_input.b) ^ vec3<u32>(66273u, u_input.b, 1u))), select(vec3<u32>(u_input.a ^ 16934u, u_input.a, ~46851u), abs(vec3<u32>(0u, 0u, 57132u)), true), vec3<u32>(~1u, u_input.a, ~1u)), select(false, false | select(true, true, false), true) && func_3(Struct_1(~vec2<u32>(u_input.a, 0u), _wgslsmith_f_op_f32(sign(-512f)), global1[_wgslsmith_index_u32(~u_input.b, 19u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(876f, 327f, -1899f)), global4[_wgslsmith_index_u32(6458u, 2u)])));
    var var_1 = Struct_1(reverseBits(vec2<u32>(~u_input.a, 48694u)) << (vec2<u32>((u_input.a & u_input.b) | ~4294967295u, ~_wgslsmith_mult_u32(4294967295u, var_0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) - _wgslsmith_f_op_f32(f32(-1f) * -1154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-877f, -1322f) - _wgslsmith_f_op_f32(floor(920f)))))), arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(abs(627f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1570f)) - _wgslsmith_f_op_f32(f32(-1f) * -343f))), 504f), countOneBits(~(-44010i | firstTrailingBit(17022i))));
    var_1 = global3[_wgslsmith_index_u32(~44501u, 17u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-938f, _wgslsmith_f_op_f32(-159f - 1170f), _wgslsmith_f_op_f32(abs(348f))) - var_1.d))));
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-471f + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(583f + -612f) * var_1.d.x), _wgslsmith_div_f32(-1848f, _wgslsmith_f_op_f32(floor(var_1.d.x))), 1118f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 442f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_1.b)), var_1.b)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> bool {
    let var_0 = !arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(-1i >> ((u_input.a | 13989u) % 32u), i32(-1i) * -21921i))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -905f), 1f, _wgslsmith_f_op_f32(1033f + -311f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-598f - -477f), _wgslsmith_f_op_f32(sign(2475f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f * -120f)))));
    global0 = _wgslsmith_div_f32(var_1.x, 1233f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1146f * var_1.x));
    let var_2 = Struct_1(~vec2<u32>(~(~u_input.b), _wgslsmith_sub_u32(u_input.b, ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2097f)) - _wgslsmith_f_op_f32(sign(290f))), i32(-1i) * -u_input.d.x, vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(757f, 186f)), _wgslsmith_div_f32(var_1.x, 1107f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, 577f)))), -457f), -(i32(-1i) * -u_input.c));
    var var_3 = var_2;
    return func_3(Struct_1(vec2<u32>(max(u_input.b, var_3.a.x), _wgslsmith_clamp_u32(var_3.a.x, var_3.a.x, var_2.a.x)) << (abs(vec2<u32>(var_2.a.x, u_input.b) ^ var_2.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(1f, var_3.d.x)), u_input.d.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1417f, 462f)) + var_2.d), var_3.d, false)), u_input.c));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = !vec3<bool>(false, _wgslsmith_f_op_f32(-arg_1) <= _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 - 2462f)), false & any(arg_0.yw));
    global2 = array<Struct_2, 10>();
    global3 = array<Struct_1, 17>();
    let var_1 = min(global1[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(~(~0u) << (0u % 32u), 2u)]);
    global4 = array<i32, 2>();
    return global2[_wgslsmith_index_u32(~u_input.a, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 2>();
    global4 = array<i32, 2>();
    var var_0 = func_4(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), select(vec4<bool>(func_1(false, false, true), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), any(vec4<bool>(false, false, true, false))), func_3(global3[_wgslsmith_index_u32(~43718u, 17u)])), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], 100i))).x * 1131f))))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b, 0u, _wgslsmith_mult_u32(0u, 3449u), _wgslsmith_sub_u32(4294967295u, u_input.a)), firstLeadingBit(~vec4<u32>(79852u, u_input.b, 32063u, u_input.b)), firstTrailingBit(~vec4<u32>(0u, 78987u, 90414u, 1u)))));
    let var_1 = func_4(!select(vec4<bool>(true && var_0.d.x, var_0.d.x && false, func_1(true, false, false), var_0.d.x || var_0.d.x), vec4<bool>(select(false, var_0.d.x, var_0.d.x), any(var_0.d), var_0.d.x, var_0.d.x), vec4<bool>(false, false, any(vec3<bool>(var_0.d.x, false, false)), var_0.d.x && false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, 822f), _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(floor(-500f))))), ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, var_0.b, 8063u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 26828u, u_input.a)))));
    global4 = array<i32, 2>();
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(2147483647i, select(select(0i, global1[_wgslsmith_index_u32(func_4(vec4<bool>(var_1.d.x, true, var_1.d.x, false), 439f, vec4<u32>(33170u, 16255u, u_input.b, var_1.b)).b, 19u)], true), ~u_input.c, func_1(all(vec4<bool>(false, var_1.d.x, var_0.d.x, var_2)), true, any(vec3<bool>(var_2, true, false)))), ~(-7922i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * -436f) * -811f), _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 19277u, var_0.b), vec3<u32>(var_1.b, 1421u, 38019u))), var_1.b << (4294967295u % 32u)));
}

