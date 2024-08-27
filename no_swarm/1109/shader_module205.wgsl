struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 77749u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global1 = vec3<u32>(abs(global1.x), 7000u, ~(~firstLeadingBit(u_input.b.x)));
    let var_0 = global1.x;
    global0 = array<f32, 18>();
    var var_1 = ~(-vec3<i32>(u_input.c ^ 1i, u_input.a.x, u_input.c));
    var var_2 = -4358i;
    return vec4<u32>(~u_input.b.x, ~_wgslsmith_mult_u32(0u, global1.x), 33593u, global1.x);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec2<f32> {
    global0 = array<f32, 18>();
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1911f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 605f), vec2<f32>(-853f, 1848f))) + vec2<f32>(270f, global0[_wgslsmith_index_u32(4294967295u, 18u)])), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), vec2<bool>(!(arg_1.x == _wgslsmith_add_i32(arg_1.x, arg_2.x)), true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    var var_0 = ~func_2(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.e))));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), _wgslsmith_add_vec2_i32(~(u_input.a >> (abs(vec2<u32>(arg_1.b.x, u_input.b.x)) % vec2<u32>(32u))), vec2<i32>(arg_2, 1i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(-arg_1.e))) * _wgslsmith_f_op_vec2_f32(func_3(1000f, vec4<i32>(arg_2, 9484i, arg_1.a, arg_2), firstLeadingBit(select(~vec4<i32>(2147483647i, -9701i, arg_1.a, 2147483647i), abs(vec4<i32>(u_input.a.x, 1i, 17923i, var_2.x)), vec4<bool>(false, true, false, false))), ~vec3<i32>(abs(-6473i), var_2.x & arg_2, u_input.a.x))));
    var var_4 = _wgslsmith_f_op_f32(-var_1);
    return countOneBits(vec3<u32>(u_input.b.x, func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false))).x, ~(~(~arg_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-30159i, u_input.c << (4294967295u % 32u)), ~u_input.a.x >> (_wgslsmith_add_u32(45694u, global1.x) % 32u)), false), vec2<u32>(global1.x, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(8321u, 4294967295u, global1.x)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global1.x, global1.x), vec4<u32>(27487u, global1.x, 31139u, global1.x)), reverseBits(global1.x)), true)), ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1989u, 34482u, 24858u) << (vec3<u32>(1u, global1.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 49278u, 30757u), vec3<u32>(1u, 0u, u_input.b.x)), vec3<u32>(global1.x, 4294967295u, global1.x)), _wgslsmith_clamp_vec3_u32(func_1(global0[_wgslsmith_index_u32(global1.x, 18u)], Struct_1(-54032i, global1.yy, vec3<u32>(33046u, global1.x, global1.x), vec2<u32>(59776u, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 18u)]), u_input.a.x), select(vec3<u32>(1u, 30349u, global1.x), vec3<u32>(u_input.b.x, global1.x, 1u), vec3<bool>(true, false, true)), ~vec3<u32>(global1.x, 56181u, u_input.b.x))), select(_wgslsmith_add_vec2_u32(select(vec2<u32>(29351u, 2019u), vec2<u32>(global1.x, 2050u), any(vec3<bool>(true, true, false))), global1.yz), select(vec2<u32>(1u, 5654u) & vec2<u32>(global1.x, global1.x), u_input.b | u_input.b, vec2<bool>(true, true)) ^ firstTrailingBit(~vec2<u32>(u_input.b.x, 0u)), (u_input.c <= u_input.a.x) && select(true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 18u)]))), 2643f)), -1243f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-939f, var_0.e, false))))), 4294967295u);
}

