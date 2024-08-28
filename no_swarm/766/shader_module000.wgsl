struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 600f;

var<private> global1: Struct_1 = Struct_1(-1626f, -475f, 29403u);

var<private> global2: Struct_4;

var<private> global3: array<Struct_5, 16>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(u_input.c);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b, global1.b, 1133f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global1.a, 581f))))), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), -2137f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b, global1.b, global1.b), vec3<f32>(-976f, 228f, 464f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-2128f, 680f, -696f), vec3<f32>(global1.a, 582f, global1.a)))))));
    let var_2 = var_1.x;
    var var_3 = ~((~global2.c | u_input.d.x) & (8574u << (~global2.c % 32u)));
    var_3 = global1.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -328f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(833f)))), _wgslsmith_div_f32(-305f, -263f), global2.c);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = Struct_3(func_2(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1583f - global1.b))), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(-24358i, arg_0, u_input.b, -13599i), -u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, arg_0, arg_0, arg_0) >> (vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global2.a, 44203i, 12278i), u_input.a)), u_input.a.x & (i32(-1i) * -50200i)), Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-859f * arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2474f + 389f) + 630f), max(1u, global2.c)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-196f + arg_1.x), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))), 1u)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.x, global1.c), arg_2.x), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(86349u, 44169u, global2.c, u_input.d.x) ^ vec4<u32>(global1.c, 4294967295u, global2.c, u_input.d.x)), 26503u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b, global1.a, true)) - _wgslsmith_div_f32(572f, global1.a)) * -713f), u_input.a.zyz, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, 2401f)) - global1.b), firstLeadingBit(6165u)), func_2()), arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, global1.b)))) + global1.a)));
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_div_f32(-488f, var_0.b.d.b))), -1355f))), global1.a);
    global3 = array<Struct_5, 16>();
    global2 = Struct_4(-(i32(-1i) * -6556i), !select(!select(global2.b, global2.b, global2.b), global2.b, any(!global2.b.yy)), max(abs(countOneBits(var_0.c)), var_0.b.c.c | _wgslsmith_mult_u32(global2.c, global1.c)) | _wgslsmith_mult_u32(global1.c, var_0.d.d.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.b) * -1844f));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: i32) -> vec4<bool> {
    var var_0 = 1u;
    global1 = func_2();
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_3, arg_0, u_input.d.wx)), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_1 = ~u_input.d.x > _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, global1.c) << (arg_2 % 32u), global2.c, 34131u), min(max(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.c, 27771u, 4294967295u), u_input.d.wwy), u_input.d.wxz ^ vec3<u32>(global1.c, 1u, 1u)), ~(u_input.d.yyx << (vec3<u32>(1u, 9973u, 0u) % vec3<u32>(32u)))));
    var var_2 = vec4<bool>(arg_1, true, all(global2.b.yy), global2.b.x);
    return select(!(!vec4<bool>(true, true, true, !arg_1)), vec4<bool>(all(select(!vec3<bool>(false, global2.b.x, true), global2.b.zzz, !var_2.x)), true & any(global2.b), !var_2.x, !(~(-32636i) > global2.a)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~0i >> (reverseBits(~(~0u)) % 32u), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_div_f32(2136f, -630f), -2102f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b, global1.a, global1.b, global1.b)))), any(!global2.b.zy) && true, ~global2.c, _wgslsmith_add_i32(u_input.a.x, global2.a)), _wgslsmith_clamp_u32(abs(11751u), 2693u, _wgslsmith_sub_u32(~(~6024u), func_2().c)));
    let var_1 = global2.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1522f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-6860i, vec4<f32>(global1.b, 1379f, global1.b, global1.a), u_input.d.wy)) - _wgslsmith_f_op_f32(trunc(-1386f)))), global1.b));
    var var_3 = ~(~select((u_input.d.wwz ^ u_input.d.wyw) << (~u_input.d.yww % vec3<u32>(32u)), u_input.d.yxx, select(!var_0.b.xxw, vec3<bool>(true, true, true), var_0.b.ywz)));
    let var_4 = ~_wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -u_input.a.zw) | _wgslsmith_mod_vec2_i32(min(vec2<i32>(global2.a, u_input.a.x), vec2<i32>(-17562i, -11934i)), u_input.a.wy), u_input.a.ww);
    var_2 = _wgslsmith_f_op_f32(func_3(var_0.a << (u_input.d.x % 32u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-func_2().b), global1.a, -413f, global1.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.b, global1.b, -377f) + vec4<f32>(global1.b, 694f, global1.a, global1.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, global1.a, -2064f, -1552f)), vec4<f32>(436f, global1.a, 140f, 1129f), global2.b.x)))), var_0.b)), _wgslsmith_add_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 16203u), vec2<u32>(6009u, 44239u))), _wgslsmith_div_vec2_u32(reverseBits(min(vec2<u32>(0u, global2.c), vec2<u32>(var_3.x, 12908u))), var_3.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -582f))));
}

