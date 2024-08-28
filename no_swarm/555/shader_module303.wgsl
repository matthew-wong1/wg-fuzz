struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_u32(countOneBits(u_input.e), ~select(vec3<u32>(4294967295u, arg_0.x, u_input.b.x), vec3<u32>(arg_0.x, 0u, arg_0.x), vec3<bool>(true, false, false))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(419f)))), Struct_1(u_input.b, 100179u, _wgslsmith_f_op_f32(-1f)));
    let var_1 = !vec3<bool>(false, !(true | any(vec2<bool>(false, true))), select(_wgslsmith_f_op_f32(var_0.b.c * -871f) == _wgslsmith_f_op_f32(select(-1289f, -104f, true)), 4575u < var_0.b.a.x, true));
    var_0 = Struct_3(var_0.b, Struct_1(~(vec3<u32>(u_input.b.x, arg_0.x, u_input.e.x) | vec3<u32>(4294967295u, 4294967295u, 79657u)), 16628u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a.c, var_0.b.c), var_0.a.c, true)))));
    var var_2 = countOneBits(vec3<u32>(u_input.d, 89919u, ~(~(~32983u))));
    let var_3 = firstTrailingBit(firstTrailingBit(~(~vec2<u32>(u_input.d, u_input.b.x)))) << (vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, max(arg_0.x, var_2.x)) >> (~45203u % 32u), _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(var_0.b.a.x, 729u)), abs(var_2.xx & vec2<u32>(10073u, var_2.x)))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1574f))), -458f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = any(vec2<bool>(true, true)) | true;
    let var_1 = vec3<u32>(min(2542u, 6721u), 30062u, u_input.e.x);
    var var_2 = Struct_1(u_input.b, _wgslsmith_dot_vec2_u32(var_1.xx, var_1.zx), -726f);
    var var_3 = arg_2.d;
    var_3 = arg_2.e;
    return abs(vec3<u32>(firstLeadingBit(0u), firstLeadingBit(~var_2.a.x), var_1.x) ^ vec3<u32>(~(~var_1.x), arg_2.d.a.x, 1u));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(select(1u, _wgslsmith_mult_u32(8843u, 0u), true), ~24479u, u_input.b.x), u_input.e.x, -1377f);
    return Struct_1(func_4((_wgslsmith_f_op_f32(-180f + arg_1.x) == _wgslsmith_f_op_f32(func_3(var_0.a.zy))) && true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-609f * arg_1.x))), Struct_2(false, -65309i, !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), var_0, Struct_1(var_0.a, var_0.a.x, var_0.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, 727f, var_0.c, 102f), arg_1))), vec4<f32>(-410f, arg_1.x, _wgslsmith_f_op_f32(-var_0.c), -880f)))), var_0.b, var_0.c);
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1229f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d.c + arg_0.d.c))))), arg_0.d.c));
    var var_1 = Struct_3(func_2(u_input.a, vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-747f)), 1534f)))), func_2(firstLeadingBit(reverseBits(u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, arg_0.d.c, -732f, arg_0.d.c) * vec4<f32>(1345f, -464f, arg_0.e.c, -1789f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, -705f))))));
    let var_2 = !select(!arg_0.c.x, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.b.c, -761f, false)))) >= 2808f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1536f, var_0.x, -1000f, arg_0.e.c))) + vec4<f32>(arg_0.d.c, _wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(round(arg_0.d.c)), -1011f))));
    var_1 = Struct_3(var_1.a, var_1.b);
    return arg_0.e.b;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_3 {
    return Struct_3(func_2(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 1i, 10389i, 2147483647i), vec4<i32>(arg_2, -2147483647i, u_input.a, -2147483647i), arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_2, -29731i, arg_2), vec4<i32>(arg_2, -2147483647i, arg_2, u_input.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), 432f, arg_0, 818f) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(175f)), _wgslsmith_f_op_f32(abs(-112f)), -100f))), Struct_1(u_input.b & u_input.e, u_input.b.x, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-803f, -681f)))), 18245i < ((select(u_input.c.x, 16010i, true) | _wgslsmith_dot_vec3_i32(vec3<i32>(-7570i, u_input.a, 2147483647i), vec3<i32>(-45649i, u_input.a, u_input.c.x))) << (func_1(Struct_2(false, u_input.c.x, vec2<bool>(false, false), Struct_1(u_input.b, u_input.e.x, -560f), Struct_1(u_input.b, u_input.e.x, 1045f))) % 32u)), firstTrailingBit(abs(1i)) << (~countOneBits(u_input.b.x) % 32u));
    var_0 = Struct_3(var_0.b, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f + 427f) - 2024f)), all(vec3<bool>(true, true, true)), 2147483647i).b);
    let var_1 = !vec4<bool>(!(any(vec3<bool>(true, true, false)) || true), false, true, true);
    var var_2 = Struct_1(~(~(~select(var_0.b.a, vec3<u32>(27518u, 1u, var_0.b.a.x), var_1.x))), 0u, func_2(7762i ^ reverseBits(u_input.a | -2147483647i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, -1000f, -912f, 1214f) + vec4<f32>(1024f, 723f, var_0.b.c, -312f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.b.c, var_0.b.c, 348f)), var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.b.c, var_0.b.c, var_0.a.c)) - vec4<f32>(170f, -1740f, 2047f, var_0.b.c)), vec4<bool>(all(var_1), true, true, u_input.c.x < 13448i)))).c);
    var var_3 = func_5(-1744f, any(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, false), var_1.x))), u_input.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_2.c, 222f, -1180f), vec4<f32>(-1729f, -309f, 758f, var_3.b.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c, -165f, -464f, var_3.b.c) * vec4<f32>(175f, 482f, -1003f, var_0.b.c)))), vec4<f32>(_wgslsmith_f_op_f32(-124f + 739f), var_2.c, -301f, _wgslsmith_f_op_f32(var_3.b.c + 1000f))))));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(min(var_3.b.c, -582f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c + func_2(-2147483647i, vec4<f32>(992f, var_4.x, var_4.x, -364f)).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), (4294967295u >> (var_2.a.x % 32u)) != u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_add_vec3_i32(countOneBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.c.x, u_input.a)), vec4<i32>(u_input.c.x, u_input.a, -2147483647i, u_input.c.x)), u_input.a, 33875i)), _wgslsmith_f_op_f32(func_2(u_input.a, var_4).c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-883f - -889f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), var_3.a.b);
}

