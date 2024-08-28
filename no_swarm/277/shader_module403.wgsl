struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(-1i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(32753i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(-23691i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(-24418i)), Struct_2(Struct_1(-29880i)), Struct_2(Struct_1(-32414i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(918i)), Struct_2(Struct_1(7587i)), Struct_2(Struct_1(0i)), Struct_2(Struct_1(14339i)), Struct_2(Struct_1(2147483647i)));

var<private> global1: array<bool, 32> = array<bool, 32>(false, false, false, false, true, true, false, true, true, false, false, true, true, true, false, false, false, false, false, true, true, false, false, true, false, true, true, true, true, true, false, true);

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: Struct_3 = Struct_3(889f, vec3<f32>(1121f, 2036f, 215f), -264f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = 1u;
    let var_1 = vec4<i32>(reverseBits(-14098i), -16380i, 1i, _wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -2147483647i), 0i));
    var var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(var_1.yw, vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-22983i, 2147483647i, 2147483647i, var_1.x), var_1))));
    let var_3 = Struct_1(-11696i);
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    return all(!select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(71119u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(20411u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), vec4<bool>(true, arg_0.b.x >= arg_0.a, true, true & global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(69805u & u_input.a.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], true, all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 32u)])))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 15u)];
    global3 = global1[_wgslsmith_index_u32(13835u, 32u)];
    var var_1 = any(select(vec2<bool>(any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 32u)], true), vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 32u)], global1[_wgslsmith_index_u32(51006u, 32u)]))), select(!global1[_wgslsmith_index_u32(0u, 32u)], func_3(arg_1.a), arg_1.b == arg_0.x)), select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 32u)]), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true), vec2<bool>(true, true), true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], false)), true));
    global3 = !global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    var var_2 = arg_1;
    return 12504u;
}

fn func_1() -> Struct_2 {
    var var_0 = !select(vec3<bool>(global1[_wgslsmith_index_u32(66382u, 32u)], !(!global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), !global1[_wgslsmith_index_u32(u_input.c, 32u)] | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b), 32u)]), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.b ^ 8098u), 32u)], false, _wgslsmith_div_u32(1u, u_input.b) > ~u_input.c), true);
    var var_1 = var_0.x;
    var var_2 = -1757f;
    var_0 = vec3<bool>(false, true, var_0.x);
    global2 = ~(~(-16860i) >> (u_input.b % 32u)) << ((u_input.a.x >> (u_input.c % 32u)) % 32u);
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32((~1u & func_2(_wgslsmith_f_op_vec2_f32(global4.b.xx * global4.b.zz), Struct_4(Struct_3(-811f, global4.b, global4.a), 1096f, Struct_1(1i), global4.b.zx), u_input.a)) << (u_input.c % 32u), 50139u), 15u)];
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(23019u), 15u)];
    var var_1 = func_1().a;
    var var_2 = i32(-1i) * -43621i;
    var_2 = 43408i;
    var var_3 = func_1();
    return Struct_4(Struct_3(1000f, arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-610f, global4.c)) + _wgslsmith_f_op_f32(arg_0 * global4.c)), arg_1.b.x)), arg_1.b.x, var_0.a, _wgslsmith_f_op_vec2_f32(abs(global4.b.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, 232f))) + 456f), Struct_3(_wgslsmith_div_f32(1517f, global4.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.b.x), 1172f, -771f)), global4.b.x), func_1());
    let var_1 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c.a, 30398i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, var_0.c.a)), vec2<i32>(var_0.c.a << (u_input.a.x % 32u), _wgslsmith_mod_i32(2147483647i, var_0.c.a)))), vec2<i32>(var_0.c.a, abs(_wgslsmith_div_i32(var_0.c.a << (u_input.c % 32u), var_0.c.a))));
    var var_2 = any(select(select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], false)), vec2<bool>(global1[_wgslsmith_index_u32(~u_input.c, 32u)], global1[_wgslsmith_index_u32(6973u, 32u)] && global1[_wgslsmith_index_u32(4294967295u, 32u)]), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], false)), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], false), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.c, 32u)])), vec2<bool>(global4.a >= -1552f, !global1[_wgslsmith_index_u32(u_input.b, 32u)])), !global1[_wgslsmith_index_u32(~(~13363u), 32u)]));
    global1 = array<bool, 32>();
    let var_3 = ~min(var_0.c.a, var_0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, -984f, vec2<i32>(7381i << (u_input.a.x % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(max(0i, -20443i), ~var_3), -abs(20045i))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(178f, global4.a)) - 1198f)), _wgslsmith_f_op_f32(-2089f * -1400f), _wgslsmith_f_op_f32(select(global4.b.x, func_4(_wgslsmith_f_op_f32(var_0.b + var_0.b), Struct_3(var_0.a.a, vec3<f32>(1000f, global4.a, var_0.b), global4.b.x), global0[_wgslsmith_index_u32(max(22639u, u_input.c), 15u)]).a.a, global1[_wgslsmith_index_u32(0u, 32u)]))), firstTrailingBit(vec2<i32>(var_1, firstTrailingBit(_wgslsmith_clamp_i32(-59812i, var_3, -21900i)))));
}

