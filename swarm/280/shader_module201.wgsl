struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_1(arg_0.a, vec2<f32>(1205f, _wgslsmith_f_op_f32(select(-937f, arg_0.c, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)));
    let var_1 = Struct_1(vec4<i32>(-1i, u_input.c.x & (i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(global0.a & var_0.a, ~arg_0.a), u_input.b.x) << (vec4<u32>(14337u, firstLeadingBit(arg_3), 0u, 96773u) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f * arg_1.c))), _wgslsmith_f_op_f32(round(1361f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2221f, global0.b.x) + -901f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -940f), 593f)))));
    global0 = var_1;
    var var_2 = -65599i;
    let var_3 = arg_0.a;
    return vec2<f32>(-143f, global0.c);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.c, 2111f))), 117f), Struct_1(countOneBits(vec4<i32>(global0.a.x, u_input.c.x, u_input.b.x, 13640i)), global0.b, _wgslsmith_f_op_f32(-global0.b.x)), ~1u, countOneBits(59982u)))), global0.c);
    let var_1 = select(u_input.e.x, u_input.d, select(false, any(vec2<bool>(true, true)), ((18764u ^ u_input.a) | firstTrailingBit(0u)) == countOneBits(~92020u)));
    var var_2 = _wgslsmith_f_op_f32(global0.c * var_0.b.x);
    let var_3 = var_0;
    var var_4 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_1, var_1), _wgslsmith_add_u32(82883u, u_input.d), abs(countOneBits(var_1))), ~vec3<u32>(26560u, ~60955u, 48898u)));
    return Struct_1(var_0.a, vec2<f32>(-1112f, -329f), _wgslsmith_div_f32(1118f, -1141f));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = func_2();
    let var_1 = abs(_wgslsmith_div_i32(var_0.a.x, ~_wgslsmith_mod_i32(-var_0.a.x, ~8811i)));
    let var_2 = global0.a.ww;
    let var_3 = var_2.x;
    let var_4 = vec4<u32>(abs(4294967295u), firstTrailingBit(~100434u), ~77918u, 24553u);
    return ~29558u;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> bool {
    let var_0 = func_2();
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1184f, -1793f))) - _wgslsmith_f_op_vec2_f32(-global0.b))), vec2<f32>(var_0.b.x, global0.b.x))), -512f);
    var var_1 = func_2();
    var_1 = Struct_1(abs(-max(vec4<i32>(50806i, global0.a.x, u_input.b.x, -6640i), vec4<i32>(global0.a.x, var_0.a.x, u_input.c.x, global0.a.x))) | reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, u_input.b.x, 1989i), firstLeadingBit(var_1.a))), _wgslsmith_f_op_vec2_f32(-var_1.b), var_0.b.x);
    var var_2 = var_0;
    return u_input.e.x < (~(~54984u) & u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), func_4(func_1(true), vec2<i32>(_wgslsmith_mult_i32(global0.a.x, u_input.c.x), u_input.c.x)));
    var var_1 = Struct_1(-global0.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(func_2(), Struct_1(vec4<i32>(-2147483647i, global0.a.x, -7761i, u_input.c.x), vec2<f32>(global0.b.x, 196f), global0.b.x), firstTrailingBit(u_input.d), u_input.e.x))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-813f - global0.b.x)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.a & global0.a, vec2<f32>(-935f, -331f), global0.b.x), func_2(), abs(41388u), u_input.d)).x);
    let var_2 = vec2<bool>(any(select(vec3<bool>(var_0.x, false, true), !(!vec3<bool>(var_0.x, false, var_0.x)), u_input.a > 14890u)), any(!select(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, false, var_0.x, true)), vec4<bool>(false, true, false, var_0.x), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)))));
    var var_3 = abs(~_wgslsmith_mod_vec2_u32(u_input.e.zx, countOneBits(u_input.e.wy)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -137f));
    var var_5 = global0.b.x;
    var var_6 = _wgslsmith_f_op_vec3_f32(vec3<f32>(592f, _wgslsmith_div_f32(399f, _wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))), 266f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-222f, 1594f, global0.c), vec3<f32>(488f, 195f, -1105f), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.wyx, 28892u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(sign(-2058f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(978f)) * -1000f), !all(vec3<bool>(true, true, var_2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f * _wgslsmith_f_op_f32(-global0.c)) * 1f)), vec4<u32>(_wgslsmith_mult_u32(~13292u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.x, 4294967295u, u_input.e.x, 40211u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.e.x, var_3.x, u_input.e.x), u_input.e))), 62740u, ~6766u, 41787u));
}

