struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-28144i, 49350i), vec2<i32>(-11450i, -1i), vec2<i32>(1i, 67028i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 7699i), vec2<i32>(-58893i, -1i), vec2<i32>(-11100i, i32(-2147483648)), vec2<i32>(19375i, 6646i), vec2<i32>(-1556i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(997i, i32(-2147483648)), vec2<i32>(-19369i, 5668i), vec2<i32>(0i, -16174i), vec2<i32>(10145i, 2147483647i), vec2<i32>(1640i, 2147483647i), vec2<i32>(7330i, 0i), vec2<i32>(-23132i, -1i), vec2<i32>(0i, -39837i));

var<private> global3: u32;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 0u, 72947u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    global2 = array<vec2<i32>, 20>();
    var var_0 = max(~vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(12101i, 0i, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-18136i, u_input.d, u_input.c.x, -46492i), vec4<i32>(1i, -2147483647i, 3597i, 2147483647i)))), _wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(~0u, 20u)], vec2<i32>(1i, ~(~(-37754i)))));
    let var_1 = false;
    global3 = ~(1u >> (abs(max(u_input.b, 122134u)) % 32u));
    return select(8629i, abs(u_input.d), arg_0.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = countOneBits(arg_0);
    let var_1 = vec4<u32>(abs(37232u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, global4.a.a.x & 0u)), ~vec2<u32>(arg_0, 1u)), arg_0, ~0u);
    let var_2 = 0u;
    let var_3 = _wgslsmith_mult_i32(~_wgslsmith_mod_i32(~(u_input.d << (arg_0 % 32u)), ~u_input.c.x << (firstLeadingBit(arg_0) % 32u)), func_3(!vec3<bool>(any(vec4<bool>(false, true, false, true)), any(vec2<bool>(true, false)), true), arg_1.x));
    var_0 = var_1.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f * -1091f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(413f, 810f)))) - arg_1.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-774f * -451f), _wgslsmith_f_op_f32(-746f * arg_0.x)) * arg_0)));
    global3 = ~(~4294967295u ^ (_wgslsmith_mod_u32(~1u, global4.a.a.x) ^ ~_wgslsmith_div_u32(1u, global4.a.a.x)));
    global0 = array<vec4<u32>, 7>();
    var var_1 = _wgslsmith_mod_i32(u_input.c.x, u_input.c.x);
    var var_2 = Struct_2(arg_1.a);
    return global4.a.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(global4.a.a.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 746f, arg_3, arg_3)))))))), Struct_2(arg_1.a), !(!(!vec3<bool>(false, arg_0.x, true))));
    return select(-firstTrailingBit(-vec4<i32>(-1i, 0i, u_input.d, u_input.c.x)), ~(~select(vec4<i32>(u_input.c.x, 2147483647i, 73084i, u_input.d) | vec4<i32>(-1i, 2147483647i, 0i, u_input.c.x), vec4<i32>(u_input.c.x, -3500i, 1i, u_input.d), select(arg_0, vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, arg_0.x, false, false)))), select(vec4<bool>(true, true, true, true), select(arg_0, vec4<bool>(true, false, arg_0.x, true), select(!arg_0, vec4<bool>(true, true, true, false), !arg_0)), select(select(!arg_0, arg_0, !arg_0), select(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, true)), arg_0, !vec4<bool>(arg_0.x, arg_0.x, true, false)), arg_0)));
}

fn func_5(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(global4.a);
    var var_1 = ~abs(~u_input.a);
    global2 = array<vec2<i32>, 20>();
    var var_2 = vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true);
    let var_3 = reverseBits(~global4.a.a);
    return Struct_1(~(~vec3<u32>(var_1.x, var_1.x | var_0.a.a.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a;
    var var_1 = Struct_1(var_0.a);
    let var_2 = var_1.a.x;
    let var_3 = Struct_2(func_5(select(vec4<i32>(71392i, ~2147483647i, u_input.c.x, u_input.c.x >> (var_1.a.x % 32u)), -func_1(vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.e.x))), Struct_1(var_0.a), -1862f), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)))));
    var var_4 = -func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1468f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c.x, ~(~1i), abs(u_input.d) | min(u_input.d, u_input.d)) ^ vec3<i32>(-abs(u_input.d), max(_wgslsmith_dot_vec4_i32(vec4<i32>(12580i, u_input.c.x, u_input.d, -2147483647i), vec4<i32>(u_input.d, -2147483647i, u_input.c.x, u_input.d)), -2147483647i), ~u_input.d));
}

