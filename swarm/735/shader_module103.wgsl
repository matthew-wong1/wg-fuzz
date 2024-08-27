struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: f32 = 392f;

var<private> global2: array<i32, 12>;

var<private> global3: vec3<i32> = vec3<i32>(-43669i, -28571i, 14861i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-331f, -1000f) - arg_0.b.x))) * _wgslsmith_f_op_f32(-arg_0.b.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global3 = vec3<i32>(-17979i, firstLeadingBit(-1i), countOneBits(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.e, arg_2.a.x), vec3<i32>(14010i, -17482i, arg_2.a.x)))));
    let var_0 = 1u;
    let var_1 = Struct_3(Struct_2(!(!vec2<bool>(false, arg_2.d)), !vec4<bool>(arg_1.b.x >= arg_2.b.x, true, true, arg_1.d || arg_1.d), arg_2.a.x, _wgslsmith_f_op_f32(select(arg_2.b.x, -1551f, arg_1.d)), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, 2147483647i), global3.xx), arg_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(660f, 389f, arg_2.b.x, 955f), _wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(arg_1.b.x, 1056f, arg_2.b.x, 559f))), arg_2.c, arg_1.d, _wgslsmith_dot_vec2_i32(arg_2.a, -vec2<i32>(arg_1.e, arg_0)))), Struct_2(vec2<bool>(all(vec4<bool>(arg_1.d, false, arg_1.d, arg_1.d)), all(!vec3<bool>(false, true, arg_1.d))), !vec4<bool>(!arg_1.d, u_input.d.x > 4294967295u, true, !arg_1.d), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(step(1276f, -153f)), arg_1));
    let var_2 = var_1.a.e.c.x;
    var var_3 = var_1.a;
    return var_3.e.a;
}

fn func_1(arg_0: u32) -> vec4<u32> {
    let var_0 = Struct_2(vec2<bool>(true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true)), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(global3.yx, vec4<f32>(103f, 882f, 309f, -1318f), vec3<u32>(arg_0, 4294967295u, arg_0), false, global3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-206f)), 742f))), Struct_1(max(func_3(global2[_wgslsmith_index_u32(55655u, 12u)], Struct_1(global3.yx, vec4<f32>(2276f, -2056f, 125f, 182f), vec3<u32>(arg_0, 4294967295u, 32468u), true, 36094i), Struct_1(vec2<i32>(global3.x, global3.x), vec4<f32>(-1731f, -296f, 1000f, 1000f), u_input.d.xww, false, 1i)) ^ min(vec2<i32>(-12396i, -18260i), global3.xz), global3.zy), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1757f)), 208f, _wgslsmith_f_op_f32(359f + 1709f), _wgslsmith_f_op_f32(f32(-1f) * -637f)) + vec4<f32>(-766f, _wgslsmith_f_op_f32(select(-1000f, -1380f, true)), _wgslsmith_f_op_f32(round(-754f)), -1020f)), vec3<u32>(40970u, u_input.d.x, 2293u >> (arg_0 % 32u)), true, 1i));
    let var_1 = Struct_3(Struct_2(select(!vec2<bool>(var_0.e.d, var_0.b.x), select(var_0.a, vec2<bool>(true, true), var_0.b.x), vec2<bool>(any(vec4<bool>(true, var_0.a.x, true, true)), any(var_0.b))), select(!select(var_0.b, var_0.b, var_0.b), vec4<bool>(all(var_0.b), var_0.a.x, any(vec2<bool>(false, false)), !var_0.e.d), true), ~28858i, var_0.e.b.x, Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(46810i, var_0.c), global3.yy, var_0.e.a), _wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], 1i), global3.yz)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, var_0.e.b.x, 814f, var_0.e.b.x)), u_input.d.ywy << ((u_input.d.xzx & var_0.e.c) % vec3<u32>(32u)), false, u_input.a & u_input.b)), var_0);
    let var_2 = _wgslsmith_sub_i32(~((var_1.a.e.a.x >> (25253u % 32u)) << (570u % 32u)), ~var_0.e.a.x | ~(-var_0.c)) ^ firstLeadingBit(abs(1i));
    return vec4<u32>(~min(abs(4294967295u), 4294967295u), _wgslsmith_sub_u32(35539u, ~abs(firstTrailingBit(arg_0))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(~1u), ~33514u ^ u_input.d.x, max(var_0.e.c.x, ~u_input.d.x), arg_0), u_input.d), _wgslsmith_dot_vec3_u32(var_0.e.c, reverseBits(vec3<u32>(55844u, 31903u, 4294967295u))) & ~var_1.a.e.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, func_1(firstLeadingBit(u_input.d.x ^ ~u_input.d.x)), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(global3.yz, vec4<f32>(-1000f, -1341f, -787f, 2312f), u_input.d.zxy, false, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -176f)))), -1735f);
}

