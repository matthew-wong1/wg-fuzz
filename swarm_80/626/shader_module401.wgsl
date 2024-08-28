struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> bool {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    var var_0 = -2848f;
    global0 = array<Struct_2, 24>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(259f, -1557f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(arg_0.x, 838f)))), reverseBits(u_input.b.xzx)), _wgslsmith_sub_u32(arg_1, 1u) > 29388u, Struct_1(arg_0.x, u_input.b.zyy), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(902f, -549f)), -1257f)), u_input.b.xzy));
    return any(select(select(!select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, true), vec2<bool>(var_1.b, false)), !select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, true)), true), vec2<bool>(true, true), vec2<bool>(true, arg_0.x > _wgslsmith_f_op_f32(var_1.c.a - var_1.a.a))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f)))));
    var var_1 = -(u_input.b.ywx & ~u_input.b.wxz);
    var var_2 = firstTrailingBit(reverseBits(~vec4<i32>(-var_1.x, u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.b.x, -706i), u_input.b.yyy))));
    global0 = array<Struct_2, 24>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-787f)) - -1218f)), select(_wgslsmith_clamp_vec3_i32(u_input.b.zxx, _wgslsmith_mult_vec3_i32(u_input.b.zyx, u_input.b.ywx | u_input.b.wyy), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.xzx, vec3<i32>(-48167i, var_2.x, u_input.b.x), vec3<i32>(u_input.b.x, -1i, u_input.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(18264i, -1i, var_1.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), -firstTrailingBit(vec3<i32>(-5314i, u_input.b.x, var_1.x)), false));
    return Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-642f, -1862f, var_3.a) * vec3<f32>(var_3.a, -654f, 986f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, var_3.a, var_3.a))) + _wgslsmith_div_vec3_f32(vec3<f32>(-542f, var_3.a, -108f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -423f, 981f) * vec3<f32>(var_3.a, var_3.a, 690f)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1564f), vec3<i32>(~(~var_1.x), -47506i, ~(-2147483647i))), vec2<u32>(~u_input.a.x, u_input.a.x), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)))), func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a, var_3.a, var_3.a, -592f), vec4<f32>(var_3.a, -1450f, -532f, var_3.a)))), u_input.a.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = u_input.a.x;
    var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(27382u, 0u), ~_wgslsmith_mod_u32(u_input.a.x, ~arg_0.x));
    var var_1 = func_2();
    var_0 = var_1.c.x;
    global0 = array<Struct_2, 24>();
    return !(!vec3<bool>(true, true, (1u | arg_0.x) >= var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true || (u_input.b.x > u_input.b.x), u_input.b.x != ~_wgslsmith_div_i32(u_input.b.x, -6062i), true, true), vec4<bool>(true, !(~u_input.a.x == 4294967295u), false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), func_1(vec2<u32>(u_input.a.x, 27877u), Struct_2(Struct_1(257f, vec3<i32>(u_input.b.x, -1i, 11513i)), false, Struct_1(-526f, u_input.b.zwx), Struct_1(511f, vec3<i32>(16293i, 2147483647i, u_input.b.x))))))), true);
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, -1520f, 286f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, 570f, -1609f)), vec3<f32>(902f, -685f, 327f))) * vec3<f32>(func_2().b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-115f - _wgslsmith_div_f32(398f, 116f))))));
    var var_2 = Struct_3(Struct_2(func_2().b, !((u_input.b.x == 50033i) || !var_0.x), func_2().b, func_2().b), Struct_2(func_2().b, all(var_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), select(u_input.b.wzz << (u_input.a % vec3<u32>(32u)), select(u_input.b.zzy, vec3<i32>(u_input.b.x, -4655i, u_input.b.x), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true), var_0.zzz))), func_2().b), global0[_wgslsmith_index_u32(~select(~u_input.a.x, u_input.a.x, false), 24u)]);
    var var_3 = _wgslsmith_f_op_f32(-808f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-428f, var_2.a.c.a) + -1163f), _wgslsmith_f_op_f32(min(var_2.a.a.a, 1f))))));
    var var_4 = -var_2.c.c.b.x;
    var var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1374f - func_2().a.x))), var_1.x)), u_input.a, -vec4<i32>(var_2.c.c.b.x, 2147483647i, ~(-2076i), u_input.b.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), i32(-1i) * -2147483647i, ~var_2.b.d.b.x, 1i), max(vec4<i32>(var_2.c.a.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, 21211i, u_input.b.x))));
}

