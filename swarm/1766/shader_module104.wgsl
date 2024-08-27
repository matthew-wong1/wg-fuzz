struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = u_input.a.yww;
    let var_1 = vec3<i32>(min(reverseBits(1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 32241i), select(vec2<i32>(arg_3.c.x, 2147483647i), global0.c.xz, vec2<bool>(true, arg_0.a.c)))), 1i, select(-1i, -19945i, all(!(!vec2<bool>(global0.a.d, global0.a.c)))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 20240u), 12u)];
    let var_2 = arg_3.a.a.xz;
    let var_3 = var_2.x;
    return any(select(vec4<bool>(all(vec2<bool>(global0.a.d, arg_0.a.d)), true, global0.b.x > _wgslsmith_f_op_f32(-450f * var_2.x), !(false != global0.a.d)), vec4<bool>(arg_2.d, true, false, arg_2.c | !arg_2.d), vec4<bool>(!arg_0.a.c, true, global0.a.d, global0.a.d && arg_3.a.c)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.x)) * 1000f), arg_0.a.x)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.b), ~arg_0.b, false, all(arg_2)), ~reverseBits(max(vec4<u32>(2801u, 4294967295u, 22440u, arg_3.b), u_input.a) | firstLeadingBit(vec4<u32>(79969u, u_input.a.x, 2745u, global0.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -123f), any(!arg_2.yy), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.a.x))));
    var var_2 = _wgslsmith_div_vec4_u32((firstLeadingBit(var_1.b) >> (vec4<u32>(global0.a.b, var_1.a.b, _wgslsmith_mod_u32(u_input.b, arg_3.b), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_0.b, 47855u, 0u, var_1.b.x))) % vec4<u32>(32u))) ^ u_input.a, ~abs(~var_1.b));
    var var_3 = global1[_wgslsmith_index_u32(~abs(0u), 12u)];
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(~max(~6791u, var_2.x))), 12u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.a.a))), arg_0.b, all(arg_2), all(vec3<bool>(all(!vec4<bool>(arg_0.d, var_1.a.c, arg_3.c, true)), all(select(vec4<bool>(true, false, global0.a.c, arg_0.d), arg_2, vec4<bool>(arg_0.c, false, arg_0.c, arg_2.x))), var_4.a.d)));
}

fn func_1() -> Struct_3 {
    return Struct_3(func_3(global0.a, vec3<i32>(countOneBits(-46790i), -_wgslsmith_mult_i32(1i, global0.c.x), ~(-52386i) & ~global0.c.x), select(vec4<bool>(func_2(Struct_3(global0.a, vec3<f32>(-225f, global0.b.x, global0.a.a.x), vec3<i32>(5524i, global0.c.x, global0.c.x)), vec4<f32>(global0.b.x, -144f, -425f, global0.b.x), Struct_1(vec3<f32>(global0.b.x, global0.a.a.x, 320f), global0.a.b, false, global0.a.c), Struct_3(global0.a, vec3<f32>(global0.b.x, global0.a.a.x, global0.a.a.x), global0.c)), global0.a.d, global0.a.c & true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.a.a)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(global0.c.x, -9009i, global0.c.x) & global0.c), vec3<i32>(global0.c.x, _wgslsmith_add_i32(41047i, -57223i), _wgslsmith_div_i32(-6580i, global0.c.x))), vec3<i32>(1i, select(0i, 5044i, true), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 23298i, -64569i, global0.c.x), vec4<i32>(global0.c.x, -1i, 2147483647i, global0.c.x)), reverseBits(global0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(478f, -1449f, -488f);
    global0 = func_1();
    let var_1 = Struct_2(global0.a, u_input.a, 639f, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.b.x)))));
    global1 = array<Struct_3, 12>();
    let var_2 = var_1;
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(global0.c, global0.c), max(global0.c.x, -(~_wgslsmith_sub_i32(global0.c.x, -1882i))), -2147483647i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(951f, global0.b.x, 746f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, -1033f, var_0.x) * global0.b)))), func_1().a.a));
}

