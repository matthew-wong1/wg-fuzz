struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global1: Struct_5;

var<private> global2: Struct_1;

var<private> global3: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_5) -> u32 {
    var var_0 = 0u;
    global1 = arg_0;
    global2 = global1.b.b;
    let var_1 = !select(vec2<bool>(true, true), !vec2<bool>(true, 1u > global2.a.x), vec2<bool>(true, true));
    var_0 = 1u ^ _wgslsmith_clamp_u32(0u, min(firstTrailingBit(1u), reverseBits(0u ^ global1.b.b.a.x)), arg_0.b.a.d.a.x);
    return countOneBits(global1.b.b.a.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1450f, 1651f)), _wgslsmith_f_op_f32(-1000f + arg_1.x), true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))));
    let var_1 = arg_2;
    let var_2 = Struct_2(select(u_input.a.zx, (abs(u_input.a.yz) >> (~arg_2.a % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(u_input.a.yx, global1.b.a.a | vec2<i32>(0i, global0.x)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), -u_input.a, global2.a.x, arg_2, -1107f);
    var var_3 = 211f;
    var var_4 = Struct_4(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x ^ global2.a.x, firstLeadingBit(var_2.c)), _wgslsmith_div_vec2_u32(arg_2.a, ~global1.b.b.a)), 4294967295u, func_2(Struct_5(~u_input.a.yxx, Struct_3(Struct_2(vec2<i32>(global0.x, u_input.a.x), global1.b.a.b, var_2.c, global1.b.a.d, 1695f), Struct_1(var_2.d.a))))), -671f);
    return global1.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = Struct_1(vec2<u32>(arg_2.b.b.a.x, (arg_1.c ^ ~0u) ^ 0u));
    var var_1 = vec2<f32>(1084f, arg_1.e);
    global1 = Struct_5(arg_1.b.zyw, Struct_3(Struct_2(vec2<i32>(abs(u_input.a.x), -global1.b.a.a.x), -max(arg_1.b, arg_1.b), 124701u, Struct_1(~vec2<u32>(4294967295u, 329u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.e + 1000f)))), func_1(func_1(_wgslsmith_sub_vec2_u32(arg_1.d.a, arg_1.d.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, global1.b.a.e, arg_1.e)), var_0).b.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1664f), -739f, _wgslsmith_f_op_f32(sign(-1291f))), global1.b.b).b));
    let var_2 = arg_2;
    var var_3 = ~max(vec3<u32>(func_2(Struct_5(vec3<i32>(22412i, 30632i, arg_1.b.x), Struct_3(arg_2.b.a, arg_2.b.b))), ~_wgslsmith_add_u32(global2.a.x, global1.b.a.d.a.x), 38440u), max(_wgslsmith_mult_vec3_u32(~vec3<u32>(51641u, var_2.b.b.a.x, 0u), vec3<u32>(0u, 1u, 1u) & vec3<u32>(var_2.b.a.c, 57790u, var_2.b.a.d.a.x)), ~(~vec3<u32>(arg_1.c, var_2.b.a.d.a.x, 46709u))));
    return min(_wgslsmith_clamp_vec2_u32(arg_2.b.b.a, vec2<u32>(4294967295u, _wgslsmith_mod_u32(56943u | var_0.a.x, var_3.x)), ~(~arg_1.d.a >> (func_1(vec2<u32>(arg_2.b.b.a.x, arg_2.b.a.d.a.x), vec3<f32>(arg_1.e, -1000f, arg_2.b.a.e), Struct_1(var_2.b.b.a)).a.d.a % vec2<u32>(32u)))), arg_1.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.a.b;
    var var_1 = func_1(vec2<u32>(global2.a.x, global2.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.a.e, -434f, -923f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, -212f, global1.b.a.e))))), global1.b.a.d);
    let var_2 = var_1.a.e;
    var_1 = func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(vec2<u32>(0u, 1u), var_1.a, Struct_5(vec3<i32>(-2147483647i, -75829i, global1.a.x), global1.b)), vec2<u32>(0u, 25139u)), ~vec2<u32>(global1.b.a.d.a.x, 0u), ~global2.a << (~vec2<u32>(global2.a.x, 1u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(global1.b.a.d.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.b.a.d.a.x, global2.a.x), vec2<u32>(0u, var_1.a.c)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.a.e)))), _wgslsmith_f_op_f32(f32(-1f) * -687f)), func_1(reverseBits(_wgslsmith_sub_vec2_u32(global2.a, func_1(vec2<u32>(69856u, global2.a.x), vec3<f32>(var_1.a.e, 861f, global1.b.a.e), Struct_1(global2.a)).a.d.a)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(999f * var_1.a.e), var_1.a.e)), global1.b.a.e, 2742f), Struct_1(global2.a)).b);
    let var_3 = 1i;
    let var_4 = global1.b.b;
    let var_5 = ~(~global1.b.b.a.x);
    global1 = Struct_5(var_0.ywy, Struct_3(var_1.a, func_1(vec2<u32>(_wgslsmith_clamp_u32(var_5, 58967u, 19438u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 32677u, 4294967295u, var_1.b.a.x), vec4<u32>(global1.b.b.a.x, global2.a.x, var_1.a.c, 42092u))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.e, 1030f, var_1.a.e), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-986f, global1.b.a.e, 114f)))), func_1(~global2.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.a.e, 946f, var_1.a.e))), func_1(global2.a, vec3<f32>(var_1.a.e, -1000f, 365f), Struct_1(vec2<u32>(var_1.b.a.x, global2.a.x))).b).b).b));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.b.b.a.x, var_1.a.e, -select(vec3<i32>(global1.a.x, i32(-1i) * -1i, 0i), _wgslsmith_clamp_vec3_i32(u_input.a.yxz, -vec3<i32>(1i, global0.x, 51207i), ~vec3<i32>(var_3, 34768i, 2147483647i)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.a.e, var_1.a.e, 369f), vec3<f32>(-1000f, 704f, var_1.a.e), vec3<bool>(true, false, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e, global1.b.a.e, var_1.a.e)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1785f, var_1.a.e)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.e, global1.b.a.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.e, -465f)) * vec2<f32>(global1.b.a.e, 851f))), false)));
}

