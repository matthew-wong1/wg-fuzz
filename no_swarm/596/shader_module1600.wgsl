struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-503f, -291f, 1000f, -1921f, -1327f);

var<private> global1: Struct_5 = Struct_5(vec3<bool>(true, false, true), i32(-2147483648), Struct_2(vec3<u32>(66396u, 0u, 1u)), Struct_3(vec3<bool>(false, true, true), 21697u));

var<private> global2: vec3<u32> = vec3<u32>(69976u, 174u, 1330u);

var<private> global3: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-187f, -475f), vec2<f32>(-147f, 1435f), vec2<f32>(-579f, -1333f), vec2<f32>(1000f, 717f), vec2<f32>(-190f, 407f), vec2<f32>(-720f, 699f), vec2<f32>(1592f, -569f), vec2<f32>(-1866f, -1637f), vec2<f32>(-528f, 1000f), vec2<f32>(-196f, -1110f), vec2<f32>(-1213f, 1567f), vec2<f32>(-1000f, 1017f), vec2<f32>(1512f, 2144f));

var<private> global4: array<i32, 17> = array<i32, 17>(30977i, 45997i, -5107i, 0i, i32(-2147483648), i32(-2147483648), 26102i, 1526i, 16047i, 22510i, 2147483647i, 2147483647i, 79250i, 2147483647i, 1i, i32(-2147483648), 0i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = u_input.a;
    global2 = ~global1.c.a;
    let var_1 = Struct_1(i32(-1i) * -1i, firstTrailingBit(~_wgslsmith_div_vec2_u32(global1.c.a.zx, global1.c.a.yx & global1.c.a.yy)), global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(898f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 5u)] * global0[_wgslsmith_index_u32(1u, 5u)]))))), 0i);
    global3 = array<vec2<f32>, 13>();
    var var_2 = var_1.d;
    return ~(-1i >> (var_1.b.x % 32u));
}

fn func_2() -> vec3<u32> {
    let var_0 = vec4<bool>(global1.d.a.x, func_3() > _wgslsmith_div_i32(-_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(global2.x, 17u)], 12574i), -min(1i, global4[_wgslsmith_index_u32(global2.x, 17u)])), !all(select(global1.d.a.yz, vec2<bool>(global1.a.x, true), vec2<bool>(global1.a.x, global1.a.x))) || all(vec2<bool>(global1.a.x, global1.d.a.x)), true);
    let var_1 = var_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(abs(1375u), select(global2.x, u_input.b.x, global1.a.x))), 5u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~0u), 5u)]))), 602f);
    var var_3 = Struct_2(min(u_input.b.wxz, ~(~vec3<u32>(1u, global1.d.b, 0u) >> ((vec3<u32>(17326u, global1.c.a.x, global2.x) | vec3<u32>(u_input.b.x, 16466u, global1.d.b)) % vec3<u32>(32u)))));
    global1 = Struct_5(!(!(!global1.d.a)), -2147483647i & global1.b, Struct_2(max(var_3.a, vec3<u32>(~var_3.a.x, 60808u, 1u))), Struct_3(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), var_1.wzw), vec3<bool>(true, !var_0.x, all(vec2<bool>(true, false))), !(!vec3<bool>(false, var_1.x, true))), ~firstLeadingBit(1u ^ global2.x)));
    return global1.c.a;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global3 = array<vec2<f32>, 13>();
    var var_0 = select(_wgslsmith_clamp_u32(arg_0, ~min(_wgslsmith_add_u32(0u, global2.x), abs(arg_0)), u_input.b.x), abs(u_input.b.x), global1.d.a.x);
    global4 = array<i32, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, global0[_wgslsmith_index_u32(global2.x, 5u)], -2824f, global0[_wgslsmith_index_u32(arg_0, 5u)]) + vec4<f32>(730f, 491f, global0[_wgslsmith_index_u32(35334u, 5u)], 1206f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(global1.c.a.x, 5u)], global0[_wgslsmith_index_u32(global1.c.a.x, 5u)], arg_1.x) * vec4<f32>(-807f, 936f, -178f, -1049f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(188f, -156f, 313f, arg_1.x))))))));
    var var_2 = Struct_4(func_2(), global1.c, global1.c, 1f, u_input.a.xz);
    return countOneBits(~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(~vec3<u32>(firstLeadingBit(select(global2.x, 18627u, false)), 37401u, ~func_1(global1.d.b, vec2<f32>(-1000f, -920f), false, global1.c.a)), countOneBits(u_input.b.wwy));
    let var_0 = global4[_wgslsmith_index_u32(global2.x, 17u)];
    global0 = array<f32, 5>();
    let var_1 = Struct_4(abs(max(vec3<u32>(reverseBits(48688u), 1u, 1u), func_2())), global1.c, global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f + global0[_wgslsmith_index_u32(0u, 5u)]) + _wgslsmith_f_op_f32(ceil(1156f))))), vec2<i32>(4111i, global4[_wgslsmith_index_u32(u_input.b.x, 17u)]));
    let var_2 = var_1.c;
    let var_3 = Struct_3(!vec3<bool>(!(global4[_wgslsmith_index_u32(global2.x, 17u)] == 13123i), any(global1.a), true), firstTrailingBit(min(51244u, min(global2.x, 32294u) & var_1.a.x)));
    let var_4 = Struct_4(_wgslsmith_sub_vec3_u32(max(~(~vec3<u32>(var_2.a.x, 1u, u_input.b.x)), global1.c.a), vec3<u32>(~(~var_2.a.x), ~var_2.a.x, _wgslsmith_mult_u32(max(global1.c.a.x, global2.x), var_1.b.a.x))), Struct_2(var_1.c.a >> ((~vec3<u32>(var_1.b.a.x, global2.x, var_3.b) & ~var_1.b.a) % vec3<u32>(32u))), Struct_2(vec3<u32>(reverseBits(_wgslsmith_sub_u32(78485u, var_3.b)), func_2().x, ~var_2.a.x)), 824f, reverseBits(_wgslsmith_div_vec2_i32(u_input.c, ~abs(var_1.e))));
    global3 = array<vec2<f32>, 13>();
    let var_5 = ~var_4.e.x ^ ~(-u_input.c.x >> (2887u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~var_1.e, var_1.e, var_1.e), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(2599i, global1.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, 1024f))), -1468f, all(!(!vec4<bool>(true, var_3.a.x, false, false))))), i32(-1i) * -_wgslsmith_add_i32(abs(-40430i), var_5), vec3<f32>(var_4.d, 280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(363f + -104f) - var_4.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * var_1.d))));
}

