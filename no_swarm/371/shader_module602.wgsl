struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1380f, 1617f, 510f), vec3<f32>(-1000f, 837f, -278f), vec3<f32>(1224f, 252f, -557f), vec3<f32>(598f, -2441f, 1194f), vec3<f32>(-514f, 1148f, 1000f), vec3<f32>(-1000f, 913f, 417f), vec3<f32>(-717f, 456f, 577f), vec3<f32>(-1239f, -1259f, -2437f));

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_1.yzw)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(sign(-769f)), -440f));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global2 = array<vec3<f32>, 8>();
    global3 = max(-1i, u_input.e.x);
    global0 = array<Struct_1, 2>();
    let var_0 = ~(~vec3<u32>(~abs(22541u), 1u, 22378u));
    let var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), !all(global1[_wgslsmith_index_u32(51252u, 21u)])));
    return any(!select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u << (0u % 32u), _wgslsmith_mod_u32(var_0.x, u_input.b), ~u_input.b), 21u)], vec2<bool>(true, select(var_1, false, var_1)), vec2<bool>(var_1, 5354i <= u_input.d.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = array<vec2<bool>, 21>();
    global3 = arg_2.a;
    global2 = array<vec3<f32>, 8>();
    var var_0 = Struct_1(min(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e), _wgslsmith_mult_i32(arg_2.a, u_input.d.x)), arg_2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_2.b)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(53408u, 1u, arg_3), vec3<u32>(25015u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, arg_2.b.x, -1444f, 642f)))), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(36547u, 8u)] * vec3<f32>(379f, arg_2.b.x, 2128f))))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 32960u, ~9311u), vec3<u32>(firstLeadingBit(abs(u_input.b)), max(_wgslsmith_dot_vec2_u32(arg_1.zz, vec2<u32>(arg_3, arg_3)), arg_1.x), ~countOneBits(4294967295u))), arg_1), 2u)];
    return all(vec4<bool>(func_3(arg_2, arg_2), true, true, any(select(global1[_wgslsmith_index_u32(~arg_3, 21u)], !global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(5184u, 21u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global2 = array<vec3<f32>, 8>();
    let var_1 = true | (!any(vec4<bool>(true, true, true, true)) & !(true | func_1(u_input.e.yy, vec3<u32>(u_input.b, u_input.a, 0u), global0[_wgslsmith_index_u32(u_input.a, 2u)], u_input.b)));
    global3 = u_input.c | firstLeadingBit(-5909i);
    let var_2 = global0[_wgslsmith_index_u32(0u << (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 51057u), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a, 65811u) % vec2<u32>(32u))), vec2<u32>(u_input.a >> (47550u % 32u), 1u)), _wgslsmith_div_vec2_u32(min(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(u_input.a, u_input.b))), abs(vec2<u32>(u_input.b, u_input.a)) | ~vec2<u32>(u_input.a, 1u))) % 32u), 2u)];
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.b.xy)))), vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1143f + var_2.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(1u, u_input.a, u_input.b ^ u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, 627f, 2328f), vec4<f32>(1000f, 1018f, -832f, var_2.b.x)))).xz - _wgslsmith_f_op_vec2_f32(var_2.b.zx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.zz - vec2<f32>(var_2.b.x, var_2.b.x)) * vec2<f32>(var_2.b.x, var_2.b.x)))), 0u, ~abs(var_2.a), (_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0, 0i, var_2.a), vec4<i32>(var_0, var_0, 1i, 13785i)), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, u_input.c, var_2.a))) & firstTrailingBit(-51824i)) >> (~(~(u_input.a & u_input.a)) % 32u));
}

