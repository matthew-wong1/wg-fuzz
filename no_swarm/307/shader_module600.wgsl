struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: f32;

var<private> global2: vec4<u32> = vec4<u32>(37106u, 0u, 21833u, 4294967295u);

var<private> global3: array<i32, 2> = array<i32, 2>(-1i, i32(-2147483648));

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = 47904u;
    var var_0 = vec2<i32>(u_input.a, ~_wgslsmith_sub_i32(-46546i, u_input.a));
    var_0 = vec2<i32>(-(~(-2147483647i)), min(-1i, min(~firstTrailingBit(global3[_wgslsmith_index_u32(1u, 2u)]), ~var_0.x >> (global4.a.x % 32u))));
    global4 = Struct_2(abs(_wgslsmith_clamp_vec2_u32(u_input.b.xz & vec2<u32>(22752u, u_input.b.x), _wgslsmith_mod_vec2_u32(~u_input.b.zx, ~vec2<u32>(u_input.b.x, arg_1.a.x)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(global4.a.x, arg_1.a.x), global2.yz), global4.a, -357f == arg_0.x))));
    let var_1 = _wgslsmith_sub_vec2_i32(abs(_wgslsmith_add_vec2_i32(~vec2<i32>(31007i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], -2147483647i) | vec2<i32>(u_input.a, 21020i), firstTrailingBit(vec2<i32>(-2147483647i, 0i)), countOneBits(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], var_0.x))))), vec2<i32>(-(~var_0.x), var_0.x));
    return global2.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_0));
    var var_1 = ~_wgslsmith_mult_u32(global2.x, _wgslsmith_clamp_u32(func_3(vec2<f32>(432f, 249f), Struct_1(vec4<u32>(37261u, global4.a.x, global4.a.x, global2.x)), -533f), 1u, ~_wgslsmith_div_u32(104233u, u_input.b.x)));
    let var_2 = reverseBits(reverseBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], 2308i, 8874i, 18548i), vec4<i32>(3384i, u_input.a, 2147483647i, 2147483647i))) & ((global3[_wgslsmith_index_u32(63890u, 2u)] | global3[_wgslsmith_index_u32(0u, 2u)]) << (global4.a.x % 32u))));
    var var_3 = abs(var_2);
    global0 = global2.x;
    return Struct_1(max(firstLeadingBit(vec4<u32>(0u, ~u_input.b.x, 1u | u_input.b.x, abs(64301u))), _wgslsmith_mod_vec4_u32(vec4<u32>(57612u, u_input.b.x, ~4294967295u, firstLeadingBit(global2.x)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b.x), global4.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), global4.a), u_input.b.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = func_2(1215f);
    let var_1 = Struct_2(vec2<u32>(~arg_1.a.x, 1u));
    global4 = Struct_2(countOneBits(vec2<u32>(u_input.b.x, ~(~11669u))));
    global2 = arg_1.a << (arg_1.a % vec4<u32>(32u));
    let var_2 = select(true, all(vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), true) || true;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(select(func_1(u_input.a | 2147483647i, Struct_1(vec4<u32>(9320u, 1u, global2.x, u_input.b.x))), ~vec4<u32>(u_input.b.x, global2.x, global4.a.x, global4.a.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)));
    var_0 = ~vec4<u32>(~(~(~global4.a.x)), var_0.x ^ var_0.x, abs(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 1u);
    var var_1 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f), 658f), -911f, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-835f, 1680f)) - -897f), _wgslsmith_f_op_f32(f32(-1f) * -1181f))))));
    var var_2 = Struct_2(~(~abs(vec2<u32>(global2.x, 20665u))));
    let var_3 = vec2<u32>(~_wgslsmith_div_u32(~firstTrailingBit(global2.x), var_1.a.x), _wgslsmith_clamp_u32(~firstTrailingBit(1u), 1u, min(14718u, var_1.a.x)) & 0u);
    let var_4 = ~_wgslsmith_sub_vec3_i32(~vec3<i32>(18169i, 31493i, 1i), -countOneBits(countOneBits(vec3<i32>(2147483647i, -64171i, global3[_wgslsmith_index_u32(var_1.a.x, 2u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(var_4, ~vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], 0i, 18435i)), i32(-1i) * -25902i, ~global3[_wgslsmith_index_u32(var_0.x, 2u)], global3[_wgslsmith_index_u32(~29946u, 2u)]), reverseBits(select(global3[_wgslsmith_index_u32(var_0.x, 2u)], 50444i, global3[_wgslsmith_index_u32(var_0.x, 2u)] < abs(u_input.a))));
}

