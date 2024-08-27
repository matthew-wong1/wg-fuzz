struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<u32, 19> = array<u32, 19>(14752u, 10169u, 38057u, 4294967295u, 56437u, 1u, 1u, 37161u, 56903u, 1u, 3981u, 1u, 26735u, 40725u, 55922u, 1u, 9976u, 37993u, 0u);

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(573f, -831f, 1234f), vec3<f32>(930f, -574f, -1013f), vec3<f32>(-549f, 634f, -1237f), vec3<f32>(1502f, -1168f, -1446f), vec3<f32>(1616f, -102f, -744f), vec3<f32>(348f, -266f, 640f), vec3<f32>(242f, 494f, -2262f));

var<private> global3: u32 = 1u;

var<private> global4: array<i32, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    global1 = array<u32, 19>();
    var var_0 = vec4<u32>(1u, ~(~_wgslsmith_clamp_u32(select(71627u, global1[_wgslsmith_index_u32(4294967295u, 19u)], true), _wgslsmith_clamp_u32(u_input.c.x, 18122u, 50782u), ~0u)), select(~global1[_wgslsmith_index_u32(0u, 19u)], ~u_input.a.x, select(true, select(!arg_1.x, true, -610f == arg_2), true)), 4294967295u);
    global1 = array<u32, 19>();
    global4 = array<i32, 17>();
    let var_1 = 1u;
    return arg_1;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<f32> {
    global0 = array<vec2<f32>, 19>();
    let var_0 = ~(~u_input.a >> (~firstTrailingBit(arg_1.a) % vec4<u32>(32u)));
    let var_1 = !(true && (all(vec3<bool>(true, true, true)) || (-168f == _wgslsmith_f_op_f32(step(1283f, -388f)))));
    global3 = 1u;
    global3 = ~(~min(firstTrailingBit(abs(1u)), 1u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, 974f, -1046f, -1000f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec4<f32> {
    global1 = array<u32, 19>();
    global3 = arg_1.b;
    global0 = array<vec2<f32>, 19>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -885f))), arg_0.x))))));
    let var_1 = global4[_wgslsmith_index_u32(arg_1.b, 17u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(arg_0, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x)), 1817f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(-arg_0))))) * arg_0);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(-26527i, 15882i), reverseBits(u_input.d)), Struct_2(u_input.a, abs(global1[_wgslsmith_index_u32(7602u, 19u)])))))), Struct_2(min(u_input.a, _wgslsmith_div_vec4_u32(select(u_input.a, vec4<u32>(global1[_wgslsmith_index_u32(1u, 19u)], 0u, 78850u, u_input.a.x), arg_0), vec4<u32>(global1[_wgslsmith_index_u32(30301u, 19u)], u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8614u, 19u)], 19u)], global1[_wgslsmith_index_u32(0u, 19u)]))), ~(~(~38988u)))));
    var var_1 = Struct_3(vec4<bool>((all(vec3<bool>(arg_0, false, arg_0)) && arg_0) && any(vec4<bool>(true, arg_0, true, true)), false, all(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), select(vec2<bool>(true, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)))), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(0u, 7u)])) - _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(0u, 7u)]))) - var_0.zzz), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1696f, -876f, 171f, var_0.x) - vec4<f32>(2195f, 1439f, var_0.x, var_0.x)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), var_1.a.x & arg_0)), Struct_2(u_input.a & u_input.a, countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])))).x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1868f, var_0.x, -232f)), Struct_2(u_input.a, 23263u))).x))));
    var var_3 = u_input.d.x;
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 19>();
    let var_0 = func_2(all(func_1(u_input.d, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), -389f)));
    global3 = _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~(~u_input.a.x), 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), 19u)], 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * 534f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f * 636f)))), _wgslsmith_f_op_f32(f32(-1f) * -1200f))));
    var var_2 = _wgslsmith_add_i32(countOneBits(u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(22263u, 17u)], min(max(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 17u)], 1i), u_input.d.x), global4[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(58964u, 19u)]) ^ 1u, 17u)]), _wgslsmith_add_i32(25484i, ~u_input.d.x) ^ -(-1i & u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(u_input.d.x, -global4[_wgslsmith_index_u32(0u, 17u)] ^ ~global4[_wgslsmith_index_u32(28023u, 17u)]), u_input.a.x);
}

