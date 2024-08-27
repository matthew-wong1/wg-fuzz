struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<f32> = vec4<f32>(185f, -777f, 328f, 1004f);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(361f, 476f)), 0i, -1i, Struct_1(vec2<f32>(-564f, -495f)));

var<private> global3: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = 1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.wyx)));
    var var_2 = global2.d;
    var var_3 = arg_2.c.x | arg_2.a;
    global0 = u_input.b;
    return arg_0;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = countOneBits(firstLeadingBit(_wgslsmith_clamp_u32(countOneBits(~1164u), u_input.c | ~16049u, u_input.c)));
    let var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, 0i, -34538i, u_input.a.x), -(~vec4<i32>(global2.b, u_input.d, 28920i, u_input.d))) & vec4<i32>(_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, 1i, u_input.d, -24593i), vec4<i32>(u_input.d, -1i, -15405i, -2147483647i))) ^ 1i, ~(-1i), global2.c, -(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.c, global2.b), vec3<i32>(-1i, -39795i, 13976i)) ^ min(-8478i, -1i)));
    let var_2 = global0.x;
    global3 = true;
    return arg_0.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec3<i32> {
    global0 = vec4<u32>(max(~(~arg_1 << (4294967295u % 32u)), 0u), ~(~1u), global0.x, _wgslsmith_sub_u32(~(~(arg_1 >> (arg_1 % 32u))), firstLeadingBit(global0.x)));
    let var_0 = Struct_3(~arg_1, false, u_input.b.zxz);
    var var_1 = global2.d;
    let var_2 = ~vec4<i32>(-global2.c, global2.b, 1i, _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.c, -2147483647i, global2.c, u_input.a.x), vec4<i32>(5539i, u_input.d, global2.c, global2.c)), _wgslsmith_add_vec4_i32(func_2(vec4<i32>(global2.c, 36801i, 25634i, u_input.d), Struct_1(vec2<f32>(var_1.a.x, -968f)), Struct_3(1u, var_0.b, vec3<u32>(1u, 0u, 41964u))), vec4<i32>(u_input.a.x, 7020i, 0i, 40948i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -257f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<f32>(960f, -169f, 379f)))))), 119f));
    return u_input.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = select(vec2<u32>(arg_2.c.x, ~(~0u)), _wgslsmith_mult_vec2_u32(arg_2.c.xx, global0.zx), !select(select(select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, true)), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, arg_2.b), false), vec2<bool>(arg_2.b, arg_2.b)), select(vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, false), true), vec2<bool>(false, true)), arg_2.b));
    var var_1 = true;
    let var_2 = Struct_3(global0.x, false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.d.a.x))) < _wgslsmith_f_op_f32(-global2.a.a.x)), global0.zxw >> (~(select(vec3<u32>(4294967295u, arg_2.c.x, 4294967295u), vec3<u32>(var_0.x, 4294967295u, var_0.x), arg_2.b) << (abs(arg_2.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x - global2.a.a.x), 1046f))), func_1(!select(vec2<bool>(true, true), vec2<bool>(arg_2.b, var_2.b), select(vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, true))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_2.c.x, var_2.c.x, arg_2.c.x), vec4<u32>(31884u, 20421u, var_0.x, arg_2.c.x)) & 54985u, ~(~global0.x), var_2.c.x)).x, global2.c, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-global2.d.a))));
    let var_3 = Struct_3(5514u, false, reverseBits(~vec3<u32>(0u, _wgslsmith_mod_u32(arg_2.c.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, arg_2.c.x, 5886u, u_input.c), vec4<u32>(20407u, 26794u, 0u, 43870u)))));
    return Struct_2(global2.a, u_input.d, (i32(-1i) * -25250i) >> (1u % 32u), Struct_1(global1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-(~u_input.a), abs(_wgslsmith_div_vec3_i32(func_1(vec2<bool>(false, true), 67694u) | u_input.a, u_input.a)), Struct_3(firstLeadingBit(~41677u), u_input.c != (min(0u, u_input.b.x) & firstLeadingBit(718u)), vec3<u32>(~4294967295u, 45987u, 33842u)));
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2649f, -370f)), 1007f, global1.x, global2.a.a.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), -919f, func_4(firstTrailingBit(u_input.a), -u_input.a, Struct_3(35382u, false, u_input.b.yzz)).a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x))))));
    global2 = var_0;
    global3 = false;
    let var_1 = func_4(~func_1(vec2<bool>(2259f != global1.x, true), 0u), (u_input.a << (global0.zzw % vec3<u32>(32u))) | vec3<i32>(global2.b, ~_wgslsmith_mod_i32(-1i, 23658i), min(global2.c, _wgslsmith_clamp_i32(global2.c, var_0.b, -36592i))), Struct_3(u_input.b.x, select(true, true, true), ~vec3<u32>(select(global0.x, 94929u, true), _wgslsmith_add_u32(u_input.c, global0.x), 1u)));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, ~u_input.b));
}

