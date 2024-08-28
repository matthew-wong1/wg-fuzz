struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_3, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_3(vec2<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), true && any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1573f * 1675f), _wgslsmith_f_op_f32(trunc(-707f)), true))))), -1173f, !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), u_input.b.x > 2147483647i)), Struct_1(abs(vec2<u32>(52896u, arg_0)) & max(vec2<u32>(55867u, u_input.a) | vec2<u32>(arg_0, 4294967295u), vec2<u32>(30637u, 23731u)), -115f, u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1608f))));
    let var_2 = 0u;
    global0 = array<vec4<bool>, 2>();
    let var_3 = var_0.e;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f))));
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_3, 21>();
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(select(33434u, u_input.a, true)), 21u)];
    global1 = array<Struct_3, 21>();
    var var_1 = Struct_4(var_0.a.x, Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(var_0.e.a.x, var_0.e.a.x)) | vec2<u32>(_wgslsmith_mult_u32(29017u, 29065u), _wgslsmith_sub_u32(1u, 0u)), var_0.e.b, var_0.e.c), var_0.e, countOneBits(u_input.b.x << (4294967295u % 32u)), -_wgslsmith_add_i32(~(-1i), u_input.b.x));
    return Struct_4(false, Struct_1(var_0.e.a & ~vec2<u32>(23908u, var_0.e.a.x), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(min(var_1.b.b, _wgslsmith_f_op_f32(func_3(u_input.a))))), u_input.b.x & (var_1.c.c >> (firstTrailingBit(0u) % 32u))), Struct_1(vec2<u32>(~(~u_input.a), 27348u), var_1.c.b, -2147483647i), -20994i, var_0.e.c);
}

fn func_1() -> StorageBuffer {
    let var_0 = !select(select(vec2<bool>(false, u_input.a != u_input.a), vec2<bool>(true, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), select(vec2<bool>(select(false, true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), 0u >= u_input.a);
    let var_1 = ~vec3<i32>(2147483647i, _wgslsmith_clamp_i32(~(~u_input.b.x), 0i, ~u_input.b.x), max(u_input.b.x, u_input.b.x));
    global1 = array<Struct_3, 21>();
    var var_2 = func_2();
    let var_3 = u_input.a;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(min(309f, var_2.c.b)), 100f, var_2.b.b)))), ~(-2147483647i), ~vec2<i32>(-_wgslsmith_mult_i32(var_1.x, -45376i), ~_wgslsmith_sub_i32(var_2.b.c, var_1.x)), 1i, firstLeadingBit(~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a);
    global0 = array<vec4<bool>, 2>();
    global1 = array<Struct_3, 21>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(653f, 581f)) + _wgslsmith_f_op_f32(select(-329f, -168f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f + 1981f) * 422f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1036f, _wgslsmith_f_op_f32(f32(-1f) * -126f)) - _wgslsmith_f_op_f32(1094f - -929f))))));
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    let var_2 = 627i;
    global1 = array<Struct_3, 21>();
    var var_3 = firstLeadingBit(4294967295u);
    let x = u_input.a;
    s_output = func_1();
}

