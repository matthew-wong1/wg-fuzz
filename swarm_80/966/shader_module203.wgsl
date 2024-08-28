struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, false), false);

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-26723i, -42433i, 13069i));

var<private> global3: i32;

var<private> global4: vec4<f32> = vec4<f32>(253f, 482f, -714f, 471f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> f32 {
    global3 = _wgslsmith_dot_vec2_i32(~vec2<i32>(select(firstLeadingBit(-58839i), -global2.a.x, any(vec4<bool>(global0.b, false, arg_0, arg_0))), abs(global2.a.x)), _wgslsmith_sub_vec2_i32(firstTrailingBit(abs(abs(u_input.a.xy))), vec2<i32>(global2.a.x, ~select(u_input.b.x, u_input.a.x, global0.b))));
    let var_0 = Struct_2(select(!(!global0.a), !select(vec2<bool>(true, true), select(global0.a, vec2<bool>(arg_0, false), arg_0), !global0.a), !(u_input.a.x > select(global2.a.x, u_input.a.x, false))), !global0.b);
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(global2.a, ~u_input.b.zwz), countOneBits(min(-global2.a, vec3<i32>(-13446i, 26616i, 2147483647i) >> (vec3<u32>(5216u, u_input.c, 1u) % vec3<u32>(32u))))));
    global0 = Struct_2(!(!global0.a), !(true && (~u_input.c >= u_input.c)));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1387f)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(global0.a)))), global4.x);
    let var_1 = reverseBits(~(~(~(vec4<u32>(u_input.c, 20382u, 0u, 8818u) | vec4<u32>(u_input.c, 102044u, 0u, u_input.c)))));
    let var_2 = var_1.wz;
    var var_3 = Struct_1(vec3<i32>(2147483647i, u_input.e.x, -31550i));
    var var_4 = ~(~_wgslsmith_mod_u32(~(~6137u), ~u_input.c ^ var_1.x));
    return Struct_2(global0.a, !global0.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = min(~(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 25634i, 30691i, -2147483647i), u_input.b), u_input.e >> (vec4<u32>(1u, u_input.c, 49980u, u_input.c) % vec4<u32>(32u))) & ~(~u_input.e)), reverseBits(_wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(u_input.e | u_input.b, vec4<i32>(u_input.a.x, 0i, 47021i, global2.a.x)))));
    let var_1 = select(vec4<bool>(!all(!vec3<bool>(true, true, global0.b)), (global2.a.x << (u_input.c % 32u)) != u_input.d, all(!vec4<bool>(false, false, global0.b, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.x, -175f)) + -1000f) <= _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4.x, 1459f), -1000f))), vec4<bool>(true, func_2().b, any(!vec2<bool>(global0.b, true)), any(vec2<bool>(global0.a.x, !arg_0.b))), true);
    let var_2 = max(vec2<u32>(1u, ~select(u_input.c, 30940u, true)), abs(~(~vec2<u32>(9119u, 10520u)))) >> (~_wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(31273u, 4294967295u)), ~vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(-774f)), -907f, global4.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, -639f, -998f, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1090f, -395f)))), _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, 1148f, _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(global4.x - arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(529f, 919f, 667f, 2327f), vec4<f32>(global4.x, global4.x, 855f, 292f)))))));
    let var_4 = u_input.a;
    return var_3.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -3816i, -1i), arg_1.a >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 76661u, ~u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, 4294967295u) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_1 = vec4<f32>(-313f, _wgslsmith_f_op_f32(func_4(func_2(), -214f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global4.x, -181f))) + _wgslsmith_f_op_f32(global4.x + 456f)), 362f, all(select(vec2<bool>(true, global0.b), global0.a, false)) || false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global4.x, global4.x)))));
    global2 = arg_1;
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-266f, -1387f, 1418f, global4.x)))))))));
    return u_input.c;
}

fn func_5(arg_0: u32, arg_1: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_sub_vec3_u32(reverseBits(~(~vec3<u32>(u_input.c, 1u, arg_0) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, arg_0, 26029u), vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(arg_0, 4294967295u, 4294967295u)))), ~vec3<u32>(firstTrailingBit(u_input.c), _wgslsmith_mod_u32(arg_0, arg_0), arg_0));
    global4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1367f, global4.x, -172f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, global4.x, -475f, global4.x) - vec4<f32>(-1277f, 277f, global4.x, 458f))))), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), global4.x, _wgslsmith_f_op_f32(-global4.x), 627f)))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) * global4.x))));
    global1 = false;
    return ~_wgslsmith_add_vec3_i32(u_input.b.wzx, global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(func_5(firstLeadingBit(func_1(Struct_1(global2.a), Struct_1(u_input.b.ywy), global2.a.x < global2.a.x)), global0.a.x));
    global4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, global4.x, global4.x) - vec4<f32>(global4.x, 846f, global4.x, -136f)), vec4<f32>(1f, 1f, 1f, 1f), !vec4<bool>(global0.a.x, false, true, false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, global4.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global4.x + global4.x), global4.x), ~select(select(vec4<u32>(u_input.c, 85021u, 0u, 60526u), vec4<u32>(1u, u_input.c, u_input.c, 4294967295u), false), vec4<u32>(u_input.c, u_input.c, 56486u, 4294967295u) & vec4<u32>(38085u, 63740u, u_input.c, u_input.c), global0.b) & vec4<u32>(u_input.c, 43563u, firstTrailingBit(47378u), select(u_input.c & u_input.c, reverseBits(u_input.c), false)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, firstTrailingBit(u_input.c), reverseBits(69935u)) << (~(~vec3<u32>(40385u, u_input.c, u_input.c)) % vec3<u32>(32u)), ~(~vec3<u32>(21194u, 26051u, u_input.c)) | vec3<u32>(~39799u, firstLeadingBit(u_input.c), ~15080u)), _wgslsmith_sub_i32(-(~(~u_input.a.x)), abs(_wgslsmith_add_i32(max(-2147483647i, global2.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, -1i), vec2<i32>(u_input.d, global2.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1582f, -1210f, -466f)))))));
}

