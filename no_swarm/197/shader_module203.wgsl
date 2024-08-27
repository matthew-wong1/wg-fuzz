struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: bool;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-75954i, vec4<f32>(-622f, -1241f, -2584f, -716f)), Struct_1(i32(-2147483648), vec4<f32>(1504f, -409f, 1210f, -1000f)), Struct_1(23035i, vec4<f32>(1366f, -1228f, -475f, -720f)), Struct_1(1i, vec4<f32>(-891f, -285f, 1000f, 195f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global2 = any(select(select(select(vec4<bool>(global3.x, global3.x, false, global3.x), !vec4<bool>(false, global3.x, false, true), false), !(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), false), !(!select(vec4<bool>(false, true, global3.x, true), vec4<bool>(global3.x, true, false, global3.x), global3.x)), !select(select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), global3.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, false, false, global3.x)), select(vec4<bool>(true, true, true, global3.x), vec4<bool>(false, global3.x, false, true), false))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1341f, 387f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1016f)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(384f, _wgslsmith_f_op_f32(min(-1085f, _wgslsmith_f_op_f32(floor(1130f)))), 1068f, -912f))));
    var var_1 = Struct_2(-1986f, ~abs(_wgslsmith_add_vec2_i32(vec2<i32>(4105i, u_input.b.x), vec2<i32>(u_input.a.x, u_input.a.x))) ^ vec2<i32>(max(-2147483647i, u_input.a.x), abs(u_input.c >> (13991u % 32u))));
    let var_2 = global4[_wgslsmith_index_u32(u_input.e.x & ~u_input.e.x, 4u)];
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, abs(_wgslsmith_sub_i32(0i, var_2.a >> (u_input.e.x % 32u)))), _wgslsmith_sub_vec2_i32(u_input.a.ww, vec2<i32>(u_input.c, firstLeadingBit(-u_input.c))));
    return !global3.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = select(select(vec4<bool>(global3.x, !(!global3.x), global3.x, _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, 4294967295u) < (4294967295u << (u_input.e.x % 32u))), vec4<bool>(false, true, global3.x || true, true), select(!(!vec4<bool>(true, global3.x, false, true)), vec4<bool>(true, false, true, global3.x), select(!vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(global3.x, global3.x, true, global3.x), func_3()))), vec4<bool>(u_input.e.x > ~(~0u), all(!vec3<bool>(global3.x, global3.x, global3.x)), true, true), global3.x);
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    let var_1 = global4[_wgslsmith_index_u32(u_input.e.x, 4u)];
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1522f)))), var_1.b.x));
    return select(select(var_0.www, !vec3<bool>(true, true, var_0.x), select(vec3<bool>(true, true, true), var_0.yyw, ~var_1.a < 1i)), vec3<bool>(true, !global3.x, select(var_0.x, false, any(vec4<bool>(true, true, true, true)))), vec3<bool>(~(~43160u) == abs(u_input.e.x), any(select(vec3<bool>(var_0.x, true, global3.x), var_0.www, global3.x)), true));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global3 = func_2();
    global2 = any(!select(vec3<bool>(1u <= u_input.e.x, true, true), select(!vec3<bool>(global3.x, global3.x, false), !vec3<bool>(global3.x, global3.x, global3.x), true), select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, false, false), vec3<bool>(global3.x, global3.x, global3.x))));
    let var_0 = 415f;
    var var_1 = _wgslsmith_sub_u32(u_input.e.x, ~firstLeadingBit(57910u));
    global0 = 655f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(3589f, _wgslsmith_f_op_f32(min(-590f, 213f))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, 2373i), vec3<i32>(u_input.d.x, 27295i, u_input.a.x)))), true)), 1000f));
    var var_1 = ~33282u;
    var var_2 = true;
    var var_3 = ~(-(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c) >> (vec2<u32>(u_input.e.x, 4294967295u) % vec2<u32>(32u)), -u_input.d.zx) ^ ((global1[_wgslsmith_index_u32(16710u, 23u)] & global1[_wgslsmith_index_u32(u_input.e.x, 23u)]) << (firstTrailingBit(u_input.e.wy) % vec2<u32>(32u)))));
    let var_4 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x) ^ _wgslsmith_sub_i32(17901i, 2147483647i), ~u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-16705i, 0i), var_3.x, var_3.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-18824i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.d.x)))), -reverseBits(vec4<i32>(1i, -5031i, 2147483647i, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.a.x);
}

