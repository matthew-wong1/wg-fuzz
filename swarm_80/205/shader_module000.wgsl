struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_1(true), vec3<i32>(2147483647i, i32(-2147483648), -18131i)), Struct_3(Struct_1(false), vec3<i32>(47124i, -1034i, -65152i)), Struct_3(Struct_1(true), vec3<i32>(0i, -4823i, -1i)), Struct_3(Struct_1(false), vec3<i32>(-40262i, -12841i, 0i)), Struct_3(Struct_1(true), vec3<i32>(0i, 8823i, i32(-2147483648))), Struct_3(Struct_1(true), vec3<i32>(-12296i, 1i, -1i)), Struct_3(Struct_1(false), vec3<i32>(2147483647i, 2147483647i, -42127i)), Struct_3(Struct_1(true), vec3<i32>(-44773i, -15354i, 8006i)), Struct_3(Struct_1(true), vec3<i32>(-1i, 2147483647i, 41040i)), Struct_3(Struct_1(false), vec3<i32>(9449i, 2147483647i, 2147483647i)), Struct_3(Struct_1(true), vec3<i32>(2147483647i, 51729i, -52343i)), Struct_3(Struct_1(true), vec3<i32>(-45149i, -1i, 1i)), Struct_3(Struct_1(false), vec3<i32>(-34275i, -1i, 2147483647i)), Struct_3(Struct_1(true), vec3<i32>(-3539i, 1i, i32(-2147483648))));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<vec4<f32>, 17>;

var<private> global4: vec2<u32> = vec2<u32>(101281u, 4294967295u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = select((u_input.a.xw ^ u_input.a.wx) & min(vec2<u32>(0u, u_input.d | u_input.a.x), ~vec2<u32>(u_input.d, u_input.d)), ~_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.d, 37067u)), ~u_input.a.zx), vec2<bool>(true, global2.x));
    return -22118i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(firstLeadingBit(27453u), any(vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(u_input.c.x, u_input.b.x, 1i)) < func_3(), arg_1.c, false)), all(global2.xx));
    let var_1 = Struct_1(true);
    var var_2 = _wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(max(~vec4<u32>(4294967295u, 13079u, u_input.a.x, global4.x) & (u_input.a | vec4<u32>(20885u, 1u, arg_1.a, var_0.a)), ~(~vec4<u32>(global4.x, u_input.d, 1u, 4294967295u))), ~_wgslsmith_mult_vec4_u32(min(u_input.a, u_input.a), ~u_input.a)));
    let var_3 = abs(31295i);
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(firstTrailingBit(var_2.wwz)), max(var_2.xww, min(var_2.zwy, vec3<u32>(4294967295u, global4.x, 32328u)))), ~var_2.ywy));
    return !select(vec3<bool>(true, false, true), !(!select(vec3<bool>(var_1.a, arg_0.b, arg_1.b), vec3<bool>(false, arg_1.b, false), vec3<bool>(var_1.a, false, var_1.a))), vec3<bool>(global2.x, true, all(select(vec4<bool>(false, var_1.a, global2.x, false), vec4<bool>(arg_1.c, false, true, arg_1.c), global2.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(u_input.a >> (vec4<u32>(select(abs(0u), u_input.d, global2.x), ~global4.x, 1u, ~57485u) % vec4<u32>(32u)), vec4<u32>(69474u, u_input.d, ~firstTrailingBit(72181u), 1u));
    var var_1 = Struct_3(Struct_1(true), select(_wgslsmith_div_vec3_i32(vec3<i32>(-69974i, u_input.b.x, 2147483647i), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.c.x, 3302i, u_input.b.x), vec3<i32>(-6165i, u_input.b.x, -22848i))), reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, false, true)), !vec3<bool>(false, global2.x, true), func_2(Struct_2(0u, true, global2.x), Struct_2(43787u, global2.x, true)))) ^ u_input.b);
    let var_2 = max(abs(u_input.c), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(var_1.b.x, var_1.b.x), abs(0i)));
    var var_3 = !(false && all(select(func_2(Struct_2(50699u, var_1.a.a, global2.x), Struct_2(1u, var_1.a.a, var_1.a.a)).zz, select(global2.yx, global2.xy, true), !global2.xy)));
    var var_4 = 79587u;
    return Struct_1(true);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    global1 = array<Struct_3, 14>();
    global0 = array<vec4<f32>, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1570f, -869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(316f)), 2130f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1262f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 16u)] + global3[_wgslsmith_index_u32(~arg_1.a, 17u)])), vec4<bool>(true, any(vec2<bool>(global2.x, global2.x)) || true, any(!vec2<bool>(true, arg_2.a)), arg_1.b || global2.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-215f)))));
    let var_1 = Struct_2(~reverseBits(0u), arg_1.b, global2.x);
    global4 = ~firstTrailingBit(vec2<u32>(4294967295u, 24563u));
    return StorageBuffer(u_input.a.wy, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 17>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_u32(116337u, ~(~global4.x)), Struct_2(_wgslsmith_mult_u32(22056u, 1u & _wgslsmith_sub_u32(u_input.d, 4294967295u)), any(vec3<bool>(global2.x, true, all(vec3<bool>(true, false, true)))), global4.x >= (~22851u | (global4.x << (30352u % 32u)))), func_1());
}

