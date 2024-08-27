struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_3, 4>;

var<private> global3: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = !(!select(!global3.b.c, select(vec4<bool>(false, true, arg_0, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, global3.b.c.x, true, global3.b.c.x), global3.b.c, true)), global3.b.c));
    var var_1 = ~firstLeadingBit(vec2<i32>(global3.c | -u_input.b.x, 1i));
    return global3.b.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_4 {
    global1 = ~vec3<i32>(max(1i, 6344i), u_input.b.x, ~(~_wgslsmith_add_i32(0i, global1.x)));
    global3 = Struct_4(u_input.a, Struct_2(arg_1.b, global3.b.b, !vec4<bool>(any(global3.b.c.xz), !global3.b.c.x, arg_0.x <= 707f, true), arg_1.c.x & select(all(vec3<bool>(global3.b.d, global3.b.c.x, global3.b.d)), arg_1.c.x && arg_1.c.x, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(1630f, 790f, _wgslsmith_f_op_f32(f32(-1f) * -936f)) - arg_1.e)), 16717i >> (((1u | arg_2.x) | 0u) % 32u), ~(~abs(vec2<u32>(arg_2.x, arg_2.x))) ^ ~arg_2);
    let var_0 = global2[_wgslsmith_index_u32(~firstLeadingBit(max(33882u | u_input.a.x, ~444u) ^ _wgslsmith_div_u32(104104u, u_input.a.x)), 4u)];
    let var_1 = func_2(any(var_0.d.c.zzy), _wgslsmith_div_vec2_u32(max(~vec2<u32>(4294967295u, u_input.a.x), ~countOneBits(vec2<u32>(71560u, 1u))), ~vec2<u32>(4294967295u, 4294967295u) | countOneBits(abs(vec2<u32>(arg_2.x, 26645u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.e.x - _wgslsmith_f_op_f32(f32(-1f) * -513f))), vec3<u32>(u_input.a.x >> (arg_2.x % 32u), min(arg_2.x >> (u_input.a.x % 32u), _wgslsmith_mod_u32(arg_2.x, min(global3.a.x, 0u))), _wgslsmith_clamp_u32(global3.a.x, _wgslsmith_div_u32(~global3.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(23998u, u_input.a.x, 0u, global3.d.x), vec4<u32>(39666u, 12488u, global3.a.x, 73459u)))));
    var var_2 = arg_1.c;
    return global0[_wgslsmith_index_u32(u_input.a.x >> (_wgslsmith_add_u32(~1u, 49622u | u_input.a.x) % 32u), 29u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_2 {
    global3 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx), vec2<f32>(-1243f, arg_0.x)))), Struct_2(func_2(true, ~vec2<u32>(63393u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * global3.b.e.x), ~vec3<u32>(1u, u_input.a.x, 0u)), func_2(1i <= (26636i << (global3.d.x % 32u)), vec2<u32>(firstLeadingBit(4294967295u), u_input.a.x ^ 16195u), 1389f, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 2107u, global3.a.x) >> (vec3<u32>(u_input.a.x, global3.d.x, 4294967295u) % vec3<u32>(32u)), min(vec3<u32>(33754u, u_input.a.x, 39795u), vec3<u32>(64806u, 24259u, 66729u)))), !select(!arg_1, !global3.b.c, true), arg_1.x, _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.e.x, 1263f, arg_0.x) - arg_0)))), global3.d);
    global1 = u_input.b.wwx;
    var var_0 = global3.b.a.a.x;
    var var_1 = global3.d.x & _wgslsmith_add_u32(u_input.a.x, global3.d.x);
    var var_2 = max(51837i, ~global3.b.b.a.x);
    return Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-global1.x, i32(-1i) * -2235i), -u_input.b.yy)), Struct_1(vec2<i32>(~_wgslsmith_sub_i32(14604i, u_input.b.x), ~(-1i))), select(arg_1, !global3.b.c, !(!(!global3.b.c))), arg_1.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_4(min(_wgslsmith_sub_vec2_u32(vec2<u32>(42886u, ~2822u), ~vec2<u32>(48692u, u_input.a.x)), ~(~(u_input.a >> (vec2<u32>(0u, global3.a.x) % vec2<u32>(32u))))), func_1(global3.b.e, global3.b.c, vec2<bool>(!(u_input.b.x >= global3.b.b.a.x), all(vec2<bool>(global3.b.c.x, false)))), u_input.b.x, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a, abs(vec2<u32>(42834u, 1u))), vec2<u32>(10061u, u_input.a.x)), ~(vec2<u32>(u_input.a.x, 29881u) ^ vec2<u32>(global3.d.x, 0u))));
    let var_2 = -769f;
    var var_3 = func_3(var_1.b.e.yx, Struct_2(Struct_1(vec2<i32>(var_1.b.b.a.x | global3.b.a.a.x, _wgslsmith_mod_i32(1i, u_input.b.x))), global3.b.b, vec4<bool>(true, true, global3.b.c.x, any(!vec2<bool>(true, var_1.b.c.x))), var_0, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1826f, 610f, 357f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.e.x, 740f, var_1.b.e.x), vec3<f32>(-1886f, -247f, global3.b.e.x), vec3<bool>(true, false, var_1.b.c.x))))))), u_input.a).b;
    var var_4 = vec4<i32>(func_1(func_1(var_1.b.e, var_3.c, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 309f)), Struct_2(Struct_1(vec2<i32>(610i, 73091i)), var_1.b.b, vec4<bool>(true, true, var_0, true), false, var_3.e), ~var_1.a).b.c.zx).e, select(var_3.c, var_1.b.c, global3.b.d), global3.b.c.xx).a.a.x, ~(~(-(~0i))), -3035i, 92936i);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(325f, _wgslsmith_f_op_f32(-454f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.e.x))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(func_3(global3.b.e.zz, var_1.b, vec2<u32>(45960u, var_1.a.x)).b.e.x, 1f), var_3.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d);
}

