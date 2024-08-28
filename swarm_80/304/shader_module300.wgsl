struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(-101f, Struct_1(-340f, vec3<bool>(false, false, true), vec4<i32>(1i, i32(-2147483648), 65752i, 33637i), vec3<i32>(209i, i32(-2147483648), 2147483647i)), vec4<f32>(-111f, 277f, -104f, -566f), Struct_1(-781f, vec3<bool>(false, true, true), vec4<i32>(-1i, 187i, 50563i, 0i), vec3<i32>(-31491i, -1i, 0i)), 14922i), Struct_2(-530f, Struct_1(-1478f, vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), 5094i, i32(-2147483648), 1i), vec3<i32>(1i, i32(-2147483648), 891i)), vec4<f32>(1000f, -1326f, 1000f, 696f), Struct_1(1000f, vec3<bool>(false, true, false), vec4<i32>(-4785i, -24455i, -1i, -14496i), vec3<i32>(0i, 1i, -1i)), 1i));

var<private> global2: u32;

var<private> global3: i32 = -39308i;

var<private> global4: array<vec4<f32>, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> vec4<u32> {
    var var_0 = -306f;
    let var_1 = -countOneBits(vec4<i32>(25154i, ~(42029i >> (u_input.c.x % 32u)), -u_input.d.x, u_input.d.x));
    global0 = array<vec4<f32>, 19>();
    global3 = firstTrailingBit(var_1.x);
    var var_2 = -51354i;
    return vec4<u32>(4294967295u, u_input.c.x, u_input.b, 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f - -1358f)), -805f)) + -1268f), !vec3<bool>(all(vec2<bool>(true, true)), true, (1i >> (u_input.b % 32u)) <= u_input.d.x), vec4<i32>(u_input.d.x, ~_wgslsmith_sub_i32(abs(u_input.d.x), 2147483647i), 0i, _wgslsmith_dot_vec4_i32(abs(u_input.d), ~u_input.d << (countOneBits(vec4<u32>(4294967295u, u_input.c.x, var_0, 0u)) % vec4<u32>(32u)))), u_input.d.www);
    global2 = abs(min(_wgslsmith_sub_u32(var_0, u_input.b << (30876u % 32u)), ~_wgslsmith_clamp_u32(u_input.b, 32120u, var_0)) & _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c.x, var_0, 56428u), vec4<u32>(98382u, var_0, var_0, var_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c.x, var_0), vec4<u32>(4294967295u, var_0, 0u, var_0))), 4294967295u, 103901u));
    var var_2 = global1[_wgslsmith_index_u32(var_0, 2u)];
    var var_3 = Struct_2(var_1.a, var_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-152f, _wgslsmith_f_op_f32(543f + var_1.a), _wgslsmith_f_op_f32(trunc(var_2.c.x)), _wgslsmith_div_f32(1733f, var_2.b.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.a, -695f, 114f), _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(4294967295u, 19u)])))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_vec4_f32(min(var_2.c, _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 19u)]))))))), var_2.d, _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-9422i, u_input.d.x, -47218i), var_2.b.d) << (u_input.a % vec3<u32>(32u)), (var_1.c.zzz << (_wgslsmith_div_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u))) & u_input.d.yzy));
    return vec4<bool>(var_3.d.b.x, -(var_1.c.x & -u_input.d.x) >= _wgslsmith_mult_i32(abs(var_1.d.x), abs(_wgslsmith_dot_vec4_i32(var_1.c, vec4<i32>(var_3.d.d.x, -33944i, 2147483647i, var_1.c.x)))), var_2.b.b.x || true, true);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> Struct_2 {
    global0 = array<vec4<f32>, 19>();
    let var_0 = arg_1;
    let var_1 = global4[_wgslsmith_index_u32(u_input.b, 24u)];
    var var_2 = 33888u;
    var var_3 = var_1.x;
    return Struct_2(var_1.x, Struct_1(927f, vec3<bool>(all(!vec4<bool>(true, var_0, arg_3, false)), any(!vec2<bool>(false, var_0)), true), max(~u_input.d & (vec4<i32>(-55955i, u_input.d.x, u_input.d.x, -21529i) | vec4<i32>(u_input.d.x, -1i, u_input.d.x, 2147483647i)), min(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(-1587i, u_input.d.x, u_input.d.x, -25156i)), ~u_input.d)), vec3<i32>(-u_input.d.x, -u_input.d.x, 0i)), _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(u_input.c.x, 24u)] - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_2.x, 19u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(870f, var_1.x, 679f, var_1.x)))), Struct_1(var_1.x, vec3<bool>(all(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_3), vec2<bool>(arg_3, true))), true, arg_1 | true), vec4<i32>(u_input.d.x, _wgslsmith_mod_i32(~u_input.d.x, 2147483647i), -27092i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, 1i)), ~u_input.d.x)), -u_input.d.xwy), 23322i);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(reverseBits(0u) << (~(33437u | _wgslsmith_sub_u32(u_input.b, 59484u)) % 32u), !(!(1u < _wgslsmith_add_u32(u_input.b, 50249u))), _wgslsmith_sub_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, arg_0.x, 1u), vec4<u32>(u_input.b, 18561u, 70462u, u_input.b))), func_2()), !any(func_3()));
    global1 = array<Struct_2, 2>();
    global0 = array<vec4<f32>, 19>();
    var var_1 = u_input.a;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -894f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * -1000f) + 1463f)), select(select(var_0.b.b, var_0.b.b, var_0.b.b.x), func_4(var_1.x, !func_3().x, max(firstLeadingBit(vec4<u32>(var_1.x, 34325u, arg_0.x, 4294967295u)), ~vec4<u32>(101548u, arg_0.x, u_input.c.x, arg_0.x)), !any(var_0.b.b)).b.b, func_3().x), var_0.b.c, u_input.d.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = func_1(u_input.c);
    let var_2 = abs(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.c.yw, -vec2<i32>(var_1.d.x, u_input.d.x)), var_1.c.x)) | vec2<i32>(~18950i, u_input.d.x);
    let var_3 = var_1.a;
    let var_4 = ~vec3<u32>(abs(~u_input.c.x | firstLeadingBit(1u)), countOneBits(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 66013u) & vec3<u32>(38735u, u_input.c.x, u_input.b), u_input.a) ^ u_input.c.x);
    var var_5 = func_4(var_4.x, true, abs(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, var_4.x), firstTrailingBit(1u)), 54330u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(0u, 97100u)), 19543u)), true & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(max(2236f, 1112f))) < _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(f32(-1f) * -434f)))).d;
    var_1 = Struct_1(-681f, var_5.b, vec4<i32>(-1i) * -u_input.d, -(_wgslsmith_div_vec3_i32(vec3<i32>(1i, var_5.c.x, 1i), var_5.c.wwz) ^ ~u_input.d.wxx) << (var_4 % vec3<u32>(32u)));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + -1011f)), var_5.b, var_5.c, vec3<i32>(-var_2.x, ~(-var_1.c.x) ^ (i32(-1i) * -var_1.d.x), 2147483647i));
    let var_7 = Struct_1(var_1.a, vec3<bool>(false, true, false), vec4<i32>(-1i) * -var_5.c, firstLeadingBit(var_1.c.ywz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-580f, _wgslsmith_f_op_f32(var_7.a + -674f))) - var_1.a), var_5.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.a))))));
}

