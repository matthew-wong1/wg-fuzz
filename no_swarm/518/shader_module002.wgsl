struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(i32(-2147483648), 40806i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(i32(-2147483648), 50743i, i32(-2147483648)), vec3<i32>(8104i, 2147483647i, -11816i), vec3<i32>(1i, -1i, 2358i), vec3<i32>(2147483647i, 1i, 18405i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, 28648i), vec3<i32>(-39771i, -3839i, i32(-2147483648)), vec3<i32>(-12417i, -68676i, 2147483647i), vec3<i32>(10071i, 41065i, -21541i), vec3<i32>(-967i, -9421i, 2147483647i), vec3<i32>(1i, -10108i, 1i));

var<private> global2: Struct_5;

var<private> global3: array<vec4<i32>, 17>;

var<private> global4: array<Struct_4, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> vec2<f32> {
    global1 = array<vec3<i32>, 14>();
    global1 = array<vec3<i32>, 14>();
    global4 = array<Struct_4, 28>();
    var var_0 = global2.b.d.a.yyz;
    global1 = array<vec3<i32>, 14>();
    return _wgslsmith_f_op_vec2_f32(select(global2.b.a, vec2<f32>(_wgslsmith_f_op_f32(global2.a.b.a.b - arg_0), global2.a.b.a.b), vec2<bool>(true, true)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-2943f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(777f, -245f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(333f, -754f)), -1501f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1035f * -105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * _wgslsmith_f_op_f32(select(1461f, -1726f, arg_2.x)))))));
    let var_1 = max(global2.b.e, min(1u, ~((arg_3 & 1u) ^ ~u_input.a.x)));
    let var_2 = Struct_5(global2.a, global2.b, countOneBits(~(_wgslsmith_mult_i32(arg_1.a, arg_1.a) << (4294967295u % 32u))));
    global2 = var_2;
    global2 = var_2;
    return !all(select(!select(vec4<bool>(global2.b.d.c.a.d, false, global2.b.b.d, arg_1.d), vec4<bool>(false, arg_1.d, false, global2.a.b.a.d), false), select(select(vec4<bool>(var_2.a.d.a.d, true, arg_1.d, true), vec4<bool>(arg_2.x, global2.b.b.d, arg_2.x, global2.a.b.a.d), arg_1.d), !vec4<bool>(arg_2.x, var_2.a.e.a.d, global2.a.d.a.d, arg_2.x), any(vec4<bool>(true, false, arg_1.d, global2.b.d.e.a.d))), vec4<bool>(arg_1.d, arg_1.d, true, any(vec3<bool>(false, global2.b.b.d, true)))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_3) -> vec3<u32> {
    global0 = u_input.a.x >= select(global2.b.e << (0u % 32u), firstLeadingBit(_wgslsmith_div_u32(~u_input.b, arg_0.b.e)), true);
    var var_0 = arg_2.e.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_2(399f));
    let var_2 = !(!(!select(!vec3<bool>(false, arg_2.d.a.d, true), vec3<bool>(global2.a.b.a.d, true, false), func_3(global2.b.a, Struct_1(-2147483647i, arg_1.a.b, arg_1.a.c, false), vec2<bool>(false, arg_0.a.b.a.d), 75917u))));
    global0 = true;
    return ~((u_input.a << (_wgslsmith_clamp_vec3_u32(~u_input.a, u_input.a ^ vec3<u32>(arg_0.b.e, u_input.b, 33825u), ~u_input.a) % vec3<u32>(32u))) ^ u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec3_u32(select(u_input.a << (func_1(Struct_5(Struct_3(global2.a.a, global2.b.d.b, global2.a.b, Struct_2(Struct_1(2147483647i, global2.a.b.a.b, global2.c, global2.a.b.a.d)), Struct_2(global2.a.d.a)), Struct_4(vec2<f32>(-640f, global2.b.c), Struct_1(global2.c, global2.a.c.a.b, global2.c, global2.b.b.d), global2.b.d.d.a.b, global2.b.d, global2.b.e), global2.a.d.a.c), global2.b.d.d, global2.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(4891u, u_input.a.x, global2.b.e)), u_input.a), !(!vec3<bool>(global2.a.c.a.d, true, global2.a.b.a.d))), (vec3<u32>(u_input.b, global2.b.e, 1u) ^ ~vec3<u32>(85299u, 11165u, 126602u)) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global2.b.e, u_input.b), u_input.a, u_input.a));
    var var_1 = !vec3<bool>(global2.a.e.a.d, !(!(global2.a.c.a.d | global2.a.d.a.d)), !func_3(vec2<f32>(global2.a.c.a.b, global2.a.d.a.b), global2.b.d.b.a, vec2<bool>(false, global2.a.b.a.d), ~4294967295u));
    var_1 = vec3<bool>(!(!(reverseBits(global2.b.b.c) < global2.a.c.a.c)), true, true);
    let var_2 = ~(~select(vec2<u32>(0u, 21106u) << (u_input.a.zx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.xz), select(vec2<bool>(false, var_1.x), var_1.zx, vec2<bool>(global2.b.d.b.a.d, var_1.x)))) ^ select(vec2<u32>(firstTrailingBit(15251u), ~0u), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(69127u, 103656u), vec2<u32>(u_input.b, 14253u), u_input.a.xy), !any(select(vec4<bool>(global2.b.b.d, true, global2.a.d.a.d, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x)));
    var var_3 = false;
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.xx, firstLeadingBit(vec2<u32>(~28276u, var_0.x | 88662u))), var_0.x, 20396u);
    global2 = Struct_5(Struct_3(vec4<i32>(_wgslsmith_mult_i32(global2.c, -global2.c), global2.c, global2.c, global2.c), global2.b.d.d, Struct_2(Struct_1(0i, _wgslsmith_f_op_f32(ceil(global2.b.c)), firstTrailingBit(-13781i), true)), global2.a.e, global2.a.c), global2.b, global2.b.d.c.a.a);
    var var_4 = Struct_5(Struct_3(global3[_wgslsmith_index_u32(var_2.x, 17u)], global2.a.c, global2.a.c, Struct_2(global2.b.d.d.a), Struct_2(global2.a.e.a)), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.c.a.b, global2.b.d.c.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.e.a.b * 176f), _wgslsmith_f_op_f32(floor(1503f)))), Struct_1(1i, _wgslsmith_f_op_f32(abs(global2.a.b.a.b)), 0i, global2.b.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2005f * global2.b.b.b) + _wgslsmith_f_op_f32(sign(global2.a.e.a.b))) * 141f), global2.b.d, 18708u), -2147483647i);
    let var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, select(vec2<i32>(8449i, abs(-1i)), var_4.a.a.wz, !(!all(vec3<bool>(var_4.a.c.a.d, true, var_4.a.d.a.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2366f - global2.b.c), 380f, _wgslsmith_div_f32(var_4.a.d.a.b, var_4.a.c.a.b)))), -var_5.b.a, vec2<u32>(_wgslsmith_add_u32(var_5.e, 20517u) >> (0u % 32u), ((18399u >> (var_2.x % 32u)) >> (~u_input.b % 32u)) << (~firstLeadingBit(var_0.x) % 32u)));
}

