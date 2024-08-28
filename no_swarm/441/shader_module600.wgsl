struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_2, 24>;

var<private> global2: u32;

var<private> global3: Struct_3;

var<private> global4: array<vec3<u32>, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> vec2<f32> {
    global4 = array<vec3<u32>, 24>();
    let var_0 = countOneBits(~(~((i32(-1i) * -37243i) >> (global3.b % 32u))));
    global2 = ~(~u_input.a);
    var var_1 = global3.d;
    global4 = array<vec3<u32>, 24>();
    return vec2<f32>(709f, -259f);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(arg_3, 4u)];
    let var_1 = arg_0;
    let var_2 = -vec3<i32>(arg_1, arg_1, _wgslsmith_mod_i32(~var_1.c, min(arg_1, -21267i))) >> (vec3<u32>(~(~var_1.b), global3.b, 1u) % vec3<u32>(32u));
    var var_3 = vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(reverseBits(0i), arg_0.c), _wgslsmith_add_i32(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-17279i, -2147483647i, 1i), var_2)), var_1.c), var_2));
    var var_4 = arg_0;
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 24u)];
    global0 = array<Struct_1, 4>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(global3.c, Struct_3(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.b), 4u)], var_0.c.x, global3.c & 2147483647i, global3.d), _wgslsmith_f_op_f32(ceil(arg_0.x)))).x), -436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global3.d)), var_0.d)) - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-global3.d)))), _wgslsmith_f_op_f32(min(var_0.d, arg_0.x)));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(select(var_0.b, 39452u ^ (~75472u << (_wgslsmith_div_u32(var_0.b, u_input.a) % 32u)), true), 4u)], firstTrailingBit(global3.b), var_0.a, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e.x - 480f))))))));
    return var_2;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_1, 4>();
    var var_0 = firstTrailingBit(global4[_wgslsmith_index_u32(1u, 24u)] | countOneBits(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 43375u, 48315u), firstTrailingBit(u_input.a), firstLeadingBit(u_input.a))));
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(27469u >> (arg_0.b % 32u), 24u)], global4[_wgslsmith_index_u32(global3.b, 24u)] | global4[_wgslsmith_index_u32(108847u, 24u)]) << (53624u % 32u)) > _wgslsmith_add_u32(max(~arg_0.b, var_0.x), u_input.a);
    global0 = array<Struct_1, 4>();
    var var_2 = -2147483647i;
    return arg_0;
}

fn func_1() -> bool {
    global1 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global3.d))))))));
    global3 = func_5(func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-540f, 1733f)), _wgslsmith_f_op_vec2_f32(func_2(1i, Struct_3(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a, global3.c, global3.d), -124f)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1000f) * vec2<f32>(global3.d, 1182f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(147f, -253f))))), vec2<bool>(true, func_3(Struct_3(Struct_1(false), 0u, global3.c, var_0), countOneBits(-23577i), vec2<u32>(334u, global3.b), 1u))));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(645f)), _wgslsmith_f_op_f32(max(-169f, 1146f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-173f, 544f), vec2<f32>(global3.d, -1174f)))))), !vec2<bool>(true, true | global3.a.a));
    global3 = func_5(Struct_3(func_4(vec2<f32>(func_5(Struct_3(global3.a, 66254u, var_1.c, 1000f)).d, -1442f), vec2<bool>(true, true)).a, ~min(var_1.b, 0u) >> (~u_input.a % 32u), _wgslsmith_mult_i32(global3.c, global3.c), func_5(Struct_3(func_5(Struct_3(Struct_1(true), 1u, var_1.c, global3.d)).a, 0u | global3.b, 1i, _wgslsmith_f_op_f32(abs(global3.d)))).d));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global3.d), global3.d, global3.d))))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d - 2062f)), _wgslsmith_f_op_f32(f32(-1f) * -203f)))));
    var var_1 = var_0.yx;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(0u, 1u), vec2<u32>(9955u, global3.b), true), ~firstTrailingBit(vec2<u32>(32361u, 1u)) & vec2<u32>(u_input.a, ~global3.b), select(vec2<u32>(global3.b, global3.b ^ u_input.a), countOneBits(vec2<u32>(u_input.a, 50773u) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), func_1()));
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(7096u, 4u)], ~(~max(_wgslsmith_mult_u32(1u, u_input.a), u_input.a | 1u)), global3.c, -504f);
    let var_4 = vec3<bool>(global3.a.a, true, reverseBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-23848i, var_3.c, 1i), vec3<i32>(var_3.c, var_3.c, 1i), global3.a.a), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.c, 21978i, global3.c), vec3<i32>(var_3.c, var_3.c, -2147483647i)))) <= 2147483647i);
    let var_5 = func_4(var_0.yx, var_4.zz);
    global1 = array<Struct_2, 24>();
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(global3.b, 24u)], vec3<u32>(~(~(~4294967295u)), var_3.b, 15126u));
}

