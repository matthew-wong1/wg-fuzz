struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
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

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: bool;

var<private> global2: array<Struct_3, 2>;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(-726f, -1781f, -1814f), Struct_2(vec2<f32>(-1171f, 1108f), vec4<bool>(true, false, false, false), vec2<f32>(1000f, 733f)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(1i, 1i, u_input.e, -(u_input.e << (min(2491u, 1u) % 32u))));
    let var_1 = global3.b;
    global0 = array<vec2<bool>, 31>();
    var var_2 = var_1.a;
    let var_3 = !var_1.b.x;
    return var_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global2 = array<Struct_3, 2>();
    let var_0 = u_input.c.x;
    let var_1 = vec2<i32>(1i, u_input.a);
    global1 = all(global3.b.b);
    global0 = array<vec2<bool>, 31>();
    return func_2();
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(~arg_0.a);
    var var_1 = arg_0.a;
    global1 = !any(!(!arg_1.b.zyz));
    global1 = true;
    global1 = true;
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(arg_1.a.x, -430f)), _wgslsmith_f_op_vec2_f32(step(global3.b.a, global3.b.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global3.a.yy)) - vec2<f32>(global3.b.a.x, global3.a.x))))), global3.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2092f), arg_1.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, global3.a.x, -2264f), global3.a))), _wgslsmith_f_op_vec3_f32(-global3.a))), func_3(arg_2, func_3(Struct_1(reverseBits(vec4<i32>(-14449i, u_input.a, arg_2.a.x, -11457i))), func_3(func_1(arg_2.a, u_input.b), arg_1, -884i, -u_input.e), select(1i, arg_2.a.x & u_input.e, arg_1.b.x), (u_input.e << (u_input.b % 32u)) | _wgslsmith_add_i32(19479i, 16539i)), u_input.a, -_wgslsmith_mult_i32(~(-15673i), 0i)));
    var var_0 = func_3(arg_2, func_3(Struct_1(func_2().a), func_3(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 0i, arg_2.a.x), arg_2.a), ~u_input.d.x), global3.b, arg_2.a.x, ~(-2147483647i)), _wgslsmith_mult_i32(func_2().a.x, -u_input.e), u_input.e), -u_input.e, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.a.zwx, vec3<i32>(16873i, u_input.a, u_input.e)), -vec3<i32>(1i, u_input.e, 1i)), -1i));
    let var_1 = _wgslsmith_clamp_vec4_i32(arg_2.a, vec4<i32>(arg_2.a.x, 2138i, _wgslsmith_dot_vec3_i32(arg_2.a.ywy, ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.e, u_input.a), arg_2.a.wyy)), -u_input.e), -(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_2.a.x, 2147483647i, u_input.e), arg_2.a) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.e, arg_2.a.x), arg_2.a)) | reverseBits(abs(vec4<i32>(4282i, u_input.e, 2147483647i, 2147483647i) & arg_2.a)));
    var var_2 = arg_2.a.x;
    var_0 = func_3(Struct_1(~(-var_1)), arg_0, select(i32(-1i) * -(i32(-1i) * -2147483647i), arg_2.a.x, true), abs(var_1.x));
    return var_1 ^ ~arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(931i, _wgslsmith_dot_vec2_i32(vec2<i32>(-19004i, u_input.e) & vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.e))), firstTrailingBit(59207i), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(u_input.e, u_input.a, 2147483647i)), vec3<i32>(_wgslsmith_mod_i32(u_input.e, 42247i), -u_input.e, firstLeadingBit(u_input.a))), -(u_input.e | (i32(-1i) * -1350i))), -abs(vec4<i32>(u_input.a ^ u_input.a, abs(u_input.a), u_input.e, ~40723i)), func_4(global3.b, func_3(func_1(-vec4<i32>(-1i, u_input.a, 1i, u_input.e), 38214u), Struct_2(global3.a.zy, global3.b.b, _wgslsmith_f_op_vec2_f32(-global3.a.zx)), -u_input.a, ~u_input.a), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, 1i, -1i), vec4<i32>(-1i, 2147483647i, -1i, -2147483647i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(54440i, -1i, 11073i, u_input.a), vec4<i32>(1i, u_input.e, 46713i, u_input.a)))));
    let var_1 = var_0.x == var_0.x;
    var var_2 = func_3(func_1(~func_1(var_0, 0u).a, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 6247u, u_input.b), vec3<u32>(18617u, 27362u, u_input.d.x))), u_input.c)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1027f, global3.b.c.x), vec2<f32>(global3.a.x, -1000f)))))), !select(!global3.b.b, select(vec4<bool>(global3.b.b.x, true, true, false), vec4<bool>(var_1, global3.b.b.x, var_1, global3.b.b.x), global3.b.b), select(vec4<bool>(false, true, global3.b.b.x, true), vec4<bool>(global3.b.b.x, var_1, false, global3.b.b.x), vec4<bool>(global3.b.b.x, global3.b.b.x, false, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.b.a.x, global3.a.x), vec2<f32>(global3.a.x, global3.a.x)))))), ~(~(-u_input.e) >> (max(_wgslsmith_div_u32(6110u, u_input.b), 4294967295u) % 32u)), min(u_input.a, -1i)).b.yxx;
    let var_3 = !var_1;
    global0 = array<vec2<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global3.b.c.x)));
}

