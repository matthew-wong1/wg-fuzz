struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -861f;

var<private> global1: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2512f, -815f, -851f))), vec3<f32>(-979f, _wgslsmith_f_op_f32(floor(842f)), _wgslsmith_div_f32(882f, -1366f)))), max(~abs(vec3<u32>(u_input.c, 4294967295u, 0u)) | ~select(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x), vec3<u32>(u_input.c, u_input.a.x, u_input.a.x), false), _wgslsmith_add_vec3_u32(~vec3<u32>(27953u, 4294967295u, 45593u), min(vec3<u32>(u_input.a.x, u_input.a.x, 6741u), vec3<u32>(0u, u_input.a.x, 4294967295u))) | _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 77685u), reverseBits(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x)))), Struct_1((~vec3<u32>(u_input.a.x, 4294967295u, 82987u) | vec3<u32>(6807u, 0u, 115146u)) | ~vec3<u32>(u_input.a.x, u_input.c, u_input.c)), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(44615u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.c, 1u)), firstLeadingBit(vec3<u32>(u_input.a.x, 22471u, u_input.c) ^ vec3<u32>(0u, 4294967295u, 22977u)))));
    global0 = 257f;
    return select(select(vec2<bool>(true, true), !vec2<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false))), any(select(select(global1[_wgslsmith_index_u32(var_0.d.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), global1[_wgslsmith_index_u32(~4294967295u, 3u)], select(false, true, false)))), select(vec2<bool>(_wgslsmith_sub_i32(u_input.b.x, 1i) >= -u_input.b.x, any(global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 3u)])), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), var_0.a.x != var_0.a.x)), select(select(vec2<bool>(11843i < u_input.d.x, u_input.b.x > 86859i), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), !vec2<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    var var_0 = func_3();
    global0 = -1000f;
    let var_1 = arg_1.d;
    global1 = array<vec4<bool>, 3>();
    let var_2 = arg_1.d;
    return !(!any(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
}

fn func_1() -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.b | u_input.d, u_input.b));
    let var_1 = _wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1242f, -401f))))))));
    let var_2 = !(-2267f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)))) || !any(select(!global1[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(true, true, true, true), func_2(vec4<bool>(false, true, false, true), Struct_2(vec3<f32>(353f, var_1, var_1), vec3<u32>(108002u, 57429u, u_input.c), Struct_1(vec3<u32>(44245u, u_input.a.x, 4294967295u)), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 118633u))))));
    let var_3 = (u_input.d.zy << (select(vec2<u32>(1u, firstTrailingBit(1u)), u_input.a, false) % vec2<u32>(32u))) & vec2<i32>(-3980i, ~(~max(0i, -14213i)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -290f)))), max(~vec3<u32>(0u, u_input.a.x, 2330u) | ((vec3<u32>(4294967295u, u_input.a.x, u_input.c) & vec3<u32>(0u, 0u, u_input.c)) >> (~vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, 3852u, 1625u)), Struct_1(min(~(vec3<u32>(u_input.c, u_input.a.x, u_input.c) >> (vec3<u32>(u_input.a.x, 10028u, 48488u) % vec3<u32>(32u))), ~(~vec3<u32>(17082u, u_input.a.x, 1u)))), Struct_1(select((vec3<u32>(u_input.a.x, 0u, u_input.c) >> (vec3<u32>(u_input.c, 59112u, 44574u) % vec3<u32>(32u))) ^ vec3<u32>(1u, 4294967295u, 0u), select(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.c), reverseBits(vec3<u32>(113278u, u_input.c, u_input.c)), !vec3<bool>(false, true, var_2)), vec3<bool>(true, !var_2, func_3().x))));
    return !select(!vec3<bool>(u_input.a.x == 4294967295u, u_input.d.x >= -10974i, var_2), vec3<bool>(var_2, -15644i > u_input.b.x, true), vec3<bool>(any(!global1[_wgslsmith_index_u32(0u, 3u)]), any(vec2<bool>(true, var_2)), !all(vec2<bool>(var_2, var_2))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-390f * 1894f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1654f, 1758f)), -310f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(990f, -597f, false)))), arg_0.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(309f + 251f), 1000f)))));
    var var_0 = Struct_2(vec3<f32>(1f, 1f, 1f), _wgslsmith_mult_vec3_u32(~arg_2.a, firstTrailingBit(countOneBits(arg_2.a))), arg_2, Struct_1(arg_2.a));
    global0 = var_0.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.a);
    return Struct_4(Struct_1(vec3<u32>(arg_2.a.x, ~(~var_0.d.a.x), arg_2.a.x)), Struct_2(var_0.a, firstLeadingBit(~var_0.c.a), var_0.c, Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.a.x, 4294967295u, arg_2.a.x), vec3<u32>(var_0.d.a.x, 52473u, 0u)), arg_2.a << (vec3<u32>(83414u, arg_2.a.x, arg_2.a.x) % vec3<u32>(32u))))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -893f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, var_0.a.x, 687f), vec3<f32>(1000f, 1279f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1377f, -126f, var_0.a.x) * vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, var_0.a.x))), arg_0)), _wgslsmith_div_vec3_u32(reverseBits(~arg_2.a), arg_2.a), arg_2, Struct_1(arg_2.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - -113f), _wgslsmith_f_op_f32(min(-1000f, 355f)), _wgslsmith_f_op_f32(f32(-1f) * -1339f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, 483f, -1539f)))))));
    global1 = array<vec4<bool>, 3>();
    let var_1 = func_4(select(vec3<bool>(27521u > min(u_input.a.x, u_input.c), any(vec2<bool>(false, false)), false), !vec3<bool>(select(false, true, false), false, true), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), func_1(), true))), select(_wgslsmith_div_vec2_i32(vec2<i32>(64860i, -29548i), u_input.d.zz), abs(u_input.b.xx), true), Struct_1(~(~(~vec3<u32>(0u, 1u, 2375u)))));
    let var_2 = var_1.a;
    var_0 = var_1.c.a;
    let var_3 = u_input.c;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) * 157f), var_1.b.a.x, var_0.x);
    let var_4 = ~(~var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(1044f);
}

