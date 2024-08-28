struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(0i, 4266i), vec2<i32>(-1i, 16971i), vec2<i32>(i32(-2147483648), -97652i), vec2<i32>(i32(-2147483648), 17322i), vec2<i32>(-1i, -1i), vec2<i32>(934i, 0i), vec2<i32>(i32(-2147483648), 17708i), vec2<i32>(i32(-2147483648), 23305i), vec2<i32>(-46131i, 18869i), vec2<i32>(-28675i, 38848i), vec2<i32>(-1i, 1i), vec2<i32>(-45509i, -34995i), vec2<i32>(-1i, 84779i), vec2<i32>(-6934i, 8361i), vec2<i32>(-1i, -34372i), vec2<i32>(i32(-2147483648), -9880i), vec2<i32>(-54877i, 2147483647i), vec2<i32>(4334i, 2147483647i), vec2<i32>(-44878i, -27838i), vec2<i32>(-86491i, 1i), vec2<i32>(2147483647i, 44765i), vec2<i32>(1i, 23912i), vec2<i32>(2147483647i, 6498i), vec2<i32>(33346i, 56291i), vec2<i32>(2147483647i, 9651i), vec2<i32>(73961i, i32(-2147483648)));

var<private> global3: vec3<u32> = vec3<u32>(4510u, 19775u, 0u);

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~global4.x, ~1u), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1529f + _wgslsmith_f_op_f32(round(258f))))) - 349f);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = 1i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), -884f, -1727f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1860f, 1000f)), -176f, true))))));
    var var_2 = min(-(select(vec4<i32>(var_0, -19612i, -2147483647i, -1i), vec4<i32>(2147483647i, u_input.c.x, 2147483647i, u_input.c.x), vec4<bool>(true, arg_0.x, false, false)) | vec4<i32>(21790i, 2147483647i, u_input.c.x, -18563i)) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_0, var_0, -2259i), select(vec4<i32>(-24508i, var_0, 0i, 6800i), vec4<i32>(50616i, u_input.c.x, 0i, 54232i), vec4<bool>(true, false, arg_0.x, arg_0.x))), select(~u_input.c.x, firstTrailingBit(u_input.c.x), 2147483647i > u_input.c.x), 19535i, u_input.c.x), -abs(vec4<i32>(abs(40799i), ~(-1i), var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, -24595i), u_input.c))));
    global1 = array<Struct_2, 1>();
    global4 = u_input.b.zzy;
    return !(!arg_0.x);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = !vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true, func_2(vec3<bool>(true, false, true)));
    global2 = array<vec2<i32>, 26>();
    global2 = array<vec2<i32>, 26>();
    global2 = array<vec2<i32>, 26>();
    global0 = array<vec2<f32>, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(555f, 1f, var_0.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(536f + 1833f), _wgslsmith_f_op_f32(1109f * -366f))))), 263f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(~global4.x), 101109u), firstTrailingBit(~(~u_input.a.zy))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(global3.x, -1i, Struct_3(~global4.x, ~vec2<u32>(69838u, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -16942i, u_input.c.x), vec3<i32>(u_input.c.x, -17262i, 12236i)), ~global4.yz))))), _wgslsmith_f_op_f32(-1932f + -517f));
    let var_1 = Struct_2(Struct_1(select(vec2<u32>(min(global4.x, var_0.a.x), ~global4.x), global3.xz, vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(var_0.b, var_0.c)), _wgslsmith_f_op_f32(-var_0.c))));
    global1 = array<Struct_2, 1>();
    global3 = _wgslsmith_mult_vec3_u32(~(((u_input.b.xzx ^ vec3<u32>(var_0.a.x, 23235u, 0u)) << (u_input.b.xww % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.d, 39450u, 4294967295u)), vec3<u32>(32724u, global3.x, var_1.a.a.x))), ~firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(27061u, u_input.b.x, global4.x), u_input.a.wwx, u_input.b.wzx)));
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(u_input.a.yxx), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.a.x, global4.x, 1u), vec3<u32>(var_0.a.x, global3.x, var_1.a.a.x), u_input.a.xxx) & (vec3<u32>(global4.x, global3.x, 28382u) | u_input.a.zyz)), !vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, true)), false)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1400f, 185f) - vec3<f32>(-154f, var_0.b, -310f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, var_0.c, 465f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, var_1.a.b, -1000f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-141f * var_0.b), var_1.a.c, 254f))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), var_1.a.b), 737f)), _wgslsmith_f_op_f32(abs(-1545f)), var_0.b, _wgslsmith_f_op_f32(sign(817f))), -585f);
}

