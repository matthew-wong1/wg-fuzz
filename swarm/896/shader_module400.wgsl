struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec3<bool> {
    global0 = array<vec4<u32>, 28>();
    global1 = array<vec3<bool>, 14>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global1 = array<vec3<bool>, 14>();
    return vec3<bool>(all(vec2<bool>(any(vec4<bool>(false, false, arg_1.x, false)), arg_1.x)) || (false & all(select(arg_1.yy, vec2<bool>(true, false), arg_1.x))), true, (!arg_1.x || false) || true);
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_1(true);
    global1 = array<vec3<bool>, 14>();
    let var_1 = select(!select(!(!arg_0.wy), vec2<bool>(0u == u_input.c.x, true), var_0.a), arg_0.ww, false);
    let var_2 = 4294967295u;
    var var_3 = select(~u_input.c.yx, firstTrailingBit(~vec2<u32>(var_2, var_2) >> (u_input.b.zz % vec2<u32>(32u))), arg_0.x);
    return select(select(!arg_0.wyx, arg_0.yww, select(vec3<bool>(false & arg_0.x, select(false, arg_0.x, var_1.x), arg_0.x), global1[_wgslsmith_index_u32(u_input.c.x, 14u)], func_3(_wgslsmith_add_i32(-18272i, -27601i), !arg_0.xzx))), vec3<bool>(var_0.a, true, var_0.a), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4) -> bool {
    var var_0 = all(select(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], func_2(!(!vec4<bool>(arg_1.b.a, false, arg_1.a.x, true))), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-140f, -1000f, -1607f, 200f)))))))));
    global0 = array<vec4<u32>, 28>();
    var var_2 = !vec4<bool>(!(!(var_1.x < -290f)), all(select(!vec4<bool>(arg_1.b.a, arg_1.a.x, arg_1.a.x, arg_1.b.a), select(vec4<bool>(false, true, arg_1.b.a, arg_1.a.x), vec4<bool>(false, arg_1.a.x, true, true), arg_1.a.x), vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.a.x, true))), !all(vec3<bool>(arg_1.a.x, arg_1.a.x, true)), all(!func_2(vec4<bool>(true, arg_1.b.a, arg_1.b.a, true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(920f, 581f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(vec4<bool>(true, false, var_2.x, var_2.x)).x))) < var_1.x;
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<f32>) -> StorageBuffer {
    global0 = array<vec4<u32>, 28>();
    var var_0 = -1000f;
    var var_1 = abs(~firstTrailingBit(arg_0.c.a.zy));
    let var_2 = arg_1.b;
    var var_3 = arg_0.a.c.x;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))))), ~vec3<u32>(47051u, 19245u, _wgslsmith_mult_u32(firstTrailingBit(0u), countOneBits(0u))), 1u, _wgslsmith_f_op_f32(-1848f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1265f)))) * _wgslsmith_f_op_f32(-arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(Struct_2(~(~global0[_wgslsmith_index_u32(1u, 28u)]), Struct_1(func_1(u_input.b, Struct_4(vec2<bool>(true, false), Struct_1(false)))), _wgslsmith_div_vec3_f32(vec3<f32>(-754f, 1189f, 815f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, -1979f, -477f))), _wgslsmith_mult_vec2_i32(vec2<i32>(10304i, u_input.d.x), u_input.d >> (u_input.c.zy % vec2<u32>(32u))), ~u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1343f, 1179f, -1820f, -365f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1338f, -1433f, -379f) - vec4<f32>(-1588f, 167f, 174f, -319f))))), Struct_2(global0[_wgslsmith_index_u32(~1u, 28u)], Struct_1(any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2398f, 434f, -741f), vec3<f32>(-1540f, 235f, 845f), global1[_wgslsmith_index_u32(13871u, 14u)])))), ~u_input.a, _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -851f), _wgslsmith_f_op_f32(f32(-1f) * -1207f), true)) < _wgslsmith_f_op_f32(-3049f + _wgslsmith_f_op_f32(-155f * 172f))), Struct_4(vec2<bool>(true, func_2(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))).x), Struct_1(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(120f, 334f, true)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1502f)))), 129f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-394f, _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1833f) - 580f))));
}

