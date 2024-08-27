struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    global1 = false;
    let var_0 = 1u;
    global0 = arg_0.b;
    let var_1 = Struct_4(arg_0.b.a, Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b.d, 245f, -1293f, arg_2.x) * vec4<f32>(1374f, arg_2.x, -421f, global0.b.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.a.a.x, 1726f, -195f, arg_2.x)))), arg_0.b.a), global0.b.a.b, Struct_2(_wgslsmith_div_vec4_f32(global0.b.c.a, vec4<f32>(2202f, global0.b.c.a.x, -535f, 1324f)), Struct_1(-8835i, _wgslsmith_mult_i32(global0.a.b, arg_0.b.b.c.b.b))), -1672f, all(select(!arg_0.a, !arg_0.a, select(arg_0.a, vec3<bool>(arg_0.b.b.e, arg_0.a.x, global0.b.e), global0.b.e)))));
    global1 = true && (abs(~(var_0 & 1u)) == ~_wgslsmith_mod_u32(~39502u, var_0));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, firstTrailingBit(0u), ~abs(~1u)), ~(~select(vec3<u32>(var_0, var_0, var_0), vec3<u32>(31969u, 1u, 15786u), global0.b.e)) >> ((_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(45547u, 5238u, 1u), vec3<u32>(54642u, 4294967295u, 39068u), vec3<u32>(0u, 4294967295u, 1u)), select(vec3<u32>(48527u, var_0, 1u), vec3<u32>(var_0, 53419u, 0u), arg_0.a)) ^ _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_0, 1u, var_0)), abs(vec3<u32>(86938u, 1u, var_0)))) % vec3<u32>(32u)));
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.b.c.a.yw + vec2<f32>(global0.b.c.a.x, -714f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1467f, -611f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.a.x, global0.b.d))))) * vec2<f32>(_wgslsmith_div_f32(-1410f, -2186f), global0.b.d)) * global0.b.a.a.yy);
    var var_1 = global0.b.e;
    global1 = (abs(global0.b.b.b) ^ (45292i << (~func_3(Struct_5(vec3<bool>(global0.b.e, global0.b.e, false), Struct_4(Struct_1(3727i, u_input.a), global0.b)), -2147483647i, global0.b.c.a) % 32u))) != -54018i;
    var var_2 = -_wgslsmith_add_vec4_i32(vec4<i32>(-global0.b.a.b.b, u_input.a << (0u % 32u), _wgslsmith_mult_i32(global0.b.c.b.b, 17085i), u_input.a) & min(-vec4<i32>(u_input.a, -2147483647i, global0.a.a, u_input.a), vec4<i32>(0i, global0.b.a.b.a, 24581i, global0.a.b)), vec4<i32>(1i, _wgslsmith_mod_i32(global0.b.a.b.b, -1i), i32(-1i) * -1i, 1i));
    var var_3 = global0.b.c;
    return _wgslsmith_f_op_vec3_f32(var_3.a.xxy - var_3.a.yzz);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = !select(true, true, ~abs(arg_1.x) < -48172i);
    var var_1 = select(select(select(!select(vec3<bool>(false, var_0, global0.b.e), vec3<bool>(global0.b.e, var_0, true), true), !vec3<bool>(var_0, global0.b.e, global0.b.e), !any(vec2<bool>(var_0, global0.b.e))), vec3<bool>(global0.b.e, all(select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, true, false, var_0), global0.b.e)), var_0), !(!(arg_0.x >= -1000f))), !vec3<bool>(all(vec4<bool>(true, global0.b.e, global0.b.e, false)), global0.b.e, var_0), all(select(vec4<bool>(all(vec3<bool>(var_0, true, var_0)), all(vec4<bool>(global0.b.e, global0.b.e, var_0, var_0)), true, true), vec4<bool>(global0.b.e, !var_0, true, all(vec4<bool>(false, var_0, false, true))), all(vec2<bool>(true, true)))));
    global0 = Struct_4(global0.b.c.b, Struct_3(global0.b.c, global0.b.c.b, global0.b.c, global0.b.a.a.x, !var_1.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(1579f - -1043f), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)));
    var var_3 = Struct_4(Struct_1(~abs(global0.a.a), ~(-46673i) | arg_1.x), global0.b);
    return Struct_4(var_3.b.b, Struct_3(global0.b.c, global0.a, var_3.b.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -1000f), var_3.b.c.a.x, !var_0)), !((var_0 & true) | false)));
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.yzx) - arg_0.a.a.zww)))), vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(12458i, -1i), 22149i), min(global0.a.b, arg_0.c.b.a) | -global0.b.a.b.a, u_input.a, global0.a.b));
    let var_1 = ~vec3<i32>(select(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.b.b, arg_0.c.b.b), vec2<i32>(var_0.a.a, var_0.a.b)), _wgslsmith_mult_i32(global0.b.c.b.a, 3872i)), arg_0.a.b.b, all(vec4<bool>(true, false, false, false)) | (var_0.b.e == false)), min(38843i, -1i), -8751i);
    global1 = !(-456f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)), 257f, func_4(var_0.b.a.a.yyw, vec4<i32>(global0.a.a, -2147483647i, 2961i, var_0.a.a)).b.e & select(arg_0.e, arg_0.e, false))));
    let var_2 = true;
    let var_3 = any(vec3<bool>(true, true, select(var_2, all(vec2<bool>(true, arg_0.e)), true)));
    return (~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(2267u, 22003u))) >> (~vec2<u32>(firstTrailingBit(1u), 1u) % vec2<u32>(32u))) ^ (~(~select(vec2<u32>(9680u, 29367u), vec2<u32>(11771u, 1u), var_3)) ^ vec2<u32>(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    let var_1 = global0.b;
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~select(1u, 12954u, true)), _wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(53808u, 4294967295u)), vec2<u32>(1u, 1u), select(vec2<bool>(true, false), vec2<bool>(true, global0.b.e), var_1.e)), func_1(global0.b)) >> (~select(vec2<u32>(4294967295u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(49736u, 21245u)), !vec2<bool>(global0.b.e, global0.b.e)) % vec2<u32>(32u)), vec2<u32>(1u, ~1u));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-935f, global0.b.d)));
    var var_4 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, 1138f), _wgslsmith_f_op_f32(-var_3.x), -983f)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.a, -1806i, 1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(49648i, var_1.c.b.b, 1i, var_1.a.b.b), vec4<i32>(u_input.a, global0.a.b, -2147483647i, global0.b.c.b.a))), -vec4<i32>(u_input.a, 12056i, var_1.b.a, -1i)) & _wgslsmith_add_vec4_i32(firstTrailingBit(abs(vec4<i32>(-1i, global0.a.b, -2147483647i, global0.b.c.b.a))), countOneBits(~vec4<i32>(var_1.b.b, 16096i, global0.b.c.b.a, 0i)))).b.a;
    var_2 = vec2<u32>(firstLeadingBit(54945u), ~4294967295u);
    let var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.a.a), global0.a);
    let var_6 = 469f;
    let var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a.x, ((1321i & -var_4.b.b) ^ var_5.b.b) ^ max(-global0.b.b.a, var_1.c.b.b), ~var_2.x);
}

