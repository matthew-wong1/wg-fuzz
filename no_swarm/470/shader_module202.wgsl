struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), vec4<i32>(1101i, -12761i, i32(-2147483648), -13969i), 4294967295u, true);

var<private> global1: array<u32, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    return ~1u;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_2(arg_1.yy, ~vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, global0.b.x, 23044i, 1i), vec4<i32>(u_input.e, u_input.a.x, global0.b.x, global0.b.x)), global0.b.x, 0i), min(~(~max(16751u, 1u)), ~u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-934f)) * _wgslsmith_f_op_f32(f32(-1f) * -2490f))) == _wgslsmith_f_op_f32(-1124f - _wgslsmith_f_op_f32(1048f * -767f)));
    global1 = array<u32, 23>();
    global1 = array<u32, 23>();
    global0 = Struct_2(!(!vec2<bool>(global1[_wgslsmith_index_u32(97476u, 23u)] != global0.c, true && arg_2.x)), var_0.b, 5893u, arg_2.x);
    global0 = Struct_2(!var_0.a, -global0.b, 4294967295u, var_0.a.x);
    return !(!arg_2);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(!global0.a, _wgslsmith_add_vec4_i32(abs(global0.b), vec4<i32>(~(-6545i), u_input.e, 0i, global0.b.x | -2147483647i)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~abs(~0u), 23u)], _wgslsmith_mult_u32(u_input.d.x, func_1(vec2<f32>(442f, 410f)))), false);
    global1 = array<u32, 23>();
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f - -141f));
    global0 = Struct_2(global0.a, countOneBits(vec4<i32>(~_wgslsmith_div_i32(1i, var_0.b.x), u_input.a.x, firstLeadingBit(-var_0.b.x), reverseBits(max(global0.b.x, -341i)))), var_0.c, false);
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(106f, 515f) + -139f)), 1142f, _wgslsmith_f_op_f32(777f * -753f)), !(!var_0.a), !all(select(vec4<bool>(var_0.a.x, false, true, global0.d), func_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.c, 23u)], 23u)], vec3<bool>(false, true, global0.d), vec4<bool>(global0.d, global0.a.x, global0.d, var_0.d)), global0.d)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-762f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_3)), -337f))))));
    let var_1 = global0.a;
    let var_2 = var_1.x && false;
    global1 = array<u32, 23>();
    var var_3 = max(_wgslsmith_add_vec3_u32(arg_2, ~u_input.c.xzw), ~(u_input.c.zxz << (arg_2 % vec3<u32>(32u))));
    return Struct_3(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, _wgslsmith_add_u32(9544u, func_1(arg_1.a.xx)), 2748u, ~u_input.d.x)), -abs(~_wgslsmith_sub_i32(-20097i, arg_0.x)), select(vec2<bool>(false, true), !vec2<bool>(false, !global0.a.x), vec2<bool>(arg_1.b.x && any(vec3<bool>(false, var_1.x, var_2)), arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global0.b.x << (_wgslsmith_mult_u32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1112f, -417f) * vec2<f32>(-939f, 2624f))), global1[_wgslsmith_index_u32(global0.c, 23u)]) % 32u), -max(0i, _wgslsmith_add_i32(~(-2147483647i), -6973i)));
    let var_1 = u_input.c;
    var_0 = 2147483647i;
    let var_2 = ~(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(~4294967295u, 23u)], global1[_wgslsmith_index_u32(var_1.x, 23u)])) ^ var_1.zx);
    var var_3 = Struct_4(func_4(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(1i, u_input.a.x) >> (1u % 32u)), func_2(), select(vec3<u32>(var_2.x, _wgslsmith_clamp_u32(1u, global0.c, 48069u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 23u)]), firstLeadingBit(u_input.c.wxx & vec3<u32>(4294967295u, u_input.b, var_1.x)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(285f)))))), ~abs(~global1[_wgslsmith_index_u32(func_4(global0.b.xx, Struct_5(vec3<f32>(402f, 615f, 360f), vec2<bool>(true, true), global0.d), vec3<u32>(global0.c, 34581u, 75891u), 989f).a.x, 23u)]), var_1.wx);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1i, var_3.a.b, -(i32(-1i) * -2147483647i)));
}

