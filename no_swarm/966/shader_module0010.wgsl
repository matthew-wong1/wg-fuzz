struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1000f, 154f, 162f, 388f, -519f, 484f, -155f, -714f, 1185f, -152f, 741f, 525f, -1771f, 1000f, 240f, 143f, 280f, 826f, -370f, 1851f, -347f, -1537f, 127f, -222f, -652f, -817f, -348f, -1000f);

var<private> global1: vec3<f32> = vec3<f32>(-1534f, 1286f, 311f);

var<private> global2: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-44888i, 1i, 1i, 0i), vec4<i32>(33594i, -11195i, 2147483647i, 2147483647i), vec4<i32>(-18906i, -83917i, 0i, -21365i), vec4<i32>(2147483647i, -13227i, 35312i, 0i), vec4<i32>(-36474i, -1i, -5787i, 2147483647i), vec4<i32>(86947i, 0i, i32(-2147483648), -63747i), vec4<i32>(-3293i, 225i, 0i, 2147483647i), vec4<i32>(64346i, 1i, 1i, -1i), vec4<i32>(12211i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-1147i, 0i, 1i, -1i), vec4<i32>(-21067i, 40195i, 31177i, 0i), vec4<i32>(21881i, 36685i, i32(-2147483648), 0i), vec4<i32>(0i, 2147483647i, -1i, 5522i), vec4<i32>(0i, -1i, 1i, 0i), vec4<i32>(8700i, i32(-2147483648), -1i, -27921i), vec4<i32>(i32(-2147483648), -29408i, 41755i, 4563i), vec4<i32>(1i, -9629i, -829i, 32201i), vec4<i32>(0i, -1i, 9639i, i32(-2147483648)), vec4<i32>(29904i, 1i, 20765i, 22836i), vec4<i32>(-1i, -1i, 20728i, 0i), vec4<i32>(i32(-2147483648), 0i, 1i, 9216i), vec4<i32>(2147483647i, 46961i, -1i, -1i), vec4<i32>(1i, 0i, 1i, -14357i), vec4<i32>(23930i, i32(-2147483648), -1i, -3830i), vec4<i32>(-12952i, 1i, 10470i, 1i), vec4<i32>(14532i, 18922i, 2147483647i, 37386i), vec4<i32>(-20530i, -24096i, 0i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -21789i), vec4<i32>(-71931i, -1243i, 28272i, -12296i), vec4<i32>(2147483647i, -60354i, i32(-2147483648), -1i), vec4<i32>(-71151i, -18175i, -1i, i32(-2147483648)), vec4<i32>(47934i, 16652i, -44304i, i32(-2147483648)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = countOneBits(_wgslsmith_mod_i32(-select(countOneBits(24816i), -u_input.a.x, true), u_input.a.x));
    var var_1 = -1i;
    global0 = array<f32, 28>();
    let var_2 = Struct_1(~(-_wgslsmith_clamp_i32(1i >> (u_input.b % 32u), -2147483647i, arg_0.x)));
    var_1 = -21057i;
    return -var_2.a << (28753u % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = !(!vec4<bool>(all(vec4<bool>(false, false, true, false)), false, !select(true, false, false), all(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~reverseBits(u_input.a.x), u_input.a.x), 2147483647i, select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), u_input.a), u_input.a), u_input.a.x, (i32(-1i) * -2147483647i) < u_input.a.x)), vec3<i32>(_wgslsmith_add_i32(func_3(vec4<i32>(-41929i, u_input.a.x, 0i, -1i) | global2[_wgslsmith_index_u32(u_input.b, 32u)]), _wgslsmith_clamp_i32(u_input.a.x, -2147483647i | u_input.a.x, i32(-1i) * -11037i)), -func_3(firstLeadingBit(global2[_wgslsmith_index_u32(267u, 32u)])), 31991i));
    var_1 = abs(~(~select(countOneBits(vec3<i32>(3208i, 0i, -13054i)), vec3<i32>(var_1.x, var_1.x, var_1.x) & vec3<i32>(var_1.x, 1i, -18632i), vec3<bool>(true, true, var_0.x))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global0[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c.x, 28u)]))), global1.x, false)), -1262f));
    var var_2 = -173f;
    return Struct_2(Struct_1(~var_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = false;
    global0 = array<f32, 28>();
    global2 = array<vec4<i32>, 32>();
    global2 = array<vec4<i32>, 32>();
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.x, 28u)])), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, 411f, -654f)), vec3<f32>(global0[_wgslsmith_index_u32(30124u, 28u)], -1137f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * 1000f), _wgslsmith_f_op_f32(global1.x + 958f))), 2524f, _wgslsmith_f_op_f32(ceil(453f)))));
    return Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-802f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_2, arg_0.a.a);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global2 = array<vec4<i32>, 32>();
    let var_0 = u_input.a.x;
    let var_1 = func_4(func_2(), ~(~(~select(vec3<u32>(arg_0.x, u_input.c.x, 0u), arg_0, false))), Struct_1(u_input.a.x));
    var var_2 = !vec4<bool>((~arg_0.x >= 4294967295u) & true, false, all(vec2<bool>(true, false)) && true, true);
    var var_3 = var_1.b;
    return StorageBuffer(9972i, var_1.b.a, _wgslsmith_mod_i32(countOneBits(u_input.a.x), -var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 32>();
    let var_0 = Struct_1(77562i);
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_1 = 63517u;
    let x = u_input.a;
    s_output = func_1(~(~(~(~vec3<u32>(32914u, 4294967295u, u_input.c.x)))));
}

