struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<u32>(1u, 76366u, 9327u, 1u), Struct_1(vec3<i32>(-1i, 0i, 1i), vec3<i32>(36042i, 12564i, 15138i), i32(-2147483648)), 1i, 1476u), Struct_2(vec4<u32>(4294967295u, 69684u, 1u, 4294967295u), Struct_1(vec3<i32>(47993i, -72863i, 816i), vec3<i32>(-1416i, 0i, -1i), 8251i), 1013i, 76224u), vec4<bool>(false, true, true, false), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 1u), Struct_1(vec3<i32>(i32(-2147483648), 0i, 22718i), vec3<i32>(1i, -14218i, 2147483647i), 28454i), 0i, 1u), -44859i);

var<private> global2: vec3<u32> = vec3<u32>(0u, 0u, 26638u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    global0 = global1.d;
    global2 = _wgslsmith_mod_vec3_u32(firstTrailingBit(max(global0.a.xyy, _wgslsmith_add_vec3_u32(vec3<u32>(global2.x, u_input.c, 61644u), ~global1.a.a.xwx))), global0.a.ywx);
    global2 = global1.b.a.zzy;
    var var_0 = false;
    global0 = global1.d;
    return ~u_input.b.wxw;
}

fn func_2() -> f32 {
    global2 = _wgslsmith_clamp_vec3_u32(func_3(), ~(~u_input.b.xyz ^ select(~vec3<u32>(global1.d.a.x, 1u, 1u), vec3<u32>(42232u, 24304u, global1.d.d), global1.c.x)), countOneBits(global1.a.a.wyw));
    var var_0 = Struct_3(Struct_2(_wgslsmith_mult_vec4_u32(abs(~global0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 0u, 64781u, global0.a.x), global0.a)), Struct_1(-global1.a.b.b, global1.d.b.a, _wgslsmith_mod_i32(global0.b.c, ~u_input.a.x)), -global0.c, max(~global0.d, global0.d)), global1.a, !select(global1.c, global1.c, vec4<bool>(true, global1.c.x, true, global1.c.x)), global1.d, u_input.a.x);
    global2 = select(vec3<u32>(0u, 1u, global2.x) & u_input.b.yxw, ~vec3<u32>(countOneBits(_wgslsmith_mod_u32(global0.a.x, global1.a.d)), _wgslsmith_sub_u32(global2.x, global0.a.x) >> (72553u % 32u), 4294967295u), true);
    var_0 = Struct_3(Struct_2(global0.a, Struct_1(vec3<i32>(26432i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.e), global0.b.a.yx), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, 45406i, u_input.a.x, 41951i), vec4<i32>(38514i, global0.b.a.x, -22273i, u_input.a.x))), abs(abs(global0.b.a)), _wgslsmith_div_i32(-13585i & global0.c, -8617i)), u_input.a.x, ~(~abs(70012u))), Struct_2(vec4<u32>(global2.x, 1u, (global2.x | global0.a.x) | 44664u, max(global2.x, global1.d.d) >> (~var_0.a.d % 32u)), var_0.a.b, var_0.b.c, countOneBits(~global1.a.d)), global1.c, Struct_2(_wgslsmith_div_vec4_u32(global1.d.a ^ ~vec4<u32>(51854u, 48038u, 56122u, 1u), vec4<u32>(firstLeadingBit(0u), _wgslsmith_div_u32(global0.d, 1u), u_input.b.x, ~0u)), global0.b, _wgslsmith_sub_i32(global0.c, u_input.a.x), _wgslsmith_mult_u32(~var_0.d.d, _wgslsmith_mult_u32(abs(global2.x), 1u))), _wgslsmith_add_i32(-global1.b.b.c, abs(~global0.b.b.x)));
    global2 = ~var_0.d.a.zww;
    return 826f;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) * _wgslsmith_f_op_f32(min(2297f, 1396f))))));
    var var_2 = 33319u;
    var var_3 = ~(~global0.d);
    var_3 = ~_wgslsmith_dot_vec4_u32(global1.d.a, max(u_input.b, vec4<u32>(global2.x, global2.x, 29533u, global2.x))) & _wgslsmith_sub_u32(15166u << (min(1u, global0.a.x) % 32u), 1u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(!any(global1.c), global1.d.b)));
    let var_1 = Struct_2(u_input.b, Struct_1(~vec3<i32>(select(u_input.a.x, global0.c, global1.c.x), global1.e, reverseBits(2147483647i)), vec3<i32>(reverseBits(-29584i), _wgslsmith_clamp_i32(abs(global0.c), -31267i, 0i), max(~u_input.a.x, ~90535i)), -u_input.a.x), ~_wgslsmith_mult_i32(global1.a.b.c, 2147483647i), 18908u);
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~72873u, 4294967295u, ~14038u, reverseBits(~abs(4316u >> (1u % 32u))));
}

