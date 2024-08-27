struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(0u, 1u, 1776u, 65048u), true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_0))), arg_2.x)));
    var var_1 = _wgslsmith_dot_vec3_i32(~countOneBits(min(u_input.d, vec3<i32>(u_input.b.x, u_input.d.x, 2147483647i))), _wgslsmith_div_vec3_i32(-u_input.e << (~vec3<u32>(u_input.a.x, 0u, 0u) % vec3<u32>(32u)), abs(~vec3<i32>(u_input.e.x, u_input.c.x, u_input.c.x))) << (arg_3 % vec3<u32>(32u)));
    let var_2 = vec2<u32>(385u, arg_3.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-515f)), -2640f) * arg_2.yy);
    return _wgslsmith_sub_i32(u_input.e.x, 7653i);
}

fn func_2(arg_0: vec3<f32>) -> vec3<i32> {
    var var_0 = abs(func_3(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), arg_0.x, _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) * arg_0)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(50881u, 4294967295u, 0u), u_input.a.zzw)));
    var var_1 = Struct_2(~global1.a, false | global1.b);
    let var_2 = Struct_2(global1.a, true);
    var var_3 = select(!vec2<bool>(_wgslsmith_f_op_f32(arg_0.x - 476f) <= _wgslsmith_f_op_f32(-499f + arg_0.x), false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(false, global1.b), false), false), select(vec2<bool>(var_2.b, true), select(vec2<bool>(false, global1.b), vec2<bool>(false, false), vec2<bool>(false, global1.b)), u_input.b.x != u_input.c.x)), vec2<bool>(global1.b, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), select(vec2<bool>(true, true), vec2<bool>(var_1.b || var_1.b, false), any(vec3<bool>(global1.b, false, true)) | (true & var_2.b))), vec2<bool>(!global1.b, true));
    var_0 = max(1955i, u_input.c.x);
    return firstLeadingBit(u_input.b.zzx);
}

fn func_1() -> Struct_1 {
    let var_0 = (_wgslsmith_div_vec3_i32(-select(u_input.e, u_input.e, vec3<bool>(true, global1.b, global1.b)), u_input.d) ^ _wgslsmith_sub_vec3_i32(firstLeadingBit(abs(vec3<i32>(2147483647i, u_input.e.x, 37454i))), _wgslsmith_mod_vec3_i32(func_2(vec3<f32>(1608f, 519f, -1495f)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.e.x, -5797i), u_input.b.yzw)))) | vec3<i32>(-countOneBits(_wgslsmith_sub_i32(u_input.e.x, u_input.c.x)), _wgslsmith_dot_vec4_i32(abs(countOneBits(u_input.b)), ~vec4<i32>(22635i, u_input.b.x, -27497i, u_input.d.x)), ~u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2542f + _wgslsmith_f_op_f32(-604f - -975f)))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    var var_3 = var_2.a;
    return Struct_1(var_2.a, vec2<bool>(false, !((0u << (u_input.a.x % 32u)) != ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a, global1.b);
    let var_0 = vec2<bool>(u_input.e.x == u_input.b.x, false);
    global0 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1448f))));
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 35398u, u_input.a.x), global1.a) << (~52313u % 32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(27576u, global1.a.x), u_input.a.x), abs(global1.a.x)));
    let var_3 = func_1();
    global1 = Struct_2(global1.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(-70763i)), var_3.a.x, vec4<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(global1.a.x, _wgslsmith_div_u32(448u, u_input.a.x)), ~4120u), ~(_wgslsmith_sub_u32(global1.a.x, var_2.x) << (_wgslsmith_div_u32(79683u, 4294967295u) % 32u)), u_input.a.x), var_1);
}

