struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-938f, vec4<f32>(-112f, 443f, 455f, -589f), Struct_1(vec4<u32>(45866u, 40652u, 21373u, 12975u), vec3<bool>(false, true, false)));

var<private> global1: u32 = 8457u;

var<private> global2: vec3<bool>;

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)));
    let var_1 = global0.c;
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -909f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, 221f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(global0.a - -862f)) - global0.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-378f + var_0), -1769f, _wgslsmith_f_op_f32(exp2(global0.a)), -1205f)))), Struct_1(global0.c.a, select(select(select(vec3<bool>(global2.x, false, false), vec3<bool>(var_1.b.x, var_1.b.x, true), global0.c.b), vec3<bool>(global0.c.b.x, global2.x, global0.c.b.x), global0.c.a.x == 4294967295u), global0.c.b, true)));
    global0 = var_2;
    let var_3 = var_2;
    return false;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(select(global0.c.a, ~(~global0.c.a), vec4<bool>(false, !(17069u < u_input.a.x), (global2.x & global0.c.b.x) || true, select(u_input.c.x, global3.x, global2.x) != (global3.x << (u_input.a.x % 32u)))), global0.c.b);
    global3 = ~(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 0i, u_input.c.x)) << ((min(vec3<u32>(4294967295u, global0.c.a.x ^ 22142u, 43027u), _wgslsmith_sub_vec3_u32(var_0.a.xyy, vec3<u32>(var_0.a.x, global0.c.a.x, u_input.a.x))) | var_0.a.zzw) % vec3<u32>(32u));
    let var_1 = global0.c;
    var var_2 = vec4<bool>(true, all(!(!global0.c.b)), func_3(vec3<i32>(0i, ~max(-2147483647i, global3.x), ~1i), -(u_input.c.xz >> (global0.c.a.xy % vec2<u32>(32u)))), all(!vec2<bool>(global0.a != 1576f, true)));
    var var_3 = vec4<u32>(firstLeadingBit(1u), ~1u, 40169u, 0u);
    return -(-2587i | u_input.c.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(any(arg_1.b.zz), any(global0.c.b.zy), all(!global2.zz), false), vec4<bool>(func_2() != _wgslsmith_mult_i32(global3.x, arg_2), true, false, true), false), select(vec4<bool>(global0.c.b.x, !global0.c.b.x, !(!global2.x), true || func_3(vec3<i32>(arg_0.x, arg_2, -2147483647i), u_input.c.yy)), vec4<bool>(global0.c.b.x & any(vec4<bool>(global0.c.b.x, true, global2.x, false)), true, true, any(arg_1.b)), all(!select(vec4<bool>(false, true, global0.c.b.x, global2.x), vec4<bool>(global2.x, global2.x, false, true), global0.c.b.x))), !select(vec4<bool>(true, true, true && global0.c.b.x, !global2.x), select(!vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(arg_1.b.x, global2.x, false, arg_1.b.x), vec4<bool>(true, global0.c.b.x, true, true)), !vec4<bool>(global2.x, true, true, false)));
    let var_1 = ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, arg_0.x & -16429i, _wgslsmith_mult_i32(arg_2, 0i))), arg_0);
    global0 = Struct_2(-1526f, vec4<f32>(arg_3.x, 510f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1145f + arg_3.x) - arg_3.x), -707f)), _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), all(global0.c.b.yy)))), arg_1);
    global0 = Struct_2(_wgslsmith_f_op_f32(select(-1024f, -1600f, func_3(-_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(arg_2, 0i, 1i)), select(abs(vec2<i32>(-2147483647i, u_input.c.x)), arg_0.yz, -967f == global0.a)))), arg_3, Struct_1(arg_1.a, select(vec3<bool>(21659i > global3.x, any(vec4<bool>(global2.x, global2.x, arg_1.b.x, global0.c.b.x)), true), global0.c.b, select(arg_1.b.x != arg_1.b.x, global2.x || global2.x, global0.c.a.x > 4294967295u))));
    var var_2 = var_0;
    return Struct_2(arg_3.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(127f, -766f, -1375f, global0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.b)))))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!global0.c.b);
    global1 = u_input.a.x;
    global0 = func_1(vec3<i32>(-u_input.c.x, -1i, -1i), Struct_1(~(~(vec4<u32>(global0.c.a.x, 4294967295u, u_input.a.x, 4134u) << (global0.c.a % vec4<u32>(32u)))), select(global0.c.b, vec3<bool>(select(false, global0.c.b.x, true), false, true), select(!global0.c.b, global0.c.b, vec3<bool>(true, true, false)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(firstTrailingBit(global3.x), 1i), global3.x), global0.b);
    global2 = global0.c.b;
    global1 = ~_wgslsmith_dot_vec4_u32(global0.c.a << (~(~vec4<u32>(global0.c.a.x, u_input.a.x, 0u, 1u)) % vec4<u32>(32u)), vec4<u32>(~firstTrailingBit(global0.c.a.x), ~(u_input.a.x | u_input.b.x), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 2904u), ~u_input.b.x), ~_wgslsmith_sub_u32(0u, u_input.b.x)));
    var var_0 = !global0.c.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.xz, global0.c.a.wxz);
}

