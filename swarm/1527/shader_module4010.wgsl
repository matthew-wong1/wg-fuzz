struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 14>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = firstLeadingBit(~((u_input.d >> (~u_input.d % vec2<u32>(32u))) ^ vec2<u32>(4294967295u, firstTrailingBit(u_input.b.x))));
    var var_1 = ~var_0.x;
    var_0 = vec2<u32>(min(var_0.x, 1u), ~(~31194u)) >> (u_input.d % vec2<u32>(32u));
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~0u << (firstTrailingBit(9937u) % 32u)), select(min(~(~u_input.d), select(vec2<u32>(var_0.x, 4294967295u) & vec2<u32>(22261u, var_0.x), ~u_input.b.xx, true)), ~reverseBits(~vec2<u32>(4851u, var_0.x)), true), u_input.b.wx);
    var var_2 = _wgslsmith_f_op_f32(ceil(-1377f));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.d.x & ~(~_wgslsmith_sub_u32(u_input.b.x, 4294967295u)), 14u)], vec4<i32>(u_input.a, -2147483647i ^ ~u_input.a, -func_3(), -1i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.c, abs(u_input.c), -12908i, 0i), firstLeadingBit(global1[_wgslsmith_index_u32(arg_1.c.x, 14u)]) ^ global1[_wgslsmith_index_u32(abs(64415u), 14u)], global1[_wgslsmith_index_u32(~min(12238u, 1u), 14u)]));
    global0 = select(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1619f, arg_0)), _wgslsmith_f_op_f32(arg_3 * arg_3)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1043f - arg_3)))), arg_1.a.x, true);
    var_0 = 2147483647i;
    var var_1 = ~arg_1.c.x << (0u % 32u);
    var var_2 = Struct_1(arg_1.b, arg_1.b, ~arg_1.c);
    return !select(vec2<bool>(arg_1.b.x, !(arg_2 & arg_1.b.x)), !vec2<bool>(var_2.a.x, arg_1.b.x | arg_2), !arg_1.b);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(!arg_1.a, select(vec2<bool>(true, arg_1.b.x), !(!func_2(-881f, Struct_1(arg_1.b, vec2<bool>(true, true), u_input.b), true, 161f)), arg_1.a), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_1.c.x), arg_1.c.xwy), u_input.b.x, arg_1.c.x | arg_1.c.x), firstTrailingBit(reverseBits(vec4<u32>(arg_1.c.x, 13362u, u_input.e, 4294967295u))), ~firstTrailingBit(vec4<u32>(4294967295u, arg_1.c.x, 76162u, arg_1.c.x))), vec4<u32>(0u, ~70904u, 4294967295u, 1u)));
    var var_1 = arg_1;
    var_1 = Struct_1(vec2<bool>(true, !var_1.a.x), !(!(!(!vec2<bool>(arg_1.b.x, var_0.b.x)))), ~var_0.c);
    global0 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-511f)))))), 602f, _wgslsmith_f_op_f32(min(-679f, _wgslsmith_f_op_f32(-643f + 365f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1051f + 1066f), _wgslsmith_f_op_f32(-1857f * _wgslsmith_f_op_f32(1571f + 985f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(797f * 735f))))));
    return _wgslsmith_div_vec3_u32(var_1.c.zyx, min(max(var_1.c.wyx, min(vec3<u32>(arg_1.c.x, 24640u, 50275u), vec3<u32>(68447u, 122369u, 16114u))), ~select(_wgslsmith_sub_vec3_u32(vec3<u32>(50351u, 10192u, 93055u), arg_1.c.wzx), vec3<u32>(var_1.c.x, u_input.b.x, var_0.c.x), var_0.b.x & true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(firstLeadingBit(~vec4<u32>(0u, 0u, u_input.e, u_input.d.x)));
    var var_1 = 1017f;
    var var_2 = !(!(!(!any(vec3<bool>(false, false, true)))));
    var_2 = all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), true), vec4<bool>(true & (u_input.d.x != u_input.b.x), false, any(vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(0u, 14u)], reverseBits(func_1(2147483647i, Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec4<u32>(0u, var_0.x, var_0.x, 4294967295u)))));
}

