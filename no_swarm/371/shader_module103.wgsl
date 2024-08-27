struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<u32>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global2 = vec2<bool>(false, true);
    let var_0 = -1222f;
    var var_1 = global1.x;
    var_1 = ~select(~abs(~4294967295u), ~_wgslsmith_add_u32(1u, 0u), true | !global2.x);
    global0 = any(vec2<bool>(true | !(!global3.b.c.d.x), true && all(!vec4<bool>(true, global2.x, true, global2.x))));
    return vec4<bool>(global2.x, all(vec2<bool>(false, true)), any(vec3<bool>(false && global2.x, all(vec4<bool>(true, false, false, global2.x)), false)) || !all(global3.b.c.e), global2.x);
}

fn func_2() -> Struct_4 {
    var var_0 = select(select(!select(select(vec4<bool>(global3.c.d.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global3.c.e.x), global3.b.c.d.x), vec4<bool>(global3.c.d.x, global2.x, global2.x, global2.x), global3.b.a.x != 21054i), !(!vec4<bool>(true, global2.x, true, global3.c.e.x)), !(!select(vec4<bool>(global3.b.c.e.x, global2.x, global2.x, global3.c.e.x), vec4<bool>(global2.x, global3.c.d.x, global2.x, false), true))), select(select(select(!vec4<bool>(true, true, global2.x, global2.x), select(vec4<bool>(global3.b.c.e.x, global2.x, false, global3.c.d.x), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, true, false, false)), !global2.x), !vec4<bool>(global3.c.e.x, global3.b.c.e.x, true, global3.b.c.e.x), select(!vec4<bool>(false, global3.c.e.x, true, global2.x), select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(true, false, global2.x, false), vec4<bool>(true, true, true, global2.x)), !vec4<bool>(global2.x, true, true, global3.c.d.x))), select(!(!vec4<bool>(global3.c.e.x, true, false, global3.b.c.d.x)), func_3(), select(vec4<bool>(false, false, global3.c.d.x, global3.c.e.x), !vec4<bool>(true, true, false, global3.c.e.x), func_3())), select(func_3(), select(select(vec4<bool>(false, false, false, global3.c.e.x), vec4<bool>(false, false, false, global3.c.e.x), vec4<bool>(global2.x, global2.x, global3.c.d.x, true)), vec4<bool>(true, true, global2.x, false), vec4<bool>(global2.x, true, true, global2.x)), !vec4<bool>(global2.x, false, global2.x, global3.b.c.d.x))), func_3());
    global2 = var_0.xw;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1866f, 234f, global3.b.c.b, 357f)) + _wgslsmith_f_op_vec4_f32(-global3.c.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global3.b.c.a, vec4<f32>(global3.b.c.a.x, -104f, -1056f, global3.b.c.a.x)))), countOneBits(global3.b.a.x) == 1i))))));
    let var_2 = Struct_3(abs(vec2<i32>(10223i, u_input.a)), global3.b.b, global3.b.c);
    var_1 = global3.b.c.a;
    return Struct_4(global3.a, Struct_3(vec2<i32>(-12800i, firstLeadingBit(var_2.a.x)), ~3244u, Struct_1(global3.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.b - var_1.x) + var_2.c.a.x), ~(~global3.c.c), global3.c.d, vec2<bool>(true, global3.c.d.x))), global3.b.c);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b + -479f)), _wgslsmith_f_op_f32(abs(global3.b.c.a.x))), global3.c.a.x));
    global2 = arg_1.c.d.yx;
    global3 = func_2();
    global3 = func_2();
    global3 = func_2();
    return vec4<u32>(firstTrailingBit(firstLeadingBit(global3.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, ~(arg_1.b.c ^ arg_0)), vec4<u32>(global3.b.c.c, global3.c.c, arg_0, global1.x)), _wgslsmith_mod_u32(((arg_0 ^ 0u) | ~1u) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 1u, 1u), vec3<u32>(u_input.b, 0u, arg_0)), vec3<u32>(1u, u_input.b, 1u)), _wgslsmith_add_u32(abs(arg_1.b.c) ^ arg_1.b.c, 1u)), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global2 = vec2<bool>(!(!select(func_3().x, global3.b.c.e.x, all(vec2<bool>(global3.b.c.d.x, true)))), global3.c.e.x);
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b.c.b * _wgslsmith_f_op_f32(global3.b.c.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - arg_0.b) + _wgslsmith_f_op_f32(arg_0.b * -1579f))))));
    let var_1 = _wgslsmith_mult_vec4_u32(~arg_1, vec4<u32>(firstTrailingBit(firstLeadingBit(10275u)), 0u, ~0u, arg_0.c));
    var var_2 = func_2().c.a;
    global0 = false;
    return global3.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<i32>) -> StorageBuffer {
    return StorageBuffer(537f, arg_0.a.x, arg_3.wzy, abs(~_wgslsmith_sub_vec4_u32(~vec4<u32>(41368u, 4294967295u, 1u, u_input.b), vec4<u32>(global3.a.x, 4294967295u, global1.x, global3.c.c))), func_4(func_2().b.c, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, global3.c.c, u_input.b, 4294967295u), ~vec4<u32>(17957u, 35821u, 0u, u_input.b), ~vec4<u32>(u_input.b, 0u, arg_0.c.c, global1.x)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.c.c, arg_0.b, arg_0.b, 17100u), firstLeadingBit(vec4<u32>(arg_1.c, 1u, arg_0.c.c, 36218u)))).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c.d.x;
    global2 = global3.c.d.yz;
    var var_1 = -50100i;
    var_0 = false;
    let var_2 = vec2<i32>(countOneBits(u_input.a) | 0i, -9380i);
    global0 = global2.x;
    let x = u_input.a;
    s_output = func_5(global3.b, func_4(global3.c, func_1(reverseBits(u_input.b ^ global1.x), Struct_2(Struct_1(vec4<f32>(global3.c.b, global3.b.c.b, 1000f, global3.c.a.x), global3.c.a.x, global3.a.x, global3.c.d, global3.b.c.d.xz), global3.c, Struct_1(vec4<f32>(-1017f, global3.b.c.b, -894f, 248f), -1088f, global1.x, global3.c.d, global3.b.c.d.yy), vec3<i32>(u_input.a, global3.b.a.x, global3.b.a.x) >> (global3.a % vec3<u32>(32u))), global3.c.e.x)), global3.c.d, vec4<i32>(-29447i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 1i, u_input.a, 7114i) ^ vec4<i32>(global3.b.a.x, var_2.x, global3.b.a.x, -2147483647i), firstTrailingBit(vec4<i32>(global3.b.a.x, u_input.a, -1i, global3.b.a.x))) ^ 7858i, reverseBits(-global3.b.a.x) ^ _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, global3.b.a.x), -global3.b.a.x), 0i));
}

