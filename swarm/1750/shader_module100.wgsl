struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<Struct_4, 28>;

var<private> global2: u32;

var<private> global3: array<i32, 13>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<f32>, 27>();
    let var_0 = countOneBits(_wgslsmith_add_i32(countOneBits(-u_input.a.x), abs(-u_input.a.x)));
    global2 = 0u;
    global1 = array<Struct_4, 28>();
    return global1[_wgslsmith_index_u32(4294967295u & (50695u >> (u_input.d % 32u)), 28u)];
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f) + 138f)));
    let var_1 = Struct_3(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32((vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.b.x, u_input.a.x, 2147483647i) >> (vec4<u32>(u_input.d, u_input.d, u_input.c.x, 48709u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], -1i, -2147483647i)), max(u_input.a | u_input.a, ~u_input.a)), abs(vec4<i32>(u_input.b.x, max(global3[_wgslsmith_index_u32(1u, 13u)], u_input.a.x), select(u_input.a.x, global3[_wgslsmith_index_u32(u_input.d, 13u)], false), global3[_wgslsmith_index_u32(~u_input.d, 13u)]))), _wgslsmith_f_op_f32(abs(-1279f)), func_2().d);
    let var_2 = 4294967295u;
    var var_3 = any(func_2().e);
    var var_4 = global3[_wgslsmith_index_u32(56744u, 13u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(~(-1i), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(arg_0.b, ~2147483647i), abs(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(67273u, 13u)], global3[_wgslsmith_index_u32(1u, 13u)])))), arg_0.b, _wgslsmith_mult_i32(-_wgslsmith_add_i32(7797i, i32(-1i) * -35899i), 12275i));
    let var_1 = func_2();
    var var_2 = var_1;
    var var_3 = Struct_3(u_input.a, _wgslsmith_f_op_f32(func_3()), Struct_1(arg_0.a, firstLeadingBit(1i)));
    var_2 = Struct_4(abs(~firstTrailingBit(abs(var_2.a))), -161f, 1344f, arg_0, arg_0.a.zy);
    return Struct_2(func_2().d);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    global2 = reverseBits(~(~(~u_input.c.x))) << (1u % 32u);
    global3 = array<i32, 13>();
    let var_1 = vec4<bool>(true, 219f < var_0.c, false, false & !(_wgslsmith_f_op_f32(floor(var_0.b)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = 1i;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, min(~2744i, 1i), u_input.b.x, 0i), firstLeadingBit(u_input.a), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-462f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1574f), -2323f)) - _wgslsmith_f_op_f32(-1f)), Struct_1(vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true), -_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.d, 13u)]), u_input.b)));
    global3 = array<i32, 13>();
    var var_1 = func_4(func_1(var_0.c));
    var_1 = func_1(func_4(Struct_2(Struct_1(vec3<bool>(var_0.c.a.x, false, var_0.c.a.x), 2147483647i | var_0.c.b)))).a;
    let var_2 = Struct_3(var_0.a, var_0.b, func_2().d);
    global3 = array<i32, 13>();
    var var_3 = ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, ~u_input.d << (u_input.d % 32u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, 205f, -1545f) - vec4<f32>(var_2.b, -941f, var_2.b, -312f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, 3073f, var_2.b, -137f), vec4<f32>(var_0.b, 1259f, 1000f, -481f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, -510f, var_0.b, -1152f), vec4<f32>(var_0.b, 1066f, 472f, -286f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, 2299f, 291f, var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~0u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1145f, -984f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, u_input.d, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(5911u, u_input.d, u_input.c.x, 27317u), vec4<u32>(5364u, u_input.c.x, u_input.d, 19485u))), 27u)], !(!var_2.c.a.x))))), _wgslsmith_f_op_f32(-var_0.b), var_0.a.zwy);
}

