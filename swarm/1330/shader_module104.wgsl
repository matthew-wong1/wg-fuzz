struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<i32, 24> = array<i32, 24>(1338i, 0i, 1i, 1i, 2147483647i, 38639i, i32(-2147483648), 1i, 0i, 2147483647i, -5504i, i32(-2147483648), i32(-2147483648), -8257i, -1i, -64221i, -14932i, i32(-2147483648), -40098i, -1i, 2147483647i, 0i, 17015i, -5569i);

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 29>;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 1u, 1u, 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = !(!select(vec4<bool>(!arg_1.x, all(vec2<bool>(true, arg_1.x)), true, true), vec4<bool>(-2147483647i >= u_input.b.x, all(arg_1), any(vec4<bool>(arg_1.x, arg_3.e, true, false)), false), !select(vec4<bool>(arg_1.x, arg_3.e, false, true), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_2.e, arg_2.e, false, false))));
    global2 = all(!select(vec4<bool>(all(var_0.wz), arg_3.a < -1119f, true, true), vec4<bool>(true, var_0.x, true, !arg_0.x), true));
    let var_1 = global3[_wgslsmith_index_u32(36643u, 29u)];
    let var_2 = arg_3;
    let var_3 = ~vec2<u32>(4294967295u, 1u);
    return reverseBits(firstLeadingBit(-_wgslsmith_dot_vec2_i32(~var_2.c.xw, -vec2<i32>(-65009i, 13836i))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(arg_0.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - arg_0.a) + _wgslsmith_f_op_f32(arg_0.a * arg_0.a)))), ~(u_input.c >> (9309u % 32u)), vec4<i32>(-firstTrailingBit(func_3(vec2<bool>(false, arg_0.e), vec3<bool>(false, arg_0.e, true), Struct_1(arg_0.a, 16199u, vec4<i32>(global1[_wgslsmith_index_u32(arg_0.b, 24u)], -2147483647i, global1[_wgslsmith_index_u32(global4.x, 24u)], arg_0.d.x), arg_0.c.wy, true), Struct_1(arg_0.a, 39937u, arg_0.c, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(arg_0.b, 24u)]), false))), countOneBits(~countOneBits(-1i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(16998i, u_input.b.x), firstLeadingBit(_wgslsmith_add_i32(0i, u_input.b.x))), ~(-(arg_0.c.x | u_input.b.x))), vec2<i32>(~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-4860i, min(u_input.b.x, 0i)), vec2<i32>(u_input.b.x, arg_0.d.x))), true);
    let var_2 = any(!(!select(!vec3<bool>(true, false, var_1.e), vec3<bool>(false, true, true), all(vec3<bool>(arg_0.e, true, var_1.e)))));
    global3 = array<Struct_1, 29>();
    var var_3 = _wgslsmith_dot_vec3_u32(~min(vec3<u32>(countOneBits(arg_0.b), firstTrailingBit(4657u), arg_0.b), ~(~global4.zxw)), ~countOneBits(vec3<u32>(_wgslsmith_mult_u32(var_1.b, global4.x), arg_0.b, max(121148u, 4294967295u))));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2(global3[_wgslsmith_index_u32(global4.x ^ _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, global4.x, 10824u) << (global4.xzw % vec3<u32>(32u))), ~(global4.zww | global4.wzy)), 29u)]);
    var var_1 = func_2(global3[_wgslsmith_index_u32(firstTrailingBit(81996u), 29u)]);
    var_0 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_2 = var_1.d.x;
    return Struct_1(_wgslsmith_f_op_f32(exp2(var_1.a)), var_0.b, ~(select(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 24u)], -1i, 10094i, arg_0), vec4<i32>(1i, 1i, -2147483647i, 24348i)), var_0.c, func_2(Struct_1(872f, global4.x, var_1.c, vec2<i32>(var_0.c.x, 34355i), false)).e) << (~(~vec4<u32>(1u, 1u, global4.x, global4.x)) % vec4<u32>(32u))), var_1.c.ww, var_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = arg_1.a;
    let var_1 = arg_0;
    let var_2 = Struct_1(-1100f, firstTrailingBit(~(~arg_0.b)), arg_1.c, _wgslsmith_div_vec2_i32((-vec2<i32>(-2147483647i, 22807i) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.x, var_1.c.x), arg_1.c.ww)) >> (~_wgslsmith_mult_vec2_u32(global4.zx, global4.yw) % vec2<u32>(32u)), vec2<i32>(-u_input.b.x, -48696i)), arg_2);
    return func_2(global3[_wgslsmith_index_u32(arg_1.b, 29u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-942f))));
    let var_2 = false;
    let var_3 = func_4(func_1(_wgslsmith_add_i32(u_input.b.x | ~global1[_wgslsmith_index_u32(u_input.a, 24u)], 0i)), func_1(32494i), var_2, 1i);
    let var_4 = select(vec3<bool>(func_4(Struct_1(func_1(-2147483647i).a, 1u, vec4<i32>(-2147483647i, var_0.x, var_3.d.x, 1i), u_input.b.yz, any(vec2<bool>(true, true))), var_3, !(!var_3.e), _wgslsmith_mod_i32(-42969i >> (global4.x % 32u), reverseBits(-1i))).e, !(var_3.a >= _wgslsmith_div_f32(var_3.a, var_3.a)), any(!(!vec3<bool>(true, var_2, var_2)))), !(!select(vec3<bool>(var_2, var_3.e, var_2), vec3<bool>(var_2, true, true), true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.a, -1152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), var_3.a, true))), _wgslsmith_clamp_vec3_i32(func_1(60103i & var_3.c.x).c.zzx, _wgslsmith_clamp_vec3_i32(~var_3.c.wyx, u_input.b, vec3<i32>(-10759i, i32(-1i) * -29309i, func_3(var_4.yy, var_4, global0[_wgslsmith_index_u32(u_input.c, 10u)], Struct_1(-1053f, 1u, var_3.c, vec2<i32>(var_3.d.x, u_input.b.x), var_3.e)))), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1969f, 711f, var_3.a))))), 1u);
}

