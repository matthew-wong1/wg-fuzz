struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(73198u, 55410u), vec2<u32>(44955u, 4801u), vec2<u32>(4294967295u, 1u), vec2<u32>(91766u, 4294967295u), vec2<u32>(61838u, 40032u), vec2<u32>(32514u, 0u), vec2<u32>(1u, 32150u), vec2<u32>(99706u, 4294967295u), vec2<u32>(1u, 89717u), vec2<u32>(12599u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 15642u), vec2<u32>(0u, 1u), vec2<u32>(46837u, 87816u), vec2<u32>(30296u, 16231u), vec2<u32>(76652u, 51654u), vec2<u32>(0u, 20591u), vec2<u32>(0u, 116687u), vec2<u32>(99822u, 0u), vec2<u32>(1u, 26536u), vec2<u32>(43614u, 26903u), vec2<u32>(4294967295u, 20721u), vec2<u32>(62555u, 0u));

var<private> global3: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(21004i, -13234i, 24040i, 2147483647i));

var<private> global4: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    global3 = array<vec4<i32>, 1>();
    global1 = Struct_1(22835u);
    global3 = array<vec4<i32>, 1>();
    let var_0 = vec4<u32>(26137u, firstLeadingBit(1u), 1u, ~global0[_wgslsmith_index_u32(~(~32803u), 30u)]) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(4294967295u, 4294967295u, global1.a, global0[_wgslsmith_index_u32(global1.a, 30u)]), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(global1.a, 30u)], 1474u, global1.a, 4294967295u)), true), vec4<u32>(1u, ~0u, _wgslsmith_mod_u32(0u, 38836u), ~4294967295u))) % vec4<u32>(32u));
    var var_1 = u_input.a;
    return min(var_0.x, ~var_0.x >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(var_0 << (vec4<u32>(1u, global0[_wgslsmith_index_u32(global1.a, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], 4294967295u) % vec4<u32>(32u)), ~var_0)) % 32u));
}

fn func_3() -> vec2<bool> {
    global4 = true;
    global3 = array<vec4<i32>, 1>();
    global4 = true || !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(ceil(-334f)))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-234f)), 2605f)));
    let var_0 = true;
    let var_1 = func_2();
    return vec2<bool>(all(!select(vec2<bool>(var_0, var_0), select(vec2<bool>(true, false), vec2<bool>(true, false), var_0), true)), any(vec2<bool>(true, true)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = vec4<i32>(-u_input.a, 8337i, -16861i, u_input.c.x);
    var var_1 = Struct_1(~func_2());
    var var_2 = any(!func_3());
    let var_3 = false;
    var var_4 = _wgslsmith_mult_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global1.a, 30u)], u_input.b, 4294967295u), ~vec3<u32>(u_input.b, 1u, 0u))), countOneBits((~vec3<u32>(52276u, 4294967295u, 4294967295u) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_1.a, u_input.b), vec3<u32>(global1.a, 0u, global1.a))) >> (vec3<u32>(7627u, global1.a, 11435u << (0u % 32u)) % vec3<u32>(32u))));
    return vec3<i32>(abs(countOneBits(1i) | max(_wgslsmith_dot_vec3_i32(var_0.xww, vec3<i32>(2147483647i, u_input.a, var_0.x)), -var_0.x)), _wgslsmith_sub_i32(-min(u_input.a, u_input.c.x), -3129i), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u);
    let var_1 = -337f;
    let var_2 = any(!vec3<bool>(any(vec2<bool>(true, true)), !(var_1 > var_1), select(false, u_input.a > u_input.a, false)));
    let var_3 = vec3<u32>(54601u, var_0.a, ~max(countOneBits(57909u), ~var_0.a));
    let var_4 = Struct_1(14579u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(select(reverseBits(u_input.c.xyy) << (var_3 % vec3<u32>(32u)), func_1(1u, var_3.xz), select(select(vec3<bool>(true, var_2, false), vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, var_2)), vec3<bool>(var_2, var_2, true), true)), countOneBits(vec3<i32>(~u_input.a, 2147483647i, 1i))), u_input.c.wx, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(835f, -970f, -1059f, var_1))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, 107f, 401f), vec4<f32>(var_1, var_1, var_1, var_1)))))))));
}

