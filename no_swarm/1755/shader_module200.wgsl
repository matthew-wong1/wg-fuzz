struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(898f, 373f);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(0u, 1u, 63412u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(14561u, 63229u, 1u), vec3<u32>(9890u, 0u, 15376u), vec3<u32>(4294967295u, 62548u, 16022u), vec3<u32>(4294967295u, 51159u, 1u), vec3<u32>(52539u, 37120u, 37102u), vec3<u32>(0u, 1u, 0u), vec3<u32>(14355u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 51049u), vec3<u32>(28792u, 5231u, 23045u), vec3<u32>(4294967295u, 0u, 17693u));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    return countOneBits(arg_1.c.x);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(507f + -454f), -1119f, -325f) * arg_2.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(arg_1, global0.x, 446f)))))))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_1 = arg_2;
    let var_2 = Struct_2(var_0.a, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f - _wgslsmith_f_op_f32(-global4.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.a))) + -284f)));
    var var_3 = countOneBits(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(~global4.c.x, 116630u, ~4294967295u, ~20165u), arg_0)));
    var_3 = arg_0;
    return !global1.xyz;
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = select(abs(~(~vec3<i32>(u_input.a, -26467i, u_input.a)) << ((select(u_input.b, vec3<u32>(76299u, 82370u, 4294967295u), false) & u_input.b) % vec3<u32>(32u))), ~firstLeadingBit(max(abs(u_input.c.zwz), -u_input.c.xxz)), !func_3(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(386f, global4.a, global0.x) * vec3<f32>(global4.a, global4.a, global0.x)), ~4294967295u, 873f)));
    return _wgslsmith_sub_vec3_u32(~global4.c.wzy, arg_0.ywx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(3655u, 4294967295u), func_1(u_input.c.yxx, Struct_1(853f, true, vec4<u32>(global4.c.x, 4294967295u, global4.c.x, 28911u)), vec3<i32>(28150i, u_input.c.x, u_input.c.x), Struct_1(global0.x, true, global4.c)), 23793u, ~53492u), global4.c));
    global1 = select(vec4<bool>(true, global1.x, true, true), select(select(vec4<bool>(true, u_input.a < u_input.a, false, true), vec4<bool>(true, true, global3.x, !global4.b), all(!vec3<bool>(false, false, global1.x))), !vec4<bool>(true, global1.x, true, true), select(!select(vec4<bool>(global3.x, global3.x, false, global4.b), vec4<bool>(global4.b, global3.x, false, global3.x), vec4<bool>(global4.b, global1.x, false, false)), !(!vec4<bool>(global4.b, false, false, false)), all(vec3<bool>(global3.x, false, global4.b)))), false);
    var var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_add_i32(-8815i, u_input.a) & (i32(-1i) * -2147483647i), -12413i)) << (u_input.d % 32u);
    let var_2 = Struct_1(-227f, true, ~vec4<u32>(global4.c.x | abs(global4.c.x), u_input.e, ~_wgslsmith_sub_u32(var_0.x, 29143u), ~var_0.x));
    global4 = Struct_1(_wgslsmith_f_op_f32(-781f - _wgslsmith_f_op_f32(-global0.x)), true && (true & func_3(global4.c | vec4<u32>(global4.c.x, 32927u, var_2.c.x, var_2.c.x), _wgslsmith_f_op_f32(sign(477f)), Struct_2(vec3<f32>(global0.x, global4.a, global4.a), 0u, -194f)).x), ~(~min(var_2.c ^ global4.c, global4.c & vec4<u32>(1u, 0u, var_0.x, 42693u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-3667i));
}

