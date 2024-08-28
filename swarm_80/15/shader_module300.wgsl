struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<bool, 15> = array<bool, 15>(true, false, false, true, false, true, false, false, true, true, false, true, true, true, true);

var<private> global3: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: bool) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_mod_i32(-16421i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(-43643i, u_input.d)), ~1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(arg_0.c * arg_0.c)))), Struct_1(u_input.a.x, vec2<bool>(arg_0.b.x, arg_1.x), arg_0.c, max(arg_0.d, _wgslsmith_clamp_vec4_i32(arg_0.d, vec4<i32>(u_input.d, arg_0.d.x, 1i, -36245i), arg_0.d))), vec4<f32>(238f, _wgslsmith_f_op_f32(arg_0.c + arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + 1390f))));
    global1 = array<Struct_1, 23>();
    var var_1 = Struct_3(_wgslsmith_mult_i32(arg_0.d.x, 0i >> (~(var_0.c.a >> (4294967295u % 32u)) % 32u)), !select(arg_1.xx, vec2<bool>(any(arg_1.yz), arg_0.c == -378f), vec2<bool>(arg_3 != false, true)), arg_0.d.zz, u_input.d, arg_0.c);
    var var_2 = var_0.c;
    var var_3 = max(_wgslsmith_mod_u32(19471u, 12228u), 25388u);
    return arg_0.d.wz;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = 473f;
    var var_1 = func_3(global1[_wgslsmith_index_u32(0u, 23u)], vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], arg_0.x != 244f, global2[_wgslsmith_index_u32(~(1u >> (u_input.a.x % 32u)) >> (30426u % 32u), 15u)]), false, any(!(!select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(44201u, 15u)], true), global2[_wgslsmith_index_u32(130439u, 15u)]))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(721f, 307f, arg_0.x) - arg_0) * vec3<f32>(arg_0.x, arg_0.x, 441f))), _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(40488u, 7u)]))), _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, -630f, arg_0.x)), select(!select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(93296u, 15u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 1u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], true, global3[_wgslsmith_index_u32(34743u, 1u)])), select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], true), vec3<bool>(global3[_wgslsmith_index_u32(18612u, 1u)], true, true), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 1u)], false)), arg_0.x >= -1519f), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], true)), vec3<bool>(true, global3[_wgslsmith_index_u32(~4294967295u, 1u)], 41833u < u_input.c.x), !vec3<bool>(global3[_wgslsmith_index_u32(31699u, 1u)], global3[_wgslsmith_index_u32(36223u, 1u)], global2[_wgslsmith_index_u32(19721u, 15u)])), !global2[_wgslsmith_index_u32((u_input.a.x << (u_input.c.x % 32u)) & (u_input.a.x ^ u_input.c.x), 15u)])));
    var var_3 = _wgslsmith_mod_vec2_u32(min(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), u_input.a.zz, vec2<u32>(1u, u_input.c.x))) << (vec2<u32>(u_input.c.x, 46999u) % vec2<u32>(32u)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xx))), vec2<u32>(60099u, _wgslsmith_mod_u32(u_input.b, abs(~27480u))));
    global1 = array<Struct_1, 23>();
    return Struct_3(-u_input.d, select(vec2<bool>(false, true | (true | global2[_wgslsmith_index_u32(0u, 15u)])), select(select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(var_3.x, 15u)]), vec2<bool>(false, false)), select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 1u)], true), vec2<bool>(global2[_wgslsmith_index_u32(0u, 15u)], false), false), !vec2<bool>(global3[_wgslsmith_index_u32(var_3.x, 1u)], true)), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(var_3.x, 1u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(2700u, 1u)] == global2[_wgslsmith_index_u32(u_input.c.x, 15u)])), global3[_wgslsmith_index_u32(0u, 1u)]), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i) ^ ~vec2<i32>(u_input.d, u_input.d), select(~vec2<i32>(u_input.d, -2147483647i), ~vec2<i32>(-29126i, u_input.d), !global3[_wgslsmith_index_u32(0u, 1u)])), abs(~(-33974i)), _wgslsmith_f_op_f32(ceil(var_2.x)));
}

fn func_1() -> bool {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(3249u, 7u)])) + _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 7u)]))))));
    let var_1 = vec2<i32>(0i, func_3(Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 4294967295u)), u_input.c.yy), var_0.b, var_0.e, _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d, u_input.d, -2147483647i, 38379i), ~vec4<i32>(5953i, u_input.d, u_input.d, u_input.d))), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u | u_input.a.x, 15u)], var_0.e >= var_0.e), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, 53390u), vec3<u32>(94094u, u_input.b, 105872u), u_input.a), u_input.a), 15u)], all(!vec4<bool>(var_0.b.x, var_0.b.x, false, false))).x);
    global3 = array<bool, 1>();
    let var_2 = -574f;
    global3 = array<bool, 1>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 1u)], all(vec4<bool>(global2[_wgslsmith_index_u32(49164u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], false, global3[_wgslsmith_index_u32(1u, 1u)])), 0u <= u_input.a.x), vec3<bool>(false, false, true), true), !select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], false, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]))), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)] | global3[_wgslsmith_index_u32(u_input.a.x, 1u)], !global3[_wgslsmith_index_u32(u_input.c.x, 1u)], func_1())), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)] || global2[_wgslsmith_index_u32(1u & u_input.b, 15u)], all(vec4<bool>(true, !global2[_wgslsmith_index_u32(1u, 15u)], !global3[_wgslsmith_index_u32(u_input.c.x, 1u)], true))), vec3<bool>(true, false, !global3[_wgslsmith_index_u32(u_input.a.x, 1u)]));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(~vec4<i32>(-34147i, -2147483647i, u_input.d, u_input.d)), ~(-vec4<i32>(2147483647i, u_input.d, -26806i, -1i)), -vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), (reverseBits(vec4<i32>(u_input.d, -7193i, u_input.d, u_input.d)) << ((vec4<u32>(u_input.b, u_input.c.x, 1u, 0u) << (vec4<u32>(1u, 54897u, 37853u, 5898u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 51221u, u_input.a.x, 4294967295u), countOneBits(vec4<u32>(4294967295u, 1u, u_input.c.x, 53928u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, 486f)) * _wgslsmith_f_op_f32(-841f - -1026f)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.a.x)) >> ((u_input.c.wz >> (u_input.a.yx % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c.yw), 23u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(737f, -1344f, 980f, 1053f) - vec4<f32>(1062f, 1000f, -305f, 352f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-185f, -160f, -460f, 1483f), vec4<f32>(-1000f, -1236f, -2821f, -1000f)))))));
    var var_2 = _wgslsmith_mod_u32(68451u, _wgslsmith_mod_u32(u_input.b, countOneBits(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b, 94534u), vec2<u32>(var_1.c.a, 19084u)), _wgslsmith_mult_vec2_u32(u_input.c.zw, vec2<u32>(11480u, u_input.b))))));
    global3 = array<bool, 1>();
    global2 = array<bool, 15>();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_3.d.zy, u_input.d ^ ~firstLeadingBit(-var_3.c.d.x), var_1.c.a, u_input.a);
}

