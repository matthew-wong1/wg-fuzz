struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
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

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-1310f, -675f), vec2<f32>(-645f, 1816f), vec2<f32>(1399f, -412f), vec2<f32>(-482f, 273f), vec2<f32>(-132f, -985f), vec2<f32>(798f, 876f), vec2<f32>(-1000f, 1414f), vec2<f32>(-657f, 1012f), vec2<f32>(-652f, -1000f), vec2<f32>(466f, -112f), vec2<f32>(-660f, 355f), vec2<f32>(1000f, -646f), vec2<f32>(-401f, 454f), vec2<f32>(-550f, -1414f), vec2<f32>(-589f, 532f));

var<private> global2: array<Struct_1, 7>;

var<private> global3: Struct_2;

var<private> global4: array<u32, 2> = array<u32, 2>(0u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(Struct_1(global0.b.zww), Struct_2(true, vec4<bool>(global0.a, all(!vec3<bool>(true, global0.a, global0.a)), !global3.a, _wgslsmith_f_op_f32(max(309f, -287f)) == global0.e), all(select(global3.b.yy, global3.b.yx, vec2<bool>(global3.a, global0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -701f, global0.e)) + _wgslsmith_f_op_vec3_f32(global0.d - global0.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.d.x, 1374f), _wgslsmith_f_op_f32(f32(-1f) * -961f))), global3.d.x))));
    let var_1 = u_input.b.xx ^ u_input.b.zx;
    global1 = array<vec2<f32>, 15>();
    var var_2 = 2147483647i;
    var_2 = u_input.a.x;
    return var_0;
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global3 = arg_0;
    let var_0 = vec2<u32>(u_input.b.x, max(4294967295u, _wgslsmith_dot_vec4_u32((vec4<u32>(6763u, u_input.b.x, 0u, 0u) << (vec4<u32>(4294967295u, 3243u, u_input.b.x, 0u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 2u)], 2u)], 2u)], global4[_wgslsmith_index_u32(1u, 2u)], u_input.b.x), vec4<u32>(47984u, global4[_wgslsmith_index_u32(u_input.b.x, 2u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 2u)], 2u)], 14057u)) % vec4<u32>(32u)), vec4<u32>(1u, firstLeadingBit(20157u), _wgslsmith_mult_u32(4294967295u, u_input.b.x), countOneBits(global4[_wgslsmith_index_u32(u_input.b.x, 2u)])))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(var_0.x << (u_input.b.x % 32u), 7u)], Struct_2(func_1().a.a.x, !func_1().b.b, true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 839f, -335f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.d.x))))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_clamp_u32(42778u, u_input.b.x, global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, var_0.x)), 2u)]);
    return ~(-(~(-vec3<i32>(u_input.a.x, -34867i, u_input.a.x)))) | ~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 0i, u_input.a.x) >> (u_input.b % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(-30353i), 0i, u_input.a.x));
}

fn func_2() -> bool {
    var var_0 = ~max(~(~(u_input.b | u_input.b)), ~vec3<u32>(_wgslsmith_clamp_u32(18037u, 7400u, u_input.b.x), global4[_wgslsmith_index_u32(4294967295u, 2u)], 12778u));
    global1 = array<vec2<f32>, 15>();
    var var_1 = -(~func_3(func_1().b));
    global3 = Struct_2(true, vec4<bool>(var_0.x != firstTrailingBit(max(u_input.b.x, global4[_wgslsmith_index_u32(u_input.b.x, 2u)])), global3.a, ~(u_input.a.x >> (var_0.x % 32u)) <= -2147483647i, true), false, global3.d, _wgslsmith_f_op_f32(global3.d.x - _wgslsmith_f_op_f32(1094f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(1864u, 2u)], abs(var_0.x))), 2u)];
    return !(!global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -276f;
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 7u)];
    let var_2 = global3.d.x;
    let var_3 = !global3.b.x;
    var var_4 = func_1();
    var var_5 = vec3<bool>(!(~1i == ~(u_input.a.x ^ -2147483647i)), !all(vec2<bool>(true, func_2())), any(!(!func_1().b.b.zy)));
    var var_6 = _wgslsmith_mod_u32(39970u, u_input.b.x);
    global3 = var_4.b;
    let var_7 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(20151u, 2u)], u_input.b.x), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1031f + global3.e)))), _wgslsmith_f_op_f32(max(-1061f, _wgslsmith_div_f32(352f, _wgslsmith_div_f32(384f, var_4.b.d.x)))), !var_4.a.a.x)));
}

