struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = 1000f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d.a), arg_0.d.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1040f, -1902f) * -1158f) + arg_0.d.a)));
    let var_1 = !(!select(select(!vec3<bool>(global0.x, global0.x, arg_0.d.e.b), select(vec3<bool>(true, true, false), vec3<bool>(arg_0.d.b.b, arg_0.d.d.b, global0.x), vec3<bool>(true, global0.x, false)), vec3<bool>(false, arg_0.d.b.b, false)), !(!vec3<bool>(arg_0.d.e.b, true, arg_0.d.e.b)), arg_0.d.b.b));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f * -971f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - arg_0.d.a)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1243f * _wgslsmith_f_op_f32(round(arg_0.d.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.d.a))))), Struct_1(arg_0.c, (arg_0.d.a <= 1410f) || (select(false, arg_0.d.b.b, arg_0.d.b.b) && false), reverseBits(~(2147483647i & arg_0.d.e.d.x)), -(~vec4<i32>(1i, 2147483647i, -1i, -2147483647i)) | arg_0.d.b.d), -arg_0.d.b.c | arg_0.d.c, Struct_1(max(select(~77583u, 1u, arg_0.d.d.b), ~(31568u << (arg_0.c % 32u))), all(var_1), max(0i, countOneBits(min(arg_0.d.b.d.x, arg_0.d.e.c))), arg_0.d.e.d & ((vec4<i32>(-1i, u_input.b.x, arg_0.d.d.c, 1i) << (vec4<u32>(0u, 4294967295u, u_input.a.x, 1u) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(42216u, 0u, 1u, 4294967295u)) % vec4<u32>(32u)))), Struct_1(52982u, arg_0.d.e.b, -18645i, vec4<i32>(arg_0.d.c, arg_0.d.c, min(1i, ~(-2147483647i)), ~(-u_input.b.x))));
    return u_input.d;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_2(u_input.a.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = vec3<u32>(~_wgslsmith_mult_u32(~1u, func_3(Struct_5(Struct_2(1u), vec2<u32>(1u, 51265u), var_0.a, Struct_3(-1045f, Struct_1(u_input.a.x, global0.x, 0i, vec4<i32>(24354i, u_input.b.x, 2147483647i, u_input.b.x)), -10734i, Struct_1(u_input.c, false, 25701i, vec4<i32>(u_input.b.x, -1i, -18583i, u_input.b.x)), Struct_1(var_0.a, arg_0, -2147483647i, vec4<i32>(1i, u_input.b.x, u_input.b.x, 4464i)))))), 42074u, select(_wgslsmith_dot_vec2_u32(~u_input.a, firstLeadingBit(vec2<u32>(var_0.a, 0u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(5920u, u_input.c, u_input.d, 21587u), ~vec4<u32>(1764u, 38586u, var_0.a, u_input.d)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(22466u, 0u, var_0.a, u_input.d), vec4<u32>(14330u, u_input.a.x, 54159u, 86924u)), ~1u, ~var_0.a, 53321u)), !(-1405f > _wgslsmith_f_op_f32(step(-1087f, -505f)))));
    var_0 = Struct_2(reverseBits(u_input.d));
    var var_2 = ~u_input.b.x;
    return !(~var_1.x < countOneBits(_wgslsmith_div_u32(var_1.x, ~13675u)));
}

fn func_1() -> Struct_1 {
    global0 = !(!vec2<bool>(!global0.x, true));
    global0 = vec2<bool>(global0.x, !select(all(vec2<bool>(true, true)), !global0.x, func_2(-34054i > u_input.b.x)));
    global0 = !select(vec2<bool>(global0.x, u_input.c >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.c, 2259u), vec4<u32>(16384u, 42464u, u_input.c, u_input.a.x))), !vec2<bool>(false, !global0.x), !vec2<bool>(false & global0.x, false));
    global1 = _wgslsmith_f_op_f32(1000f - 608f);
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(u_input.c, ~u_input.a.x) ^ u_input.d, abs(u_input.c), reverseBits(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(u_input.a, u_input.a))), 1660u);
    return Struct_1(max(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13588u, 1u, var_0.x), vec4<u32>(4294967295u, 34738u, 4294967295u, var_0.x)), ~(4294967295u << (var_0.x % 32u)))), true, 2147483647i, _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(u_input.b.x, 7687i, 2147483647i, 7666i)), -firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 1i, 1109i, -1i), vec4<i32>(7244i, 22101i, u_input.b.x, -39981i), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -2147483647i)) & ~vec4<i32>(-1i, u_input.b.x, 0i, -2466i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = !(!(!(!(!vec2<bool>(global0.x, global0.x)))));
    global0 = vec2<bool>(true, global0.x);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(41785u | var_0.a, 4294967295u, 1u, _wgslsmith_mult_u32(26101u << (var_0.a % 32u), firstLeadingBit(18794u))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.a, var_0.a, u_input.d), ~vec4<u32>(u_input.c, 4294967295u, 4294967295u, 4294967295u)) << (vec4<u32>(5895u, _wgslsmith_clamp_u32(1u, var_0.a, 14904u), func_1().a, _wgslsmith_div_u32(38884u, 1u)) % vec4<u32>(32u))), var_0.a ^ var_0.a, u_input.a.x);
    let var_2 = ~(~1u);
    var var_3 = countOneBits(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(var_1.x, var_2, 4294967295u, ~14382u)));
    let var_4 = var_3.xxy;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.d.wwy, var_4.x, ~u_input.a.x);
}

