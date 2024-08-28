struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), -_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -15048i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -52992i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -31583i, u_input.a))));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.c, 1128u), u_input.d.x) | 3152u;
    let var_2 = arg_3;
    global0 = u_input.a >> (var_1 % 32u);
    let var_3 = min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -1i, u_input.a), _wgslsmith_mod_vec3_i32(var_0, var_0), var_0), var_0);
    return _wgslsmith_f_op_f32(f32(-1f) * -1819f);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1011f, arg_2.a.d.x)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, 229f))))), arg_2.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(623f)), _wgslsmith_f_op_f32(step(530f, arg_0)), _wgslsmith_f_op_f32(502f * arg_2.a.e), 739f), arg_2.a.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(arg_2.a.d)), _wgslsmith_f_op_vec4_f32(exp2(arg_2.a.d)), vec4<bool>(true, true, true, true))))), arg_0);
    global2 = Struct_3(vec3<bool>(true, true, global2.a.x));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), var_0.e)), var_0.e))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, arg_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.e, 566f)), _wgslsmith_f_op_f32(round(189f))) * arg_2.a.d.wy)));
    global0 = abs(arg_2.a.a);
    return vec4<bool>(!global2.a.x, !global2.a.x, !global2.a.x && true, 1u >= u_input.d.x);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(ceil(1f));
    let var_1 = vec2<i32>(12129i, u_input.a);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<f32>(var_0, var_0), true, vec4<f32>(var_0, var_0, -390f, var_0), true)))))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(round(-1272f)))))) * _wgslsmith_f_op_f32(sign(1895f)));
    var var_4 = var_1.x;
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * _wgslsmith_f_op_f32(-1703f - var_0)), _wgslsmith_f_op_f32(min(408f, _wgslsmith_f_op_f32(floor(-475f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -281f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, var_2), vec2<f32>(-155f, var_0))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(737f, -453f), vec2<f32>(1323f, 158f), vec2<bool>(true, true)))))), !select(!(!vec4<bool>(global2.a.x, false, true, global2.a.x)), select(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), func_3(var_2, vec3<u32>(1u, 6567u, 32481u), Struct_2(Struct_1(var_1.x, vec2<f32>(-925f, var_0), vec4<f32>(var_0, var_2, var_2, var_2), vec4<f32>(-1255f, var_0, 1601f, var_2), -265f)), 1i), global2.a.x), vec4<bool>(global2.a.x, any(vec4<bool>(global2.a.x, false, global2.a.x, true)), any(global2.a.zz), any(global1[_wgslsmith_index_u32(19959u, 29u)]))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec4<u32> {
    global1 = array<vec3<bool>, 29>();
    let var_0 = Struct_3(func_3(1044f, abs(_wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, 4294967295u, u_input.d.x)), abs(vec3<u32>(u_input.c, 0u, 675u)))), Struct_2(Struct_1(i32(-1i) * -18668i, arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 858f, arg_0.a.x) + vec4<f32>(-2359f, -460f, -1170f, -713f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -713f, 1050f, -775f)), _wgslsmith_f_op_f32(-arg_0.a.x))), 1i).wyx);
    var var_1 = u_input.a;
    let var_2 = 1u;
    var var_3 = vec3<i32>(u_input.a, u_input.a ^ ~(-max(u_input.a, -1i)), u_input.a);
    return firstTrailingBit(~vec4<u32>(u_input.c, var_2, var_2, _wgslsmith_div_u32(u_input.c, 20716u))) | ~vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d)), u_input.b, u_input.c, ~_wgslsmith_div_u32(4294967295u, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-573f))), _wgslsmith_f_op_f32(sign(-393f)), _wgslsmith_f_op_f32(-963f * _wgslsmith_f_op_f32(110f + -1298f)), _wgslsmith_f_op_f32(f32(-1f) * -1518f))));
    var var_1 = ~func_4(func_1(), Struct_3(!global1[_wgslsmith_index_u32(abs(952u), 29u)]));
    var var_2 = vec4<bool>(func_1().b.x, true & ((u_input.a >> (4294967295u % 32u)) <= _wgslsmith_clamp_i32(-1i ^ u_input.a, u_input.a | u_input.a, 2147483647i)), true, u_input.a >= _wgslsmith_sub_i32(u_input.a, -1i));
    var var_3 = Struct_3(global2.a);
    var var_4 = u_input.a;
    let var_5 = 1u;
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~627i << (var_1.x % 32u));
}

