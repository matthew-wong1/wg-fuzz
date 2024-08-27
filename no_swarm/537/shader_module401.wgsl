struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_3,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_1(-25294i, true, -30979i), Struct_3(vec3<bool>(false, false, false), Struct_2(0i), 1046f, 1u), vec3<i32>(i32(-2147483648), 2147483647i, 27572i)), Struct_4(Struct_1(-4635i, false, 1i), Struct_3(vec3<bool>(false, true, false), Struct_2(i32(-2147483648)), -490f, 0u), vec3<i32>(2147483647i, 23493i, i32(-2147483648))), Struct_4(Struct_1(1i, true, 2147483647i), Struct_3(vec3<bool>(true, true, true), Struct_2(2147483647i), 1243f, 4294967295u), vec3<i32>(0i, 2147483647i, 0i)));

var<private> global1: array<Struct_5, 4>;

var<private> global2: Struct_4;

var<private> global3: array<vec2<f32>, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = global2.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b.c, -1233f, global2.b.c), vec3<f32>(-352f, 254f, global2.b.c))))) - vec3<f32>(_wgslsmith_f_op_f32(step(-2758f, var_0.c)), -1000f, _wgslsmith_f_op_f32(-global2.b.c))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1284f - -115f))), -308f, 1271f)));
    var var_2 = var_1.yz;
    let var_3 = vec2<i32>(global2.c.x, ~(~(~global2.b.b.a)));
    var var_4 = select(select(var_0.a, global2.b.a, 0u != (_wgslsmith_clamp_u32(arg_1.x, u_input.b.x, 1u) >> (u_input.b.x % 32u))), select(global2.b.a, select(select(vec3<bool>(true, var_0.a.x, true), global2.b.a, -7540i == var_0.b.a), select(select(vec3<bool>(true, false, global2.b.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x), global2.a.b), var_0.a, !global2.b.a), global2.b.a.x), select(vec3<bool>(true, true, true), select(var_0.a, vec3<bool>(var_0.a.x, true, false), var_0.a), var_0.a)), !(!(!vec3<bool>(false, global2.b.a.x, var_0.a.x))));
    return vec3<bool>(-827f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.c) + -147f), select(all(!(!vec4<bool>(false, var_0.a.x, false, var_4.x))), _wgslsmith_f_op_f32(select(-993f, var_2.x, true)) == _wgslsmith_f_op_f32(f32(-1f) * -581f), var_4.x), true);
}

fn func_2() -> Struct_3 {
    var var_0 = global2.a.b;
    var var_1 = Struct_3(!(!(!(!vec3<bool>(true, global2.a.b, global2.b.a.x)))), global2.b.b, _wgslsmith_f_op_f32(exp2(global2.b.c)), 1u);
    global0 = array<Struct_4, 3>();
    var var_2 = global2.b.b;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(266f, global2.b.c, 1000f), vec3<f32>(594f, _wgslsmith_div_f32(var_1.c, global2.b.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * global2.b.c) * var_1.c), -1595f)));
    return Struct_3(select(!vec3<bool>(!var_1.a.x, all(var_1.a), var_3.x != -1786f), func_3(_wgslsmith_add_i32(-942i | u_input.a, ~u_input.a), vec2<u32>(8401u, 1u)), global2.b.a.x), Struct_2(-2147483647i), _wgslsmith_f_op_f32(-global2.b.c), ~4294967295u);
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_5, 4>();
    global2 = Struct_4(Struct_1(~(-2147483647i), all(!(!vec4<bool>(false, false, global2.a.b, global2.b.a.x))), ~(-2147483647i)), func_2(), global2.c);
    global0 = array<Struct_4, 3>();
    global1 = array<Struct_5, 4>();
    global0 = array<Struct_4, 3>();
    return Struct_4(global2.a, global2.b, global2.c);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec4<u32>(global2.b.d, 0u, ~u_input.c, _wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, arg_0.b.d), u_input.b) << (~vec3<u32>(global2.b.d, 4294967295u, 0u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_add_u32(82286u, 0u), abs(global2.b.d), global2.b.d))));
    var var_1 = reverseBits(_wgslsmith_mult_i32(arg_0.a.a, reverseBits(arg_0.a.a)));
    var var_2 = func_1().b.a;
    var var_3 = global2.b.c;
    var_3 = global2.b.c;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    global1 = array<Struct_5, 4>();
    global3 = array<vec2<f32>, 15>();
    let var_1 = u_input.b.x;
    var var_2 = false;
    var var_3 = Struct_3(global2.b.a, func_4(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b.c))), ~(~(~4294967295u)));
    var var_4 = Struct_5(~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, 36955u), vec4<u32>(1u, var_1, 1u, 22326u)), ~(global2.b.d >> (1375u % 32u))), select(var_3.b.a, global2.b.b.a, any(global2.b.a.zy)), Struct_3(!var_3.a, func_2().b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(256f, var_3.c))))), ~u_input.b.x), u_input.a > (-12625i | u_input.a), ~(~(~(~2323u))));
    let var_5 = Struct_4(func_1().a, global2.b, global2.c);
    var_3 = Struct_3(!(!var_5.b.a), var_4.c.b, -202f, ~_wgslsmith_sub_u32(var_4.c.d, ~global2.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.c, _wgslsmith_mult_vec4_u32(min(~countOneBits(vec4<u32>(4294967295u, 0u, u_input.c, global2.b.d)), select(vec4<u32>(global2.b.d, 0u, 1u, 44399u), ~vec4<u32>(0u, 5382u, 28849u, 14292u), var_5.a.b || false)), ~abs(firstLeadingBit(vec4<u32>(global2.b.d, u_input.c, var_3.d, 1u)))), _wgslsmith_f_op_f32(max(336f, 953f)));
}

