struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(1000f, 905f, -1479f, 1563f, -784f, -657f, -266f, 886f, 1000f, -160f, 531f, 1266f, 285f, -384f, 997f, -1000f);

var<private> global1: array<f32, 3> = array<f32, 3>(1225f, 1751f, 491f);

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<f32>, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = reverseBits(39630u);
    let var_1 = _wgslsmith_f_op_f32(min(640f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 3u)]))))))));
    let var_2 = 41573u;
    return false;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(1u), 16u)] - _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a, 16u)])))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.e, _wgslsmith_f_op_f32(ceil(-285f)))) * _wgslsmith_f_op_f32(round(840f)))), 1847f, global0[_wgslsmith_index_u32(u_input.a, 16u)]);
    let var_1 = Struct_1(_wgslsmith_add_i32(arg_0.x, ~global2.x));
    var var_2 = Struct_1(-1i);
    let var_3 = arg_1;
    var var_4 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.a, _wgslsmith_add_i32(25731i, _wgslsmith_mod_i32(var_2.a, var_2.a))), arg_0.x);
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = select(vec3<bool>(!any(vec2<bool>(true, false)), func_2(Struct_2(global2.x | global2.x, true, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), global1[_wgslsmith_index_u32(1u, 3u)], -134f), -960f), !(!func_2(Struct_2(global2.x, true, vec3<bool>(false, true, false), -640f, global1[_wgslsmith_index_u32(1u, 3u)]), -1475f))), select(vec3<bool>(true, true, false), vec3<bool>(all(vec2<bool>(true, true)), !(global2.x != 4775i), any(vec3<bool>(false, true, true))), func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, global2.x) & vec4<i32>(2147483647i, -18670i, 2147483647i, global2.x), ~vec4<i32>(2147483647i, -2688i, -33000i, global2.x), vec4<i32>(2147483647i, -59551i, -16873i, global2.x) >> (vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 0u) % vec4<u32>(32u))), Struct_2(61398i, -2147483647i > global2.x, vec3<bool>(true, true, false), 2293f, _wgslsmith_f_op_f32(arg_0.x - 1000f)), vec4<bool>(true, true, global2.x > global2.x, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    global2 = _wgslsmith_mod_vec2_i32(-abs(-(vec2<i32>(global2.x, global2.x) & vec2<i32>(0i, global2.x))), ~vec2<i32>(-13609i, global2.x));
    global2 = vec2<i32>(2147483647i, 74074i);
    var var_1 = true;
    var var_2 = _wgslsmith_sub_i32(-(~global2.x), -22876i) ^ global2.x;
    return Struct_2(_wgslsmith_clamp_i32(global2.x, global2.x, ~((global2.x >> (18059u % 32u)) | global2.x)), func_2(Struct_2(global2.x >> (countOneBits(1u) % 32u), global2.x < max(0i, global2.x), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x), false), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1207f, 872f)) * arg_0.x)), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(4138u), 16u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 16u)]))), global1[_wgslsmith_index_u32(107409u, 3u)]);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = select(~(~arg_2.x) >= arg_1, firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(u_input.a, 0u, 1u))) <= 37383u, true) != any(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(68639u, 16u)], arg_3.d, arg_3.d)), arg_2.zx >> (arg_2.xy % vec2<u32>(32u))).c);
    var_0 = any(!(!arg_3.c));
    var var_1 = !arg_3.c.yz;
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.x, -29010i), vec3<i32>(global2.x, global2.x, global2.x))), -2147483647i) << (select(func_4(Struct_1(-13855i), 24448u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), func_1(vec3<f32>(409f, 761f, global0[_wgslsmith_index_u32(0u, 16u)]), vec2<u32>(1u, u_input.a))), 110544u, false) % 32u));
    let var_1 = select(min(~vec2<i32>(1i, i32(-1i) * -2147483647i), ~(vec2<i32>(global2.x, 7534i) ^ countOneBits(vec2<i32>(-36449i, 10863i)))), max(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, -42940i), vec2<i32>(-2147483647i, 1i), vec2<i32>(-53796i, 15695i)) & (-vec2<i32>(5922i, var_0) | vec2<i32>(-10643i, 21275i)), vec2<i32>(var_0, countOneBits(-1976i))), !select(true, true, true));
    var var_2 = 1i;
    let var_3 = ~var_1.x;
    global3 = array<vec4<f32>, 14>();
    global2 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(14782u, 16u)], 127f, global1[_wgslsmith_index_u32(1u, 3u)]))))), vec3<f32>(global1[_wgslsmith_index_u32(~reverseBits(u_input.a), 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -774f)))));
    var var_5 = vec4<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, ~0u), u_input.a), u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_5.yww, select(~(~vec3<u32>(4294967295u, var_5.x, u_input.a)), var_5.zzx, _wgslsmith_add_i32(-48065i, 35160i) <= global2.x), !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_5.x, 16u)])), _wgslsmith_mod_u32(~reverseBits(95527u), countOneBits(min(0u, var_5.x))) << (max(var_5.x, ~(~var_5.x)) % 32u));
}

