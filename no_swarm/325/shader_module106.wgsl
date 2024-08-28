struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<i32>) -> u32 {
    global0 = array<Struct_1, 21>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - _wgslsmith_f_op_f32(-arg_0)), !select(arg_2.d.a, true, arg_2.c.a))), arg_0)), _wgslsmith_f_op_f32(round(888f)), _wgslsmith_f_op_f32(f32(-1f) * -690f));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(-1444f, arg_0, any(!vec3<bool>(arg_2.b.a, true, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1166f, _wgslsmith_f_op_f32(-arg_0), false)), var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0, arg_0))))))));
    return u_input.d.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(!select(vec2<bool>(u_input.d.x > u_input.d.x, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), ~(~u_input.d.x >> (_wgslsmith_div_u32(u_input.d.x, u_input.d.x) % 32u)) <= ~u_input.d.x, Struct_1(true), vec2<i32>(_wgslsmith_add_i32(~(~u_input.b.x), -33593i), u_input.c));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.d.x, 21u)];
    let var_2 = Struct_3(!vec2<bool>(var_0.c.a, true), var_0.c, global0[_wgslsmith_index_u32(u_input.d.x, 21u)], Struct_1(any(vec4<bool>(any(vec2<bool>(var_0.a.x, true)), all(vec3<bool>(var_0.c.a, var_1.a, false)), true, var_0.d.x > u_input.b.x))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.d.x << (func_3(-453f, u_input.d, Struct_3(var_0.a, Struct_1(true), Struct_1(var_1.a), Struct_1(var_0.a.x), var_0.c), u_input.b) % 32u)), ~(~(27674u << (u_input.d.x % 32u)))), 21u)]);
    global0 = array<Struct_1, 21>();
    let var_3 = ~(~(~(-vec2<i32>(42642i, u_input.b.x))) & -u_input.b);
    return 1u;
}

fn func_1() -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d.x | ~(~(~u_input.d.x)), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x & ~u_input.d.x)), 21u)];
    var var_1 = u_input.d.zx;
    var var_2 = u_input.b.x & -(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, -7910i) << (u_input.d % vec3<u32>(32u)), vec3<i32>(u_input.a, -670i, u_input.b.x)));
    var_1 = vec2<u32>(~(func_2() ^ _wgslsmith_div_u32(1u, var_1.x)), _wgslsmith_mult_u32(firstTrailingBit(~u_input.d.x), 8868u));
    let var_3 = 1f;
    return vec2<u32>(u_input.d.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    let var_0 = u_input.b.x;
    let var_1 = Struct_2(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), !(!any(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(1u, 21u)], u_input.b);
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(func_1()), abs(u_input.d.xx)), 0u, ~(firstTrailingBit(1u) << ((_wgslsmith_mod_u32(u_input.d.x, 4294967295u) & ~u_input.d.x) % 32u)), select(46049u, u_input.d.x >> (~_wgslsmith_div_u32(43981u, u_input.d.x) % 32u), false));
    let var_3 = -(~vec2<i32>(-2147483647i, max(_wgslsmith_add_i32(var_1.d.x, -1i), i32(-1i) * -10472i)));
    let var_4 = -vec3<i32>(2147483647i, var_1.d.x | abs(-22276i), -34308i);
    let var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(436f + 481f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(167f)), -1155f))) - _wgslsmith_f_op_f32(f32(-1f) * -348f)), ~func_1(), abs(abs(vec3<i32>(-20486i, var_5, _wgslsmith_clamp_i32(-2147483647i, u_input.c, 2753i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) * -2399f), _wgslsmith_f_op_f32(-262f * _wgslsmith_f_op_f32(abs(1000f)))), min(vec3<i32>(-71729i ^ var_4.x, var_4.x, _wgslsmith_sub_i32(1i, 43634i)), reverseBits(firstTrailingBit(vec3<i32>(-24862i, var_0, var_5)))) >> (vec3<u32>(0u & (0u >> (var_2.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(17401u, 1u, u_input.d.x)), _wgslsmith_add_u32(4294967295u, func_3(-1835f, var_2.xyw, Struct_3(vec2<bool>(false, var_1.b), var_1.c, var_1.c, Struct_1(true), Struct_1(var_1.c.a)), var_4.yy))) % vec3<u32>(32u)));
}

