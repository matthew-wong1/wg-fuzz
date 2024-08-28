struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 39630u, 4820u);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<i32>) -> vec3<bool> {
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(-global1.a.x)), global2.a, !select(vec2<bool>(true, true), vec2<bool>(true, false), select(true, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.a, vec2<f32>(global2.a.x, 698f), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 460f) - global2.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a, _wgslsmith_f_op_vec2_f32(-global2.a))))));
    global0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-680f, _wgslsmith_f_op_f32(select(1351f, global1.a.x, any(vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(global1.a.x + global1.a.x)), _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)), true)), !select(false, true, false) | any(vec3<bool>(true, true, true)))) != 560f;
    var var_2 = vec4<u32>(37266u, min(12234u, ~(~max(u_input.d.x, global0.x))), _wgslsmith_sub_u32(global0.x, countOneBits(u_input.c.x)), u_input.d.x);
    return !(!(!select(!vec3<bool>(true, true, var_1), !vec3<bool>(true, var_1, var_1), false)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    global2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_0 = !select(select(vec3<bool>(true, true, true), func_3(vec4<i32>(23727i, -1i, arg_3.x, 1006i), 36470i, -vec4<i32>(-3249i, arg_1, -70860i, -29015i)), func_3(~vec4<i32>(-1i, 0i, -27448i, 0i), _wgslsmith_sub_i32(-57965i, arg_1), vec4<i32>(-52168i, -29426i, arg_3.x, arg_1) << (u_input.b % vec4<u32>(32u)))), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), select(true, select(false, true, true), any(vec2<bool>(true, true)))), arg_1 <= ~arg_1);
    global0 = min(u_input.b, ~select(abs(reverseBits(u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 0u, u_input.b.x, 4294967295u), u_input.b, ~vec4<u32>(0u, 8472u, u_input.c.x, 4294967295u)), vec4<bool>(true, var_0.x | false, false, any(vec4<bool>(false, var_0.x, true, var_0.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_0.wx, vec2<f32>(arg_0.x, 267f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(215f - _wgslsmith_f_op_f32(-global2.a.x))) * -151f));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.a))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = Struct_2(global2.a);
    let var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(global0.zyw, vec3<u32>(30462u, reverseBits(arg_1.x), ~arg_0.a.x)), select(countOneBits(~u_input.c), arg_1.wzx, any(select(vec3<bool>(arg_0.b.x, arg_0.b.x, true), vec3<bool>(true, false, false), true))));
    let var_2 = Struct_1(var_1.zz, select(arg_0.b, arg_0.b, !vec4<bool>(!arg_0.b.x, true, false, all(vec2<bool>(false, false)))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -35135i, -5027i, _wgslsmith_mult_i32(abs(0i), arg_0.c)), vec4<i32>(-1i, ~(u_input.a.x ^ arg_0.c), _wgslsmith_div_i32(-2147483647i, min(-1i, arg_0.c)), -(1i | arg_0.c))));
    let var_3 = var_0;
    global2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, global1.a.x, arg_3, 117f)) + vec4<f32>(1627f, -771f, var_3.a.x, -752f))))), -11158i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-110f, global2.a.x) - _wgslsmith_f_op_f32(sign(arg_2))))), vec3<i32>(countOneBits(0i), -1i, ~(-2147483647i)));
    return (-u_input.a.x <= abs(var_2.c)) && ((max(global0.x, var_1.x) | reverseBits(51644u)) >= 37733u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, any(vec2<bool>(func_1(Struct_1(global0.wx, vec4<bool>(false, true, false, false), -17430i), u_input.b, 1280f, global2.a.x) || any(vec2<bool>(false, false)), true)), true, select(true, true, true));
    var var_1 = Struct_1(select(select(~vec2<u32>(40501u, 0u) << (~vec2<u32>(41728u, u_input.d.x) % vec2<u32>(32u)), reverseBits(u_input.c.xy) ^ abs(vec2<u32>(8043u, u_input.c.x)), func_3(vec4<i32>(99691i, u_input.a.x, u_input.e.x, u_input.e.x), -1i, firstTrailingBit(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x))).xz), ~(~(~global0.wx)), all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, true, true, var_0.x), true))), var_0, u_input.a.x);
    var var_2 = Struct_1(~vec2<u32>(countOneBits(u_input.d.x), u_input.c.x) | (global0.yy << (max(vec2<u32>(0u, global0.x), var_1.a & vec2<u32>(var_1.a.x, u_input.b.x)) % vec2<u32>(32u))), var_1.b, u_input.e.x & var_1.c);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, 344f, global1.a.x, 573f)), -2306i, _wgslsmith_f_op_f32(-global2.a.x), reverseBits(-vec3<i32>(u_input.a.x, var_1.c, -65237i))).a - _wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)))));
    var var_4 = abs(~global0.xw);
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, _wgslsmith_f_op_f32(-var_3.a.x), vec3<u32>(~firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.b.x)), var_2.a.x | 1u, 60781u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, global2.a.x, -1925f, -456f) - vec4<f32>(var_3.a.x, global1.a.x, var_3.a.x, global2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, var_3.a.x, global2.a.x, -912f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, 1393f, -662f, 700f) * vec4<f32>(var_3.a.x, -435f, 587f, var_3.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1000f, -1534f, global1.a.x) * vec4<f32>(global2.a.x, global1.a.x, var_3.a.x, -624f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(round(-1119f)), _wgslsmith_f_op_f32(step(global1.a.x, var_3.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-408f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, global2.a.x) + -1000f), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(trunc(var_3.a.x))), _wgslsmith_f_op_f32(round(607f))) + vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(862f)) + var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(990f, var_3.a.x) + _wgslsmith_f_op_f32(step(1199f, global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-179f, -372f)) * global1.a.x))));
}

