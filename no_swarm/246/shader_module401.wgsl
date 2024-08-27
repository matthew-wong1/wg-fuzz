struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -1i, 22895i, -18489i);

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_4, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = false;
    let var_1 = vec4<i32>(global2.b.a, -(u_input.e << (27160u % 32u)), global2.b.e.x, global2.b.a);
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    global0 = reverseBits(vec4<i32>(2147483647i >> ((~arg_3.c.d | arg_1) % 32u), global0.x, u_input.a.x, -(i32(-1i) * -16714i)));
    return global2.c & (arg_3.b.d << (56402u % 32u));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> vec3<u32> {
    let var_0 = vec2<bool>(false, arg_2 | arg_1);
    let var_1 = !(!(!vec4<bool>(!var_0.x, true, true, select(false, true, arg_1))));
    global0 = vec4<i32>(_wgslsmith_div_i32(global2.b.e.x, ~(~_wgslsmith_add_i32(u_input.c, global0.x))), -48652i, global2.b.a, 1i);
    var var_2 = global2.b;
    var var_3 = global2.b;
    return global2.b.b;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(select(arg_2, vec4<i32>(15701i, global2.b.e.x, 12334i, arg_0), true), arg_2), arg_2), arg_2), func_3(vec3<u32>(42451u, ~u_input.d.x, func_2(arg_3.d, 0u, vec2<f32>(-227f, arg_3.c.x), Struct_2(vec2<u32>(1u, 78143u), Struct_1(arg_3.d, arg_3.d, arg_3.c.x, global2.b.b.x, arg_3.c.xzy), Struct_1(arg_3.d, true, arg_3.c.x, u_input.b, vec3<f32>(-608f, global2.a, -964f)), Struct_1(global2.b.d, global2.b.d, -299f, 48292u, global2.b.c.yzz), arg_3.a))), !arg_3.d, arg_3.d) >> (reverseBits(global2.b.b) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.b.c.x, 819f, arg_3.c.x)), global2.b.c, select(vec4<bool>(global2.b.d, false, false, false), vec4<bool>(arg_3.d, false, global2.b.d, false), true))), _wgslsmith_f_op_vec4_f32(-arg_3.c))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2051f, arg_3.c.x, -710f, arg_3.c.x), vec4<f32>(217f, -606f, global2.b.c.x, 1068f), false)))), arg_3.c))), _wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.c.x) + _wgslsmith_f_op_f32(arg_3.c.x - 1439f))) > global2.b.c.x, vec2<i32>(-15328i, min(_wgslsmith_div_i32(0i, 76865i), 0i | arg_0)) & vec2<i32>(reverseBits(u_input.a.x | arg_0), firstTrailingBit(_wgslsmith_dot_vec4_i32(arg_2, arg_2))));
    global3 = array<Struct_4, 12>();
    global3 = array<Struct_4, 12>();
    let var_1 = global0.zx;
    var var_2 = arg_3.c.x;
    return countOneBits(vec2<u32>(global2.b.b.x, firstLeadingBit(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.b.x;
    let var_1 = (vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, 4294967295u)), min(u_input.d.x, u_input.b)) ^ ~func_1(i32(-1i) * -1i, reverseBits(1u), -vec4<i32>(1i, 8454i, global0.x, 100591i), Struct_3(global2.b.a, vec3<u32>(0u, 1u, 0u), vec4<f32>(-1267f, global2.b.c.x, 1233f, -1549f), false, vec2<i32>(-31469i, 21449i)))) | u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(global2.b.c)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a, global2.a, -284f, 993f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global2.b.c, global2.b.c, global2.b.d)), _wgslsmith_f_op_vec4_f32(-global2.b.c))), vec4<f32>(_wgslsmith_f_op_f32(floor(-853f)), _wgslsmith_f_op_f32(f32(-1f) * -1071f), global2.b.c.x, -204f), select(!vec4<bool>(false, false, false, global2.b.d), select(vec4<bool>(global2.b.d, false, global2.b.d, global2.b.d), vec4<bool>(global2.b.d, false, global2.b.d, true), false), all(vec2<bool>(global2.b.d, false)))))), _wgslsmith_mult_i32(global2.b.a, firstLeadingBit(~(-2147483647i))), global2.b.c.yy, var_1.x | _wgslsmith_clamp_u32(~62481u, var_1.x, 0u));
}

