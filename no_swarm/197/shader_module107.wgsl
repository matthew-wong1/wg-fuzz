struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-493f, 1000f, -1032f, -266f, -1126f, 2198f, -612f, -1252f, -567f, 818f, -1537f);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c.x << (global1.c.x % 32u), 11u)]), (-10270i > u_input.b) & all(vec2<bool>(global1.b, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 11u)]) - _wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + 1843f) * 517f)))));
    global0 = array<f32, 11>();
    var var_1 = select(!(!vec3<bool>(false, any(vec2<bool>(true, false)), all(vec3<bool>(global1.d, true, global1.d)))), vec3<bool>(global1.d, all(select(select(vec4<bool>(global1.d, global1.d, true, global1.d), vec4<bool>(global1.b, global1.d, false, false), false), select(vec4<bool>(global1.b, true, global1.b, global1.d), vec4<bool>(false, global1.d, false, global1.b), global1.b), false)), all(vec2<bool>(false, !global1.b))), !vec3<bool>(any(!vec2<bool>(global1.b, global1.d)), false, 43361u <= _wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 7124u), vec2<u32>(global1.c.x, 1u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1459f, var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -152f), 327f, false && global1.b)) * _wgslsmith_f_op_f32(-1135f * _wgslsmith_f_op_f32(1059f * global0[_wgslsmith_index_u32(8112u, 11u)])))), global1.d, vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(global1.c, vec4<u32>(71306u, 4294967295u, arg_0.x, global1.c.x), true)), ~global1.c), abs(arg_0.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(arg_0.zy, vec2<u32>(20998u, 26527u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(global1.c.x, arg_0.x)), vec2<u32>(global1.c.x, 0u) >> (vec2<u32>(1u, global1.c.x) % vec2<u32>(32u)))), countOneBits(1u)), false);
    var var_2 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), u_input.a.x | u_input.c.x), ~u_input.a.zz) & u_input.c.x, u_input.b & (~_wgslsmith_sub_i32(u_input.a.x, u_input.b) | select(u_input.b, u_input.a.x, global1.d)), abs(~max(u_input.a.x, -42494i)));
    return global1.c.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.a, 477f, -645f))) * vec3<f32>(_wgslsmith_f_op_f32(411f + -806f), -302f, global0[_wgslsmith_index_u32(max(27142u, arg_0.x), 11u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(820f, 2377f, global1.a), vec3<f32>(1789f, 1858f, -732f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, global1.a, 266f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], 461f, global1.a), vec3<bool>(global1.d, false, true))))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(global1.a * var_0.x)), 732f)), !(true && global1.d), vec4<u32>(1u, abs(min(arg_0.x >> (arg_0.x % 32u), global1.c.x)), 1u, func_3(vec3<u32>(_wgslsmith_mod_u32(6570u, global1.c.x), countOneBits(arg_2), arg_2))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_0.a;
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(global1.a)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.c.x, arg_1.d.c.x), global1.c.xwy) ^ _wgslsmith_div_u32(60116u, _wgslsmith_mod_u32(20599u, arg_0.c.x)), 11u)]), any(vec4<bool>(true, ~u_input.b > u_input.b, any(vec4<bool>(arg_1.d.b, global1.d, arg_1.c, arg_1.d.d)), true)), max(max(_wgslsmith_mod_vec4_u32(~global1.c, global1.c), vec4<u32>(0u, 18900u, global1.c.x, _wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(arg_0.c.x, arg_0.c.x, 105145u, 1u)))), vec4<u32>(abs(arg_0.c.x) >> (42946u % 32u), _wgslsmith_dot_vec4_u32(arg_1.d.c, ~vec4<u32>(arg_0.c.x, 22352u, arg_1.a.x, 0u)), 1u, ~22903u)), true & arg_0.d);
    var var_1 = arg_1.d;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> StorageBuffer {
    global0 = array<f32, 11>();
    var var_0 = 17996u;
    let var_1 = !(!vec4<bool>(arg_0.a.d, true, !(!arg_0.c.d.b), arg_0.a.b));
    let var_2 = arg_1.c;
    var var_3 = var_1.x;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-874f + 391f), _wgslsmith_f_op_f32(max(1066f, global0[_wgslsmith_index_u32(arg_1.c.d.c.x, 11u)])), _wgslsmith_f_op_f32(round(-2100f))), vec3<f32>(-431f, _wgslsmith_f_op_f32(sign(arg_0.c.b.x)), -1416f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.d.a, 152f, global0[_wgslsmith_index_u32(4294967295u, 11u)]) * vec3<f32>(-412f, global0[_wgslsmith_index_u32(32729u, 11u)], 973f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, global0[_wgslsmith_index_u32(arg_1.c.d.c.x, 11u)], global1.d)) * _wgslsmith_f_op_f32(f32(-1f) * -999f))))));
}

fn func_1(arg_0: f32, arg_1: bool) -> StorageBuffer {
    let var_0 = Struct_1(2368f, arg_1, ~(~max(~global1.c, select(global1.c, global1.c, vec4<bool>(false, true, global1.d, false)))), true == (4806u >= _wgslsmith_div_u32(global1.c.x << (56928u % 32u), 1u)));
    var var_1 = firstTrailingBit(vec4<i32>(u_input.b, u_input.c.x, abs(-(~u_input.c.x)), ~(-min(u_input.b, u_input.a.x))));
    var var_2 = !arg_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(15266u, 11u)])));
    var var_4 = var_1.x;
    return func_5(Struct_3(Struct_1(arg_0, var_0.d, ~var_0.c, true), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(22131i, 49177i, 2147483647i, u_input.c.x), vec4<i32>(var_1.x, u_input.c.x, 2147483647i, u_input.b)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_1.x, u_input.c.x, var_1.x), vec4<i32>(-22143i, 13610i, 35960i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, -37086i, 3455i)), vec4<i32>(-1i) * -vec4<i32>(var_1.x, -38871i, -1i, 1i)), func_4(var_0, Struct_2(~var_0.c.wy, vec2<f32>(var_0.a, 1024f), arg_1 & arg_1, func_2(vec3<u32>(4294967295u, var_0.c.x, 97061u), vec2<bool>(false, false), 0u), var_0.a))), Struct_3(var_0, select(select(~vec4<i32>(0i, -2147483647i, u_input.a.x, var_1.x), ~vec4<i32>(var_1.x, -1i, u_input.b, u_input.a.x), select(vec4<bool>(global1.d, arg_1, true, true), vec4<bool>(global1.d, var_0.b, arg_1, false), var_0.d)), _wgslsmith_div_vec4_i32(-vec4<i32>(66666i, var_1.x, var_1.x, -2147483647i), abs(vec4<i32>(-9272i, var_1.x, 2147483647i, u_input.a.x))), var_0.c.x == var_0.c.x), func_4(Struct_1(_wgslsmith_f_op_f32(abs(arg_0)), true, vec4<u32>(var_0.c.x, var_0.c.x, global1.c.x, global1.c.x), true), func_4(func_4(var_0, Struct_2(vec2<u32>(global1.c.x, 24680u), vec2<f32>(494f, arg_0), var_0.d, var_0, global0[_wgslsmith_index_u32(33867u, 11u)])).d, Struct_2(vec2<u32>(var_0.c.x, 21569u), vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], arg_0), false, Struct_1(arg_0, arg_1, var_0.c, arg_1), 414f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    let var_0 = 1u;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_clamp_vec3_i32(reverseBits(u_input.a), min(u_input.a, vec3<i32>(u_input.a.x, 0i, 2147483647i)), vec3<i32>(2147483647i, u_input.b, -64880i))), -6893i) > -(i32(-1i) * -firstTrailingBit(56531i));
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~(-u_input.a.yx), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.a.x, 4961i, u_input.b, u_input.a.x)))), abs(u_input.a.yy)), vec2<i32>(0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a, u_input.c) << (~22418u % 32u))));
    let var_3 = ~(reverseBits(u_input.a) & vec3<i32>(abs(var_2.x ^ -12531i), 1i, -_wgslsmith_div_i32(var_2.x, -2147483647i)));
    var var_4 = global0[_wgslsmith_index_u32(max(reverseBits(~abs(global1.c.x)), 13458u), 11u)];
    var_4 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    let x = u_input.a;
    s_output = func_1(2658f, global1.d);
}

