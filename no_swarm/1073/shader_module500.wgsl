struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 47698u;

var<private> global2: vec2<u32> = vec2<u32>(70637u, 33348u);

var<private> global3: Struct_1 = Struct_1(false, vec3<f32>(-429f, -1000f, 360f), vec4<bool>(true, false, true, true), 317f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(true, _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1298f, 416f, 1223f) + arg_1.b)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, arg_1.b.x, arg_1.d)))))), arg_1.c, arg_1.b.x);
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = arg_1;
    var var_3 = ~(~(~(~vec2<u32>(u_input.a.x, u_input.a.x))));
    var_1 = 33028i;
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global3 = Struct_1(!(!arg_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global3.b)), global3.b, false)), !global3.c, -202f);
    global1 = ~4294967295u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.d * -648f))) - arg_1.b.x), _wgslsmith_f_op_f32(abs(-489f)), any(global3.c.yyw))));
    let var_0 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(-global3.b.x), arg_1.d, _wgslsmith_f_op_f32(-242f - global3.b.x)), !(!func_1(false, func_1(global3.a, Struct_1(true, vec3<f32>(global3.d, 485f, -800f), global3.c, arg_1.d), arg_1.c.yy), func_1(arg_1.c.x, arg_1, global3.c.yw).c.zz).c), arg_1.d);
    global1 = ~(~(~_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), global2.x)));
    return arg_1;
}

fn func_2() -> Struct_1 {
    let var_0 = func_1(true, func_3(-_wgslsmith_div_i32(-29612i, 1i), Struct_1(true, global3.b, !vec4<bool>(false, global3.c.x, false, global3.c.x), 655f)), global3.c.yy);
    let var_1 = func_1(var_0.a, func_3(firstTrailingBit(abs(60334i)), func_1(true, var_0, func_3(_wgslsmith_add_i32(5362i, 36986i), Struct_1(var_0.a, vec3<f32>(global3.b.x, 425f, var_0.b.x), vec4<bool>(global3.a, false, var_0.c.x, global3.a), -1426f)).c.zw)), func_3(-reverseBits(firstLeadingBit(18447i)), Struct_1(true, vec3<f32>(_wgslsmith_div_f32(var_0.d, var_0.d), _wgslsmith_f_op_f32(step(var_0.b.x, global3.d)), -2154f), func_1(true, var_0, var_0.c.yw).c, 1346f)).c.wz);
    global3 = Struct_1(global3.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f - var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d - 2103f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1844f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.d), 1f, _wgslsmith_f_op_f32(step(global3.d, 394f))))), vec4<bool>(!global3.a, !(1445f > var_1.d), !all(vec2<bool>(var_1.c.x, global3.c.x)) | var_0.a, var_1.a), -320f);
    var var_2 = func_1(true, func_3(1i, func_3(firstLeadingBit(-1i), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, 638f, -1301f)), vec4<bool>(true, true, global3.c.x, global3.c.x), func_1(true, var_1, vec2<bool>(false, global3.a)).b.x))), !(!select(!vec2<bool>(true, global3.a), vec2<bool>(false, false), true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -978f), var_0.a)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(1923f + -1000f)) * var_1.b.x))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, Struct_1(any(vec3<bool>(global2.x <= u_input.a.x, global3.c.x, select(false, global3.c.x, global3.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b + vec3<f32>(global3.d, global3.b.x, 589f)) - _wgslsmith_f_op_vec3_f32(ceil(global3.b))), select(vec4<bool>(all(global3.c.zww), false, global3.a, global3.c.x), global3.c, true), -1778f), !global3.c.xy);
    let var_1 = func_2();
    global0 = _wgslsmith_f_op_f32(-global3.d);
    var var_2 = select(u_input.a, ~firstLeadingBit(vec3<u32>(global2.x << (u_input.a.x % 32u), u_input.a.x >> (global2.x % 32u), u_input.a.x)), !var_0.c.wyw);
    let var_3 = false;
    global3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) - var_1.d)), _wgslsmith_mod_vec2_i32(-(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 43664i), vec2<i32>(2147483647i, -2147483647i))), abs(vec2<i32>(1i, 1i))), _wgslsmith_mod_vec2_u32(~u_input.a.yx, ~(~firstLeadingBit(vec2<u32>(4294967295u, 79071u)))), vec3<f32>(func_3(_wgslsmith_mod_i32(1i, 2147483647i) << (global2.x % 32u), Struct_1(var_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(572f, var_1.d, -1000f) - vec3<f32>(global3.b.x, 1000f, global3.b.x)), !var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -823f))).b.x, _wgslsmith_f_op_f32(420f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1182f - -663f), global3.d, select(true, true, true)))), _wgslsmith_f_op_f32(-430f + -923f)), var_1.b.x);
}

