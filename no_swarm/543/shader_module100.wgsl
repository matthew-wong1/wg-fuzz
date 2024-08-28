struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_3;

var<private> global2: Struct_4;

var<private> global3: vec3<u32> = vec3<u32>(1u, 64624u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> f32 {
    global2 = Struct_4(any(global1.a), firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(global2.b.x, u_input.d.x, global1.c.d, 54840i)) ^ u_input.b);
    global1 = Struct_3(!global1.a, false, global1.c);
    let var_0 = global2.b.x;
    global2 = Struct_4(_wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_mod_i32(-739i, -global1.c.d)) <= -firstLeadingBit(_wgslsmith_mod_i32(-19803i, u_input.b.x)), vec4<i32>(global2.b.x, global2.b.x, ~_wgslsmith_mult_i32(-18272i, ~0i), max(min(abs(global1.c.b), -u_input.b.x), global2.b.x)));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(global2.b.x, global1.c.d, global1.c.b, u_input.a)), ~1i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b, -1100f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(717f + _wgslsmith_div_f32(arg_0.d.x, 170f)), arg_1.b)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_3(!vec2<bool>(arg_2.a, global1.a.x), global1.c.a.x < arg_1, Struct_1(vec3<f32>(830f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-575f * -955f))), global1.c.a.x), ~reverseBits(i32(-1i) * -1i), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4327u), vec4<u32>(4294967295u, global1.c.c.x, 4294967295u, global1.c.c.x), vec4<u32>(global3.x, 23359u, u_input.c.x, 69182u)), global1.c.c) << (vec4<u32>(~global3.x, firstTrailingBit(7311u), global1.c.c.x, 3822u) % vec4<u32>(32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_3.x, -21074i, -42518i) ^ u_input.b, global2.b)));
    var var_1 = Struct_5(select(false, any(global1.a), _wgslsmith_div_f32(_wgslsmith_div_f32(-1522f, global1.c.a.x), _wgslsmith_f_op_f32(step(-829f, global1.c.a.x))) < _wgslsmith_f_op_f32(func_3(Struct_5(false, global1.c.a.x, vec2<u32>(12738u, 1726u), vec4<f32>(387f, -552f, 797f, arg_1)), Struct_2(global3.x, 896f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.a.x + 160f)))) + global1.c.a.x), vec2<u32>(countOneBits(_wgslsmith_div_u32(~var_0.c.c.x, 1u)), var_0.c.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global1.c.a.x, -911f, var_0.c.a.x) + vec4<f32>(1723f, global1.c.a.x, 309f, var_0.c.a.x)), vec4<f32>(arg_1, -986f, 1000f, var_0.c.a.x)))));
    global2 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + var_0.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(ceil(var_1.b)))) + -772f))));
    var var_3 = arg_2;
    return arg_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> vec2<f32> {
    global0 = array<Struct_1, 31>();
    global1 = arg_1;
    global3 = ~(~vec3<u32>(firstTrailingBit(u_input.c.x), 12173u, select(global3.x, 0u, true))) & arg_1.c.c.zzw;
    global3 = ~(_wgslsmith_mult_vec3_u32(u_input.c, arg_1.c.c.xzw) ^ _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~global1.c.c.yww, vec3<u32>(110976u, 4294967295u, arg_1.c.c.x)), u_input.c));
    var var_0 = Struct_2(~36528u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-473f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 2093f)), _wgslsmith_f_op_f32(global1.c.a.x * arg_1.c.a.x)))));
    return _wgslsmith_f_op_vec2_f32(select(arg_1.c.a.xy, global1.c.a.zx, true));
}

fn func_5(arg_0: vec2<f32>) -> bool {
    global1 = Struct_3(global1.a, true, Struct_1(_wgslsmith_f_op_vec3_f32(-global1.c.a), _wgslsmith_mod_i32(global1.c.d, u_input.b.x), vec4<u32>(1u, u_input.c.x, ~global3.x, global3.x), -45552i));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) - _wgslsmith_f_op_f32(min(global1.c.a.x, arg_0.x))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.x))));
    let var_1 = 563f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f))), global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f - _wgslsmith_f_op_f32(floor(-546f))) * _wgslsmith_f_op_f32(sign(arg_0.x))));
    return var_1 >= -200f;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global3 = u_input.c;
    global0 = array<Struct_1, 31>();
    global1 = Struct_3(vec2<bool>(func_5(_wgslsmith_f_op_vec2_f32(func_4(vec3<bool>(true, true, true), Struct_3(global1.a, true, Struct_1(vec3<f32>(global1.c.a.x, global1.c.a.x, global1.c.a.x), arg_0.x, global1.c.c, arg_0.x)), func_2(vec2<bool>(false, false), 579f, Struct_4(global1.a.x, vec4<i32>(arg_0.x, -1i, u_input.b.x, 0i)), vec3<i32>(10860i, 49388i, global2.b.x)), countOneBits(-32203i)))), 1787f < _wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(-global1.c.a.x))), true, Struct_1(global1.c.a, ~u_input.d.x, ~global1.c.c, 1i));
    var var_0 = Struct_5(false, global1.c.a.x, ~vec2<u32>(~_wgslsmith_dot_vec4_u32(global1.c.c, vec4<u32>(75123u, 4294967295u, 31513u, 57068u)), ~_wgslsmith_sub_u32(global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.c.a.x), -534f, _wgslsmith_f_op_vec2_f32(func_4(select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(true, false, true), vec3<bool>(false, true, global1.a.x)), Struct_3(vec2<bool>(global1.a.x, false), true, Struct_1(vec3<f32>(1429f, global1.c.a.x, global1.c.a.x), -44285i, global1.c.c, arg_0.x)), func_2(vec2<bool>(global2.a, global1.b), -1050f, Struct_4(false, u_input.b), u_input.d.wyw), global2.b.x)).x, -815f)));
    global3 = global1.c.c.xyw;
    return Struct_2(global1.c.c.x, var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<u32>(global1.c.c.x, ~u_input.c.x, ~10937u);
    let var_0 = func_1(vec4<i32>(-countOneBits(global2.b.x), u_input.d.x, select(_wgslsmith_add_i32(i32(-1i) * -29145i, 28307i), -2158i, all(!global1.a)), abs(abs(_wgslsmith_dot_vec2_i32(global2.b.ww, vec2<i32>(2147483647i, global1.c.d))))));
    var var_1 = global2.b.zy;
    global2 = Struct_4(any(global1.a), reverseBits(countOneBits(vec4<i32>(var_1.x, global2.b.x, -global1.c.b, i32(-1i) * -1457i))));
    global1 = Struct_3(!(!(!(!vec2<bool>(global1.b, global1.b)))), false && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.a.x, -1000f) * _wgslsmith_f_op_f32(-310f * 1000f)) < 1111f), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-952f, -350f, var_0.b))) + vec3<f32>(-942f, -342f, 298f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, global1.c.a.x, var_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a.x, var_0.b, -999f) * global1.c.a))), max(~u_input.b.x >> (~u_input.c.x % 32u), min(global1.c.b << (11152u % 32u), global1.c.d)), global1.c.c, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.c.x), -u_input.b.yx, 0i);
}

