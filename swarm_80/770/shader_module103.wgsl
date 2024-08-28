struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 10116i, -29785i, i32(-2147483648));

var<private> global1: f32 = -1138f;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global3: vec4<i32> = vec4<i32>(-37753i, 11010i, 28616i, 28i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(arg_1 * -382f);
    var var_0 = Struct_1(true);
    let var_1 = true;
    global3 = (vec4<i32>(1i, -24056i, 1i, ~15805i) ^ vec4<i32>(~(-arg_3.x), global3.x, 1i, _wgslsmith_add_i32(max(arg_2, arg_2), abs(-2147483647i)))) ^ vec4<i32>(arg_2, 9641i, select(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, global3.x), arg_3), firstLeadingBit(~71003i), true), global3.x);
    global3 = _wgslsmith_div_vec4_i32(u_input.b, -min(_wgslsmith_div_vec4_i32(vec4<i32>(-44548i, 2147483647i, 60888i, u_input.b.x) & vec4<i32>(0i, -48837i, -38471i, arg_2), ~vec4<i32>(-1i, -1i, arg_2, global3.x)), max(vec4<i32>(arg_2, 3151i, -2147483647i, u_input.b.x), u_input.b) & u_input.b));
    return ~_wgslsmith_clamp_u32(abs(min(~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27738u, u_input.a.x, u_input.a.x, u_input.d), u_input.a))), u_input.a.x, 1u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    global3 = -u_input.b;
    let var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, _wgslsmith_div_u32(~arg_0.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), abs(arg_0.x), ~func_2(global3.x, 595f, 0i, vec3<i32>(1i, global0.x, global3.x))), u_input.a & _wgslsmith_mod_vec4_u32(u_input.a, min(u_input.a, u_input.a)), u_input.a);
    let var_1 = Struct_1(false);
    var var_2 = Struct_1(all(select(vec3<bool>(false, arg_3.x >= -724f, false), select(vec3<bool>(true, var_1.a, true), vec3<bool>(true, arg_2, var_1.a), select(vec3<bool>(true, arg_2, var_1.a), vec3<bool>(var_1.a, arg_2, true), var_1.a)), all(select(global2[_wgslsmith_index_u32(67715u, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)], vec2<bool>(false, false))))));
    global2 = array<vec2<bool>, 31>();
    return global0.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    global0 = u_input.b;
    global1 = arg_0.x;
    var var_0 = Struct_1(!all(select(vec3<bool>(arg_2, true, true), !vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, false, false))));
    var var_1 = Struct_1(!var_0.a);
    let var_2 = 2112f;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, select(u_input.b, u_input.b, !vec4<bool>(true, arg_2, var_1.a, false))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = Struct_1(true);
    global0 = vec4<i32>(i32(-1i) * -global3.x, _wgslsmith_mod_i32(max(-countOneBits(global3.x), ~func_1(vec3<u32>(u_input.e.x, u_input.e.x, u_input.a.x), vec4<i32>(global0.x, u_input.b.x, global3.x, global0.x), var_1.a, vec4<f32>(312f, -1000f, 747f, 742f))), _wgslsmith_mult_i32(global3.x, u_input.b.x)), global3.x, min(countOneBits(_wgslsmith_clamp_i32(func_3(vec4<f32>(-255f, -201f, -106f, 1562f), vec2<f32>(-435f, 1458f), false, u_input.e.xx), ~global3.x, _wgslsmith_mod_i32(u_input.b.x, -24495i))), global3.x));
    let var_2 = vec3<bool>(1i < min(_wgslsmith_sub_i32(global0.x, 8174i) & _wgslsmith_div_i32(14312i, 1i), ~_wgslsmith_add_i32(global3.x, global3.x)), var_1.a, !var_1.a || false);
    let var_3 = var_1;
    global3 = -u_input.b;
    let var_4 = _wgslsmith_dot_vec2_u32(countOneBits(firstLeadingBit(~u_input.e.zx)), max(firstTrailingBit(vec2<u32>(select(var_0, var_0, var_1.a), var_0 >> (var_0 % 32u))), ~vec2<u32>(8061u, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(1f, -global0.x << (_wgslsmith_mult_u32(13982u, 81834u) % 32u), ~1u, ~var_4);
}

