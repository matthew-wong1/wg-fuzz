struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<bool, 32>;

var<private> global3: array<bool, 26> = array<bool, 26>(true, true, true, false, false, true, false, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, false, false, false, true);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global3 = array<bool, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-992f))))) + _wgslsmith_f_op_f32(ceil(arg_2.a))), -_wgslsmith_sub_vec2_i32(arg_2.b, u_input.a.xy), 4294967295u, -_wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_2.b.x, arg_2.b.x, arg_2.d.x, u_input.a.x)) ^ firstTrailingBit(arg_1.d), ~(arg_1.d | vec4<i32>(arg_2.b.x, arg_1.b.x, arg_2.b.x, 1i))));
    var var_1 = !(!(!all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 26u)], false, true, global0[_wgslsmith_index_u32(var_0.c, 10u)]))));
    var var_2 = select(!select(!(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.c, 32u)], false)), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2.c, 10u)], false, global0[_wgslsmith_index_u32(var_0.c, 10u)], global3[_wgslsmith_index_u32(var_0.c, 26u)])), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(25079u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(47628u, 32u)]))), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 10u)], true, !all(vec3<bool>(global2[_wgslsmith_index_u32(92152u, 32u)], true, global3[_wgslsmith_index_u32(4294967295u, 26u)]))), !vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 26u)], true, true), !(!vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(45439u, 32u)]))), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], true, any(vec2<bool>(false, true)), arg_0), select(vec4<bool>(any(vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(var_0.c, 10u)], true)), arg_0, any(vec2<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 32u)])), !arg_0), vec4<bool>(arg_1.c <= 0u, any(vec4<bool>(false, true, false, false)), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.c, 10u)], false, true, global3[_wgslsmith_index_u32(arg_1.c, 26u)])), !global0[_wgslsmith_index_u32(arg_2.c, 10u)]), !(!vec4<bool>(global2[_wgslsmith_index_u32(1641u, 32u)], arg_0, global3[_wgslsmith_index_u32(var_0.c, 26u)], false))), arg_0 || any(select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.c, 32u)]), true))));
    var var_3 = vec2<bool>(true, var_2.x);
    return var_2.xyy;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = arg_0.c.x;
    let var_1 = Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], !global2[_wgslsmith_index_u32(u_input.b, 32u)], true == (u_input.a.x != countOneBits(arg_0.e.b.x)), all(func_3(true, Struct_1(978f, vec2<i32>(1i, arg_0.b.b.x), 1u, arg_0.e.d), Struct_1(arg_0.d, u_input.a.zz, u_input.b, u_input.a)))), global1[_wgslsmith_index_u32(countOneBits(select(~_wgslsmith_sub_u32(52056u, u_input.b), arg_0.b.c, !(global3[_wgslsmith_index_u32(1u, 26u)] & arg_0.a.x))), 11u)], abs(~(~arg_0.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(938f * arg_0.d) + _wgslsmith_f_op_f32(trunc(arg_0.b.a))) - _wgslsmith_div_f32(arg_0.b.a, _wgslsmith_f_op_f32(abs(arg_0.e.a)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1343f, arg_0.d, true)) * -258f)), vec2<i32>(i32(-1i) * -23365i, 11999i), ~min(_wgslsmith_div_u32(u_input.b, arg_0.e.c), ~arg_0.c.x), vec4<i32>(abs(-arg_0.e.d.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.zxz, vec3<i32>(-2147483647i, -1i, u_input.a.x)), -25625i, ~(-1i)), 1i, ~(-9554i))));
    var var_2 = -firstTrailingBit(vec3<i32>(i32(-1i) * -57571i, 7448i, 1i));
    global2 = array<bool, 32>();
    var var_3 = arg_0;
    return select(var_1.a.wxw, vec3<bool>(var_1.a.x, true, func_3(_wgslsmith_dot_vec4_i32(arg_0.e.d, u_input.a) < 1i, Struct_1(_wgslsmith_f_op_f32(-var_1.d), vec2<i32>(-17192i, var_3.b.b.x), _wgslsmith_add_u32(66045u, arg_0.c.x), var_3.e.d), var_1.e).x), !(!(!func_3(true, Struct_1(var_3.b.a, var_2.zz, var_1.c.x, var_3.b.d), Struct_1(1302f, vec2<i32>(arg_0.e.b.x, var_2.x), u_input.b, var_1.b.d)))));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    global2 = array<bool, 32>();
    let var_0 = select(!(!vec4<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(66327u, 26u)], true, false)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 14506u), 26u)], global2[_wgslsmith_index_u32(~u_input.b, 32u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 32u)])), vec4<bool>(any(select(func_2(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(16606u, 10u)], global2[_wgslsmith_index_u32(2343u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], false), Struct_1(136f, vec2<i32>(29449i, arg_0.x), u_input.b, u_input.a), vec4<u32>(22690u, u_input.b, u_input.b, 1u), -118f, global1[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(35329u, 32u)], false)), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(4676u, 10u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]))), true, global3[_wgslsmith_index_u32(1u, 26u)], true), !(global0[_wgslsmith_index_u32(~(~8144u), 10u)] | (min(10227u, u_input.b) > ~59735u)));
    var var_1 = select(select(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, countOneBits(u_input.b))), vec3<u32>(u_input.b, (u_input.b ^ u_input.b) & 33075u, u_input.b), var_0.xzy), vec3<u32>(15333u, u_input.b, u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), select(vec4<u32>(u_input.b, u_input.b, 19404u, u_input.b), vec4<u32>(u_input.b, 54061u, 1u, 28990u), vec4<bool>(true, global0[_wgslsmith_index_u32(42622u, 10u)], global3[_wgslsmith_index_u32(u_input.b, 26u)], true))) % 32u)), var_0.x);
    let var_2 = vec4<u32>(12499u, ~(~36209u), var_1.x, ~max(countOneBits(1u) >> (0u % 32u), 2296u & _wgslsmith_clamp_u32(var_1.x, var_1.x, 58025u)));
    var var_3 = vec2<i32>(1i, -1i);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(vec4<i32>(-(u_input.a.x << (1u % 32u)), _wgslsmith_div_i32(-1i, ~u_input.a.x), select(func_1(vec3<i32>(u_input.a.x, 2147483647i, -29747i)), ~(-9626i), true), -1i), _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -1i, u_input.a.x, -29227i))), all(vec3<bool>(true, true, true)));
    var var_1 = -(((u_input.a.x & _wgslsmith_div_i32(var_0.x, var_0.x)) & abs(-u_input.a.x)) & abs(51896i));
    global0 = array<bool, 10>();
    global3 = array<bool, 26>();
    global1 = array<Struct_1, 11>();
    var var_2 = ~vec2<u32>(countOneBits(u_input.b), min(u_input.b, u_input.b ^ _wgslsmith_sub_u32(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0i) & (1i << (var_2.x % 32u)));
}

