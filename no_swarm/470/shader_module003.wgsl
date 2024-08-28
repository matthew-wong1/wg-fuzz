struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, false), Struct_1(false, true), Struct_1(true, true), Struct_1(true, false), Struct_1(false, true), Struct_1(true, false), Struct_1(true, false), Struct_1(false, false), Struct_1(false, false), Struct_1(false, true), Struct_1(true, true), Struct_1(true, false), Struct_1(true, true), Struct_1(true, true), Struct_1(false, true), Struct_1(true, false), Struct_1(false, false), Struct_1(true, true), Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), Struct_1(true, false), Struct_1(true, false), Struct_1(true, false), Struct_1(true, true), Struct_1(true, true));

var<private> global3: array<bool, 17> = array<bool, 17>(true, false, false, false, true, true, true, false, true, true, true, false, false, true, true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    global1 = ~(-(~u_input.b.x));
    global0 = array<Struct_1, 28>();
    global3 = array<bool, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(779f, -411f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-387f)), _wgslsmith_f_op_f32(-657f * 1000f))), ~4294967295u < u_input.d.x))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(-2469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - _wgslsmith_f_op_f32(trunc(558f)))))));
    var var_1 = false;
    return ~vec2<u32>(firstTrailingBit(~(~u_input.d.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 47039u, 48639u, 0u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 50834u), ~38147u, ~u_input.d.x, ~4294967295u)));
}

fn func_2() -> Struct_1 {
    let var_0 = -(select(~(-8663i), u_input.c.x, global3[_wgslsmith_index_u32(19135u, 17u)]) >> (77749u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x) >> (func_3() % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.d, u_input.d, u_input.d), ~max(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x)))) % 32u);
    var var_1 = -(u_input.c.yy | max(min(u_input.a.yy, vec2<i32>(10228i, u_input.c.x)), -u_input.c.xz)) & u_input.c.zx;
    global0 = array<Struct_1, 28>();
    global2 = array<Struct_1, 26>();
    let var_2 = ~u_input.d.x;
    return Struct_1(global3[_wgslsmith_index_u32(4294967295u, 17u)], false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    let var_0 = func_2();
    let var_1 = var_0;
    global0 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-106f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2511f, 2376f)) + -841f), 1025f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-934f, -326f, -1848f, 361f))))));
    global3 = array<bool, 17>();
    return 28361u;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_4(func_2(), ~(~(~vec3<u32>(4294967295u, 40800u, u_input.d.x))) | firstTrailingBit(~(~vec3<u32>(u_input.d.x, u_input.d.x, 14619u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1174f * _wgslsmith_f_op_f32(-342f + arg_0.x)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2115f + 179f) - _wgslsmith_f_op_f32(f32(-1f) * -784f)), _wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f + -166f) - _wgslsmith_f_op_f32(step(513f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1088f))))))));
    let var_2 = Struct_1(min(1i, min(firstTrailingBit(u_input.c.x), reverseBits(u_input.a.x))) <= _wgslsmith_mult_i32(-1i, 1i), any(select(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(u_input.d.x, 17u)], true, false), vec4<bool>(true, true, true, true), !vec4<bool>(true, global3[_wgslsmith_index_u32(var_0, 17u)], true, global3[_wgslsmith_index_u32(u_input.d.x, 17u)]))) || global3[_wgslsmith_index_u32(~(~(~0u)), 17u)]);
    var var_3 = func_2();
    global0 = array<Struct_1, 28>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(111f, 1191f)), 1000f))), 1848f));
    global0 = array<Struct_1, 28>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(831f, _wgslsmith_f_op_f32(trunc(-539f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) + _wgslsmith_f_op_f32(step(155f, -486f))))))));
    let var_2 = false;
    let var_3 = 475f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec2<i32>(u_input.b.x, u_input.b.x)) << (select(vec2<u32>(u_input.d.x, ~u_input.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), max(vec2<u32>(24487u, 5338u), u_input.d)), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(true, var_2), true)) % vec2<u32>(32u)), u_input.c.x);
}

