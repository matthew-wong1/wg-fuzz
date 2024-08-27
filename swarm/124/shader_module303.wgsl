struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true))), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    global0 = array<Struct_4, 24>();
    let var_0 = u_input.d;
    var var_1 = Struct_2(global1.a.a);
    var var_2 = global1.b.a.a.x;
    var_1 = Struct_2(Struct_1(global1.b.a.a));
    return vec2<i32>(16681i, -_wgslsmith_add_i32(-arg_0.a ^ select(arg_0.a, arg_0.a, true), -10317i));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~func_3(Struct_4(_wgslsmith_div_i32(select(24981i, -37347i, true), 12971i)));
    var var_1 = true;
    var var_2 = vec4<i32>(-min(var_0.x, ~u_input.d), ~max(~var_0.x, _wgslsmith_mod_i32(-56911i, u_input.b)), -32419i << (((~global1.c.x >> (u_input.c.x % 32u)) | firstTrailingBit(~global1.c.x)) % 32u), min(-_wgslsmith_mult_i32(var_0.x, ~u_input.d), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 42843i, var_0.x) | vec3<i32>(-50443i, -1i, 0i), firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, 1i))))));
    var var_3 = Struct_3(global1.b, global1.a, ~select(~global1.c, u_input.c, vec2<bool>(global1.b.a.a.x & false, false)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-492f, 684f)), -511f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-631f)) - 2864f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-438f - 228f), 685f)));
    return Struct_2(global1.b.a);
}

fn func_1() -> u32 {
    global0 = array<Struct_4, 24>();
    var var_0 = func_2(Struct_1(!global1.b.a.a));
    let var_1 = Struct_4(_wgslsmith_clamp_i32(14686i, _wgslsmith_dot_vec2_i32(firstLeadingBit(min(vec2<i32>(37773i, u_input.d), vec2<i32>(2147483647i, u_input.d))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 22977i), countOneBits(vec2<i32>(u_input.b, u_input.d)))), firstLeadingBit(_wgslsmith_sub_i32(0i, u_input.b)) << (_wgslsmith_clamp_u32(firstTrailingBit(global1.c.x), global1.c.x, global1.c.x << (1u % 32u)) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) - 1f))) >= 2117f;
    let var_3 = u_input.c;
    return ~(~50735u);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global1 = arg_0;
    var var_0 = global0[_wgslsmith_index_u32(abs(~(~min(0u, 94265u))), 24u)];
    var_0 = global0[_wgslsmith_index_u32(max(32580u, abs(_wgslsmith_div_u32(arg_0.c.x, global1.c.x))), 24u)];
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1388f - -1006f) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1470f, _wgslsmith_f_op_f32(select(-1616f, -820f, arg_0.b.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + -1646f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(429f * -505f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f + 969f))))));
    var var_2 = select(arg_0.a.a.a.x, arg_0.b.a.a.x, true);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec2<bool>(global1.b.a.a.x, global1.b.a.a.x))), global1.b, vec2<u32>(func_1(), global1.c.x))), Struct_2(global1.a.a), vec2<u32>(global1.c.x, ~u_input.a.x));
    var var_1 = countOneBits(abs(4285u));
    var_0 = Struct_3(func_2(global1.b.a), Struct_2(Struct_1(!func_2(global1.b.a).a.a)), ~(~global1.c));
    var var_2 = var_0.b;
    let var_3 = Struct_3(Struct_2(var_0.a.a), func_2(func_2(Struct_1(vec2<bool>(global1.a.a.a.x, var_2.a.a.x))).a), ~vec2<u32>(var_0.c.x, min(4294967295u, global1.c.x)) >> (_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(12664u, var_0.c.x)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.c.x, u_input.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.a.x, var_0.c.x)), ~vec2<u32>(u_input.a.x, 0u))) % vec2<u32>(32u)));
    global1 = var_3;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1580f, 999f, 1000f, 686f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, 1509f, -359f, -229f))))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-788f + -1000f), -713f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -627f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(290f * -1424f), 1f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, 630f, 1196f, 1116f) - vec4<f32>(-609f, 147f, -1364f, 304f)))), vec4<f32>(-745f, _wgslsmith_f_op_f32(-1319f * 106f), _wgslsmith_f_op_f32(948f * 994f), _wgslsmith_f_op_f32(-1000f * 645f)))), false)), select(select(select(select(vec4<bool>(var_2.a.a.x, var_0.a.a.a.x, true, false), vec4<bool>(var_0.b.a.a.x, true, true, var_2.a.a.x), false), select(vec4<bool>(var_3.b.a.a.x, false, var_2.a.a.x, var_0.b.a.a.x), vec4<bool>(true, true, false, var_2.a.a.x), vec4<bool>(true, var_0.a.a.a.x, false, var_3.a.a.a.x)), true), select(select(vec4<bool>(false, false, var_3.b.a.a.x, var_2.a.a.x), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, global1.a.a.a.x, true), vec4<bool>(global1.a.a.a.x, global1.a.a.a.x, true, true), var_2.a.a.x), false), true), vec4<bool>(u_input.a.x > 1u, true, func_2(Struct_1(vec2<bool>(global1.b.a.a.x, false))).a.a.x, false), true)));
    var var_5 = 558f;
    let var_6 = vec2<u32>(global1.c.x, ~_wgslsmith_div_u32(20289u, _wgslsmith_div_u32(~u_input.c.x, select(50035u, 4294967295u, var_2.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4294967295u & var_6.x, 0u), abs(abs(-vec3<i32>(-2147483647i, u_input.d, u_input.b)) | _wgslsmith_mult_vec3_i32(vec3<i32>(-71233i, 0i, 59811i), firstLeadingBit(vec3<i32>(u_input.d, u_input.b, -1i)))));
}

