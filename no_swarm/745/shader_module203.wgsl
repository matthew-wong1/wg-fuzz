struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: array<f32, 9> = array<f32, 9>(-433f, -1139f, -1115f, 856f, -446f, 1000f, 2821f, 586f, 168f);

var<private> global2: vec4<bool>;

var<private> global3: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), -1i, -1i);

var<private> global4: array<u32, 6> = array<u32, 6>(4294967295u, 4294967295u, 31246u, 94532u, 1u, 8374u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_i32(arg_1.x | firstTrailingBit(arg_1.x), ~(~(-53233i)));
    global4 = array<u32, 6>();
    global4 = array<u32, 6>();
    return Struct_1(arg_0.a, global2.x);
}

fn func_3() -> vec2<f32> {
    global0 = array<vec2<bool>, 22>();
    var var_0 = _wgslsmith_add_i32(max(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, global3.x) >> (~u_input.a % 32u), global3.x), 2613i), -1i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 9u)]))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-911f, global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(48129u, 9u)])) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = 0i;
    global2 = vec4<bool>(all(select(vec3<bool>(true, global2.x, 615f == global1[_wgslsmith_index_u32(1u, 9u)]), !global2.wwy, global2.wxz)), false, !all(!vec4<bool>(true, true, global2.x, true)) & false, !(!(_wgslsmith_f_op_f32(f32(-1f) * -643f) == global1[_wgslsmith_index_u32(~40405u, 9u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    var_1 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11693u << (u_input.a % 32u), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(15369u, 6u)], global4[_wgslsmith_index_u32(55229u, 6u)]), u_input.a, ~94458u), _wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u, 18651u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(78420u, 6u)], 6u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3790u, 6u)], 6u)], arg_0, arg_0, 56867u)) << ((vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(arg_0, 6u)], arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11123u, 6u)], 6u)]) << (vec4<u32>(global4[_wgslsmith_index_u32(58256u, 6u)], 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) & 16431u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)));
    var var_2 = global3.wzy;
    return Struct_2(Struct_1(vec3<i32>(-u_input.c, u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global3.yxy, vec3<i32>(var_2.x, -15480i, global3.x)), global3.zww << (vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 6u)], 0u, 4294967295u) % vec3<u32>(32u)))), ~firstLeadingBit(1u) != ~max(u_input.a, 0u)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -835f;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 9u)])));
    var var_2 = _wgslsmith_f_op_f32(max(387f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 9u)]), global1[_wgslsmith_index_u32(51694u, 9u)])));
    var var_3 = true;
    let var_4 = Struct_3(Struct_2(func_1(Struct_1(~global3.wxw, any(vec4<bool>(true, global2.x, false, global2.x))), ~(vec4<i32>(34796i, global3.x, u_input.c, -34535i) ^ vec4<i32>(u_input.b, -31839i, -73001i, 7670i)), -10949i, -939f), global3.x), func_2(_wgslsmith_sub_u32(~12878u >> (~global4[_wgslsmith_index_u32(29258u, 6u)] % 32u), 4294967295u)), -668f, all(global2.zxy));
    var var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-876f)))))))));
    var_5 = _wgslsmith_f_op_f32(3110f * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u & global4[_wgslsmith_index_u32(reverseBits(~0u), 6u)], 65718u), 9u)]);
    var var_6 = Struct_4(var_4.a);
    var var_7 = var_4.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-832f, 2500f, -330f, 895f) * vec4<f32>(-955f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)], 9u)], -169f, -1658f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-661f, global1[_wgslsmith_index_u32(0u, 9u)], 1773f, -893f), vec4<f32>(804f, 703f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33902u, 6u)], 6u)], 9u)], var_4.c)))), _wgslsmith_div_vec4_f32(vec4<f32>(-323f, -1000f, -1603f, -1251f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(1u, 9u)], 679f, global1[_wgslsmith_index_u32(u_input.a, 9u)], 160f), vec4<f32>(var_4.c, global1[_wgslsmith_index_u32(1u, 9u)], -317f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 6u)], 9u)]))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20082u, 6u)] ^ u_input.a, 6u)], 9u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(12312u, 9u)])), -1182f, 1503f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, 320f, -1419f, var_4.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], -533f, 784f, var_4.c) * vec4<f32>(1000f, -2311f, 1000f, global1[_wgslsmith_index_u32(u_input.a, 9u)]))))));
}

