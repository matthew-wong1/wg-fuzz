struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<i32>, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> bool {
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(!arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1097f)), -627f, reverseBits(~(~u_input.a ^ 0u)));
    let var_1 = _wgslsmith_sub_i32(arg_2.x << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(arg_1.a.zz, -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.zx, arg_1.a.yy), vec2<i32>(2147483647i, u_input.c))));
    var var_2 = Struct_2((func_3(arg_0.a, _wgslsmith_f_op_vec2_f32(round(global0.b.zz)), Struct_1(vec2<bool>(false, false), vec2<u32>(u_input.b, 4294967295u), -544f, vec3<f32>(arg_0.b.x, 537f, 616f)), false) & true) & any(vec2<bool>(arg_0.a, true)), _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.c), 1083f, _wgslsmith_f_op_f32(f32(-1f) * -1375f)), _wgslsmith_f_op_vec3_f32(-var_0.b)), var_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(218f, 1000f), global0.c))))), 0u);
    global1 = select(_wgslsmith_div_vec3_u32(firstLeadingBit(~(vec3<u32>(var_2.d, var_0.d, global0.d) ^ vec3<u32>(u_input.a, 3989u, arg_0.d))), vec3<u32>(0u, ~(~64577u), 6840u)), abs(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global0.d, 1u, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.d, var_2.d, var_0.d), vec3<u32>(arg_0.d, var_2.d, 70427u)))), vec3<bool>(any(vec3<bool>(true || global0.a, false, var_0.a)), all(select(vec4<bool>(true, var_2.a, arg_0.a, var_2.a), select(vec4<bool>(var_2.a, true, false, true), vec4<bool>(true, true, false, false), var_0.a), vec4<bool>(true, global0.a, arg_0.a, arg_0.a))), true));
    var var_3 = select(!select(vec2<bool>(true, 1030f >= arg_0.b.x), !select(vec2<bool>(var_2.a, true), vec2<bool>(false, false), vec2<bool>(arg_0.a, false)), vec2<bool>(true, true)), vec2<bool>(func_3(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(-623f)), var_0.b.x), Struct_1(vec2<bool>(true, arg_0.a), ~global1.zz, _wgslsmith_f_op_f32(var_2.c + -3588f), vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x)), true), any(!vec4<bool>(false, var_2.a, var_0.a, true))), any(!vec2<bool>(global0.a | false, select(global0.a, var_0.a, var_2.a))));
    return Struct_1(vec2<bool>(arg_0.a | ((true && var_0.a) && true), true), global1.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-117f)))), _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> i32 {
    let var_0 = func_2(Struct_2(select(all(!vec2<bool>(global0.a, false)), !select(true, global0.a, true), true), global0.b, -1065f, 1u), Struct_3(arg_0.zyw), firstTrailingBit(abs(arg_0.yzy)));
    let var_1 = true;
    var var_2 = var_0;
    global0 = Struct_2(select(true, any(select(!vec3<bool>(true, var_2.a.x, true), !vec3<bool>(false, true, global0.a), !var_1)), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.d.x, arg_2.x), var_0.c, -320f) * var_2.d)), arg_2.x, _wgslsmith_add_u32(u_input.a, global0.d));
    global1 = ~select(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 44860u, global1.x), vec3<u32>(0u, global1.x, 20017u))), ~(~vec3<u32>(1u, 0u, var_2.b.x)), vec3<bool>(arg_0.x >= u_input.c, true, any(var_2.a))) | vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.a, countOneBits(0u), ~min(var_2.b.x, global0.d)), ~(~(~2709u)));
    return -(_wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(arg_0.x, u_input.c, arg_0.x, u_input.c)), (arg_0 & vec4<i32>(27368i, u_input.c, 54143i, u_input.c)) & arg_0) << (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, max(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(u_input.c, u_input.c)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, u_input.c), func_1(vec4<i32>(-1i, 64556i, u_input.c, u_input.c), global1.x, vec2<f32>(878f, -1080f), vec2<f32>(185f, global0.c)))), 32602i), -(~vec3<i32>(abs(u_input.c), -2147483647i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(~31461u), global1.x), u_input.a, (((vec3<u32>(39045u, u_input.b, global0.d) | vec3<u32>(u_input.a, 1u, global1.x)) | ~vec3<u32>(global0.d, 1u, 21386u)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(5312u, 213u, 0u), vec3<u32>(u_input.b, 4294967295u, global0.d))) << (firstTrailingBit(~countOneBits(vec3<u32>(68272u, 3822u, 17535u))) % vec3<u32>(32u)), ~max(~(global1.xz & vec2<u32>(global0.d, global1.x)), global1.yx), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(true, _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-1014f, -1875f, global0.b.x)), _wgslsmith_f_op_f32(exp2(global0.c)), global1.x), Struct_3(var_0), ~select(global2[_wgslsmith_index_u32(global0.d, 30u)], vec3<i32>(2147483647i, u_input.c, u_input.c), global0.a)).d - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, global0.b.x, global0.c) + global0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, 111f, 1000f), vec3<f32>(global0.c, -1679f, -377f), vec3<bool>(false, global0.a, true)))) - vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(sign(-1000f))))));
}

