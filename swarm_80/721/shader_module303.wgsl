struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(2147483647i, 42787i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(26254i, 0i), vec2<i32>(49937i, 38791i), vec2<i32>(11938i, 6480i), vec2<i32>(1640i, 2147483647i), vec2<i32>(29009i, 0i), vec2<i32>(-31010i, 37034i));

var<private> global1: array<bool, 12>;

var<private> global2: Struct_1 = Struct_1(1i, vec2<bool>(true, true), vec2<f32>(222f, 126f), vec3<f32>(-353f, 1610f, -659f), vec2<f32>(143f, 1193f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = !global2.b;
    global0 = array<vec2<i32>, 11>();
    let var_1 = 4294967295u;
    let var_2 = Struct_1(1i, vec2<bool>(-662f > arg_0.d.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global2.c.x - arg_0.c.x), arg_0.e.x)))), arg_0.d, _wgslsmith_f_op_vec2_f32(floor(arg_0.e)));
    var var_3 = 0i;
    return (max(_wgslsmith_add_i32(u_input.b, 2147483647i), ~0i) << (countOneBits(10150u) % 32u)) ^ firstLeadingBit(countOneBits(-firstLeadingBit(-12531i)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = u_input.b;
    var var_1 = Struct_1(func_3(arg_2), !global2.b, vec2<f32>(-946f, arg_2.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.e.x), arg_2.e.x, global2.e.x)) * arg_2.d), vec2<f32>(1155f, _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(max(370f, _wgslsmith_f_op_f32(abs(arg_0)))))));
    var var_2 = arg_2;
    let var_3 = var_1.d;
    var_2 = arg_2;
    return -u_input.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    global2 = Struct_1(~select(~(-29663i), select(var_0.a & var_0.a, u_input.b, false), global2.b.x), var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1227f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.d.x, -1157f, arg_1))))), _wgslsmith_f_op_vec3_f32(trunc(arg_3.d))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-127f, global2.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.zz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -1270f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))));
    let var_1 = max(vec3<i32>(~1i, _wgslsmith_div_i32(u_input.b, firstLeadingBit(u_input.b)), 0i), reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(16851i, var_0.a, u_input.b), vec3<i32>(-22542i, u_input.b, u_input.b)))) ^ _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(12866i, -10050i, u_input.b, 1i), vec4<i32>(global2.a, u_input.b, global2.a, global2.a)), arg_3.a, reverseBits(33865i)), vec3<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 1i, 1i), vec4<i32>(var_0.a, -10063i, 9573i, global2.a)), 36316i, true), arg_3.a, global2.a >> (_wgslsmith_add_u32(u_input.a.x, 11252u) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(1f + arg_3.d.x);
    global1 = array<bool, 12>();
    return arg_3;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<bool, 12>();
    global0 = array<vec2<i32>, 11>();
    var var_0 = ~(~abs(select(~120072u, 1u, global2.b.x)));
    global2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), arg_0.e.x)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + 1245f) - _wgslsmith_f_op_f32(arg_0.d.x * -551f)))), global2.e.x, firstTrailingBit(108015u), Struct_1(_wgslsmith_div_i32(global2.a, func_2(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1490f, 2009f, arg_0.d.x, arg_0.e.x)), Struct_1(2147483647i, vec2<bool>(global2.b.x, true), vec2<f32>(1000f, global2.e.x), global2.d, arg_0.c), !global2.b.x)), select(select(global2.b, vec2<bool>(global2.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), false), !(!global2.b), all(select(arg_0.b, global2.b, true))), arg_0.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.e.x, global2.e.x, 556f)))), global2.d.zz));
    global1 = array<bool, 12>();
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.c.x))), _wgslsmith_f_op_f32(1296f + _wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(exp2(arg_0.e.x)))), arg_0.d.x, _wgslsmith_f_op_f32(-global2.c.x)), -1355f, _wgslsmith_div_u32(_wgslsmith_clamp_u32(745u, _wgslsmith_div_u32(43666u, 25072u) << (~u_input.a.x % 32u), 1u), 0u), arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = min(25098u, 4294967295u);
    global0 = array<vec2<i32>, 11>();
    var var_1 = ~(~_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 33626u, u_input.a.x, 1u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(32344u, 3727u, 18697u, 1u), vec4<u32>(54550u, 30272u, 0u, 31247u), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<u32>(u_input.a.x, 20661u, 74013u, 0u))));
    global2 = arg_0;
    var_1 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(~1u), ~1u, 9891u, 61217u), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, u_input.a.x, 12114u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(70555u, var_1.x, u_input.a.x, 58049u), vec4<u32>(4294967295u, u_input.a.x, var_1.x, 32355u), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x))), countOneBits(vec4<u32>(var_1.x, 49564u, var_1.x, 0u)), countOneBits(min(vec4<u32>(4294967295u, var_1.x, 21794u, 36306u), vec4<u32>(0u, 24676u, u_input.a.x, u_input.a.x))))), firstTrailingBit(~vec4<u32>(abs(var_1.x), ~var_1.x, ~1u, var_1.x)), select(-(~u_input.b) > (_wgslsmith_div_i32(arg_0.a, 0i) & -arg_0.a), arg_1.b.x, !(!(!arg_0.b.x))));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), select(global2.b, global2.b, global2.b.x), select(global2.b, select(vec2<bool>(global2.b.x, all(vec4<bool>(true, global2.b.x, global1[_wgslsmith_index_u32(29935u, 12u)], global2.b.x))), func_5(func_1(Struct_1(-2147483647i, vec2<bool>(global2.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), global2.c, global2.d, vec2<f32>(1000f, global2.e.x))), func_4(vec4<f32>(346f, global2.e.x, -614f, global2.e.x), -739f, 68467u, Struct_1(u_input.b, vec2<bool>(global2.b.x, true), global2.e, vec3<f32>(global2.c.x, global2.c.x, global2.e.x), vec2<f32>(-361f, -753f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, global2.e.x))), global2.b), global2.b));
    global0 = array<vec2<i32>, 11>();
    var_0 = global2.b;
    var var_1 = !global1[_wgslsmith_index_u32(0u, 12u)];
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(abs(u_input.a.x), select(75473u, 12532u, true))), max(u_input.a.yy, ~(~u_input.a.yz))), vec2<u32>(~(~(67831u << (u_input.a.x % 32u))), 31361u));
    let x = u_input.a;
    s_output = StorageBuffer(max(-33685i, global2.a & -_wgslsmith_add_i32(-2009i, global2.a)), 33904i, vec2<u32>(firstLeadingBit(30425u), ~(~u_input.a.x)) ^ ~select(var_2, var_2, true));
}

