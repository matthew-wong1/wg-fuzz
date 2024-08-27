struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_3, 29>;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(0i, 60710i), vec3<u32>(1u, 0u, 36751u), Struct_1(vec3<u32>(26072u, 0u, 7461u)), vec2<f32>(-192f, 1320f), vec2<u32>(8795u, 2613u));

var<private> global3: array<vec2<u32>, 17>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = array<Struct_3, 29>();
    global2 = Struct_2(max(_wgslsmith_add_vec2_i32(global2.a, _wgslsmith_div_vec2_i32(-u_input.a.xy, countOneBits(vec2<i32>(1i, 0i)))), max(global2.a, abs(~vec2<i32>(global2.a.x, -3653i)))), _wgslsmith_div_vec3_u32(min(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c.x, global2.b.x), u_input.c.wzw), vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 25826u, u_input.c.x), global2.b.x, _wgslsmith_dot_vec3_u32(global2.c.a, vec3<u32>(1u, 4294967295u, 4294967295u)))), global2.b), Struct_1(vec3<u32>(87850u, max(4294967295u, ~39016u), 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, global2.d.x)))))), ~(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 26794u), global3[_wgslsmith_index_u32(global2.b.x, 17u)]) & _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.a.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)))));
    global3 = array<vec2<u32>, 17>();
    var var_0 = all(!vec4<bool>(all(vec4<bool>(true, true, arg_0.x, arg_0.x)), !arg_0.x | true, arg_0.x, true));
    global0 = 62108i;
    return ~(~_wgslsmith_sub_u32(11858u >> (max(global2.e.x, global2.e.x) % 32u), ~global2.e.x));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(vec2<i32>(firstTrailingBit((u_input.a.x >> (13606u % 32u)) >> (_wgslsmith_clamp_u32(global2.c.a.x, 10614u, 23647u) % 32u)), u_input.a.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 82060u), global2.b, global2.b), global2.c, global2.d, global3[_wgslsmith_index_u32(~func_3(vec2<bool>(false, any(vec2<bool>(false, true)))), 17u)]);
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(global2.b >> (vec3<u32>(379u, global2.b.x, 0u) % vec3<u32>(32u))), reverseBits(vec3<u32>(2784u, u_input.c.x, 39516u)) | ~vec3<u32>(39332u, 4294967295u, u_input.b.x))), 29u)];
    var var_2 = Struct_2(min(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(var_0.a.x, -67292i)), global2.a), ~(~vec2<i32>(u_input.a.x, var_1.a))), countOneBits(vec2<i32>(1i, 1i))), var_1.b.a, Struct_1(reverseBits((vec3<u32>(global2.b.x, 104821u, u_input.b.x) & var_0.b) << (global2.b % vec3<u32>(32u)))), global2.d, _wgslsmith_div_vec2_u32(~(~(vec2<u32>(122967u, 14408u) | var_1.c.a.xx)), vec2<u32>(~0u & ~var_0.b.x, var_0.b.x)));
    global3 = array<vec2<u32>, 17>();
    var var_3 = var_2.c;
    return Struct_1(vec3<u32>(u_input.c.x, 0u, select(4294967295u, select(var_2.e.x >> (21561u % 32u), 25755u, true), select(true, true, false) && any(vec2<bool>(true, true)))));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = global2.d;
    let var_1 = Struct_3(abs(1i), func_2(), Struct_1(~(~max(vec3<u32>(8649u, 65378u, global2.c.a.x), u_input.b))));
    let var_2 = max(4294967295u, ~(~0u));
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, global2.d.x, true)))), global2.d.x)), select(~(~u_input.c >> ((u_input.c << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(6491u, u_input.b.x, 7970u, 42138u), u_input.c), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)) ^ reverseBits(u_input.c), true), u_input.c.x, ~(u_input.a.yyz >> (~(vec3<u32>(u_input.b.x, 4294967295u, 0u) ^ var_1.b.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !(~_wgslsmith_mult_u32(global2.b.x, 1u) != u_input.b.x), !(true || all(vec2<bool>(true, true))), true);
    let var_1 = global2.b.yx;
    let var_2 = global2.a;
    var var_3 = _wgslsmith_clamp_vec4_u32(~u_input.c, u_input.c, ~(~vec4<u32>(~var_1.x, u_input.b.x, _wgslsmith_div_u32(u_input.c.x, var_1.x), ~1u)));
    var var_4 = global1[_wgslsmith_index_u32(1u, 29u)];
    let x = u_input.a;
    s_output = func_1(var_4.c.a.x);
}

