struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<f32> {
    global0 = -904f;
    var var_0 = Struct_1(0u, u_input.d);
    var var_1 = any(vec2<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), any(vec4<bool>(true, true, false, true))))));
    var var_2 = Struct_1(~_wgslsmith_div_u32(countOneBits(0u), 4294967295u), u_input.d);
    var var_3 = Struct_2(u_input.d.x, Struct_1(var_2.a, var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-833f, -965f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-321f, -1782f, -486f)))))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(500f, 1089f, _wgslsmith_f_op_f32(min(var_3.c.x, var_3.c.x))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1109f, var_3.c.x, var_3.c.x)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), _wgslsmith_f_op_f32(step(399f, arg_1.c.x)) >= arg_2.x)) && !select(any(vec3<bool>(true, true, true)), false, all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_2(1u ^ arg_3.a, Struct_1(_wgslsmith_sub_u32(~60139u, _wgslsmith_add_u32(arg_0.b.b.x, firstTrailingBit(arg_3.a))), ~max(u_input.d, arg_0.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(-arg_2)))));
    var var_2 = arg_1;
    let var_3 = true;
    var_0 = var_3;
    return select(any(!select(vec4<bool>(var_3, false, var_3, true), vec4<bool>(true, var_3, false, true), arg_1.a >= 1u)), !var_3, select(_wgslsmith_dot_vec2_u32(~arg_3.b.yy, vec2<u32>(u_input.a.x, var_1.b.a) >> (arg_0.b.b.yy % vec2<u32>(32u))) > firstLeadingBit(26695u), var_3, !any(select(vec4<bool>(var_3, true, false, false), vec4<bool>(false, var_3, var_3, var_3), vec4<bool>(false, false, var_3, true)))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    var var_0 = vec4<u32>(u_input.b.x, firstLeadingBit(u_input.b.x) >> (u_input.a.x % 32u), ~2311u, ~u_input.b.x);
    var_0 = firstTrailingBit(u_input.d & vec4<u32>(firstTrailingBit(~var_0.x), ~0u, u_input.a.x | select(63172u, 1u, false), (var_0.x >> (4294967295u % 32u)) ^ 1u));
    global0 = -401f;
    var_0 = ~(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.d.x), u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.d.x, 1u), u_input.d)), min(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(4294967295u, 79533u, u_input.d.x, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 16095u, 1u), u_input.d))) >> (u_input.d % vec4<u32>(32u)));
    var var_1 = Struct_2(~4294967295u, Struct_1(~u_input.b.x, vec4<u32>(var_0.x, firstTrailingBit(~85832u), select(26111u, ~1u, arg_0), select(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 0u, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-265f, 500f, 130f) + vec3<f32>(-1000f, -1005f, -624f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, -1022f, -1834f))))));
    return ~(~(~(~var_1.b.a)));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    var var_1 = var_0.b;
    var var_2 = Struct_2(func_5(func_4(Struct_2(_wgslsmith_sub_u32(var_0.b.a, 1u), Struct_1(var_0.a, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(max(arg_1.c, vec3<f32>(1000f, var_0.c.x, arg_1.c.x)))), Struct_2(var_0.b.b.x, Struct_1(0u, vec4<u32>(u_input.d.x, 26472u, 74548u, 83307u)), arg_1.c), _wgslsmith_f_op_vec3_f32(func_3()), var_0.b), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), all(vec2<bool>(true, false))), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))), arg_1.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1051f, var_0.c.x, arg_0))))))));
    var var_3 = all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), true), min(10610u, firstTrailingBit(8561u)) >= 4294967295u));
    return _wgslsmith_div_u32(max(32856u, var_2.b.a), ~countOneBits(67027u));
}

fn func_1() -> StorageBuffer {
    let var_0 = false;
    let var_1 = Struct_1(1u >> (u_input.d.x % 32u), vec4<u32>(_wgslsmith_mult_u32(func_2(-178f, Struct_2(65070u, Struct_1(u_input.d.x, u_input.d), vec3<f32>(-104f, 927f, 1129f))) | ~u_input.d.x, ~firstLeadingBit(20638u)), max(~firstLeadingBit(0u), ~(1u << (1u % 32u))), u_input.a.x, _wgslsmith_mult_u32(~4294967295u << (0u % 32u), abs(~u_input.d.x))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f))) * -1697f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f + 741f)) + _wgslsmith_f_op_f32(f32(-1f) * -374f))) * _wgslsmith_f_op_f32(max(-948f, 1f)));
    let var_3 = vec2<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(round(-280f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1062f + _wgslsmith_f_op_f32(-186f - -1382f)))));
    return StorageBuffer(abs(min(_wgslsmith_add_vec3_u32(u_input.b, var_1.b.wyw), u_input.d.xzw)) | var_1.b.zzy, vec2<i32>(~(i32(-1i) * -10193i), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = func_1();
}

