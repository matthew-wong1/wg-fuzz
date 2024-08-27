struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(720f, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 424f, -1956f, -307f) * vec4<f32>(global0.a, global0.a, -1518f, global0.a))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), global0.a)), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a)))))) * vec4<f32>(_wgslsmith_div_f32(730f, -164f), 601f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(-1f), false)), _wgslsmith_f_op_f32(-global0.a)));
    let var_1 = u_input.a.x;
    var var_2 = global0.a;
    return !select(select(vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(global0.b, global0.b, true)), true), vec2<bool>(global0.b, all(vec2<bool>(false, false)))), vec2<bool>(true || all(vec2<bool>(global0.b, true)), any(vec3<bool>(true, true, true))), vec2<bool>(any(!vec3<bool>(global0.b, true, global0.b)), !any(vec3<bool>(global0.b, global0.b, false))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f + -172f) * -151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), select(false, false, false) & !global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(903f)))), global0.b);
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f) * global0.a), _wgslsmith_f_op_f32(114f * 321f))))) - -550f);
    let var_2 = select(func_3(u_input.b.x), vec2<bool>((11385u ^ u_input.d) != reverseBits(~2792u), false), false);
    var var_3 = vec3<u32>(u_input.d, 4294967295u, _wgslsmith_mult_u32(~0u, u_input.b.x));
    return Struct_1(_wgslsmith_f_op_f32(select(-104f, -395f, true)), all(!(!vec3<bool>(global0.b, false, true))) & false);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 86495u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, countOneBits(4294967295u)), ~abs(4294967295u)), firstTrailingBit(abs(arg_2))), vec4<u32>(u_input.b.x, 0u, 3361u, 1u) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_2, 30660u, arg_2, u_input.d), ~abs(u_input.b)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(9619u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.d, arg_0.x, arg_2, 47773u)), ~_wgslsmith_clamp_u32(13575u, arg_0.x, u_input.b.x), arg_0.x, firstLeadingBit(arg_2))));
    var var_2 = 24592u & _wgslsmith_dot_vec4_u32(~countOneBits(u_input.b), u_input.b);
    let var_3 = ~75448u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), -1046f)) * _wgslsmith_f_op_f32(f32(-1f) * -466f));
    return Struct_4(max(firstLeadingBit(var_1.x >> (arg_0.x % 32u)), _wgslsmith_sub_u32(13439u, abs(var_3))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-249f, 392f, global0.a) - vec3<f32>(var_0, -1789f, arg_1.a)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4, 398f, arg_1.a)))))), select(!select(vec4<bool>(global0.b, true, true, true), vec4<bool>(false, global0.b, global0.b, arg_1.b), vec4<bool>(false, true, arg_1.b, global0.b)), !(!vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)), select(select(vec4<bool>(global0.b, global0.b, arg_1.b, false), vec4<bool>(false, global0.b, arg_1.b, global0.b), vec4<bool>(true, true, arg_1.b, arg_1.b)), vec4<bool>(true, true, global0.b, arg_1.b), arg_1.b)), select(var_1.x, _wgslsmith_mod_u32(firstTrailingBit(u_input.d), 19920u), func_3(u_input.b.x).x), 1u, Struct_1(arg_1.a, global0.b | arg_1.b)), select(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 43577u, 0u), vec4<u32>(20037u, 1u, 1u, 5810u))), _wgslsmith_mult_u32(~(54220u >> (var_1.x % 32u)), _wgslsmith_div_u32(~var_1.x, arg_0.x)), !arg_1.b), select(func_3(~5214u), func_3(1u), select(vec2<bool>(func_2().b, all(vec2<bool>(arg_1.b, false))), !vec2<bool>(false, global0.b), vec2<bool>(true, true))));
}

fn func_1() -> Struct_3 {
    let var_0 = global0.a;
    var var_1 = select(global0.b, all(select(!vec2<bool>(global0.b, global0.b), !vec2<bool>(global0.b, true), false)) && any(select(select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(false, global0.b, true), vec3<bool>(true, global0.b, true)), select(vec3<bool>(false, global0.b, global0.b), vec3<bool>(global0.b, false, true), global0.b), select(vec3<bool>(true, false, false), vec3<bool>(global0.b, false, global0.b), vec3<bool>(global0.b, global0.b, global0.b)))), select(global0.b, global0.b || select(true, select(global0.b, global0.b, true), !global0.b), true));
    let var_2 = func_4(~_wgslsmith_add_vec3_u32(u_input.b.wxw, firstTrailingBit(max(u_input.b.xwy, u_input.b.xyw))), func_2(), min(~(~(~1u)), firstLeadingBit(u_input.b.x ^ ~0u)));
    var_1 = var_2.d.x;
    let var_3 = u_input.c.x;
    return Struct_3(var_2.b, func_4(vec3<u32>(1u, 0u, 1u) << (firstLeadingBit(abs(vec3<u32>(23708u, 12018u, 3021u))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(var_2.b.a.x, -423f))), var_2.d.x), u_input.d).b.b.zxz);
}

fn func_5(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = u_input.c.yzw;
    let var_1 = arg_0.a.c << (0u % 32u);
    var_0 = abs(countOneBits(max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 24084i, -5802i), u_input.c.ywy), u_input.c.wzz)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, global0.a, global0.a), vec4<f32>(233f, -1450f, arg_0.a.a.x, 534f), arg_0.a.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, -590f, global0.a, 1036f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, 906f, arg_0.a.a.x, arg_0.a.a.x), vec4<f32>(global0.a, 2243f, global0.a, -730f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, global0.a, 1654f, global0.a)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-407f, arg_0.a.a.x, global0.a, -360f) * vec4<f32>(414f, arg_0.a.e.a, -1196f, arg_0.a.a.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a, -899f, 698f, global0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-740f, global0.a, -925f, arg_0.a.e.a) - vec4<f32>(global0.a, global0.a, -2359f, 666f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2329f, global0.a, global0.a, 238f)))))));
    let var_3 = u_input.b;
    return vec4<bool>(!(26266u > firstTrailingBit(var_3.x)), !((var_0.x == var_0.x) || true), all(vec2<bool>(false, ~u_input.a.x == ~var_0.x)), all(func_4(u_input.b.yxy, func_1().a.e, arg_0.a.c).b.b.yxw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = !vec4<bool>(any(func_5(func_1())), global0.b, global0.b, func_2().b);
    let var_2 = !(!(!global0.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -735f));
    global0 = func_4(~u_input.b.yzw, func_4(_wgslsmith_sub_vec3_u32(u_input.b.wwz, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 107697u, u_input.b.x), vec3<u32>(62118u, 22090u, u_input.d)))), func_4(u_input.b.xwy, Struct_1(_wgslsmith_f_op_f32(-var_3.x), global0.b), firstLeadingBit(~u_input.b.x)).b.e, ~u_input.d).b.e, abs(~abs(u_input.b.x))).b.e;
    var var_4 = 6932u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, reverseBits(u_input.c.x));
}

