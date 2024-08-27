struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(4294967295u, 0u, 103794u, 1809u, 35462u, 1u, 0u, 0u, 34775u);

var<private> global1: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-1000f, 1058f, -582f, -2302f), vec4<f32>(1511f, 876f, -1607f, 921f), vec4<f32>(-1365f, 1577f, -384f, 1000f));

var<private> global2: array<u32, 28> = array<u32, 28>(0u, 4476u, 3780u, 9275u, 1u, 66877u, 1u, 19086u, 19546u, 1u, 4294967295u, 2266u, 4294967295u, 41342u, 26241u, 4294967295u, 50621u, 18721u, 0u, 59603u, 4294967295u, 1u, 1u, 0u, 0u, 50016u, 5728u, 1u);

var<private> global3: Struct_1 = Struct_1(-1i, -677f, true);

var<private> global4: array<bool, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = u_input.b.zz;
    global0 = array<u32, 9>();
    let var_1 = -vec3<i32>(arg_3.a, ~(-12805i), _wgslsmith_add_i32(-arg_1, ~(~u_input.c)));
    let var_2 = vec3<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f + -1377f)) >= global3.b) || true, false, !global4[_wgslsmith_index_u32(1u, 18u)]);
    var var_3 = arg_3;
    return max(~_wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(var_3.a, -2147483647i)), -(~arg_1)), 22863i);
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_add_i32(~15711i, reverseBits(func_3(global3.a, -firstTrailingBit(-2147483647i), select(vec2<bool>(true, true), select(vec2<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70889u, 28u)], 18u)], global4[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(global3.c, global3.c), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 18u)]), all(vec4<bool>(false, true, global3.c, true))), Struct_1(-1i, global3.b, true))));
    let var_1 = Struct_1(min(-15473i, -min(global3.a, firstLeadingBit(0i))), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + global3.b))), global3.b), false);
    var var_2 = var_1;
    global1 = array<vec4<f32>, 3>();
    global0 = array<u32, 9>();
    return global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 9u)], 18u)];
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    let var_1 = select(vec4<bool>(global3.c, false, !global3.c, all(vec3<bool>(func_2(vec2<i32>(2147483647i, 60516i)), arg_2.c, arg_2.b > -976f))), !(!vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 9u)] < global0[_wgslsmith_index_u32(u_input.b.x, 9u)], !arg_2.c, false, true)), vec4<bool>(false, all(select(select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 18u)], false, arg_2.c), vec3<bool>(true, global3.c, global3.c), vec3<bool>(false, arg_2.c, arg_2.c)), vec3<bool>(true, true, false), select(vec3<bool>(arg_2.c, true, true), vec3<bool>(false, arg_2.c, global3.c), vec3<bool>(arg_2.c, global3.c, arg_2.c)))), true, all(!vec3<bool>(arg_2.c, true, false))));
    let var_2 = Struct_1(arg_2.a, arg_0, !var_1.x);
    let var_3 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~10777u, 1u) & _wgslsmith_mult_vec2_u32(vec2<u32>(41730u, 31296u) >> (vec2<u32>(arg_1, 23000u) % vec2<u32>(32u)), u_input.b.zz | u_input.b.zw), vec2<u32>(~global2[_wgslsmith_index_u32(~u_input.a, 28u)], arg_1));
    global0 = array<u32, 9>();
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 18>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1578f, global3.b))), global3.b)));
    var var_1 = Struct_1(-2147483647i, 518f, true);
    let var_2 = false;
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(564f, u_input.b.x, Struct_1(global3.a, -604f, true))) + _wgslsmith_f_op_f32(837f - var_1.b)))), 719f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.b, var_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), global3.b))))));
    global4 = array<bool, 18>();
    var_1 = Struct_1((_wgslsmith_sub_i32(~global3.a, 1i) | ~(-2147483647i)) ^ 19350i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) + _wgslsmith_f_op_f32(-var_0.x)))), abs(_wgslsmith_sub_i32(2147483647i, var_1.a)) == (u_input.c ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -5921i, 23987i, -2147483647i), vec4<i32>(1i, var_1.a, var_1.a, 0i))));
    var var_3 = u_input.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(95498u, 28u)], global0[_wgslsmith_index_u32(var_3.x, 9u)]), 3u)] + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(787f, -1043f, 1022f, 246f), vec4<f32>(var_1.b, 2558f, 1025f, -1332f), global3.c))))) * global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec2_u32(u_input.b.zw, u_input.b.zy), 9464u, var_2), 9u)], 3u)]), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, global3.a, -2147483647i) & vec3<i32>(43456i, global3.a, -3057i), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.a, 4238i, -2147483647i), ~vec3<i32>(69204i, var_1.a, 1i)), vec3<i32>(~(-2147483647i), -11674i, reverseBits(var_1.a))), min(vec3<i32>(u_input.c, u_input.c, 0i) & vec3<i32>(var_1.a, 63832i, 65928i), -vec3<i32>(-35180i, global3.a, var_1.a)) | (-vec3<i32>(-2147483647i, 0i, var_1.a) << (vec3<u32>(12269u, u_input.b.x, 0u) % vec3<u32>(32u)))));
}

