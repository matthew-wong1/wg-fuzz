struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = Struct_3(!(!(true || all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -837f), Struct_2(true), u_input.c.xz);
    global0 = _wgslsmith_clamp_u32(u_input.a, var_0, u_input.a ^ 1u) << (_wgslsmith_dot_vec2_u32(((vec2<u32>(1u, 4294967295u) | vec2<u32>(u_input.a, 35294u)) | ~vec2<u32>(var_0, 0u)) ^ vec2<u32>(var_0, 10728u), vec2<u32>(min(_wgslsmith_add_u32(4294967295u, u_input.a), abs(51478u)), u_input.b >> (4294967295u % 32u))) % 32u);
    let var_2 = var_1.b;
    var var_3 = Struct_3(var_1.c.a, _wgslsmith_f_op_f32(-var_1.b), Struct_2(var_1.a), -(-vec2<i32>(var_1.d.x, 16844i) ^ vec2<i32>(2147483647i, u_input.c.x)) << (vec2<u32>(1u, 4545u) % vec2<u32>(32u)));
    return var_1.c;
}

fn func_1() -> Struct_2 {
    global0 = firstTrailingBit(26661u);
    global0 = u_input.b;
    return func_2();
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec3<i32>(-2147483647i, -24979i, _wgslsmith_add_i32(38657i, -1i));
    global0 = (((u_input.b | u_input.b) | countOneBits(~0u)) ^ select(~u_input.a ^ ~u_input.a, 4294967295u, arg_1.x)) >> (~(~u_input.a) % 32u);
    global0 = ~u_input.b;
    var var_1 = arg_0;
    var_0 = u_input.c.ywx;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-736f, _wgslsmith_f_op_f32(select(-203f, 1f, !select(arg_1.x, var_1.a, false))))), -175f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(u_input.c, abs(firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i)))), vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(func_3(func_1(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-105f)) - _wgslsmith_f_op_f32(floor(-106f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f * -2155f)))));
    var_0 = vec4<i32>(-63063i, _wgslsmith_clamp_i32(max(-u_input.c.x, u_input.c.x), _wgslsmith_mod_i32(~1i, ~var_0.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1722u, u_input.b, 19762u), vec3<u32>(u_input.a, u_input.b, u_input.b)) % 32u), 1i), ~var_0.x | _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(891i, u_input.c.x, u_input.c.x)) ^ var_0.wyz, ~_wgslsmith_sub_vec3_i32(vec3<i32>(26054i, u_input.c.x, -7735i), var_0.zyx)), reverseBits(reverseBits(-abs(var_0.x))));
    var_0 = ~vec4<i32>(max(u_input.c.x, -25163i), min(var_0.x, ~(-2147483647i)), firstTrailingBit(max(max(-2147483647i, var_0.x), i32(-1i) * -2147483647i)), ~u_input.c.x);
    var var_2 = var_0.x;
    var_0 = -u_input.c | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 18791i, _wgslsmith_clamp_i32(select(var_0.x, -2147483647i, var_1), 0i << (u_input.a % 32u), u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c.ww, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.c.x, 33868i), vec2<i32>(0i, -80196i)))), ~abs(_wgslsmith_div_vec4_i32(u_input.c, u_input.c)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(~u_input.c, firstTrailingBit(u_input.c), u_input.c)));
    let var_3 = Struct_1(all(vec2<bool>(any(!vec3<bool>(false, var_1, var_1)), true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1826f), 182f), ~(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

