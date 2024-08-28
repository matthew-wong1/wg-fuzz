struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

var<private> global2: bool;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(-1680f, -1409f), -762f), Struct_1(vec2<f32>(-1458f, -684f), -873f), Struct_1(vec2<f32>(1000f, -1090f), -384f), Struct_1(vec2<f32>(1262f, 1314f), 474f), Struct_1(vec2<f32>(-435f, 328f), 589f), Struct_1(vec2<f32>(487f, -1000f), 1000f), Struct_1(vec2<f32>(-101f, -682f), -753f), Struct_1(vec2<f32>(-373f, -2257f), 512f));

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = ~(~u_input.b);
    var var_1 = Struct_4(global0.a, global0.b, Struct_1(global0.c.a, -607f));
    var_1 = Struct_4(var_1.a, global0.b, Struct_1(global0.c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(var_1.a.a, global0.a.a)), 1000f, global0.a.c.x))));
    var var_2 = global0.a;
    global3 = array<Struct_1, 8>();
    return ~(_wgslsmith_mod_i32(-(~arg_0), _wgslsmith_sub_i32(~3689i, _wgslsmith_add_i32(global0.b.x, var_1.b.x))) >> (_wgslsmith_div_u32(var_0, var_2.b.x) % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = !(min(func_3(firstTrailingBit(-37385i)), u_input.d) < -_wgslsmith_mult_i32(-1i, u_input.d));
    global3 = array<Struct_1, 8>();
    var var_1 = !(!any(vec3<bool>(global0.a.c.x, !global4.x, true)));
    var_1 = ~(~(~93086u)) <= max(57124u, ~(27092u & firstTrailingBit(27555u)));
    var var_2 = false;
    return Struct_3(_wgslsmith_sub_vec3_i32(~global0.b >> (~(~global0.a.b) % vec3<u32>(32u)), ~(-select(global0.b, global0.b, global0.a.c.wxz))), false, global0.a, ~_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, u_input.d, u_input.d), abs(global0.b)), -_wgslsmith_mod_i32(i32(-1i) * -global0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(26752i, u_input.d, global0.b.x, u_input.d), vec4<i32>(0i, 9544i, global0.b.x, u_input.d) << (vec4<u32>(u_input.c, 82306u, 3900u, u_input.c) % vec4<u32>(32u)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_4(global0.a, -select(vec3<i32>(arg_1.d.x, 0i, 40496i), global0.b, arg_1.c.c.wwy), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.c.a, -145f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.a * vec2<f32>(arg_2.x, 969f)) * _wgslsmith_f_op_vec2_f32(max(global0.c.a, vec2<f32>(-2102f, global0.a.a)))), vec2<bool>(false, true))), global0.a.a));
    let var_1 = arg_1.c;
    let var_2 = Struct_1(global0.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) - _wgslsmith_f_op_f32(arg_2.x + global0.c.a.x)))), global0.c.a.x)));
    var var_3 = func_2();
    global2 = !(!(!(!(!var_3.c.c.x))));
    return var_3.a | (vec3<i32>(func_3(-u_input.d), -73444i, countOneBits(global0.b.x ^ u_input.d)) >> (_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, arg_1.c.b.x, 4294967295u)) | ~var_1.b, var_1.b, var_3.c.b >> (func_2().c.b % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: f32) -> i32 {
    global2 = false;
    global1 = global4.x;
    var var_0 = arg_2;
    let var_1 = firstLeadingBit(-arg_0.x);
    let var_2 = abs(_wgslsmith_clamp_vec3_i32(-global0.b, global0.b, func_4(-_wgslsmith_clamp_i32(2147483647i, global0.b.x, 0i), func_2(), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1766f, -742f, global0.a.a) * vec3<f32>(global0.a.a, 817f, global0.a.a)))), true)));
    return 3547i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0.b & vec3<i32>(_wgslsmith_dot_vec3_i32(-global0.b, vec3<i32>(global0.b.x, -25697i, -2147483647i)), ~_wgslsmith_mult_i32(global0.b.x, 0i), u_input.d), true, global0.a, ~global0.b, select(i32(-1i) * -(~1i), func_1(vec3<i32>(_wgslsmith_sub_i32(global0.b.x, 0i), ~0i, 1i), ~(-vec2<i32>(global0.b.x, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.b)) * 2326f)), all(vec2<bool>(!global0.a.c.x, func_2().b))));
    global3 = array<Struct_1, 8>();
    global0 = Struct_4(func_2().c, _wgslsmith_mod_vec3_i32(~var_0.d, global0.b & _wgslsmith_sub_vec3_i32(var_0.a, global0.b)), global0.c);
    global2 = false;
    global4 = !(!var_0.c.c.zzw);
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(firstTrailingBit(min(-58481i, var_1.d.x)))), 901f, ~(~(~vec4<u32>(0u, global0.a.b.x, global0.a.b.x, 19105u))));
}

