struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<i32, 19> = array<i32, 19>(2147483647i, -1i, -1i, 2147483647i, 2147483647i, -1i, -40442i, 1i, 68421i, -1i, 11154i, 0i, 21092i, 1i, -1i, -1i, -35666i, -50128i, -10526i);

var<private> global2: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global3: f32 = 962f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 13>();
    let var_0 = arg_1.b.x;
    global3 = arg_1.a.x;
    global0 = array<Struct_2, 13>();
    var var_1 = vec2<u32>(u_input.a.x, select(_wgslsmith_dot_vec3_u32(min(countOneBits(arg_1.b.yxz), ~vec3<u32>(arg_1.e, var_0, 1u)), firstTrailingBit(vec3<u32>(var_0, var_0, 16295u))), arg_1.e, any(vec2<bool>(arg_1.c.b.x, false && arg_1.c.d))));
    return arg_1.e;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    global2 = array<vec2<bool>, 2>();
    var var_0 = Struct_1(!select(vec2<bool>(!arg_3, arg_3), vec2<bool>(true, arg_3), arg_3), !(!(!(!vec3<bool>(arg_3, true, arg_3)))), u_input.a.x << (firstTrailingBit(_wgslsmith_sub_u32(func_3(45610i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.b), _wgslsmith_mult_u32(u_input.a.x, 0u))) % 32u), arg_3);
    let var_1 = _wgslsmith_f_op_f32(step(arg_2.x, -937f));
    var var_2 = true;
    var var_3 = 744f;
    return Struct_1(!global2[_wgslsmith_index_u32(0u, 2u)], !var_0.b, select(_wgslsmith_div_u32(~28738u, u_input.a.x), u_input.a.x, global1[_wgslsmith_index_u32(var_0.c | var_0.c, 19u)] == (arg_0.x >> (u_input.a.x % 32u))) ^ ~_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 4294967295u), !(!var_0.a.x));
}

fn func_1() -> f32 {
    global1 = array<i32, 19>();
    global0 = array<Struct_2, 13>();
    let var_0 = func_2(reverseBits(u_input.c.zx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(526f + -478f), -974f, _wgslsmith_f_op_f32(step(-232f, -574f)), _wgslsmith_f_op_f32(1243f - -537f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1385f, -1545f, 572f)))) * vec4<f32>(-1131f, _wgslsmith_f_op_f32(-1785f * 2589f), _wgslsmith_f_op_f32(round(121f)), 1095f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2091f, -386f), vec2<f32>(988f, 2141f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(415f, 620f) + vec2<f32>(643f, 1184f))))), true || any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)));
    global2 = array<vec2<bool>, 2>();
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1292f, -766f)) * -162f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1433f - 1000f)))), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<i32, 19>();
    var_0 = false;
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    global2 = array<vec2<bool>, 2>();
    var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(~u_input.a.x | 0u, 2u)];
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~16669u, 19u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(178f * 1374f)))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(global1[_wgslsmith_index_u32(0u, 19u)], 82211i, u_input.b.x, u_input.c.x)), firstTrailingBit(firstTrailingBit(vec4<i32>(-16615i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -1i, global1[_wgslsmith_index_u32(1u, 19u)])))), 1u << (u_input.a.x % 32u), ~_wgslsmith_add_u32(0u, u_input.a.x));
}

