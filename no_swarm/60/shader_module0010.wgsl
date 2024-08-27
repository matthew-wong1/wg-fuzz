struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, false, false, false, true, true, false, false, false, true, false, true, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> i32 {
    var var_0 = Struct_1(countOneBits((u_input.d.xy & reverseBits(u_input.c.xy)) & u_input.c.yz), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(1000f - -1278f))), -967f)), u_input.d.x);
    let var_1 = ~_wgslsmith_sub_i32(2147483647i, 4048i);
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(60376u, 4294967295u), u_input.b.zz), ~1u)) & 46616u, var_0.b, ~49193u, ~abs(abs(4832u)));
    var var_3 = ~(-20130i);
    return 0i;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 35083u), vec3<u32>(arg_0.b, arg_0.b, 12374u)) & vec3<u32>(9375u, _wgslsmith_mod_u32(4294967295u, arg_0.b), u_input.b.x)) | _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 23732u, 0u), vec3<u32>(u_input.a, 4334u, u_input.b.x))), vec3<u32>(35480u, min(0u, arg_0.b), 4294967295u)), vec3<u32>(~(~0u), _wgslsmith_sub_u32(0u, 0u), _wgslsmith_div_u32(u_input.b.x ^ 0u, u_input.b.x)));
    let var_1 = arg_0;
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_2 = var_0.xx;
    return var_1.d;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<bool, 15>();
    let var_0 = Struct_1(vec2<i32>(0i, ~37373i), u_input.b.x, vec2<f32>(1f, 1f), 6537i);
    var var_1 = Struct_1(abs(var_0.a), ~(~countOneBits(22806u)) & u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x)))), u_input.d.x >> (0u % 32u));
    var_1 = var_0;
    let var_2 = func_4(Struct_1(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d, var_1.d), u_input.c.zx), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c))), func_3(~var_1.d, arg_0.x >> (4294967295u % 32u)) | _wgslsmith_mult_i32(var_1.d, 21214i)));
    return var_0;
}

fn func_1() -> i32 {
    global0 = array<bool, 15>();
    let var_0 = func_2(~vec2<u32>(firstTrailingBit(0u), u_input.b.x));
    let var_1 = vec2<bool>(false, countOneBits(var_0.a.x) < 33336i);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, -2497f, var_0.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 2103f) * vec3<f32>(var_0.c.x, -922f, -1279f)), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.x, -122f, var_0.c.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(259f, var_0.c.x, 1648f), vec3<f32>(var_0.c.x, var_0.c.x, 848f))))))));
    var var_3 = var_0;
    return _wgslsmith_sub_i32(u_input.d.x, func_2(_wgslsmith_mod_vec2_u32(~u_input.b.yz, u_input.b.yy << (vec2<u32>(50507u, 0u) % vec2<u32>(32u))) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(8231u, 1u), vec2<u32>(11423u, 4294967295u), u_input.b.yz)).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    let var_0 = func_1();
    let var_1 = true & !(var_0 > _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0, var_0, 28848i), vec3<i32>(21940i, u_input.c.x, u_input.c.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(409f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(361f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))) * -794f);
    var var_3 = _wgslsmith_mod_vec4_u32(select(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 40860u, u_input.b.x), ~vec4<u32>(u_input.b.x, 33312u, u_input.a, u_input.b.x)), ~(vec4<u32>(u_input.a, 0u, 0u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.a, 39865u, 70504u)), !(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d.x, -10981i, var_0), vec4<i32>(15272i, 17690i, u_input.d.x, 14905i)) <= u_input.c.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(15664u, 16997u, 54493u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, u_input.a, 39471u, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) >> (vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), ~vec4<u32>(~u_input.b.x, u_input.a, ~4294967295u, 43164u)));
    let var_4 = vec3<u32>(u_input.b.x, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(~(~1u), firstTrailingBit(119902u) >> (1u % 32u))), _wgslsmith_mult_u32(4294967295u, firstTrailingBit(countOneBits(1u))));
    var var_5 = vec2<bool>(any(vec2<bool>(false, !(var_4.x >= 96328u))), select(true, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.b.x, firstLeadingBit(var_4.x)), 15u)], true));
    let var_6 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_add_vec3_i32(~vec3<i32>(3406i, -2147483647i, u_input.d.x), firstTrailingBit(u_input.c))), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(-29042i, -22018i, 0i, 30500i), vec4<i32>(54301i, u_input.c.x, -14885i, -42998i), vec4<bool>(false, true, var_5.x, false)), vec4<i32>(i32(-1i) * -29135i, max(var_0, -1i), 1i, u_input.c.x))), 51346u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, 478f) + vec2<f32>(1000f, 445f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(161f, -358f), vec2<f32>(963f, 831f), var_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-860f, 319f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 895f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(436f - -434f), -349f)))), reverseBits(~max(-2147483647i, func_4(Struct_1(vec2<i32>(var_0, 2147483647i), 24503u, vec2<f32>(812f, 1000f), u_input.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(var_0), var_6.b, ~min(_wgslsmith_mult_vec3_u32(~vec3<u32>(92u, 4294967295u, 0u), firstLeadingBit(var_3.zyw)), vec3<u32>(_wgslsmith_mod_u32(5111u, u_input.a), var_6.b, var_4.x)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_4.x ^ 1u, ~(var_6.b >> (var_4.x % 32u)), _wgslsmith_dot_vec2_u32(var_4.zy, u_input.b.xz) >> ((1u | var_4.x) % 32u)), firstTrailingBit(var_6.b)), -select(-vec4<i32>(-1i, var_0, 17034i, u_input.d.x) >> (max(vec4<u32>(28223u, var_4.x, 1u, var_6.b), vec4<u32>(var_6.b, var_6.b, 6673u, 4997u)) % vec4<u32>(32u)), countOneBits(~vec4<i32>(u_input.c.x, -2314i, 5441i, -2147483647i)), true));
}

