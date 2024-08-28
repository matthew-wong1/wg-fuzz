struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1320f, 739f)))), arg_1.b, true, ~arg_1.d, arg_1.e), vec3<u32>(abs(4294967295u), ~min(_wgslsmith_add_u32(0u, 1u), _wgslsmith_mult_u32(1u, 4294967295u)), ~(~countOneBits(12439u))), arg_1.d);
    let var_2 = Struct_4(var_1.a);
    return -817f;
}

fn func_2() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(435f - -335f), -1964f))) + -722f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -714f) + _wgslsmith_f_op_f32(func_3(false, Struct_1(1000f, -549f, true, u_input.c, vec4<f32>(463f, 376f, 310f, -671f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)), all(vec2<bool>(true, false)), u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - -1062f)), _wgslsmith_f_op_f32(func_3(all(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(select(0u, 19340u, true), 8u)])), 1000f, -278f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(997f, 1365f)), vec2<f32>(-851f, -1239f), vec2<bool>(false, false))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(466f)) * 379f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-213f))), true, firstTrailingBit(-483i), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1419f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) - _wgslsmith_f_op_f32(ceil(-408f))), -1214f)), Struct_2(global0[_wgslsmith_index_u32(1u, 8u)], firstTrailingBit(vec3<u32>(firstTrailingBit(1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(40657u, 78381u, 27279u, 5285u), vec4<u32>(66244u, 54430u, 4294967295u, 0u)))), firstTrailingBit(firstTrailingBit(select(-29182i, 46663i, false)))));
    global0 = array<Struct_1, 8>();
    var var_1 = var_0.e.b;
    global0 = array<Struct_1, 8>();
    return _wgslsmith_div_f32(-905f, -483f);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(1390f, _wgslsmith_div_f32(-820f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -115f)), true, ~arg_0.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-405f, -1359f, 1000f, -136f), vec4<f32>(-652f, -1406f, -2018f, 437f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(1484f)), _wgslsmith_f_op_f32(abs(1016f)), -160f, 831f)))), vec3<u32>(1u, 2821u, ~1u), arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.a))));
    let var_2 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_0.a.c, var_0.a.c, var_0.a.c), vec3<bool>(var_0.a.c, var_0.a.c, var_0.a.c), vec3<bool>(var_0.a.c, false, false)), !vec3<bool>(true, var_0.a.c, true), var_0.a.c), false));
    global0 = array<Struct_1, 8>();
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.a.c, Struct_1(var_1, var_0.a.b, false, u_input.a.x, var_0.a.e)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(-var_1)))), any(select(vec4<bool>(var_2.x, true, false, var_0.a.c), select(vec4<bool>(var_0.a.c, false, var_0.a.c, var_2.x), vec4<bool>(var_0.a.c, var_2.x, var_2.x, var_0.a.c), true), vec4<bool>(var_0.a.c, false, var_0.a.c, false))), _wgslsmith_sub_i32(arg_0.x, firstLeadingBit(arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.e * _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, var_1, var_1, 797f))))), var_0.b, var_0.a.d);
    return Struct_3(var_0.a.a, global0[_wgslsmith_index_u32(36351u, 8u)], var_0.a.e.ww, Struct_1(_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a, 944f) + _wgslsmith_f_op_f32(f32(-1f) * -1473f))), var_1, !var_2.x, var_0.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.a.e, vec4<f32>(var_0.a.a, -104f, 928f, -588f))))))), Struct_2(var_0.a, var_0.b, i32(-1i) * -arg_0.x));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = func_1(vec4<i32>(-1i) * -(u_input.b & vec4<i32>(23969i, arg_0.d.d, arg_0.b.d, 27841i)));
    global0 = array<Struct_1, 8>();
    let var_1 = func_1(select(-firstTrailingBit(vec4<i32>(48686i, 47962i, -53410i, arg_0.e.c)) | u_input.b, min(u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(-24223i, -17187i, u_input.b.x, -2147483647i), u_input.b)), true)).c.x;
    global0 = array<Struct_1, 8>();
    return all(vec4<bool>(all(select(select(vec4<bool>(arg_0.d.c, arg_0.b.c, true, true), vec4<bool>(arg_0.b.c, true, true, false), true), vec4<bool>(var_0.b.c, true, true, true), !var_0.b.c)), any(select(select(vec4<bool>(var_0.b.c, true, false, arg_0.b.c), vec4<bool>(arg_0.e.a.c, var_0.d.c, true, arg_0.d.c), true), vec4<bool>(arg_0.b.c, false, var_0.b.c, false), select(vec4<bool>(false, false, var_0.e.a.c, true), vec4<bool>(arg_0.e.a.c, var_0.e.a.c, var_0.d.c, arg_0.b.c), var_0.d.c))), arg_0.e.a.c, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<i32>(27900i, 1i, 2147483647i, -u_input.b.x))) && func_4(func_1(countOneBits(~vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.a.x))));
    global0 = array<Struct_1, 8>();
    let var_1 = reverseBits(u_input.b);
    let var_2 = global0[_wgslsmith_index_u32(~(~47465u), 8u)];
    global0 = array<Struct_1, 8>();
    let var_3 = func_1(var_1).e.a;
    let x = u_input.a;
    s_output = StorageBuffer(16128u, -var_1.wy, firstTrailingBit(u_input.a.x), 3373u);
}

