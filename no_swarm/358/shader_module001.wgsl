struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<bool, 28>;

var<private> global2: array<i32, 5>;

var<private> global3: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_mod_i32(i32(-1i) * -2147483647i, global3.b.b);
    global2 = array<i32, 5>();
    var var_1 = 1180f;
    let var_2 = firstLeadingBit(firstLeadingBit(~(u_input.a.zyy >> (vec3<u32>(global3.e.d, u_input.b, u_input.e) % vec3<u32>(32u))) << (~(~u_input.a.xyx) % vec3<u32>(32u))));
    global2 = array<i32, 5>();
    return select(!vec2<bool>(!global1[_wgslsmith_index_u32(abs(u_input.d.x), 28u)], global3.d), select(vec2<bool>(false, false), select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 28u)], global1[_wgslsmith_index_u32(4702u, 28u)]), true | global1[_wgslsmith_index_u32(53572u, 28u)]), select(select(vec2<bool>(true, true), vec2<bool>(true, global3.d), vec2<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(4710u, 28u)])), select(vec2<bool>(global3.d, global1[_wgslsmith_index_u32(global3.e.d, 28u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(global3.b.a.x, 28u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(31711u, 28u)])), true), false), !(!(0u < var_2.x))), false);
}

fn func_2() -> vec4<bool> {
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global1 = array<bool, 28>();
    var var_0 = Struct_2(~(~min(vec2<i32>(-18442i, 1i), u_input.c.zz) | _wgslsmith_mod_vec2_i32(global3.a, u_input.c.xy)), global3.e, true || all(!func_3()), false && all(vec3<bool>(global1[_wgslsmith_index_u32(min(71433u, global3.b.d), 28u)], true, true)), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~0u, ~global3.b.a.x, ~0u), ~(vec3<u32>(56307u, 36942u, 0u) & vec3<u32>(u_input.b, global3.b.d, global3.e.a.x))), global0[_wgslsmith_index_u32(reverseBits(1u), 8u)], u_input.c.x, u_input.b, global3.b.e));
    global2 = array<i32, 5>();
    return vec4<bool>(true, !(false & var_0.c), max(abs(global3.b.b), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), -1i, -1i)) <= -42751i, all(select(vec3<bool>(var_0.d, true, false && global3.d), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, global1[_wgslsmith_index_u32(global3.b.a.x, 28u)], true)), select(var_0.c, false, global1[_wgslsmith_index_u32(4294967295u, 28u)])))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = u_input.a;
    global2 = array<i32, 5>();
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~1u, 1u), arg_1.e.d);
    return Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.c.yx, arg_1.a, ~select(vec2<i32>(-1i, -9242i), vec2<i32>(global0[_wgslsmith_index_u32(13862u, 8u)], global0[_wgslsmith_index_u32(var_0.x, 8u)]), false)), _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(global3.b.b), ~global0[_wgslsmith_index_u32(22194u, 8u)]), global3.a, abs(min(arg_1.a, u_input.c.yz)))), Struct_1(var_0.wwy, ~global2[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 5u)], u_input.c.x, 36794u, _wgslsmith_f_op_f32(global3.b.e + -1000f)), false, true, arg_1.b);
}

fn func_1(arg_0: vec3<u32>) -> vec2<f32> {
    let var_0 = global3.b;
    let var_1 = -global0[_wgslsmith_index_u32(~(var_0.d | ~arg_0.x), 8u)] > (global3.a.x << (max(4294967295u, 61843u) % 32u));
    global3 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.b.e, _wgslsmith_f_op_f32(f32(-1f) * -808f)), _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f - 560f) * -1094f), global3.e.e)), Struct_2(u_input.c.xy, Struct_1(firstTrailingBit(vec3<u32>(43975u, u_input.b, 133349u)), u_input.c.x, 19589i, ~(~arg_0.x), global3.b.e), true, all(!select(vec2<bool>(global1[_wgslsmith_index_u32(34201u, 28u)], true), vec2<bool>(var_1, global1[_wgslsmith_index_u32(23992u, 28u)]), true)), global3.b), select(!(!(!vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 28u)]))), func_2(), var_1), vec2<f32>(848f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - 223f) - _wgslsmith_div_f32(276f, global3.b.e)) - var_0.e)));
    global2 = array<i32, 5>();
    global1 = array<bool, 28>();
    return vec2<f32>(-996f, _wgslsmith_f_op_f32(min(1047f, _wgslsmith_f_op_f32(sign(global3.e.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(vec3<u32>(0u, firstTrailingBit(u_input.e & 26539u), ~max(u_input.a.x, u_input.d.x)), vec3<u32>(global3.b.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 50844u, 35133u), u_input.a), 16151u) << (~vec3<u32>(u_input.a.x, u_input.a.x, global3.e.a.x) % vec3<u32>(32u))), -global3.a.x, reverseBits(1i), 18098u, global3.b.e);
    global2 = array<i32, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.e * global3.b.e), 1429f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(~vec3<u32>(1u, 29110u, 4294967295u)))));
    global3 = Struct_2(vec2<i32>(global3.e.c, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~var_0.d), 4294967295u), 5u)]), global3.b, (0i != min(global0[_wgslsmith_index_u32(~global3.b.d, 8u)], u_input.c.x)) || global3.c, any(!select(vec3<bool>(false, true, false), vec3<bool>(global3.d, false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), true)), global3.b);
    let var_2 = global3.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.d ^ (_wgslsmith_mult_u32(3564u, var_0.d) & global3.b.a.x), var_0.d), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-7542i, _wgslsmith_div_i32(global3.e.b, 13487i)), 20211i), -7818i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(-1040f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1385f + var_1.x))))), vec3<u32>(~0u, global3.e.d, max(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.e, 1u, u_input.e, u_input.b)), global3.e.d)));
}

