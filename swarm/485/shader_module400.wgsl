struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_3,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_4(4294967295u);
    var_0 = Struct_4(_wgslsmith_add_u32(select(0u, ~_wgslsmith_add_u32(24018u, u_input.b.x), !(u_input.c < 0i)), 1u));
    var_0 = Struct_4(_wgslsmith_mod_u32(firstLeadingBit(var_0.a), ~(~(~1u))));
    var_0 = Struct_4(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 59355u), u_input.b.xy, u_input.b.yx)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(~vec2<u32>(var_0.a, 0u)))));
    let var_1 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-278f * _wgslsmith_f_op_f32(trunc(294f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(831f * 401f))))));
    return _wgslsmith_div_f32(-273f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - arg_0))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(6018u);
    let var_1 = reverseBits(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 1u, u_input.e, var_0.a), firstLeadingBit(~vec4<u32>(u_input.e, 37400u, var_0.a, var_0.a)))));
    let var_2 = -1i;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(287f, _wgslsmith_f_op_f32(995f * 1657f), var_0.a > u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1485f)))))));
    var var_4 = countOneBits(u_input.c);
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = ~(~abs(min(~arg_1.a, ~u_input.e)));
    global0 = array<Struct_3, 22>();
    let var_1 = Struct_3(arg_0.a, abs(_wgslsmith_add_i32(select(-2147483647i, -6184i, arg_3.x), i32(-1i) * -2147483647i)), arg_0);
    global0 = array<Struct_3, 22>();
    var var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(420f, _wgslsmith_f_op_f32(sign(var_2.c.a.a))))), -21891i, 1112f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, 496f)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_4(Struct_2(arg_0.a), func_2(), !(arg_0.a.a >= _wgslsmith_f_op_f32(step(arg_0.a.d, 289f))) | true, vec2<bool>(true, all(vec2<bool>(true, true))));
    var_0 = Struct_1(-835f, min(-27826i, min(-(~u_input.c), ~firstLeadingBit(40120i))), var_0.d, arg_0.a.c);
    let var_1 = Struct_5(Struct_4(1u), global0[_wgslsmith_index_u32(u_input.e, 22u)], Struct_3(arg_0.a, u_input.c, arg_0), Struct_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 1u, 1u, u_input.d), vec4<u32>(4294967295u, 101064u, ~51630u, ~4556u))), func_2());
    global0 = array<Struct_3, 22>();
    var_0 = arg_0.a;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - _wgslsmith_f_op_f32(750f - _wgslsmith_div_f32(-2563f, 671f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -944f))), -1634f)), -13734i, 1778f, _wgslsmith_f_op_f32(var_1.b.c.a.d * arg_0.a.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -168f), -1i, arg_1.d, arg_1.c), arg_2.b, Struct_2(Struct_1(965f, -51293i, 794f, 324f)));
    global0 = array<Struct_3, 22>();
    var_0 = global0[_wgslsmith_index_u32(1u, 22u)];
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    return Struct_2(Struct_1(arg_0.a, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1824f, 659f)), _wgslsmith_f_op_f32(-527f - var_0.c.a.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.a, arg_1.a)), _wgslsmith_f_op_f32(-var_0.c.a.d)), -667f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(Struct_2(Struct_1(_wgslsmith_div_f32(-1233f, -579f), max(1750i, -2147483647i), _wgslsmith_f_op_f32(step(681f, 783f)), -688f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-790f, -2050f, true))))), u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1718f))), 1f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f))), ~u_input.c, -1451f, -1158f), ~(~vec3<u32>(u_input.e, 99988u, u_input.b.x | u_input.e)));
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec4_u32(~(~select(vec4<u32>(20613u, 4294967295u, u_input.d, u_input.d), vec4<u32>(35657u, 1u, 46412u, 0u), vec4<bool>(false, false, false, true))), min(~max(vec4<u32>(1914u, u_input.e, 0u, u_input.d), vec4<u32>(u_input.e, 12890u, u_input.b.x, 147654u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 5356u, u_input.e), vec4<u32>(1u, u_input.b.x, u_input.e, 4294967295u), vec4<u32>(u_input.b.x, 31242u, u_input.e, u_input.d)) << (vec4<u32>(u_input.d, 2805u, u_input.e, u_input.e) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), var_0.a.b), u_input.a));
}

