struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-549f, 466f, -1518f), -961f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<f32>(785f, 1751f, 885f), -1561f), Struct_1(vec3<f32>(1886f, 592f, -1403f), 427f), Struct_1(vec3<f32>(-1374f, 605f, -120f), 775f));

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    var var_0 = arg_0.x;
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(arg_3.x, arg_0.x), ~arg_0.x), _wgslsmith_sub_vec2_u32(~arg_3.ww, arg_3.yx)), 7u)];
    var_0 = ~28497u;
    var var_1 = global1.a.x;
    let var_2 = 1u;
    return u_input.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    global0 = global3[_wgslsmith_index_u32(arg_0.x, 7u)];
    let var_0 = 74044u;
    var var_1 = vec4<i32>(40196i, 0i, arg_3 ^ _wgslsmith_dot_vec2_i32(-(vec2<i32>(4699i, 0i) & u_input.a), -(vec2<i32>(-1i, arg_2.x) | arg_2.zx)), _wgslsmith_mult_i32(u_input.a.x, max(firstTrailingBit(arg_3), abs(~arg_3))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.a))))), global0.b);
    var var_2 = arg_3;
    return global3[_wgslsmith_index_u32(min(min(~abs(var_0), firstTrailingBit(~var_0)), arg_0.x), 7u)];
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = func_2(vec3<u32>(max(~(~arg_1.x), arg_1.x << (arg_1.x % 32u)), arg_1.x, _wgslsmith_mod_u32(~0u, 85652u)), ((u_input.a.x >> (~18174u % 32u)) > ~(19349i & arg_2)) || true, reverseBits(~(reverseBits(vec4<i32>(-4178i, arg_2, -2147483647i, 2147483647i)) >> (firstLeadingBit(vec4<u32>(arg_1.x, 1u, arg_1.x, 1u)) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), ~1i, ~arg_2, 2147483647i), -vec4<i32>(2147483647i, 2147483647i, arg_2, u_input.a.x)), vec4<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -35272i), 1i | u_input.a.x, -47542i, -1i)));
    global2 = array<Struct_1, 3>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -314f))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, var_0.b))), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-678f * _wgslsmith_f_op_f32(2037f + -254f)), 308f)), 872f);
    global3 = array<Struct_1, 7>();
    return ~(-2147483647i) & _wgslsmith_dot_vec3_i32(select(abs(-vec3<i32>(u_input.a.x, 0i, u_input.a.x)), vec3<i32>(-2947i, 2147483647i, -arg_2), vec3<bool>(true, true, true)), vec3<i32>(1i, _wgslsmith_mod_i32(reverseBits(arg_2), -19750i), select(u_input.a.x, u_input.a.x, select(true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(1i, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(55117u, 4294967295u)), func_1(countOneBits(vec2<u32>(4294967295u, 612u)), global3[_wgslsmith_index_u32(13114u, 7u)], Struct_1(global0.a, global0.b), ~vec4<u32>(1u, 39973u, 1u, 24457u)), func_2(vec3<u32>(1u, 1u, 1u), 1i >= u_input.a.x, vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x), u_input.a.x))), u_input.a.x & u_input.a.x, -61047i);
    var var_1 = -vec4<i32>(func_1(~vec2<u32>(70437u, 92514u), Struct_1(vec3<f32>(global0.b, global1.b, 100f), global1.b), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 37945u), 3u)], vec4<u32>(0u, 51038u, 37756u, 46040u)), u_input.a.x, ~var_0.x, _wgslsmith_clamp_i32(-37219i, ~(-7690i), i32(-1i) * -5391i)) & countOneBits(~min(select(vec4<i32>(u_input.a.x, -46096i, var_0.x, u_input.a.x), vec4<i32>(-747i, u_input.a.x, -43640i, var_0.x), true), vec4<i32>(-30340i, -2147483647i, -41650i, var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(1479f * global1.a.x);
    let var_3 = global3[_wgslsmith_index_u32(select(1u, ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 38851u), ~vec2<u32>(30880u, 1u))), (-3673f == _wgslsmith_f_op_f32(-global0.a.x)) & (abs(var_0.x) < abs(25550i))), 7u)];
    var var_4 = func_2(~abs(vec3<u32>(1u, ~1u, abs(1u))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 16520i, var_0.x, 11022i), vec4<i32>(var_1.x, u_input.a.x, var_0.x, u_input.a.x), vec4<i32>(var_0.x, var_1.x, 4785i, 1i)) >> (firstLeadingBit(vec4<u32>(1u, 45146u, 71115u, 0u)) % vec4<u32>(32u)), (vec4<i32>(var_0.x, -9715i, var_0.x, var_0.x) | vec4<i32>(var_1.x, var_0.x, var_1.x, -2147483647i)) & abs(vec4<i32>(var_0.x, var_0.x, 3289i, 1i))) << (~(~vec4<u32>(57678u, 25590u, 4294967295u, 0u)) % vec4<u32>(32u)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.xy));
}

