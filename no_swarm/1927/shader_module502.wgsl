struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<f32>, 6>;

var<private> global2: array<u32, 4> = array<u32, 4>(27346u, 4294967295u, 4294967295u, 0u);

var<private> global3: i32 = -1i;

var<private> global4: vec2<i32> = vec2<i32>(0i, 40503i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-923f))), -329f));
    var var_1 = true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1334f)), _wgslsmith_f_op_f32(round(-1078f))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1680f, -1898f)) - -226f)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2022f, 505f, 1047f, 199f), vec4<f32>(-2014f, -1958f, -490f, -777f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, 144f, 1078f, -536f) * vec4<f32>(297f, -326f, -224f, 801f))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(2840f)))), 1002f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(ceil(-1611f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1993f, -1554f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(433f - 761f), -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(357f - -167f), _wgslsmith_div_f32(-1893f, 489f), true)))));
    var var_3 = ~1062u;
    global2 = array<u32, 4>();
    return u_input.c;
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_mult_u32(12304u, 47684u);
    let var_0 = vec3<i32>(_wgslsmith_div_i32(~(-15027i), global4.x), global4.x, -31350i);
    global3 = ~(i32(-1i) * -2147483647i);
    global3 = var_0.x << (~(~1u | u_input.a) % 32u);
    global3 = ~(~(~(-func_3())));
    return Struct_4(Struct_3(select(true, abs(1i) >= global4.x, false), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, 0u), u_input.d.ywx), (~116457u | countOneBits(u_input.d.x)) < u_input.d.x, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 19167u), vec2<u32>(u_input.a, u_input.a)), vec4<bool>(true, true, true, true)), Struct_1(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)]), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))));
}

fn func_1() -> Struct_4 {
    let var_0 = -102f;
    var var_1 = func_2();
    var var_2 = func_2();
    global2 = array<u32, 4>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(var_0 * var_0), var_0));
    return Struct_4(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)) + 461f));
}

