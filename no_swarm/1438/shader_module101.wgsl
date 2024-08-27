struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    global3 = array<Struct_1, 13>();
    let var_0 = vec2<u32>(~(~4294967295u), u_input.b);
    var var_1 = select(vec3<bool>(!arg_0.a.x, !all(arg_0.a.wyy), any(arg_0.a.wxw)), arg_0.a.yxw, any(global0.a.xx));
    let var_2 = i32(-1i) * -_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.d), vec2<i32>(u_input.d, u_input.a)), ~vec2<i32>(-12516i, -1i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f - -402f))))));
    return 36406i;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = reverseBits(countOneBits(u_input.b >> (u_input.b % 32u)));
    global1 = array<Struct_1, 19>();
    let var_1 = global3[_wgslsmith_index_u32(var_0, 13u)];
    var var_2 = arg_1;
    var_2 = Struct_1(!(!select(!vec4<bool>(false, false, false, arg_1.a.x), vec4<bool>(global0.a.x, false, global0.a.x, true), true)), -1679f, global2.x);
    return -1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = 2147483647i | u_input.c.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(2025f - global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global2.x) + global2.x))), 126f, arg_1.c);
    let var_2 = vec3<u32>(reverseBits(_wgslsmith_div_u32(52050u, abs(min(u_input.b, 76903u)))), ~0u, _wgslsmith_div_u32(1u, reverseBits(u_input.b)));
    var var_3 = vec2<i32>(firstLeadingBit(firstLeadingBit(~(u_input.d << (var_2.x % 32u)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~u_input.c.zz, _wgslsmith_div_vec2_i32(min(u_input.c.xx, vec2<i32>(-37326i, u_input.a)), vec2<i32>(u_input.c.x, -1i))), func_3(~vec4<i32>(-14513i, -1i, 36406i, 0i), Struct_1(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_0.x, false), 1127f, arg_1.b)) >> (~_wgslsmith_div_u32(0u, var_2.x) % 32u)));
    var var_4 = Struct_1(!select(select(global0.a, select(vec4<bool>(global0.a.x, global0.a.x, false, false), arg_1.a, arg_1.a), true), vec4<bool>(true, arg_1.a.x, !arg_1.a.x, var_1.x >= 319f), false), arg_1.c, _wgslsmith_f_op_f32(step(global0.c, global0.b)));
    return ~(-u_input.d);
}

fn func_4(arg_0: i32) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~_wgslsmith_div_u32(22315u, u_input.b), u_input.b), _wgslsmith_sub_u32(u_input.b, 4294967295u)), 19u)];
    let var_1 = vec2<bool>(all(vec3<bool>(all(var_0.a) || global0.a.x, !all(var_0.a.yx), false)), true);
    global1 = array<Struct_1, 19>();
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, 70093u), 13u)];
    global3 = array<Struct_1, 13>();
    return vec4<i32>(u_input.c.x, func_3(vec4<i32>(_wgslsmith_mult_i32(~arg_0, func_3(vec4<i32>(-2147483647i, u_input.d, u_input.d, 22118i), Struct_1(global0.a, 812f, var_0.c))), 2147483647i, 1i | arg_0, func_3(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 27971i, 63923i, arg_0), vec4<i32>(1i, u_input.c.x, -2147483647i, arg_0)), Struct_1(vec4<bool>(true, var_0.a.x, true, false), var_2.b, 1739f))), Struct_1(vec4<bool>(!var_0.a.x, var_1.x, true, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1119f)))), _wgslsmith_f_op_f32(max(-2064f, _wgslsmith_div_f32(-1000f, var_0.b))))), _wgslsmith_add_i32(arg_0 >> (1u % 32u), 18079i), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec4<i32>(func_1(Struct_1(global0.a, -1963f, global0.b), true), firstLeadingBit(-14167i), select(-6915i, 5771i, global0.a.x), ~u_input.d)) | func_4(-(func_2(global0.a.ywz, global1[_wgslsmith_index_u32(u_input.b, 19u)]) | -31361i));
    global3 = array<Struct_1, 13>();
    global0 = global1[_wgslsmith_index_u32(u_input.b, 19u)];
    let var_1 = Struct_1(vec4<bool>(global0.a.x | select(any(vec3<bool>(global0.a.x, global0.a.x, true)), global0.a.x, true), !global0.a.x, true, global0.a.x && all(!global0.a.xw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(233f, -441f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.b, 13u)];
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.c)), global0.c, var_2.c);
    global2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_3.x), var_2.b, 1170f, var_1.c))))));
    var var_4 = global3[_wgslsmith_index_u32(26525u, 13u)];
    var var_5 = global3[_wgslsmith_index_u32(abs(min(u_input.b, _wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(91626u, 4294967295u, u_input.b))), firstLeadingBit(vec3<u32>(4294967295u, u_input.b, u_input.b))))), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, var_0.x), max(-vec2<i32>(-2147483647i, u_input.a), vec2<i32>(var_0.x, u_input.a))), global2.wz);
}

