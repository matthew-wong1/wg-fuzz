struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(1u, 51677u, 31705u, 12368u, 0u, 1u, 10591u, 44883u, 4294967295u, 19679u, 0u, 63215u, 9061u, 73121u, 0u, 1u, 1u, 1u, 59763u, 1617u, 1u, 36885u, 3000u);

var<private> global1: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(i32(-2147483648), -1i, 13395i, -20425i), vec4<i32>(1i, i32(-2147483648), 0i, 36291i), vec4<i32>(1i, -22427i, 49871i, 2147483647i), vec4<i32>(0i, 19033i, -12207i, -3456i), vec4<i32>(i32(-2147483648), -5572i, -8958i, -11851i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(32301i, 5715i, 0i, 0i), vec4<i32>(18413i, -1i, 1882i, -1i), vec4<i32>(-2984i, 3147i, -28302i, 0i), vec4<i32>(i32(-2147483648), 1i, -10320i, 1i), vec4<i32>(-27281i, 25511i, -6973i, 12341i), vec4<i32>(62830i, 1i, -98785i, 0i));

var<private> global2: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(542f)))) + _wgslsmith_f_op_f32(-924f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(484f, 1543f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(104f * 381f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1521f), _wgslsmith_f_op_f32(-1000f * 827f)))) * _wgslsmith_f_op_f32(floor(-130f))));
    let var_1 = _wgslsmith_f_op_f32(trunc(1279f));
    global2 = false;
    global1 = array<vec4<i32>, 12>();
    global0 = array<u32, 23>();
    return _wgslsmith_f_op_f32(-1000f * var_0);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1730f)) + _wgslsmith_f_op_f32(1337f - 1000f)) * 1f)));
    var var_2 = Struct_2(Struct_1(var_1.a), ~_wgslsmith_sub_u32(u_input.c.x, global0[_wgslsmith_index_u32(3004u, 23u)] | u_input.c.x) <= ~global0[_wgslsmith_index_u32(min(u_input.c.x, ~0u), 23u)], abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(arg_0, u_input.e)), i32(-1i) * -2147483647i), ~vec3<i32>(u_input.b, arg_0, -8077i))), reverseBits(max(-43967i, countOneBits(u_input.d << (u_input.c.x % 32u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, u_input.c.x, u_input.c.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(38424u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 0u), vec3<u32>(29935u, 4294967295u, u_input.c.x))), 1u));
    global2 = true;
    var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 609f), var_1.a, var_2.b)));
    return Struct_1(-650f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec2<bool> {
    global0 = array<u32, 23>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-474f, arg_0.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + vec2<f32>(508f, 1017f)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(-190f, arg_0.a)))))));
    global2 = false;
    global2 = (~(_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.yz) << (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 16410u) % 32u)) >= global0[_wgslsmith_index_u32(u_input.c.x, 23u)]) || (839f <= var_0.x);
    global0 = array<u32, 23>();
    return select(select(select(select(vec2<bool>(arg_1.a, arg_1.a), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), false), arg_1.a), vec2<bool>(true, !arg_1.a), select(vec2<bool>(arg_1.a, false), select(vec2<bool>(arg_1.a, true), vec2<bool>(true, arg_1.a), true), select(vec2<bool>(false, false), vec2<bool>(true, arg_1.a), true))), vec2<bool>(true || all(vec2<bool>(arg_1.a, true)), all(vec2<bool>(false, false))), false), select(!select(!vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, arg_1.a), select(vec2<bool>(false, arg_1.a), vec2<bool>(true, arg_1.a), true)), !select(vec2<bool>(false, false), vec2<bool>(false, arg_1.a), select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, arg_1.a))), !(!(!vec2<bool>(arg_1.a, arg_1.a)))), !(!select(select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), true), !vec2<bool>(arg_1.a, arg_1.a), arg_1.a)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global1 = array<vec4<i32>, 12>();
    var var_0 = arg_2;
    var var_1 = arg_0;
    let var_2 = select(func_4(func_2(arg_1.c), arg_3), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, u_input.d), -vec2<i32>(67483i, -1i)) <= min(abs(4975i), _wgslsmith_clamp_i32(arg_1.d, -27253i, -1i)), true), any(vec4<bool>(func_4(func_2(-12974i), arg_3).x, false, false, var_1.a)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(366f)), arg_1.a.a), 1f));
    return func_2(0i);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1956f));
    var var_1 = ~(~vec2<u32>(u_input.c.x, 4294967295u));
    var var_2 = vec2<i32>(arg_1.x, _wgslsmith_sub_i32(~firstLeadingBit(min(-2147483647i, -26793i)), 1i));
    global0 = array<u32, 23>();
    var_1 = u_input.c.yy;
    return Struct_2(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), u_input.a.x >> (59178u % 32u), 3498i, 1i), global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), true == (select(!arg_3.b, false, false) || (arg_3.c <= -7267i)), u_input.a.x, _wgslsmith_sub_i32(2147483647i, firstLeadingBit(_wgslsmith_add_i32(arg_1.x, firstLeadingBit(-1909i)))), ~(select(arg_3.e, ~vec2<u32>(arg_3.e.x, 37159u), !vec2<bool>(true, arg_3.b)) & _wgslsmith_mult_vec2_u32(u_input.c.yy, vec2<u32>(2029u, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global2 = false;
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(-392f * 733f)), ~select(-vec3<i32>(-18952i, 1i, 1i), ~(~vec3<i32>(u_input.b, -2147483647i, u_input.a.x)), true), func_1(Struct_3(true), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(402f))), true, -19695i, 6241i, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(43948u, global0[_wgslsmith_index_u32(1u, 23u)])), 7015u)), true, Struct_3(true & any(vec4<bool>(true, false, false, false)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), true, -30569i | u_input.d, ~select(-43785i, 1i, any(vec4<bool>(false, true, true, false))), u_input.c.xw));
    global2 = true;
    var var_1 = var_0.e.x;
    let var_2 = u_input.c.yz;
    let var_3 = vec4<f32>(-2386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * var_0.a.a) * _wgslsmith_f_op_f32(round(-786f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(312f)), -646f)), var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xx - vec2<f32>(var_0.a.a, 972f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 2219f))))), false)), _wgslsmith_f_op_f32(f32(-1f) * -1699f), vec2<u32>(4294967295u, _wgslsmith_add_u32(var_0.e.x, ~u_input.c.x)) << ((select(vec2<u32>(u_input.c.x, u_input.c.x), var_0.e, -15114i > u_input.b) | ~(~vec2<u32>(0u, 1u))) % vec2<u32>(32u)));
}

