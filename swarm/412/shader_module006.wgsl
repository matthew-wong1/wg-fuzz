struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(1u, 0u));

var<private> global1: array<Struct_1, 26>;

var<private> global2: f32;

var<private> global3: vec4<f32>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(global3.ww, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-206f))))), global3.x)));
    var var_1 = global1[_wgslsmith_index_u32(~(~(global4.b ^ global4.b)), 26u)];
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x + global4.c.x), var_1.c.x, global4.c.x, 919f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -3116f))), 207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)), _wgslsmith_div_f32(895f, -1079f))));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-670f, -2943f))) - _wgslsmith_f_op_f32(700f + _wgslsmith_f_op_f32(max(global4.c.x, -753f))))));
    var_1 = global1[_wgslsmith_index_u32(10621u, 26u)];
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(38014u, var_1.b), 26u)];
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1i) * -1i, u_input.c), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, global4.a.x, 0i), ~u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + 1306f), global3.x))), _wgslsmith_f_op_vec2_f32(round(global3.xw)), vec2<bool>(arg_1.x, !select(all(vec3<bool>(arg_0.c, arg_0.c, true)), arg_0.c, true))));
    let var_2 = u_input.b;
    var var_3 = Struct_4(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x)))), -765f), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.b, 0u), arg_2) | arg_0.a.a.x, 26u)], select(32904u & _wgslsmith_mult_u32(~arg_0.a.a.x, arg_2 | 1u), 1u, true));
    let var_4 = var_3.c.b;
    return ~reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, global0.a.x, global4.b, 1u) & vec4<u32>(1u, arg_2, 82910u, 13806u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(17162u, arg_2, 4294967295u, 10048u))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(func_3(Struct_3(Struct_2(~vec2<u32>(global4.b, 43227u)), 0i, true), vec2<bool>(true, true), global0.a.x >> (1u % 32u)), select(34000u, global4.b, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec2<bool>(true, true))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), false), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(-1000f * -802f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.c.x, 747f))))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_div_f32(834f, -818f))));
    let var_2 = 1u;
    let var_3 = ~vec3<u32>(_wgslsmith_sub_u32(~(~49717u), _wgslsmith_sub_u32(global4.b, 1699u) >> (func_3(Struct_3(Struct_2(vec2<u32>(global4.b, global0.a.x)), u_input.b.x, true), vec2<bool>(var_1.x, var_1.x), var_0) % 32u)), 1u, countOneBits(0u));
    var var_4 = var_2;
    return Struct_2(global0.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_1;
    global1 = array<Struct_1, 26>();
    let var_1 = Struct_5(~(~1u), func_1(), func_2(func_1(), u_input.b.x), func_1());
    global3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f - -1381f) * global4.c.x), -543f, -444f, -808f) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) * _wgslsmith_f_op_f32(1100f - -678f)), _wgslsmith_f_op_f32(arg_2 + -1115f), _wgslsmith_f_op_f32(-1f), -850f))));
    var var_2 = var_1.d.a.x;
    return func_2(func_1(), reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_1.b.a.x), vec3<i32>(var_1.b.a.x, 45299i, arg_0.x)), -3886i, arg_0.x)) & 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~global0.a);
    var var_1 = func_4(reverseBits(reverseBits(vec4<i32>(-14347i, 0i, ~global4.a.x, countOneBits(-1i)))), func_2(func_1(), ~(-8718i | global4.a.x) >> (0u % 32u)), _wgslsmith_f_op_f32(select(global3.x, global3.x, false && !all(vec2<bool>(false, true)))), vec2<bool>(true, false));
    var var_2 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, firstLeadingBit(var_0.a.x), abs(var_1.a.x), 4294967295u), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(32695u, var_0.a.x), ~0u), ~_wgslsmith_mod_u32(10544u, 24876u), 0u, func_1().b)), 26u)], firstTrailingBit(_wgslsmith_sub_i32(2147483647i, global4.a.x)));
    let var_3 = global1[_wgslsmith_index_u32(select(76883u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a.x, 22132u, 0u), 0u), any(select(vec4<bool>(any(vec2<bool>(false, false)), true, all(vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true)))), 26u)];
    var var_4 = Struct_3(Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(func_4(vec4<i32>(global4.a.x, 54965i, global4.a.x, 0i), Struct_2(global0.a), 1000f, vec2<bool>(false, true)).a.x, ~76020u), var_1.a)), -1i, false);
    var_1 = var_4.a;
    var var_5 = Struct_4(Struct_3(func_2(global1[_wgslsmith_index_u32(min(1u, select(4294967295u, 25500u, false)), 26u)], 0i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(31619i, var_3.a.x, -2147483647i), _wgslsmith_mod_vec3_i32(var_3.a, vec3<i32>(u_input.a.x, u_input.c, -30501i))), var_3.a | vec3<i32>(global4.a.x, global4.a.x, var_3.a.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x * global3.x)), Struct_1(u_input.d.wxy, 37346u, vec3<f32>(_wgslsmith_f_op_f32(select(527f, var_3.c.x, var_4.c != var_4.c)), var_3.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-750f * -357f), _wgslsmith_f_op_f32(global3.x - -1305f))))), 0u);
    var_1 = func_4(-select(~u_input.d, vec4<i32>(var_5.a.b, var_4.b, 32513i, 2147483647i) >> (~vec4<u32>(var_1.a.x, 0u, var_4.a.a.x, 4294967295u) % vec4<u32>(32u)), !(!var_4.c)), var_4.a, _wgslsmith_f_op_f32(f32(-1f) * -1597f), select(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(var_5.a.c, var_5.a.c), true), var_5.a.c), vec2<bool>(var_3.a.x != var_3.a.x, (var_5.a.c & var_4.c) && (var_4.c & var_4.c)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(11632u, 10566u), vec2<u32>(var_2.a.x, 9606u), vec2<bool>(var_4.c, true))), var_2.a), abs(0u), ~var_2.a.x, 1u), var_3.c.x);
}

