struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(70533u, 9689u, 84176u), vec4<u32>(5436u, 0u, 1u, 4294967295u), vec4<f32>(-529f, 856f, 864f, -1024f)));

var<private> global1: array<u32, 21>;

var<private> global2: Struct_4 = Struct_4(false, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> i32 {
    return u_input.c;
}

fn func_3() -> bool {
    var var_0 = Struct_3(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(global1[_wgslsmith_index_u32(21059u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, global2.a)) & ~vec2<u32>(1u, global1[_wgslsmith_index_u32(global2.b, 21u)]), reverseBits(vec2<u32>(global0.a.b.x, 4294967295u) | vec2<u32>(global2.b, 0u))), select(!global2.a, global2.a, any(vec3<bool>(true, !global2.a, false))));
    let var_1 = Struct_2(global0.a);
    let var_2 = (firstLeadingBit(~var_1.a.a.x) & 36919u) != global1[_wgslsmith_index_u32(var_0.a, 21u)];
    var_0 = Struct_3(var_0.a, !var_0.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x));
    return var_0.b;
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    global2 = arg_0;
    var var_0 = ~(~countOneBits(global0.a.b));
    var var_1 = abs(2147483647i);
    var var_2 = func_3();
    global1 = array<u32, 21>();
    return ~(~vec2<i32>(0i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -21616i, 60447i)), vec3<i32>(2147483647i, u_input.a, 39372i) & vec3<i32>(-12487i, u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i ^ u_input.c, func_1()), vec2<i32>(1i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-u_input.a >> (countOneBits(u_input.b) % 32u), _wgslsmith_mod_i32(u_input.c, u_input.a)), vec2<i32>(-2147483647i, 1i) & (min(vec2<i32>(4092i, u_input.c), vec2<i32>(-1i, u_input.c)) | -vec2<i32>(u_input.a, 1i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(2147483647i, 1i), func_2(Struct_4(global2.a, 0u)))));
    global0 = Struct_2(Struct_1(abs(global0.a.a), vec4<u32>(reverseBits(~22103u), global1[_wgslsmith_index_u32(11457u, 21u)], global0.a.b.x, ~1u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(549f, 1000f, 1000f, global0.a.c.x)))), _wgslsmith_f_op_vec4_f32(global0.a.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, 855f, global0.a.c.x, 1197f)))))));
    var var_1 = Struct_3(~1u, (false || !all(vec3<bool>(global2.a, true, global2.a))) == !(!(u_input.a < -57685i)));
    var var_2 = any(vec4<bool>(global2.a, true, !any(vec3<bool>(var_1.b, true, true)) && !(!global2.a), !var_1.b));
    var var_3 = ~_wgslsmith_div_i32(_wgslsmith_add_i32(~min(u_input.c, -22345i), var_0.x), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 21u)]), var_1.a >> (4294967295u % 32u)), !(true || var_1.b)), countOneBits(vec4<u32>(var_1.a, ~_wgslsmith_mod_u32(global2.b, var_1.a), var_1.a, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c.x, 129f)) + vec2<f32>(1813f, 173f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1056f, -599f))))), _wgslsmith_f_op_vec2_f32(step(global0.a.c.xy, global0.a.c.xz)));
}

