struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(33547u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 41808u), vec2<u32>(10665u, 113130u), vec2<u32>(30251u, 53441u), vec2<u32>(4294967295u, 21383u), vec2<u32>(0u, 0u), vec2<u32>(99634u, 0u), vec2<u32>(31954u, 26789u));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(i32(-2147483648)), Struct_1(75272i), Struct_1(1i), Struct_1(-43453i), Struct_1(-7332i), Struct_1(-67261i), Struct_1(i32(-2147483648)), Struct_1(38991i), Struct_1(0i), Struct_1(1i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(6982i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(20477i), Struct_1(-8932i), Struct_1(1i), Struct_1(0i), Struct_1(2147483647i), Struct_1(0i));

var<private> global2: i32 = 0i;

var<private> global3: array<bool, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global3 = array<bool, 27>();
    var var_0 = abs(1u);
    var var_1 = Struct_1(u_input.a);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(56534i | select(-50647i, -1i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.a, u_input.a, u_input.b), vec4<i32>(var_1.a, u_input.a, u_input.b, 2147483647i)) | u_input.a, _wgslsmith_mod_i32(~u_input.a, _wgslsmith_add_i32(-9009i, 4741i))) ^ -(~reverseBits(vec3<i32>(u_input.b, 17961i, var_1.a))), vec3<i32>(u_input.a | u_input.a, -(-59935i | var_1.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.a, var_1.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 19739i, -1i), vec3<i32>(-11793i, -21102i, -2147483647i)))) ^ firstLeadingBit(firstTrailingBit(vec3<i32>(0i, u_input.b, var_1.a)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(51399u, 0u, 4294967295u), vec3<u32>(171099u, 0u, 48599u), vec3<u32>(4294967295u, 12637u, 0u)) % vec3<u32>(32u))));
    let var_3 = Struct_1(-6084i);
    return var_1.a;
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f + -212f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)));
    global0 = array<vec2<u32>, 9>();
    global3 = array<bool, 27>();
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, func_3(), u_input.b), countOneBits(max(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -2147483647i, -4524i), vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(u_input.a, -1i, u_input.a)), select(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(-26746i, -20719i, u_input.b), false), vec3<bool>(true, true, true)), reverseBits(vec3<i32>(u_input.a, 1i, 27404i) ^ vec3<i32>(u_input.a, u_input.a, u_input.b)))));
    let var_2 = Struct_1(1i);
    return select(vec2<bool>(true, false), !vec2<bool>(global3[_wgslsmith_index_u32(~1u, 27u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 1u), ~25397u), 27u)]), vec2<bool>(true, false));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(0u), 21u)];
    global0 = array<vec2<u32>, 9>();
    var var_1 = any(vec4<bool>(arg_1.x, !(!(-376f < arg_0.x)), any(!arg_1.zy), global3[_wgslsmith_index_u32(~1u, 27u)]));
    let var_2 = Struct_1(abs(arg_3.x) | firstTrailingBit(var_0.a >> (4294967295u % 32u)));
    let var_3 = global1[_wgslsmith_index_u32(~0u, 21u)];
    return func_2(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 1953f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<u32>(~(~(0u >> (0u % 32u))), ~(~(~1u)), ~0u), vec3<u32>(abs(~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 9241u), _wgslsmith_add_vec2_u32(vec2<u32>(10454u, 1u), min(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]))), 0u), !vec3<bool>(any(select(vec4<bool>(global3[_wgslsmith_index_u32(3537u, 27u)], true, global3[_wgslsmith_index_u32(4854u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), vec4<bool>(false, true, false, true), true)), global3[_wgslsmith_index_u32(~4294967295u, 27u)], global3[_wgslsmith_index_u32(abs(~53249u), 27u)]));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(u_input.a, abs(u_input.b)), abs(_wgslsmith_sub_i32(u_input.b, _wgslsmith_sub_i32(-1i, 10773i)) | ~0i), u_input.a);
    let var_2 = -(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(var_1.x), _wgslsmith_mult_i32(20038i, u_input.a), countOneBits(u_input.a)), ~(~vec3<i32>(10409i, 0i, u_input.a))) >> (~vec3<u32>(~var_0.x, ~var_0.x, 42468u) % vec3<u32>(32u)));
    global3 = array<bool, 27>();
    var var_3 = select(select(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1370f, 559f, -1540f) * vec3<f32>(477f, -833f, -1303f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131f, 1470f, 621f)), vec3<bool>(true, true, true))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(75005u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(3307u, 27u)], false)), !vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.x, 27u)], global3[_wgslsmith_index_u32(var_0.x, 27u)]), global3[_wgslsmith_index_u32(var_0.x, 27u)] & global3[_wgslsmith_index_u32(var_0.x, 27u)]), Struct_1(-var_2.x), ~vec4<i32>(0i, var_1.x, u_input.a, 0i)), vec2<bool>(!global3[_wgslsmith_index_u32(~15889u, 27u)], true), true), !vec2<bool>(false, any(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_0.x, 27u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(91426u, 27u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 27u)], true, false)))), !(!vec2<bool>(var_0.x > 0u, false)));
    var_3 = !select(!func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(175f, 1420f))), select(func_2(vec2<f32>(-815f, 1100f)), vec2<bool>(true, true), !(!vec2<bool>(var_3.x, true))), false | (true & func_2(vec2<f32>(-1449f, 1018f)).x));
    let var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.b, var_4), ~vec2<i32>(53285i, -3221i), vec4<i32>(select(u_input.b, select(10672i, ~var_2.x, true), true), abs(~(-1i)), var_1.x, -60812i), 1f, abs(var_0.x));
}

