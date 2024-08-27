struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-59383i, vec4<i32>(i32(-2147483648), 1i, 0i, 1i)), Struct_1(-18272i, vec4<i32>(-6929i, -23553i, -20166i, i32(-2147483648))), Struct_1(-11223i, vec4<i32>(21963i, 2147483647i, -47371i, 2147483647i)), Struct_1(i32(-2147483648), vec4<i32>(-2259i, i32(-2147483648), 0i, 63373i)), Struct_1(1i, vec4<i32>(0i, -1i, 0i, 43140i)), Struct_1(3743i, vec4<i32>(1i, 1i, 1i, 29582i)), Struct_1(-2867i, vec4<i32>(-39536i, -1i, i32(-2147483648), -12293i)), Struct_1(-6212i, vec4<i32>(20155i, -20639i, -1i, i32(-2147483648))), Struct_1(-8929i, vec4<i32>(6269i, -33674i, 1i, -38288i)), Struct_1(-39334i, vec4<i32>(-3290i, 3232i, 58248i, 2147483647i)), Struct_1(-46597i, vec4<i32>(10920i, -1i, 0i, i32(-2147483648))), Struct_1(0i, vec4<i32>(3726i, -7750i, 0i, 2147483647i)));

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<u32, 8> = array<u32, 8>(45161u, 43095u, 29880u, 61186u, 20707u, 0u, 14736u, 0u);

var<private> global3: u32;

var<private> global4: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-626f, 609f)), -651f, 110f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-751f, -773f, 445f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(622f, 1742f, -1968f) - vec3<f32>(606f, 198f, 372f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(808f)), _wgslsmith_f_op_f32(abs(1000f)), -621f), true)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> u32 {
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    global3 = global2[_wgslsmith_index_u32(u_input.a, 8u)];
    global3 = 1u;
    global3 = 4294967295u;
    return abs(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~(~firstTrailingBit(4294967295u))), 8u)]);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_3) -> u32 {
    global3 = func_3(vec4<i32>(arg_2.c, -1i, -2147483647i, ~(~1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, arg_1.b, arg_1.b, arg_2.a.d) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.a.e.x, arg_1.b, 1730f, arg_3.b)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1873f, 604f, arg_1.b, arg_2.d.c.x) - vec4<f32>(arg_3.b, arg_2.d.e.x, arg_3.b, arg_3.b)))))));
    let var_0 = 5679u;
    global3 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, u_input.a) | vec2<u32>(global2[_wgslsmith_index_u32(arg_2.a.b, 8u)], arg_2.a.b)), select(~vec2<u32>(0u, arg_2.a.b), vec2<u32>(var_0, arg_2.d.b), !arg_2.b.x)), 1u);
    let var_1 = arg_2;
    var var_2 = var_1.a.e;
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(~(firstTrailingBit(global2[_wgslsmith_index_u32(var_0, 8u)]) >> (var_0 % 32u)), firstTrailingBit(~global2[_wgslsmith_index_u32(1u, 8u)]) & 59822u), max(~firstLeadingBit(firstTrailingBit(1u)), 66378u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(0i, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), _wgslsmith_add_i32(11763i, -1i), ~1i) & ((~14961i >> (~global2[_wgslsmith_index_u32(u_input.a, 8u)] % 32u)) & 8825i), firstLeadingBit(~(-1i >> (1u % 32u))), 0i);
    global4 = !(true || !(true && any(vec3<bool>(true, true, true))));
    var var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    var var_4 = true;
    let var_5 = false == (true & (select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 27019u, 44106u), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 8u)], 0u, global2[_wgslsmith_index_u32(u_input.a, 8u)])), ~20651u, true) <= func_2(var_0.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u << (u_input.a % 32u), 8u)], 11u)], Struct_5(Struct_2(vec4<bool>(true, true, false, true), u_input.a, vec4<f32>(422f, 260f, var_2.x, var_3), var_2.x, var_2.xx), vec3<bool>(false, false, true), 30177i, Struct_2(vec4<bool>(false, false, false, true), u_input.a, vec4<f32>(var_3, -956f, 1775f, 110f), var_2.x, vec2<f32>(var_3, var_3))), Struct_3(Struct_1(var_0.x, vec4<i32>(var_0.x, 34281i, var_0.x, var_0.x)), var_3, Struct_1(-5829i, vec4<i32>(0i, var_0.x, var_0.x, var_0.x)), var_0.zz))));
    var var_6 = _wgslsmith_mod_vec4_u32(max(~(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 27659u, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)]) ^ vec4<u32>(u_input.a, 0u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7848u, 8u)], 8u)], 8u)])) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(23587u, global2[_wgslsmith_index_u32(0u, 8u)], u_input.a, global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(u_input.a, 0u, global2[_wgslsmith_index_u32(6834u, 8u)], 70373u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(u_input.a, 8u)] | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5104u, 8u)], 8u)]), 8u)], 8u)], 8u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 25603u), vec2<u32>(global2[_wgslsmith_index_u32(5683u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)])), ~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(35078u, 8u)])), 18488u, 0u)), abs(abs(~vec4<u32>(u_input.a, 4294967295u, 52013u, global2[_wgslsmith_index_u32(0u, 8u)]))));
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~_wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(78240u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10640u, 8u)], 8u)], global2[_wgslsmith_index_u32(10414u, 8u)], 13197u)), vec4<u32>(var_6.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], var_6.x, 1u), true), vec4<u32>(var_6.x, min(var_6.x, 38923u), _wgslsmith_sub_u32(45861u, 1u), _wgslsmith_clamp_u32(u_input.a, 1u, 30168u))), -countOneBits(var_0.x), var_0.x, var_0.x);
}

