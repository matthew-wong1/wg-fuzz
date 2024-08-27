struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 16>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global2 = 2147483647i;
    global1 = array<u32, 16>();
    var var_0 = ~vec2<u32>(u_input.a.x, firstTrailingBit(firstLeadingBit(4294967295u)));
    var var_1 = Struct_1(arg_2.c.x, var_0.x, vec2<i32>(arg_2.c.x, arg_2.a), ~(-2147483647i));
    global3 = array<Struct_1, 5>();
    return arg_1;
}

fn func_3() -> i32 {
    let var_0 = select(reverseBits(u_input.b.x & u_input.b.x), i32(-1i) * -36606i, false);
    global3 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-882f * 1655f), _wgslsmith_f_op_f32(f32(-1f) * -696f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(863f)) * 738f), 1425f))));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(-(var_0 >> (firstTrailingBit(17927u) % 32u)), var_0, 30806i), ~(-_wgslsmith_div_i32(firstTrailingBit(var_0), 2147483647i)));
    global3 = array<Struct_1, 5>();
    return firstLeadingBit(var_0);
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 16>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(165f, 1969f)) - -327f), 1000f))), _wgslsmith_f_op_f32(905f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(1u, 1u), -1080f, Struct_1(-39528i, global0.x, u_input.b.yx, 32088i)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f * 242f)))));
    let var_1 = -(~vec4<i32>(select(func_3(), u_input.b.x << (26928u % 32u), any(vec2<bool>(true, false))), ~(u_input.b.x >> (global1[_wgslsmith_index_u32(1u, 16u)] % 32u)), ~u_input.b.x, i32(-1i) * -u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1436f, var_0.x, var_0.x)) + vec4<f32>(-820f, 431f, -449f, _wgslsmith_div_f32(171f, -549f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f + 783f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x), 1830f)))));
    var var_3 = max(abs(vec4<i32>(~(-2043i), _wgslsmith_dot_vec4_i32(var_1 | var_1, var_1), firstLeadingBit(-var_1.x), abs(var_1.x) | _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), vec4<i32>(_wgslsmith_clamp_i32(abs(~var_1.x), var_1.x, var_1.x | min(var_1.x, 1i)), -1i >> (global0.x % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(var_1), _wgslsmith_mod_vec4_i32(var_1, vec4<i32>(u_input.b.x, 4227i, 0i, var_1.x))), u_input.b.x), 54585i));
    return Struct_1(var_1.x, _wgslsmith_add_u32(0u, ~(~global0.x << (u_input.c.x % 32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(u_input.b.x), var_3.x), -var_3.wz), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 5>();
    var var_0 = func_1();
    global0 = ~(u_input.c | _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0.b) | min(u_input.a.ywy, vec3<u32>(u_input.c.x, 0u, u_input.c.x))));
    global0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(72950u, abs(u_input.d), 4294967295u), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 8433u, 1u), vec3<u32>(u_input.d, global0.x, 885u)))) << (vec3<u32>(~(~max(var_0.b, 0u)), _wgslsmith_add_u32(~_wgslsmith_div_u32(50420u, 1u), max(global0.x, _wgslsmith_clamp_u32(11888u, 65453u, global1[_wgslsmith_index_u32(6487u, 16u)]))), 1u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-470f);
}

