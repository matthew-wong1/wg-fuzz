struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-1i, -40011i), vec2<i32>(24136i, -1i), vec2<i32>(1i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 30936i), vec2<i32>(-2603i, -25528i), vec2<i32>(18464i, 1i), vec2<i32>(20449i, -68240i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(-9816i, 13677i), vec2<i32>(-1i, 14938i));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, false, !any(vec3<bool>(true, arg_3, arg_3)), select(global2.a.x, arg_3, global2.a.x) & true)));
    global1 = array<vec2<i32>, 15>();
    let var_1 = vec2<f32>(111f, -173f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(883f, 679f)))), var_1.x);
    return Struct_1(!select(select(select(global2.a, vec4<bool>(arg_1.x, false, global2.a.x, global2.a.x), global2.a.x), select(var_0.a.a, global2.a, var_0.a.a.x), global2.a), global2.a, global2.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(arg_1.a);
    var_0 = arg_1;
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, 1i, u_input.c, -75553i), ~vec4<i32>(-13512i, 60013i, -5175i, u_input.a)), abs(vec4<i32>(u_input.c, 5496i, 1i, u_input.c))) | (vec4<i32>(-1i) * -vec4<i32>(-12576i, u_input.c, u_input.c, u_input.c)), ~countOneBits(-vec4<i32>(1i, 1i, 1i, 1i)));
    var var_2 = Struct_3(Struct_2(Struct_1(!func_1(var_1.yyw, vec3<bool>(arg_3.a.x, false, arg_2.x), var_1.x, global2.a.x).a)), u_input.b.x | 4294967295u);
    var var_3 = u_input.b.x;
    return false;
}

fn func_3() -> vec3<bool> {
    global2 = Struct_1(global2.a);
    var var_0 = global2.a.zx;
    let var_1 = func_1(vec3<i32>(~_wgslsmith_mult_i32(u_input.c, -1i), -firstLeadingBit(-18998i), u_input.a) << (~select(u_input.b.wyw, ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), true) % vec3<u32>(32u)), global2.a.wxy, _wgslsmith_div_i32(u_input.a, 1i), !(!(-u_input.c >= -61567i)));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(139f))) * 483f), -800f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))));
    return global2.a.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(~(~(u_input.c ^ _wgslsmith_add_i32(-13927i, -74690i))));
    global2 = func_1(~reverseBits(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.c)) & ~vec3<i32>(0i, u_input.c, u_input.a)), global2.a.xzz, -u_input.a, ~max(u_input.b.x, _wgslsmith_mult_u32(21368u, 1u)) > u_input.b.x);
    global1 = array<vec2<i32>, 15>();
    global2 = func_1(~vec3<i32>(-1i, u_input.c, u_input.c), func_1(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-66550i, u_input.c, -1043i), vec3<i32>(0i, 2147483647i, u_input.a)), -vec3<i32>(u_input.a, u_input.c, -1i), func_2(vec2<bool>(global2.a.x, true), Struct_2(Struct_1(vec4<bool>(false, global2.a.x, true, global2.a.x))), vec2<bool>(global2.a.x, global2.a.x), Struct_1(global2.a))) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 57580i), countOneBits(vec3<i32>(u_input.c, u_input.a, -1i))), func_3(), -2147483647i, (_wgslsmith_f_op_f32(max(263f, 277f)) < _wgslsmith_f_op_f32(floor(892f))) || true).a.zxx, u_input.a, func_1(vec3<i32>(~_wgslsmith_mod_i32(u_input.a, -2147483647i), u_input.c, u_input.c), select(!(!global2.a.ywx), vec3<bool>(true, global2.a.x, global2.a.x), func_3().x), firstTrailingBit(-u_input.c), true).a.x);
    global1 = array<vec2<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec3<u32>(u_input.b.x, ~(u_input.b.x & 22827u), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1137f * _wgslsmith_f_op_f32(min(-692f, -507f)))));
}

