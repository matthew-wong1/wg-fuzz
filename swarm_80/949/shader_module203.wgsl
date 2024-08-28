struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: bool = true;

var<private> global2: Struct_5;

var<private> global3: i32 = -2839i;

var<private> global4: Struct_2 = Struct_2(false, 4294967295u, vec4<u32>(39964u, 86704u, 4294967295u, 1u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec4<u32> {
    global1 = global4.a;
    var var_0 = Struct_4(vec3<bool>(global2.a.x, all(arg_0.wz) & true, arg_0.x));
    var_0 = Struct_4(vec3<bool>(any(vec2<bool>(!var_0.a.x, true)), arg_0.x, any(!(!vec3<bool>(arg_0.x, var_0.a.x, true)))));
    global4 = Struct_2(any(select(vec2<bool>(false | var_0.a.x, global2.a.x), global2.a, select(arg_0.zx, arg_0.xz, select(vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, true), arg_0.zz)))), 4294967295u, u_input.a);
    global3 = global0.x;
    return u_input.a;
}

fn func_2() -> vec2<i32> {
    var var_0 = 7167i;
    var var_1 = Struct_5(vec2<bool>(global2.a.x, all(vec2<bool>(all(global2.b), false))), !(!vec4<bool>(!global4.a, global0.x < global0.x, false, !global4.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, global2.c.x) * vec2<f32>(global2.c.x, global2.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x))))))));
    var var_2 = Struct_3(Struct_2(any(var_1.b.yxz), firstTrailingBit(select(u_input.a.x, u_input.c.x, global4.a) << (min(4294967295u, u_input.a.x) % 32u)), reverseBits(func_3(!global2.b, _wgslsmith_f_op_f32(select(616f, var_1.c.x, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) * global2.c.x)));
    let var_3 = !var_2.a.a;
    let var_4 = _wgslsmith_mult_i32(global0.x, ~u_input.b);
    return u_input.d;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: bool) -> vec2<f32> {
    var var_0 = vec4<u32>(48312u, ~_wgslsmith_dot_vec2_u32(global4.c.xw, abs(~vec2<u32>(39197u, 1u))), global4.c.x, 5071u);
    let var_1 = vec2<bool>(true, all(!vec2<bool>(!global2.b.x, arg_3)));
    let var_2 = 2147483647i;
    global3 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(func_2(), countOneBits(-vec2<i32>(-3018i, 10293i))));
    var var_3 = u_input.c.x;
    return _wgslsmith_f_op_vec2_f32(global2.c - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, -441f) - vec2<f32>(arg_1.x, -1000f)) * vec2<f32>(global2.c.x, arg_1.x)))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_1(1f);
    let var_1 = vec4<i32>(global0.x >> (arg_0 % 32u), u_input.d.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -48116i, u_input.b), abs(vec3<i32>(global0.x, -33977i, u_input.b))), u_input.d.x) >> (abs(global4.c) % vec4<u32>(32u));
    var var_2 = arg_2;
    var var_3 = Struct_4(global2.b.www);
    let var_4 = vec4<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-global0.x, countOneBits(global0.x)), (i32(-1i) * -30588i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.d.x, 36972i)))), u_input.b, -2147483647i, abs(1i & global0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(-var_1.x, vec4<f32>(355f, global2.c.x, 1277f, 481f), countOneBits(vec3<u32>(82186u, global4.b, 11369u)), true)).x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1626f)), -1714f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(962f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -658f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -2147483647i;
    global2 = Struct_5(vec2<bool>(global2.b.x, global2.b.x), vec4<bool>(false, global2.a.x, false, global4.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.c)) + vec2<f32>(316f, -611f)))));
    global4 = Struct_2(!(4294967295u != _wgslsmith_add_u32(_wgslsmith_mult_u32(global4.c.x, u_input.c.x), u_input.c.x)), 1u, _wgslsmith_mult_vec4_u32(~u_input.a, u_input.a));
    let var_0 = _wgslsmith_f_op_f32(func_4(global4.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, global2.c.x, global2.c.x)), vec3<u32>(u_input.a.x, ~43670u, _wgslsmith_add_u32(67532u, 0u)), true)) - global2.c), vec2<bool>(!(_wgslsmith_f_op_f32(round(global2.c.x)) > _wgslsmith_f_op_f32(min(global2.c.x, 485f))), false)));
    let var_1 = vec3<bool>(false, all(!(!select(global2.b, global2.b, true))), any(global2.b.xzy));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.d.x, global0.x, -65115i), vec3<i32>(1i, u_input.b, 0i), vec3<bool>(global4.a, global2.a.x, var_1.x)), -vec3<i32>(u_input.b, -26232i, -4874i)), -vec3<i32>(-3959i, 2147483647i, 44651i)), global0.x), 658f, abs(~global0.x >> (9317u % 32u)) & ~u_input.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.c.x)) + _wgslsmith_div_f32(-2009f, global2.c.x)), 1116f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.c.x, var_0)) - _wgslsmith_f_op_f32(max(var_0, global2.c.x)))))), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d.x & -6186i, _wgslsmith_sub_i32(-1i, global0.x), select(0i, u_input.d.x, false)), vec3<i32>(global0.x, u_input.b, -max(global0.x, u_input.d.x))));
}

