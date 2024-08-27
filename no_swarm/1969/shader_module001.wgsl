struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: Struct_4 = Struct_4(670f);

var<private> global1: Struct_5;

var<private> global2: array<i32, 16> = array<i32, 16>(-13617i, -1i, i32(-2147483648), 54943i, -1i, 2147483647i, 0i, 1i, -12568i, -33225i, -11106i, 1i, 18956i, -1i, -1i, 13158i);

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1179f)), global1.c.c.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.c.a.x, global0.a, -1376f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1666f, global0.a, global0.a)))))));
    var var_1 = vec2<i32>(abs(abs(15481i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i << (0u % 32u), ~(arg_0.x & arg_0.x)), -1i));
    var var_2 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(291f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * global1.c.d.a.x)))), global1.c.c.a.x), false));
    global2 = array<i32, 16>();
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.a, 623f))))) + global0.a), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1303f, global1.c.d.a.x, global1.c.c.a.x)), global1.c.d.a)));
    return ~abs(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(3465u, 11792u, 1u, u_input.a.x)), ~(~vec4<u32>(9515u, 4294967295u, 4294967295u, global1.a.x))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec4<u32> {
    global3 = countOneBits(u_input.b);
    global2 = array<i32, 16>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f * -544f))), Struct_1(_wgslsmith_div_vec3_f32(global1.c.d.a, _wgslsmith_f_op_vec3_f32(trunc(global1.c.d.a)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, global0.a, global1.c.d.a.x)), global1.c.d.a))), _wgslsmith_f_op_vec3_f32(arg_2.xww + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1212f, global1.c.d.a.x)))))));
    global0 = Struct_4(_wgslsmith_f_op_f32(floor(var_1.x)));
    return vec4<u32>(arg_1.x, 69403u, 10652u, ~4294967295u) & func_3(select(firstTrailingBit(-u_input.b.zyy), -vec3<i32>(global2[_wgslsmith_index_u32(global1.c.a, 16u)], u_input.b.x, 5233i), vec3<bool>(global1.c.b, all(vec3<bool>(false, true, global1.c.b)), any(vec4<bool>(false, false, false, global1.c.b)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_5 {
    global3 = (u_input.b << ((~(vec4<u32>(1u, 1u, global1.c.a, 59461u) ^ vec4<u32>(3897u, global1.d, u_input.a.x, global1.b)) << (~func_2(vec2<f32>(arg_1.a, global0.a), vec2<u32>(global1.c.a, global1.b), vec4<f32>(764f, -633f, -1989f, arg_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (~reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global1.a.x, global1.d, 4294967295u), vec4<u32>(u_input.a.x, global1.a.x, u_input.a.x, 15851u))) % vec4<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), -2182f), _wgslsmith_f_op_f32(-global0.a)));
    global3 = vec4<i32>(1i, u_input.c, -2147483647i, abs(~global2[_wgslsmith_index_u32((global1.d >> (22824u % 32u)) | firstLeadingBit(u_input.a.x), 16u)]));
    let var_1 = ~vec3<u32>(abs(global1.c.a), ~_wgslsmith_mod_u32(~4294967295u, ~65211u), global1.d);
    global3 = max(u_input.b, u_input.b);
    return Struct_5(global1.a, ~(~firstTrailingBit(40290u)), Struct_2(_wgslsmith_add_u32(u_input.a.x, ~max(global1.d, var_1.x)), !(_wgslsmith_clamp_i32(-43138i, -25911i, u_input.b.x) != 2147483647i), Struct_1(vec3<f32>(2749f, _wgslsmith_f_op_f32(-arg_0.x), global1.c.d.a.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), global0.a, global0.a))), global1.b);
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: u32, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = reverseBits(countOneBits(u_input.c));
    return vec4<bool>(max(global3.x, 1i) < ~var_0, false, _wgslsmith_add_i32(max(_wgslsmith_add_i32(0i, u_input.b.x), reverseBits(-1i)), ~(~(-46511i))) == (~(~global2[_wgslsmith_index_u32(31280u, 16u)]) ^ -2147483647i), arg_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1.c.c.a.x, global1.c.d);
    let var_1 = select(!select(func_4(_wgslsmith_f_op_f32(-932f - 962f), func_1(var_0.b.a.yx, Struct_4(249f)), ~global1.a.x, func_3(vec3<i32>(2147483647i, 22835i, -2147483647i)).wyx), select(!vec4<bool>(global1.c.b, global1.c.b, false, false), vec4<bool>(global1.c.b, false, global1.c.b, false), global1.c.b), true && !global1.c.b), select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(global1.b, 16u)] <= u_input.c, all(vec4<bool>(false, false, false, false))), vec4<bool>(!global1.c.b && func_4(var_0.a, Struct_5(global1.a, 16910u, global1.c, 4294967295u), 4294967295u, vec3<u32>(95730u, 38258u, u_input.a.x)).x, true, ~u_input.a.x >= 1u, any(select(vec4<bool>(false, global1.c.b, true, global1.c.b), vec4<bool>(global1.c.b, false, true, global1.c.b), true))), false && ((u_input.b.x & global3.x) >= max(u_input.c, -1i))), func_1(vec2<f32>(_wgslsmith_f_op_f32(-152f - _wgslsmith_div_f32(global0.a, global0.a)), -1463f), Struct_4(-405f)).c.b);
    let var_2 = Struct_5(vec3<u32>(~11132u, 4294967295u, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a, global0.a))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(829f, global1.c.d.a.x), vec2<f32>(-951f, global1.c.d.a.x), var_1.x))), Struct_4(1f)).a.x), min(34812u, global1.b), Struct_2(1u, true, Struct_1(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-2331f + global1.c.d.a.x), global1.c.d.a.x)), global1.c.c), ~u_input.a.x);
    global1 = var_2;
    var var_3 = _wgslsmith_dot_vec2_i32(u_input.b.xz, reverseBits(global3.ww));
    var var_4 = vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u) ^ vec3<u32>(1u, u_input.a.x, 4294967295u), firstTrailingBit(~u_input.a)) != 31381u, false, false, !global1.c.b);
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.d.a.x), _wgslsmith_f_op_f32(step(-1082f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, -1305f)), 226f))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

