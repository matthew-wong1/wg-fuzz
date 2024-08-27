struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-50018i, -1i, -1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, -19069i, 1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 33526i, 0i), vec3<i32>(37263i, -19664i, 98580i), vec3<i32>(32769i, -920i, -1i), vec3<i32>(-15956i, 2147483647i, 0i), vec3<i32>(14526i, -28230i, -23800i), vec3<i32>(-22549i, 1652i, 2147483647i));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 33784u, 52252u)), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(1u, 0u, 71648u)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(19539u, 0u, 1407u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(0u, 1u, 1u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(1u, 1u, 58507u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(0u, 45938u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(1u, 1u, 1u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 4294967295u, 7211u)), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(522u, 10597u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(1u, 4294967295u, 79557u)), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(11258u, 1325u, 48258u)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(43723u, 1u, 0u)), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(26923u, 17889u, 19115u)), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(54451u, 0u, 0u)));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec3<u32> {
    global0 = array<vec3<i32>, 10>();
    return _wgslsmith_div_vec3_u32(~arg_1.b, vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3, 92007u), ~vec2<u32>(1u, arg_1.b.x)), _wgslsmith_mult_u32(select(arg_3, 33883u, true), 4294967295u) | _wgslsmith_mult_u32(11221u, 0u), 76678u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> vec3<u32> {
    var var_0 = Struct_1(!vec4<bool>(true, any(!global2.a.wxw), global2.a.x, !global2.a.x), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, 4294967295u, 4294967295u, 44128u), vec4<u32>(u_input.c.x, 11705u, u_input.c.x, 4294967295u)), _wgslsmith_clamp_u32(~1u, 1u, 1u), countOneBits(~0u)));
    var var_1 = Struct_1(vec4<bool>(global2.b.x != 0u, !var_0.a.x, var_0.a.x, !all(select(vec3<bool>(true, global2.a.x, var_0.a.x), vec3<bool>(global2.a.x, global2.a.x, var_0.a.x), global2.a.zwz))), vec3<u32>(firstLeadingBit(global2.b.x), 1u, 1u));
    global0 = array<vec3<i32>, 10>();
    let var_2 = global1[_wgslsmith_index_u32(~33660u, 15u)];
    let var_3 = vec2<u32>(1u, ~_wgslsmith_clamp_u32(var_1.b.x, firstTrailingBit(_wgslsmith_mod_u32(var_0.b.x, 58770u)), var_2.b.x));
    return func_3(select(select(!vec2<bool>(var_1.a.x, true), var_1.a.ww, arg_0.x > arg_0.x), !var_2.a.yy, _wgslsmith_mult_u32(min(var_0.b.x, var_3.x), ~4294967295u) >= (1u ^ _wgslsmith_mult_u32(global2.b.x, var_2.b.x))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, 1u), 15u)], u_input.a.x, ~((98324u | var_2.b.x) ^ u_input.c.x));
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f * 1000f) - _wgslsmith_f_op_f32(trunc(-1253f))), _wgslsmith_f_op_f32(step(1766f, 1f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)))));
    var var_1 = Struct_1(global2.a, _wgslsmith_add_vec3_u32(func_2(arg_0.yy, countOneBits(~vec2<i32>(-1i, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1321f) - _wgslsmith_f_op_f32(121f + -573f)), 1f), _wgslsmith_sub_vec3_u32(firstTrailingBit(~global2.b), ~u_input.c)));
    global0 = array<vec3<i32>, 10>();
    global1 = array<Struct_1, 15>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 15u)];
    return StorageBuffer(vec4<i32>(u_input.a.x, -28601i, arg_0.x, firstLeadingBit(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.x;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~abs(64702u ^ u_input.c.x), countOneBits(global2.b.x)), 0u), 15u)];
    let var_2 = global1[_wgslsmith_index_u32(~var_1.b.x, 15u)];
    global1 = array<Struct_1, 15>();
    global0 = array<vec3<i32>, 10>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_vec4_i32(min(-vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i) | -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -select(vec4<i32>(18344i, u_input.a.x, u_input.a.x, 63061i), vec4<i32>(u_input.a.x, u_input.a.x, 43924i, 11263i), global2.a.x)), vec4<i32>(u_input.a.x, -1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -13952i) | _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -5353i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))));
}

