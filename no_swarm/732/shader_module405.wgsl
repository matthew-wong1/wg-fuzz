struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<f32, 14>;

var<private> global3: Struct_1 = Struct_1(-2001f, vec4<u32>(72067u, 1u, 4294967295u, 0u), vec3<bool>(false, true, false));

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: i32) -> vec4<i32> {
    let var_0 = ~(-(vec4<i32>(~10871i, ~u_input.b, u_input.a, ~arg_3) & vec4<i32>(_wgslsmith_mult_i32(u_input.a, arg_3), -1i, 8963i, min(-11624i, 1i))));
    global2 = array<f32, 14>();
    let var_1 = _wgslsmith_div_vec2_i32(var_0.xz & _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x << (global3.b.x % 32u)), -(~var_0.zw)), var_0.ww);
    let var_2 = global3.c.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * global3.a), _wgslsmith_f_op_f32(f32(-1f) * -390f), true)))) + 314f), ~vec4<u32>(_wgslsmith_mod_u32(global3.b.x, abs(12340u)), global4.b.x, _wgslsmith_clamp_u32(global4.b.x, global4.b.x, 1u) << (_wgslsmith_clamp_u32(global3.b.x, 36858u, global4.b.x) % 32u), global3.b.x), vec3<bool>(((global3.b.x != global3.b.x) != any(vec4<bool>(true, arg_2.x, arg_0, arg_2.x))) && true, any(global4.c), arg_0));
    return select(vec4<i32>(_wgslsmith_div_i32(-firstTrailingBit(-2147483647i), i32(-1i) * -1i), ~1i, _wgslsmith_add_i32(-arg_3, var_1.x), 1i), ~var_0, !select(!vec4<bool>(var_3.c.x, arg_2.x, global4.c.x, true), vec4<bool>(all(vec4<bool>(false, false, false, false)), var_3.c.x, false, true & var_3.c.x), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = select(func_3(arg_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, arg_0.a, 270f, global4.a) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-125f, -494f, -284f, 1000f)))), global3.c, countOneBits(1i)), vec4<i32>(-2147483647i, -1i, reverseBits(0i), (-13575i ^ u_input.a) ^ (-1i >> (arg_0.b.x % 32u))), vec4<bool>(true, true, true, true)) ^ _wgslsmith_mod_vec4_i32(func_3(any(select(vec4<bool>(false, arg_0.c.x, false, global3.c.x), vec4<bool>(global4.c.x, global3.c.x, global3.c.x, false), vec4<bool>(true, false, global3.c.x, global4.c.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 14u)], global3.a, 791f, global4.a)))), vec3<bool>(global3.c.x, !arg_1.x, true), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -5666i), 20128i)), _wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.b))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, 0i, -2147483647i), ~vec4<i32>(1i, -2147483647i, -22970i, 0i), -vec4<i32>(u_input.b, 27029i, u_input.a, 0i))));
    let var_1 = Struct_1(arg_0.a, arg_0.b, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, arg_0.c.x, arg_0.c.x), vec3<bool>(global3.c.x, false, true), global3.c.x), !global4.c.x), all(!vec4<bool>(false, arg_0.c.x, global3.c.x, true))), vec3<bool>((global3.c.x || arg_0.c.x) || global3.c.x, global4.c.x, select(var_0.x > u_input.a, any(arg_1), arg_0.c.x)), true));
    global0 = ~arg_0.b.x;
    var_0 = -_wgslsmith_add_vec4_i32(abs(~vec4<i32>(var_0.x, -27592i, 2147483647i, var_0.x) & vec4<i32>(u_input.b, u_input.a, 1i, u_input.a)), vec4<i32>(_wgslsmith_mult_i32(-22419i, u_input.a), u_input.b, -2147483647i, _wgslsmith_clamp_i32(2147483647i, 1i, u_input.a) << (_wgslsmith_mult_u32(global3.b.x, 4294967295u) % 32u)));
    var_0 = ~abs(~(~vec4<i32>(-3773i, var_0.x, var_0.x, -14376i) & ~vec4<i32>(u_input.b, 1i, var_0.x, -25352i)));
    return Struct_1(_wgslsmith_div_f32(global3.a, var_1.a), ~var_1.b, !global3.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    global2 = array<f32, 14>();
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(88897u, 14u)]), countOneBits(reverseBits(global4.b) ^ vec4<u32>(global4.b.x, 4294967295u, 1u, 0u)), select(global4.c, select(!global4.c, vec3<bool>(true, global3.c.x, global4.c.x), global3.c), global4.c.x)), !global3.c);
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(~4294967295u, 14u)], _wgslsmith_add_vec4_u32(vec4<u32>(select(4294967295u, select(0u, 36058u, global4.c.x), !var_0.c.x), ~(~107053u), _wgslsmith_dot_vec3_u32(select(var_0.b.yxx, global4.b.ywz, false), global4.b.xzx), var_0.b.x >> (~4294967295u % 32u)), firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, 49119u, global3.b.x, arg_2), var_0.b, global3.b), global3.b))), vec3<bool>((var_0.c.x && true) | !(true || global3.c.x), global3.c.x, !(!any(global4.c))));
    var var_2 = 57592i;
    var var_3 = func_2(Struct_1(func_2(Struct_1(311f, ~global4.b, !global3.c), !(!global4.c)).a, _wgslsmith_sub_vec4_u32(global4.b, vec4<u32>(global3.b.x, 0u, var_1.b.x, 4294967295u) & global4.b), vec3<bool>(true, !any(vec2<bool>(true, var_1.c.x)), var_1.c.x)), !vec3<bool>(true, true | all(var_0.c), true));
    return Struct_1(global4.a, firstTrailingBit(vec4<u32>(global4.b.x, global3.b.x, 58567u, _wgslsmith_dot_vec2_u32(var_0.b.zy, global4.b.yw))) ^ abs(~(~vec4<u32>(arg_2, 16471u, 35073u, global4.b.x))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(min(countOneBits(vec3<i32>(u_input.b, u_input.a, i32(-1i) * -25859i)), -reverseBits(vec3<i32>(-56739i, u_input.a, u_input.b) >> (global4.b.wzx % vec3<u32>(32u)))), _wgslsmith_sub_i32(abs(-_wgslsmith_mult_i32(u_input.a, u_input.a)), u_input.a), _wgslsmith_clamp_u32(~global4.b.x, _wgslsmith_sub_u32(~38193u, min(global3.b.x, global3.b.x)), global4.b.x), -(-vec3<i32>(u_input.a, u_input.a, u_input.a) | ~vec3<i32>(u_input.b, u_input.b, u_input.a)) | _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, u_input.b, 0i), vec3<i32>(u_input.a, reverseBits(2147483647i), u_input.b)));
    global2 = array<f32, 14>();
    let var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global4.a, ~_wgslsmith_div_u32(global4.b.x, ~global4.b.x | 1u), -3115f);
}

