struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<i32>(-17553i, 62199i), vec3<f32>(-302f, 1144f, -616f)), false, vec4<i32>(1i, -43159i, 0i, -29038i), 2147483647i, -944f), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<f32>(-632f, -2824f, -653f)), true, vec4<i32>(-1i, 0i, 11114i, 1i), 2147483647i, 381f), Struct_2(Struct_1(vec2<i32>(-6722i, 33920i), vec3<f32>(-223f, 377f, 1818f)), true, vec4<i32>(-1i, -23660i, 0i, 0i), 8402i, 1000f), Struct_2(Struct_1(vec2<i32>(2147483647i, 7913i), vec3<f32>(206f, -568f, -1000f)), false, vec4<i32>(i32(-2147483648), 1i, -1i, 21906i), 32981i, 214f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -56855i), vec3<f32>(514f, -101f, 1429f)), false, vec4<i32>(2147483647i, 1i, 0i, i32(-2147483648)), 0i, 198f), Struct_2(Struct_1(vec2<i32>(33416i, -21749i), vec3<f32>(-467f, -1604f, 150f)), true, vec4<i32>(16207i, 1i, -23926i, 20361i), i32(-2147483648), -892f), Struct_2(Struct_1(vec2<i32>(30446i, 1i), vec3<f32>(-784f, 362f, 794f)), false, vec4<i32>(30985i, -19770i, 2147483647i, 41547i), 12102i, 244f), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(132f, 1086f, -1068f)), false, vec4<i32>(34896i, 1i, 31036i, 1i), 2147483647i, 1071f), Struct_2(Struct_1(vec2<i32>(2147483647i, -29170i), vec3<f32>(2049f, -186f, -1417f)), false, vec4<i32>(-1i, 2147483647i, -1i, 0i), i32(-2147483648), 526f), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(-165f, 177f, -1331f)), false, vec4<i32>(0i, -13451i, 17408i, i32(-2147483648)), 2147483647i, 768f), Struct_2(Struct_1(vec2<i32>(2147483647i, -60292i), vec3<f32>(-188f, -238f, 592f)), true, vec4<i32>(17989i, -1i, 76i, -28273i), 64304i, 1027f), Struct_2(Struct_1(vec2<i32>(23283i, 11898i), vec3<f32>(-1279f, 155f, -473f)), true, vec4<i32>(17045i, 24615i, 0i, 0i), -5000i, -1052f), Struct_2(Struct_1(vec2<i32>(1i, 22986i), vec3<f32>(-530f, 526f, 1000f)), false, vec4<i32>(0i, -28910i, 51648i, 23059i), 2147483647i, 814f), Struct_2(Struct_1(vec2<i32>(1352i, -13026i), vec3<f32>(636f, 1067f, -617f)), true, vec4<i32>(14746i, 1i, -1i, -10341i), 2147483647i, -2328f), Struct_2(Struct_1(vec2<i32>(-1i, -35134i), vec3<f32>(-836f, -316f, -1000f)), true, vec4<i32>(2147483647i, -1464i, 1i, i32(-2147483648)), 5739i, -386f), Struct_2(Struct_1(vec2<i32>(2147483647i, 28370i), vec3<f32>(706f, -1203f, -496f)), false, vec4<i32>(41556i, 25687i, 23849i, -1i), 2147483647i, -730f), Struct_2(Struct_1(vec2<i32>(15641i, i32(-2147483648)), vec3<f32>(-752f, -181f, 604f)), false, vec4<i32>(15239i, -1i, i32(-2147483648), 1i), 2147483647i, 1999f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 32476i), vec3<f32>(-1354f, 118f, -428f)), true, vec4<i32>(1223i, 0i, 1i, 0i), -5752i, 815f), Struct_2(Struct_1(vec2<i32>(0i, -10654i), vec3<f32>(603f, 143f, 1216f)), false, vec4<i32>(0i, 0i, 32582i, i32(-2147483648)), 0i, 694f));

var<private> global2: array<Struct_1, 31>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_2, 19>();
    return Struct_1(vec2<i32>(~_wgslsmith_dot_vec3_i32(arg_3.xwz, vec3<i32>(1i, global3.a.x, arg_0.a.x)), firstTrailingBit(~u_input.a.x << (u_input.d.x % 32u))), arg_0.b);
}

fn func_3() -> vec2<f32> {
    let var_0 = !vec4<bool>(true, !all(vec3<bool>(global0.x, global0.x, false)), global0.x, global0.x && global0.x);
    let var_1 = 501f;
    var var_2 = vec2<bool>(var_0.x, !global0.x);
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(0u, 31u)], true, vec4<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(select(u_input.c, 1i, true), u_input.a.x ^ 16873i)), 1i, ~countOneBits(-49274i), u_input.a.x), global3.a.x, var_1);
    let var_4 = global1[_wgslsmith_index_u32(u_input.d.x, 19u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-985f, -617f)), var_4.e)) * var_3.a.b.xx);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global3 = func_2(global2[_wgslsmith_index_u32(39326u, 31u)], vec3<u32>(74008u, _wgslsmith_mult_u32(max(u_input.d.x ^ u_input.d.x, 1u), ~_wgslsmith_mod_u32(u_input.d.x, 4294967295u)), min(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b))), Struct_2(Struct_1(_wgslsmith_div_vec2_i32(global3.a, vec2<i32>(-27123i, -16455i)) | vec2<i32>(u_input.c, u_input.c), vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(floor(global3.b.x)), global3.b.x)), !global0.x, firstTrailingBit(vec4<i32>(u_input.c, global3.a.x, global3.a.x, 2147483647i) ^ vec4<i32>(37471i, global3.a.x, -1i, 26278i)) | select(vec4<i32>(43928i, global3.a.x, -1i, global3.a.x), select(vec4<i32>(0i, -28840i, u_input.c, arg_0), vec4<i32>(u_input.a.x, global3.a.x, global3.a.x, -17290i), true), global0.x && global0.x), global3.a.x, _wgslsmith_f_op_f32(-global3.b.x)), -(((vec4<i32>(arg_0, 32164i, 0i, arg_0) >> (vec4<u32>(u_input.b, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b, 4294967295u, u_input.d.x, 0u) % vec4<u32>(32u))) ^ min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, u_input.c, u_input.a.x), vec4<i32>(1i, arg_0, 0i, -46728i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -2147483647i, arg_0, -86004i), vec4<i32>(-1i, 0i, -35196i, 2147483647i), vec4<i32>(arg_0, 2147483647i, arg_0, u_input.a.x)))));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(69768u, 64561u)), 31u)];
    var var_0 = 1i;
    global3 = global2[_wgslsmith_index_u32(u_input.d.x, 31u)];
    var var_1 = vec2<bool>(global0.x && (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, 1069f)) < global3.b.x), all(!vec4<bool>(false, true, true, global0.x & global0.x)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(vec2<f32>(-715f, global3.b.x) - global3.b.xy)), _wgslsmith_f_op_vec2_f32(func_3())))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.b.x, -1475f, global3.b.x))), vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(sign(global3.b.x)), _wgslsmith_f_op_f32(global3.b.x * global3.b.x)))) - _wgslsmith_f_op_vec3_f32(-global3.b));
    global1 = array<Struct_2, 19>();
    let var_1 = reverseBits(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.zy), 27288u, u_input.d.x));
    var_0 = global3.b;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-816f, var_0.x, global3.b.x))))), global3.b, false))));
    let x = u_input.a;
    s_output = func_1(i32(-1i) * -2147483647i);
}

