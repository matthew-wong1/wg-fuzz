struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(592f, 491f), Struct_1(-1000f, true, vec2<i32>(39543i, -12329i)), Struct_1(1053f, false, vec2<i32>(2147483647i, 1i)), -1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32) -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(arg_0.b.a.c)), Struct_1(arg_1.a.x, true, vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.b.a.e.xyw, arg_0.b.a.e.yzz), min(u_input.c, arg_2)) >> (vec2<u32>(~42196u, _wgslsmith_dot_vec3_u32(vec3<u32>(2269u, arg_0.b.c.x, 13293u), vec3<u32>(1u, arg_0.b.a.b, u_input.b.x))) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_f32(arg_0.b.a.d.x, global0.c.a), all(!arg_0.c), vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(-1i), _wgslsmith_sub_i32(35826i, -1i)), _wgslsmith_div_i32(24445i, u_input.c) & -39627i)), u_input.a);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-global0.c.a)), _wgslsmith_f_op_f32(step(-635f, _wgslsmith_f_op_f32(ceil(-1487f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(!global0.c.b, Struct_4(Struct_3(vec4<f32>(1237f, 301f, arg_0.a, global0.a.x), u_input.d.x, vec2<f32>(511f, -2394f), vec4<f32>(1000f, arg_1.x, global0.c.a, arg_0.a), vec4<i32>(-1i, arg_0.c.x, -2147483647i, u_input.a)), 0i, vec3<u32>(arg_2, 26007u, 4294967295u)), vec3<bool>(true, true, true)), Struct_2(global0.a, global0.b, Struct_1(453f, arg_0.b, arg_0.c), u_input.c), u_input.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1632f), !global0.c.b | global0.c.b)), _wgslsmith_f_op_f32(ceil(global0.c.a)), _wgslsmith_f_op_f32(sign(arg_0.a))), 63523u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1670f)), 1544f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, global0.c.a, -1039f, -829f), _wgslsmith_div_vec4_f32(vec4<f32>(-1653f, global0.a.x, arg_0.a, global0.a.x), vec4<f32>(1989f, arg_1.x, -470f, arg_0.a))))), -vec4<i32>(-_wgslsmith_div_i32(global0.b.c.x, u_input.c), abs(firstLeadingBit(u_input.c)), 2147483647i, -(~arg_0.c.x)));
    var var_1 = -(_wgslsmith_dot_vec4_i32(-var_0.e, ~(-vec4<i32>(global0.b.c.x, -2147483647i, u_input.c, global0.b.c.x))) & select(_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(var_0.e.x, var_0.e.x)), 33272i, true));
    var var_2 = Struct_1(801f, !(((var_0.b ^ u_input.b.x) ^ _wgslsmith_add_u32(u_input.d.x, var_0.b)) == 45167u), global0.b.c);
    var var_3 = _wgslsmith_mult_u32(0u, u_input.e);
    var var_4 = Struct_5(true, Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(-497f, arg_0.a, -131f, var_0.a.x) * vec4<f32>(365f, 2608f, -918f, arg_1.x))), 71663u, var_0.d.wz, var_0.d, var_0.e), var_2.c.x, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, var_0.b), u_input.d.ywy) << ((u_input.d.xzz >> (u_input.d.wxx % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<u32>(var_0.b, arg_2, 15385u))), select(!vec3<bool>(48597i <= u_input.a, true, any(vec3<bool>(global0.b.b, false, var_2.b))), vec3<bool>(true, true, true), !(all(vec2<bool>(arg_0.b, arg_0.b)) && !global0.b.b)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(836f, -1155f, var_2.a, arg_0.a))), var_4.b.a.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 262f, _wgslsmith_f_op_f32(f32(-1f) * -169f), -2176f) * _wgslsmith_f_op_vec4_f32(-var_4.b.a.d))), min(81864u, ~0u), _wgslsmith_f_op_vec2_f32(-var_0.a.yz), vec4<f32>(-1902f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.b.a)), -154f), 1118f, _wgslsmith_div_f32(680f, 254f)), -(vec4<i32>(-2147483647i, var_4.b.b, var_4.b.b, 1i) | var_0.e) & ~(var_0.e ^ (var_0.e << (vec4<u32>(2960u, u_input.b.x, var_0.b, 0u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_4(func_2(global0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(976f)), global0.b.a)), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d.xxx, u_input.d.wwx << (u_input.d.wzx % vec3<u32>(32u))))), _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(func_2(global0.c, global0.a, u_input.e >> (4885u % 32u)).e.x, u_input.a)), u_input.d.xxw);
    var var_1 = var_0.a.a.zzz;
    var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.a.a.x))), any(select(!vec3<bool>(global0.c.b, global0.b.b, false), !vec3<bool>(false, global0.b.b, true), global0.b.b)), vec2<i32>((u_input.a >> (u_input.d.x % 32u)) & ~(-1i), i32(-1i) * -17864i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1266f * global0.b.a))))), _wgslsmith_sub_u32(4294967295u, ~var_0.a.b) << (u_input.b.x % 32u)).d.xzw;
    var var_2 = 53387i;
    let var_3 = all(!(!select(select(vec3<bool>(true, global0.b.b, global0.c.b), vec3<bool>(true, true, global0.b.b), true), vec3<bool>(global0.b.b, global0.c.b, false), all(vec4<bool>(global0.b.b, global0.c.b, false, global0.c.b)))));
    return Struct_4(var_0.a, 22453i, ~u_input.d.yww << (_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.d.x, 1u, 0u)), select(select(u_input.d.xxx, vec3<u32>(u_input.e, u_input.e, 1u), global0.b.b), var_0.c, global0.c.b && false)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(_wgslsmith_mult_i32(u_input.a, -27792i), u_input.c, 1i) >> (u_input.d.yww % vec3<u32>(32u)));
    let var_1 = Struct_5(true, var_0, !vec3<bool>(all(vec3<bool>(global0.c.b, true, global0.c.b)), true, any(select(vec4<bool>(false, global0.c.b, global0.c.b, true), vec4<bool>(global0.c.b, true, false, false), global0.c.b))));
    var var_2 = false;
    let var_3 = false || var_1.a;
    let var_4 = var_0.a.a.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.e.wxx, max(_wgslsmith_add_u32(~13939u, var_0.a.b) | u_input.e, 4294967295u));
}

