struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(-11008i, 1i, -1i), 64215u, true, vec4<u32>(3121u, 0u, 43436u, 4294967295u)), Struct_1(vec3<i32>(1i, i32(-2147483648), 24651i), 1u, false, vec4<u32>(43815u, 15324u, 1u, 0u)), Struct_1(vec3<i32>(-24620i, -4742i, 0i), 24633u, false, vec4<u32>(0u, 11778u, 11978u, 1u)), Struct_1(vec3<i32>(21452i, 51515i, 38126i), 15102u, false, vec4<u32>(1u, 21797u, 4294967295u, 62812u)), Struct_1(vec3<i32>(-1i, 11768i, -55566i), 20868u, true, vec4<u32>(8294u, 50954u, 19695u, 1u)), Struct_1(vec3<i32>(1i, 0i, 0i), 72051u, true, vec4<u32>(82883u, 60938u, 30697u, 25558u)), Struct_1(vec3<i32>(-5789i, 47274i, 45118i), 4294967295u, true, vec4<u32>(4294967295u, 0u, 25360u, 68036u)), Struct_1(vec3<i32>(1i, 18638i, 6840i), 4294967295u, false, vec4<u32>(37034u, 4294967295u, 0u, 1u)));

var<private> global1: array<u32, 2> = array<u32, 2>(25561u, 4294967295u);

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-490f, 199f), vec2<f32>(978f, 866f), vec2<f32>(-1000f, 297f), vec2<f32>(664f, 2673f), vec2<f32>(558f, 229f), vec2<f32>(-2043f, 1063f), vec2<f32>(-112f, 1000f), vec2<f32>(818f, -489f), vec2<f32>(1484f, -1036f), vec2<f32>(2355f, -2525f), vec2<f32>(-111f, -423f), vec2<f32>(1184f, 715f), vec2<f32>(-417f, -438f), vec2<f32>(-255f, -319f), vec2<f32>(812f, 595f), vec2<f32>(-473f, 3199f), vec2<f32>(-791f, 355f), vec2<f32>(-599f, -822f), vec2<f32>(-703f, -132f), vec2<f32>(303f, -116f), vec2<f32>(1682f, -216f), vec2<f32>(2056f, -318f), vec2<f32>(659f, -1967f), vec2<f32>(159f, -533f), vec2<f32>(721f, 894f), vec2<f32>(1235f, 258f), vec2<f32>(-1606f, -1504f), vec2<f32>(431f, -1000f), vec2<f32>(-1370f, -833f), vec2<f32>(605f, -459f), vec2<f32>(1000f, 171f), vec2<f32>(-657f, -1825f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(4294967295u, 2u)]), 2u)], 8u)], vec2<i32>((u_input.d.x | 1i) | 0i, i32(-1i) * -47383i), false, vec3<f32>(466f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_f_op_f32(-1473f - _wgslsmith_f_op_f32(-1894f + 379f))), _wgslsmith_f_op_f32(-1f)), 1f);
    global2 = array<vec2<f32>, 32>();
    return var_0.d.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, -12257i, u_input.d.x, u_input.d.x), max(vec4<i32>(-35141i, -51520i, 6845i, u_input.d.x), vec4<i32>(1i, u_input.d.x, -1i, -25988i)), false), vec4<i32>(u_input.d.x, i32(-1i) * -2147483647i, -36705i, min(u_input.d.x, 2147483647i))), vec4<i32>(279i, -7873i, _wgslsmith_sub_i32(u_input.d.x, firstTrailingBit(u_input.d.x)), -(i32(-1i) * -2147483647i))), firstLeadingBit(_wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, -33347i, u_input.d.x)), ~select(vec4<i32>(u_input.d.x, u_input.d.x, -21527i, -12015i), vec4<i32>(13926i, 0i, 41384i, u_input.d.x), true))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(trunc(-969f))) + -1418f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x * -766f)))));
    let var_4 = Struct_3(~(~(~vec4<u32>(4294967295u, u_input.a.x, 12740u, 321u))) | u_input.a, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(76783u, 2u)], global1[_wgslsmith_index_u32(~0u, 2u)]), 8u)], firstLeadingBit(-u_input.d.xz), (true || (u_input.d.x <= -8606i)) | true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, 1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 658f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(924f, var_2.x, var_2.x), vec3<f32>(var_2.x, 303f, var_2.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), 485f))), global0[_wgslsmith_index_u32(min(3143u, _wgslsmith_add_u32(~u_input.b.x, ~global1[_wgslsmith_index_u32(4294967295u, 2u)]) ^ u_input.b.x), 8u)], (false && !(-331f == var_2.x)) | true);
    return var_4;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(u_input.a);
    global0 = array<Struct_1, 8>();
    let var_1 = global1[_wgslsmith_index_u32(~var_0.a.x, 2u)];
    var var_2 = ~var_0.b.a.a.x;
    var var_3 = 65700u;
    return StorageBuffer(~_wgslsmith_mult_u32(~var_0.b.a.d.x, ~_wgslsmith_div_u32(55084u, var_0.b.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = func_1();
}

