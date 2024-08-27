struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(-10352i, i32(-2147483648), 0i, 1i), Struct_2(0u));

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(-(i32(-1i) * -42159i));
    let var_1 = 1i;
    let var_2 = Struct_2(global1.b.a);
    var var_3 = var_2;
    var var_4 = 4294967295u;
    return _wgslsmith_dot_vec2_i32(global1.a.yx, vec2<i32>(~1i, _wgslsmith_div_i32(-8521i ^ ~var_0.a, _wgslsmith_mod_i32(abs(var_1), 35544i))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_4(firstLeadingBit(vec4<i32>(1i, func_3(), -48482i, 1i)), global2[_wgslsmith_index_u32(max(1u, reverseBits(16194u)), 32u)]);
    let var_1 = Struct_3(global1.b);
    let var_2 = global1.a.xw;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -899f, -1188f) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1492f + -362f), -1218f, _wgslsmith_f_op_f32(round(2113f))))))));
    var var_4 = false;
    return var_2.x;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global2 = array<Struct_2, 32>();
    var var_0 = Struct_4(global1.a, Struct_2(16343u));
    global0 = !(abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.a.x, u_input.e.x, global1.a.x, 1i)), var_0.a >> (vec4<u32>(0u, var_0.b.a, u_input.d.x, 1u) % vec4<u32>(32u)))) <= 31420i);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.a.yzz, vec3<i32>(global1.a.x, 11395i & func_2(0u, vec4<i32>(global1.a.x, 0i, 1i, 22729i)), u_input.a)), _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(2147483647i, var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-1000f, arg_0), select(true, false, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-120f, -1095f, false)))))));
    return select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec3<bool>(true, false, true)), !all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, min(u_input.c.x, 55775u) < ~63791u, true), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(~(~(~_wgslsmith_clamp_u32(0u, u_input.d.x, 27185u))));
    let var_1 = vec3<bool>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -1028f))).x, true, any(vec3<bool>(arg_1.x, reverseBits(u_input.a) > global1.a.x, true)));
    var var_2 = true;
    var var_3 = _wgslsmith_div_vec3_u32(~(_wgslsmith_mult_vec3_u32(u_input.c, firstLeadingBit(vec3<u32>(u_input.c.x, 6757u, global1.b.a))) ^ countOneBits(~vec3<u32>(39567u, global1.b.a, 1u))), vec3<u32>(select(var_0.a, 74872u, all(arg_2.xz) | func_1(-1853f).x), ~(var_0.a & ~var_0.a), _wgslsmith_sub_u32(var_0.a, global1.b.a | min(var_0.a, global1.b.a))));
    var var_4 = false;
    return Struct_2(firstLeadingBit(max(var_3.x, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.e.zx, select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, false, true, false), !func_1(575f), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(func_1(-1356f)), false, true)), !func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1145f, 1000f)))), select(vec2<bool>(false, true), vec2<bool>(abs(u_input.d.x) >= u_input.d.x, firstLeadingBit(23245i) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -4787i, 37989i, 2147483647i), vec4<i32>(45944i, -35318i, u_input.e.x, -66712i))), false));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(29545u, 32u)]);
    let var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(49274u, var_0.a, u_input.d.x)), _wgslsmith_add_vec3_u32(~u_input.d, u_input.d & vec3<u32>(var_0.a, 4294967295u, 1u)))));
    let var_3 = -1000f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3, var_3))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3)))) - _wgslsmith_f_op_f32(round(-1440f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(f32(-1f) * -1119f))) - -1010f));
    let var_5 = Struct_2(_wgslsmith_mult_u32(~select(u_input.c.x, abs(0u), true), ~(42781u << (~var_2.a.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), var_4), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4), var_3)), -1104f), vec3<i32>(u_input.a, global1.a.x, u_input.a) ^ u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, _wgslsmith_f_op_f32(ceil(var_4)), var_3) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_3, var_4, var_4))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -192f, var_3, var_4) * vec4<f32>(var_4, 108f, var_3, var_3)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, -393f, 450f, -750f), vec4<f32>(1504f, -1384f, -873f, 1000f))))))));
}

