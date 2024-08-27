struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, -13588i);

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<i32> {
    let var_0 = all(vec4<bool>(global0.a.b || true, global0.a.c.x, global0.a.b, global0.a.b)) & global0.a.b;
    let var_1 = Struct_4(Struct_1(global2.a.xx, var_0, select(global0.a.c, select(global0.a.c, select(global0.a.c, vec2<bool>(false, true), global0.a.c), true), !(!global0.a.c.x)), ~4294967295u), Struct_2(min(u_input.b.zwx, max(vec3<u32>(u_input.a, 4294967295u, u_input.a), u_input.b.xyz) >> ((vec3<u32>(10194u, global0.a.d, 15872u) >> (vec3<u32>(4294967295u, 27321u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), -1000f, _wgslsmith_f_op_f32(ceil(global0.d))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~global0.e.wy, vec2<i32>(i32(-1i) * -26655i, -global0.c.x)), vec2<i32>(abs(_wgslsmith_sub_i32(-2147483647i, global0.c.x)), _wgslsmith_sub_i32(50017i, u_input.c.x) << (global2.a.x % 32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.b.b)), _wgslsmith_f_op_f32(1245f - global2.c))) - _wgslsmith_f_op_f32(f32(-1f) * -327f)))), ~global0.b.a.x);
    var var_2 = var_1.b.c;
    global3 = array<vec4<f32>, 23>();
    return select(_wgslsmith_div_vec4_i32(vec4<i32>(~global0.e.x, abs(41048i), var_1.c.x, _wgslsmith_dot_vec2_i32(global0.c.wx, var_1.c)) | -abs(global0.c), -firstTrailingBit(global0.c)), ~vec4<i32>(-10305i, 13308i, global0.c.x, _wgslsmith_div_i32(countOneBits(u_input.c.x), u_input.c.x | global1.x)), !vec4<bool>(var_1.a.c.x, all(vec2<bool>(var_1.a.b, true)) & all(vec3<bool>(true, var_1.a.b, var_1.a.c.x)), true, all(vec4<bool>(true, global0.a.b, var_1.a.b, true)) & all(vec2<bool>(true, global0.a.b))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_3(global0.a, global0.b, func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) - global0.b.c))), ~(~global0.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(152f, global0.b.b, var_0.b.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.d, 239f, var_0.d))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1730f, global0.d, -917f))), !var_0.a.c.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1321f, global2.c, 447f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.c, global0.d, -369f) * vec3<f32>(-317f, -253f, -1950f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-668f, global2.b, 1176f), vec3<f32>(368f, global2.c, -1000f))))));
    var var_2 = select(global0.a.c, var_0.a.c, select(var_0.a.c.x, true, !select(true, false, global0.a.b)));
    var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(global0.a.a, ~vec2<u32>(1u, 1u)), !any(vec3<bool>(var_0.a.c.x, false, var_0.a.b)), var_0.a.c, global0.a.d), global0.b, ~_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.c.x, 1i, -6041i, arg_0), global0.c, vec4<bool>(var_2.x, false, false, var_0.a.b)) << (abs(vec4<u32>(49941u, 4294967295u, var_0.b.a.x, u_input.a)) % vec4<u32>(32u)), min(var_0.c, var_0.e) & vec4<i32>(u_input.c.x, 1i, -14690i, global1.x)), 869f, vec4<i32>(_wgslsmith_mult_i32(func_3().x, ~1i), _wgslsmith_sub_i32(global1.x, -1i), 1i, u_input.c.x));
    global2 = var_0.b;
    return Struct_3(Struct_1(u_input.b.wz, any(select(select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(global0.a.c.x, var_2.x, global0.a.c.x, true), var_2.x), select(vec4<bool>(var_2.x, global0.a.c.x, true, false), vec4<bool>(var_0.a.b, false, true, false), vec4<bool>(false, global0.a.c.x, var_2.x, true)), true)), !(!select(global0.a.c, vec2<bool>(var_0.a.b, var_2.x), vec2<bool>(false, false))), _wgslsmith_div_u32(1u, global0.b.a.x)), global0.b, -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.e, vec4<i32>(global1.x, 1i, global1.x, global0.c.x)), abs(var_0.c)) & vec4<i32>(reverseBits(_wgslsmith_mult_i32(u_input.c.x, global0.c.x)), _wgslsmith_mult_i32(select(var_0.c.x, u_input.c.x, true), _wgslsmith_mod_i32(u_input.c.x, arg_0)), _wgslsmith_dot_vec2_i32(firstLeadingBit(global0.e.zy), countOneBits(vec2<i32>(arg_0, 6779i))), -1i), -2256f, reverseBits(vec4<i32>(var_0.e.x, -min(-5375i, global1.x), _wgslsmith_div_i32(-1i, var_0.c.x), ~global0.e.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global0 = func_2(u_input.c.x);
    global3 = array<vec4<f32>, 23>();
    let var_0 = 1u >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.a.x, ~0u), _wgslsmith_mult_vec3_u32(~global2.a, global0.b.a))) % 32u);
    global1 = vec3<i32>(-22096i, u_input.c.x, ~(u_input.c.x ^ -global0.c.x) << (_wgslsmith_sub_u32(select(4294967295u, _wgslsmith_div_u32(90405u, 22525u), true), 0u) % 32u));
    let var_1 = Struct_4(global0.a, Struct_2(vec3<u32>(global0.a.d, _wgslsmith_sub_u32(global0.b.a.x, var_0) << (min(arg_0.x, 10621u) % 32u), ~_wgslsmith_mod_u32(14912u, global0.b.a.x)), func_2(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)).d, global0.b.c), vec2<i32>(1i, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-global2.c))) + _wgslsmith_f_op_f32(804f + global2.c)), arg_0.x);
    return func_2(-9498i).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_1(global0.a.a, global0.a.b, !select(!global0.a.c, !vec2<bool>(global0.a.c.x, global0.a.b), u_input.c.x == global0.c.x), abs(4294967295u)), func_1(vec2<u32>(global0.b.a.x, _wgslsmith_dot_vec2_u32(global0.b.a.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 47897u), global0.b.a.zy)))), -_wgslsmith_add_vec4_i32(global0.e, _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.x, -3426i, u_input.c.x, 0i) ^ global0.e, global0.c ^ global0.c)), global0.b.c, global0.c);
    var var_0 = Struct_1(vec2<u32>(1u, 1u), !global0.a.b, global0.a.c, global0.a.d);
    global3 = array<vec4<f32>, 23>();
    var var_1 = var_0.a.x;
    var_0 = Struct_1(vec2<u32>(21327u, func_2(0i).a.d), any(vec4<bool>(!any(vec3<bool>(true, true, true)), var_0.c.x, all(!vec4<bool>(global0.a.c.x, global0.a.c.x, true, false)), any(vec4<bool>(global0.a.b, global0.a.c.x, global0.a.c.x, false)))), vec2<bool>(!any(!var_0.c), (502f <= global2.c) || (~1u != var_0.a.x)), ~89371u);
    let var_2 = func_2(select(func_2(1i).e.x, u_input.c.x, countOneBits(_wgslsmith_dot_vec3_u32(global2.a, vec3<u32>(1u, 105267u, u_input.a))) > 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_u32(u_input.b.x, global0.b.a.x)));
}

