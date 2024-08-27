struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: array<i32, 10>;

var<private> global1: vec3<i32> = vec3<i32>(66334i, 2147483647i, 29041i);

var<private> global2: array<Struct_1, 23>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(1i), Struct_1(-48121i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-5698i), Struct_1(-1i), Struct_1(-57312i), Struct_1(2147483647i), Struct_1(26626i), Struct_1(-37226i), Struct_1(39729i), Struct_1(2147483647i), Struct_1(0i), Struct_1(10466i), Struct_1(0i), Struct_1(14513i), Struct_1(1i), Struct_1(-32274i), Struct_1(1i), Struct_1(0i), Struct_1(-21975i), Struct_1(-1i), Struct_1(0i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(i32(-2147483648)));

var<private> global4: Struct_1 = Struct_1(26809i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x | ~(~1i), _wgslsmith_add_i32(29375i << (0u % 32u), _wgslsmith_div_i32(13416i, u_input.d)) >> (12886u % 32u), select(u_input.d, u_input.d, all(arg_0)), 1i), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-94768i, global0[_wgslsmith_index_u32(arg_1, 10u)], 2147483647i, -29321i), countOneBits(~vec4<i32>(-16737i, u_input.d, global4.a, 1i)), min(-vec4<i32>(global1.x, global0[_wgslsmith_index_u32(1u, 10u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 10u)]), -vec4<i32>(54605i, -59474i, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
    var var_1 = Struct_1(global4.a);
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 30u)];
    var_1 = Struct_1(max(-2147483647i, ~global1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(64631u, u_input.b, 4294967295u, 1u), reverseBits(vec4<u32>(4294967295u, 1u, 0u, 1u))) % 32u)));
    var var_3 = 2147483647i;
    return -17049i >> (0u % 32u);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(select(global1.x, func_2(vec2<bool>(true, true), u_input.b, false, -259f), true) >> (4294967295u % 32u));
    let var_1 = ~18603u;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1107f))), _wgslsmith_f_op_f32(floor(-893f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(751f, -618f)))))));
    global4 = var_0;
    let var_3 = var_0;
    return select(-abs(vec3<i32>(~40716i, _wgslsmith_add_i32(var_0.a, var_0.a), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, u_input.a.x), 10u)])), vec3<i32>(func_2(vec2<bool>(true, true), firstLeadingBit(~var_1), true, -482f), -1i, -1i), vec3<bool>(false, true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    global2 = array<Struct_1, 23>();
    global3 = array<Struct_1, 30>();
    let var_0 = max(~vec3<i32>(func_2(vec2<bool>(true, false), 0u, true, 1415f), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, -23271i, global1.x) ^ vec4<i32>(-1i, 2147483647i, 1i, -13849i), ~vec4<i32>(2147483647i, 5897i, 0i, global1.x)), global4.a), func_3());
    let var_1 = ~firstTrailingBit(countOneBits(~43659u >> (firstLeadingBit(arg_1.x) % 32u)));
    var var_2 = Struct_1(-global4.a << (1u % 32u));
    return !(min((178i | var_2.a) & ~u_input.d, min(-var_2.a, global4.a)) > global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(~(-2147483647i | countOneBits(~global1.x)));
    var var_0 = !select(!vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), func_1(Struct_1(u_input.d), vec4<u32>(u_input.b, 4294967295u, u_input.b, 113747u))), vec3<bool>(true, true, true), select(false, any(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, false, false)))), select(vec3<bool>(any(vec2<bool>(true, true)), false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true)));
    let var_1 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~52125u, 10u)], abs(u_input.c));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-223f, 453f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1236f - 1016f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-552f)))), _wgslsmith_f_op_f32(f32(-1f) * -251f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-350f + 928f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -578f), 946f)))));
    let var_3 = countOneBits(u_input.a.zz) >> (vec2<u32>(u_input.a.x, select(u_input.a.x, ~firstLeadingBit(u_input.b), all(!vec3<bool>(var_0.x, var_0.x, false)))) % vec2<u32>(32u));
    global0 = array<i32, 10>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_add_vec4_i32(vec4<i32>(var_1, global1.x, global0[_wgslsmith_index_u32(1u, 10u)], global1.x), vec4<i32>(global0[_wgslsmith_index_u32(var_3.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 1i, -19627i)), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(13555i, global1.x, -13166i, var_1), vec4<i32>(u_input.d, -33613i, 2147483647i, 6644i), vec4<i32>(0i, -1i, global4.a, var_1))), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), vec2<bool>(false, var_0.x)))));
}

