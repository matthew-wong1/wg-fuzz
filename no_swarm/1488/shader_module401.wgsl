struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 16>;

var<private> global2: Struct_2;

var<private> global3: Struct_4;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_4) -> f32 {
    global2 = arg_1.d;
    global0 = arg_1.c;
    global3 = Struct_4(_wgslsmith_f_op_vec4_f32(-arg_3.a), ~(~(global3.b ^ (global2.b.b.x >> (arg_3.b % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f * _wgslsmith_f_op_f32(1936f - -1000f))));
    global0 = arg_1.c;
    global1 = array<vec3<u32>, 16>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.x)))));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec4<f32> {
    global0 = Struct_2(~global0.a, Struct_1(min(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.a, u_input.a, 2147483647i), vec3<i32>(global2.b.a, -69815i, arg_0)), reverseBits(vec3<i32>(-51381i, u_input.a, 0i))), 2147483647i), ~vec4<u32>(global0.c, ~global2.a.x, global0.b.b.x | arg_1.b, global3.b), (1i <= global0.b.a) && (_wgslsmith_div_f32(-1000f, arg_1.a.x) != global3.a.x), !select(select(global2.b.d, global2.b.d, vec3<bool>(global2.b.c, global0.b.d.x, true)), vec3<bool>(global0.b.c, global2.b.d.x, true), all(vec4<bool>(global2.b.d.x, false, true, false)))), 33786u);
    let var_0 = Struct_2(global2.b.b, Struct_1(i32(-1i) * -global2.b.a, countOneBits(~global0.b.b >> (global0.b.b % vec4<u32>(32u))), true, vec3<bool>(select(!global0.b.c, true, global0.b.d.x), !(global2.b.d.x & true), false)), abs(14325u));
    global0 = var_0;
    global1 = array<vec3<u32>, 16>();
    let var_1 = all(global0.b.d);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-613f))))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, global3.c, 386f, arg_1.a.x) + arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1906f, global3.c, global3.c, 276f)))) * _wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(arg_1.c, -261f, arg_1.a.x, arg_1.a.x))), global3.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(global0.b.d, Struct_3(vec3<u32>(global0.b.b.x, u_input.b, u_input.b), vec4<f32>(global3.a.x, 438f, 1097f, global3.c), Struct_2(vec4<u32>(4294967295u, 4294967295u, global2.c, global0.a.x), global2.b, 0u), Struct_2(vec4<u32>(27606u, global3.b, 0u, 11289u), global0.b, 0u)), vec4<i32>(global2.b.a, -68778i, global2.b.a, global2.b.a), Struct_4(vec4<f32>(global3.c, -379f, -2146f, global3.c), 10196u, global3.a.x))), _wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(global3.c * -1888f), global3.a.x), global3.a), _wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_4(global3.a, 0u, -1000f))), global3.b >= global3.b))));
    let var_1 = 0u;
    var var_2 = 9965i;
    var_2 = global0.b.a;
    var var_3 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a, u_input.a, global2.b.a), min(_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, 51768i, 6553i), vec3<i32>(global2.b.a, global0.b.a, -32092i) >> (global0.a.wyw % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(-4414i, global2.b.a, u_input.a), vec3<i32>(u_input.a, 0i, global0.b.a)), vec3<i32>(-15492i, 0i, 2147483647i) ^ vec3<i32>(global2.b.a, 24986i, global0.b.a)))));
    return Struct_1(global0.b.a, global0.b.b, global2.b.c, select(global2.b.d, select(global0.b.d, global0.b.d, vec3<bool>(!global2.b.c, global0.b.d.x, all(vec4<bool>(global2.b.c, global2.b.c, false, false)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.b.b, func_1(), global2.c);
    let var_0 = _wgslsmith_f_op_f32(-global3.c);
    global2 = Struct_2(vec4<u32>(80771u, 47561u, firstLeadingBit(global3.b) >> (global3.b % 32u), max(global3.b, 3172u)), func_1(), 0u ^ select(abs(select(0u, 1u, false)), _wgslsmith_dot_vec3_u32(global0.b.b.ywy, select(vec3<u32>(55893u, global3.b, 31532u), vec3<u32>(global0.a.x, 40067u, global3.b), vec3<bool>(false, global2.b.c, global0.b.c))), true));
    let var_1 = 33506i;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1232f, -846f, 804f) - global3.a.wwz), _wgslsmith_f_op_vec3_f32(-global3.a.zww), select(vec3<bool>(false, false, global2.b.c), vec3<bool>(global0.b.d.x, global0.b.c, false), true))) - global3.a.zxw) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-12276i, -5314i), vec2<i32>(1i, 1i)), Struct_4(global3.a, ~9541u, _wgslsmith_f_op_f32(-1037f + var_0)))).zxy)));
    global1 = array<vec3<u32>, 16>();
    var var_3 = _wgslsmith_add_vec2_u32(global0.b.b.zz, ~vec2<u32>(9537u, global3.b));
    let var_4 = global3.c;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(floor(1676f)), _wgslsmith_div_f32(400f, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

