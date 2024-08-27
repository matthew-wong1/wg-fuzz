struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: vec3<f32> = vec3<f32>(-360f, -175f, 602f);

var<private> global2: f32 = -751f;

var<private> global3: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 2>();
    var var_0 = Struct_4(~vec2<u32>(25112u | max(arg_0.b.x, 1u), arg_0.b.x));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + -735f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(863f, 117f, arg_0.d.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_0.d.a.x, 190f)), all(vec3<bool>(false, true, true))))))));
    let var_1 = Struct_4(~(~arg_0.b.yz));
    var var_2 = any(global3[_wgslsmith_index_u32(1u, 6u)]);
    return arg_0.d;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_2(global0[_wgslsmith_index_u32(~(~countOneBits(~0u)), 2u)]);
    let var_1 = select(17296u, ~_wgslsmith_mult_u32(1u, ~42232u), _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(var_0.a.x + global1.x));
    let var_2 = !vec3<bool>(true, true, select((2683i | u_input.c.x) > u_input.d.x, true, !(var_1 > var_1)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1049f);
    var var_4 = Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1, var_1), vec2<u32>(var_1 << (4294967295u % 32u), ~0u)), _wgslsmith_mod_u32(0u, var_1)));
    return ~(~var_4.a.x);
}

fn func_3() -> f32 {
    global3 = array<vec2<bool>, 6>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -650f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(885f)) * global1.x))));
    global0 = array<Struct_2, 2>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(19001i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.c.x, -61860i)), u_input.b), -u_input.b.x, 1i), u_input.c, -vec4<i32>(u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 15772i, 1i), u_input.d.zyx), _wgslsmith_sub_i32(_wgslsmith_mod_i32(30394i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.b.x)), 1i));
    global2 = _wgslsmith_f_op_f32(trunc(func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(758f * -413f)), reverseBits(vec4<u32>(4294967295u, 113195u, 31578u, 42726u)), -1i, func_2(global0[_wgslsmith_index_u32(func_1(Struct_1(global1.yz)), 2u)]))).a.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global3[_wgslsmith_index_u32(0u, 6u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(470f)), 1198f));
    var var_2 = global3[_wgslsmith_index_u32(~func_1(Struct_1(vec2<f32>(global1.x, 1181f))) ^ ~1u, 6u)];
    global0 = array<Struct_2, 2>();
    global2 = _wgslsmith_f_op_f32(sign(global1.x));
    let var_3 = !(-1073f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-674f)), _wgslsmith_f_op_f32(var_1.x + 1572f))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_5 = 4294967295u;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1594f))), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-679f, var_1.x, global1.x) * vec3<f32>(234f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(822f, global1.x, var_1.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(659f)) * _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(select(1081f, 858f, true))), 894f)), ~(~abs(u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-900f - var_1.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, _wgslsmith_f_op_f32(-var_1.x)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
}

