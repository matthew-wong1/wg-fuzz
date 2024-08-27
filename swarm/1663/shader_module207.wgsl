struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(929f, 615f, -870f, -400f), vec4<f32>(3027f, -882f, -166f, 1844f), vec4<f32>(1426f, -803f, -303f, -104f), vec4<f32>(1118f, 1000f, -1000f, 110f), vec4<f32>(519f, -882f, -211f, -1656f), vec4<f32>(1097f, 1225f, 791f, 1183f), vec4<f32>(-2008f, -576f, -1475f, 457f), vec4<f32>(544f, -970f, -687f, -1256f), vec4<f32>(229f, 1199f, 350f, -254f), vec4<f32>(-110f, 1000f, -359f, 2604f), vec4<f32>(848f, 199f, -701f, -413f), vec4<f32>(-1039f, -121f, 661f, 442f), vec4<f32>(-549f, -500f, 285f, -767f), vec4<f32>(241f, -1154f, -641f, 399f), vec4<f32>(695f, 273f, 705f, -1777f), vec4<f32>(543f, 1000f, -1270f, -231f), vec4<f32>(-687f, 1331f, 102f, -341f), vec4<f32>(-1688f, 1683f, -807f, 658f), vec4<f32>(696f, 1303f, 625f, -997f), vec4<f32>(944f, 124f, 657f, 1492f), vec4<f32>(853f, 420f, 1638f, 1651f), vec4<f32>(763f, 741f, -295f, 1939f), vec4<f32>(1000f, -963f, -500f, -463f), vec4<f32>(679f, 1011f, 2322f, 261f), vec4<f32>(1032f, 199f, 963f, 1917f), vec4<f32>(-109f, -1037f, 890f, -345f), vec4<f32>(-377f, -193f, -1453f, -390f), vec4<f32>(-1550f, 465f, -621f, 466f), vec4<f32>(709f, 390f, -1456f, 752f), vec4<f32>(-1000f, 1115f, 238f, -984f), vec4<f32>(-316f, 1000f, -232f, 1000f));

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global3: array<vec4<u32>, 24>;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2384f), global1.b, vec3<bool>(arg_3, true, false));
    global1 = Struct_3(-836f, arg_2, !vec3<bool>(var_0.c.x, arg_3, true & arg_2.a.x));
    global3 = array<vec4<u32>, 24>();
    var var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 24u)] ^ _wgslsmith_sub_vec4_u32(~global3[_wgslsmith_index_u32(1u, 24u)] & _wgslsmith_mult_vec4_u32(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b, 24u)]), global3[_wgslsmith_index_u32(~0u, 24u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(global4.x, arg_0.c, 0u)), _wgslsmith_mod_u32(~arg_2.c, global4.x)), 24u)]);
    let var_2 = !(!vec2<bool>(arg_2.a.x, _wgslsmith_f_op_f32(-arg_1) <= _wgslsmith_f_op_f32(-arg_1)));
    return var_1.yzy;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_3, vec4<bool>(global1.b.a.x, ~8238u > ~(~global1.b.c), false, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(394f, arg_3.b.x, arg_3.b.x) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-552f, global1.b.b.x, 507f))))))));
    let var_1 = vec4<bool>(true, all(!vec2<bool>(!arg_3.a.x, all(global2[_wgslsmith_index_u32(18030u, 2u)]))), false, true);
    let var_2 = Struct_2(var_0.a, !vec4<bool>(global1.b.a.x, all(arg_3.a), any(select(vec3<bool>(false, arg_3.a.x, true), vec3<bool>(true, arg_3.a.x, false), var_0.b.x)), arg_3.a.x), _wgslsmith_f_op_vec3_f32(round(var_0.c)));
    global1 = Struct_3(_wgslsmith_f_op_f32(var_2.a.b.x - -243f), global1.b, vec3<bool>(any(var_0.a.a), arg_3.a.x, !var_0.a.a.x | any(!vec4<bool>(var_2.b.x, arg_3.a.x, false, false))));
    let var_3 = _wgslsmith_div_vec3_u32(~abs(vec3<u32>(_wgslsmith_div_u32(global4.x, 4294967295u), _wgslsmith_add_u32(var_0.a.c, 0u), 0u)), abs(abs(vec3<u32>(1u, u_input.a.x, 37221u | var_2.a.c))));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(52226u, arg_3.c, ~_wgslsmith_add_u32(var_2.a.c, u_input.a.x), ~(~35442u)), min(~(~global3[_wgslsmith_index_u32(1u, 24u)]), global3[_wgslsmith_index_u32(global4.x, 24u)] ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.c, 68594u, 65825u, 18658u), global3[_wgslsmith_index_u32(59933u, 24u)])));
}

fn func_1() -> StorageBuffer {
    global4 = _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.b.c, u_input.a.x, global1.b.c), _wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, global1.b.c, global1.b.c), vec3<u32>(11386u, global4.x, 0u))), select(select(~vec3<u32>(u_input.b, u_input.a.x, global1.b.c), func_2(Struct_1(vec2<bool>(true, global1.c.x), vec2<f32>(-648f, -200f), 1u), -119f, Struct_1(global1.c.xx, vec2<f32>(global1.b.b.x, -1438f), 1u), global1.c.x), true), _wgslsmith_mult_vec3_u32(vec3<u32>(46035u, global4.x, 4294967295u) | vec3<u32>(global4.x, global1.b.c, u_input.a.x), select(vec3<u32>(54295u, global4.x, u_input.a.x), vec3<u32>(global1.b.c, 1u, global1.b.c), global1.b.a.x)), select(!global1.c, select(global1.c, global1.c, global1.c.x), false))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, abs(global4.x) | 0u, firstLeadingBit(_wgslsmith_div_u32(1u, global1.b.c))), vec3<u32>(countOneBits(global4.x), _wgslsmith_mult_u32(func_3(u_input.a.x, 4294967295u, u_input.c.yz, Struct_1(global1.b.a, vec2<f32>(229f, 778f), global4.x)), ~global1.b.c), 4746u | (11045u >> (u_input.a.x % 32u))));
    var var_0 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(step(-534f, -1201f)) == -827f, (1u & global1.b.c) == ~u_input.b), vec2<f32>(global1.b.b.x, 566f), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, 51437u, 4294967295u) >> (4294967295u % 32u))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(26161u, abs(1u)), 2u)], vec3<f32>(-249f, -1000f, -423f));
    let var_1 = global1.b;
    var var_2 = ~select(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global4.xy, u_input.a), u_input.a | vec2<u32>(57268u, u_input.a.x)), global4.yx, select(!global1.c.zz, !select(vec2<bool>(var_0.b.x, global1.b.a.x), vec2<bool>(var_1.a.x, true), vec2<bool>(false, true)), global1.b.b.x <= 1000f));
    let var_3 = -769f;
    return StorageBuffer(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), 8272i), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -209f), global1.b, !select(select(!global1.c, select(global1.c, global1.c, vec3<bool>(true, global1.b.a.x, global1.c.x)), vec3<bool>(global1.c.x, true, global1.b.a.x)), select(!vec3<bool>(global1.c.x, false, false), select(vec3<bool>(true, true, global1.c.x), global1.c, true), any(global1.c.yx)), !global1.b.a.x));
    global2 = array<vec4<bool>, 2>();
    var var_1 = u_input.c & (u_input.c | u_input.c);
    let var_2 = min(vec4<u32>(4322u, global4.x, ~(_wgslsmith_mod_u32(29935u, 4294967295u) << (~u_input.b % 32u)), ~(global1.b.c & global1.b.c)), vec4<u32>(global1.b.c, countOneBits(1u), ~reverseBits(30844u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u), global3[_wgslsmith_index_u32(u_input.b, 24u)]), ~vec4<u32>(u_input.a.x, global1.b.c, global4.x, global4.x))) >> (vec4<u32>(3832u, 4294967295u, 25526u, max(global4.x, global4.x)) % vec4<u32>(32u)));
    var var_3 = vec2<bool>(true || (var_0.b.c != u_input.a.x), !global1.b.a.x);
    let x = u_input.a;
    s_output = func_1();
}

