struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec4<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = false;
    var var_1 = 5979u;
    var var_2 = 40913u;
    var_1 = ~25790u;
    var var_3 = arg_0;
    return Struct_2(824f, var_3.b, var_3.c);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec4<u32> {
    global2 = Struct_1(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x, u_input.a.x, -2147483647i, global2.c.x), vec4<i32>(global2.a, global2.a, global2.c.x, 30061i)) & 25641i, -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(997f, global2.b.x, 243f, -1609f)))))) * global2.b), ~min(_wgslsmith_div_vec2_i32(vec2<i32>(global2.c.x, 37303i), -u_input.a.yy), u_input.a.xx), (_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(abs(477f))) != arg_1.x) == !all(vec3<bool>(global2.d, global0.x, false)));
    var var_0 = Struct_1(select(49373i, min(firstTrailingBit(u_input.a.x), global2.a) | global2.a, !global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, -907f, -938f, -1139f), global2.b))))) * _wgslsmith_f_op_vec4_f32(min(global2.b, vec4<f32>(-272f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(572f)), _wgslsmith_f_op_f32(min(global2.b.x, global2.b.x)))))), vec2<i32>(_wgslsmith_sub_i32(1i, ~u_input.a.x), -51202i), true);
    global0 = vec2<bool>(global0.x, !(!all(global1.zx)));
    var var_1 = reverseBits(vec2<i32>(global2.c.x, ~(-(u_input.a.x ^ u_input.a.x))));
    var var_2 = -(~_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(global2.c.x, var_1.x))) ^ 1i;
    return vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 17431u, 0u, 12131u))), _wgslsmith_mod_u32(~min(72091u, 0u), firstTrailingBit(reverseBits(11681u))) << (abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, 40728u), vec3<u32>(17013u, 1u, 26120u), vec3<bool>(global0.x, var_0.d, global0.x)), ~vec3<u32>(4546u, 4294967295u, 45833u))) % 32u), ~1u);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = vec2<bool>(true, global2.d);
    var var_0 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, u_input.a.x, global2.c.x, arg_1.c.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 16917i), vec4<bool>(global0.x, arg_1.d, false, global2.d)), vec4<i32>(29155i, global2.a, arg_1.a, u_input.a.x)), -(~vec4<i32>(u_input.a.x, global2.a, u_input.a.x, 11148i))) << (func_3(func_2(Struct_2(_wgslsmith_f_op_f32(-arg_1.b.x), !global1.xy, !vec3<bool>(arg_1.d, true, global2.d))), arg_1.b.zyz) % vec4<u32>(32u));
    let var_1 = func_2(Struct_2(1f, !global1.zx, !vec3<bool>(-1044f == global2.b.x, true | arg_1.d, false)));
    global0 = vec2<bool>(!global1.x, !(arg_1.d || global0.x) == (0u == ~select(arg_0, arg_0, false)));
    var var_2 = Struct_1(-5848i, global2.b, arg_1.c, func_2(func_2(Struct_2(1193f, select(vec2<bool>(global0.x, arg_1.d), vec2<bool>(false, var_1.b.x), global2.d), !var_1.c))).b.x);
    return Struct_1(-2147483647i, vec4<f32>(609f, _wgslsmith_f_op_f32(select(-1608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f - var_2.b.x)), false)), _wgslsmith_f_op_f32(arg_1.b.x * -2046f), 262f), _wgslsmith_div_vec2_i32(var_2.c, -vec2<i32>(var_2.c.x, 2147483647i)), !(!((u_input.a.x < arg_1.c.x) | true)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(global2.b.x, select(select(global1.yx, vec2<bool>(true, true), func_2(Struct_2(-1000f, global1.zz, vec3<bool>(false, false, false))).a <= _wgslsmith_f_op_f32(-arg_0.b.x)), global1.ww, !vec2<bool>(false, global2.d)), select(vec3<bool>(true, global0.x, false), func_2(func_2(func_2(Struct_2(global2.b.x, vec2<bool>(global2.d, global2.d), vec3<bool>(global2.d, true, false))))).c, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.wy;
    let var_0 = func_4(func_1(~0u, Struct_1(-_wgslsmith_sub_i32(u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(select(global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)), false)), vec2<i32>(2135i, _wgslsmith_dot_vec4_i32(vec4<i32>(5406i, -23613i, -1i, global2.a), vec4<i32>(-60196i, -1i, 77419i, -13459i))), false)));
    let var_1 = 1u;
    let var_2 = func_2(func_4(Struct_1(abs(u_input.a.x) ^ u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global2.b)) + vec4<f32>(-1000f, -1204f, -1048f, -410f)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yz, u_input.a.xx), u_input.a.zy | vec2<i32>(global2.a, 0i)), global2.d))).c;
    let var_3 = _wgslsmith_div_u32(countOneBits(var_1), ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.yzw, min(abs(~(~0u)), var_1), 49952u, vec3<f32>(_wgslsmith_f_op_f32(-2403f + var_0.a), _wgslsmith_f_op_f32(2480f - global2.b.x), var_0.a));
}

