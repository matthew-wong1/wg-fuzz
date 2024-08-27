struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(44925i, vec2<u32>(34508u, 72723u), i32(-2147483648), -164f, vec3<bool>(false, true, false)), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i));

var<private> global1: array<f32, 2> = array<f32, 2>(240f, -574f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    let var_0 = 1u;
    var var_1 = -1527f;
    var var_2 = reverseBits(firstTrailingBit(_wgslsmith_mult_u32(~u_input.d, u_input.d))) < global0.a.b.x;
    let var_3 = select(select(_wgslsmith_dot_vec3_i32(min(global0.b.xxx, global0.b.xww), vec3<i32>(global0.b.x, global0.b.x, 1i)), (-65646i >> (global0.a.b.x % 32u)) | global0.a.c, all(vec4<bool>(global0.a.e.x, global0.a.e.x, global0.a.e.x, true))) >= ~9397i, true, true);
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, 2147483647i, 32099i)), global0.b.zzw), _wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(2147483647i, 22127i)), max(vec2<i32>(global0.a.a, global0.b.x), firstTrailingBit(vec2<i32>(global0.a.c, global0.b.x))))) > ~(i32(-1i) * -2147483647i);
    return ~(global0.a.b << ((countOneBits(global0.a.b ^ vec2<u32>(4294967295u, 8914u)) << (vec2<u32>(~4294967295u, var_0) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_2() -> vec2<u32> {
    global0 = Struct_3(Struct_1(0i, func_3(), -(global0.b.x << (global0.a.b.x % 32u)) >> ((~u_input.a & global0.a.b.x) % 32u), global0.a.d, vec3<bool>(false, true, 1i == -global0.a.a)), min(global0.b, -vec4<i32>(global0.a.a, global0.a.a, global0.b.x, 5970i) | ~global0.b));
    let var_0 = global0.a.b;
    var var_1 = _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~abs(firstTrailingBit(~var_0.x)), 2u)]));
    var var_2 = vec3<f32>(global0.a.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.a.d) * -835f) - global0.a.d))), _wgslsmith_f_op_f32(global0.a.d - global1[_wgslsmith_index_u32(~firstTrailingBit(~1u), 2u)]));
    let var_3 = Struct_3(global0.a, global0.b);
    return reverseBits(var_3.a.b);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    let var_0 = Struct_2(Struct_1(1i, global0.a.b ^ ~func_2(), _wgslsmith_sub_i32(33959i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.b.x, 2u)]))) + global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(0u), 0u), 2u)]), global0.a.e));
    var var_1 = Struct_1(-global0.b.x, vec2<u32>(_wgslsmith_mod_u32(u_input.b, 71245u), u_input.c), -28408i, 220f, select(global0.a.e, var_0.a.e, var_0.a.e));
    global0 = Struct_3(Struct_1(abs(firstLeadingBit(global0.b.x)) ^ global0.b.x, _wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(var_1.b, vec2<u32>(4294967295u, var_1.b.x)), countOneBits(global0.a.b), vec2<bool>(false, true)), vec2<u32>(1u, ~267u)), i32(-1i) * -1i, -1006f, select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, var_1.e.x, true, false)), true, var_1.e.x && var_1.e.x), all(vec4<bool>(true, global0.a.e.x, var_1.e.x, true)))), global0.b);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.b.ywy;
    var_0 = ~(-countOneBits(vec3<i32>(-42398i, -1i, -12340i)));
    var var_1 = Struct_2(Struct_1(-1i, countOneBits(max(~global0.a.b, _wgslsmith_clamp_vec2_u32(global0.a.b, vec2<u32>(43456u, 4294967295u), vec2<u32>(1u, u_input.c)))), global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~u_input.a, 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1279f))) + _wgslsmith_f_op_f32(f32(-1f) * -496f)), select(vec3<bool>(all(vec4<bool>(global0.a.e.x, global0.a.e.x, false, global0.a.e.x)), global0.a.e.x, true), vec3<bool>(any(global0.a.e), false, global0.a.e.x), !(!vec3<bool>(global0.a.e.x, global0.a.e.x, false)))));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(474f, global0.a.d) * vec2<f32>(-168f, global1[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-220f, global1[_wgslsmith_index_u32(var_1.a.b.x, 2u)]), vec2<f32>(-957f, global0.a.d)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1646f, global0.a.d))));
    var var_3 = global0.a;
    let var_4 = global0.b;
    var var_5 = -global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.x, 762f, reverseBits(vec4<u32>(20732u, global0.a.b.x, var_1.a.b.x, var_3.b.x)), max(var_5.x, _wgslsmith_dot_vec2_i32(-var_5.yz, global0.b.wz)), var_1.a.a);
}

