struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-293f, -1165f, -771f, 1110f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1490f)), global0.x), _wgslsmith_f_op_f32(step(global0.x, global0.x))));
    let var_1 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -firstLeadingBit(u_input.d.x), reverseBits(-21467i), _wgslsmith_mult_i32(2147483647i, u_input.d.x) & -3505i), vec4<i32>(u_input.d.x, u_input.d.x, _wgslsmith_mod_i32(0i, ~50002i), _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, u_input.d)))), vec3<i32>(~u_input.d.x & u_input.d.x, u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-482i, u_input.d.x, 0i, u_input.d.x) << (vec4<u32>(0u, 23663u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.d.x, -1i, u_input.d.x, u_input.d.x) | vec4<i32>(-2147483647i, u_input.d.x, -23737i, u_input.d.x)), vec4<i32>(i32(-1i) * -4904i, ~u_input.d.x, countOneBits(u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x)))), Struct_1(_wgslsmith_sub_vec2_i32(u_input.d.yy, vec2<i32>(1i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(u_input.d.x), ~(-2147483647i), _wgslsmith_add_i32(u_input.d.x, u_input.d.x), u_input.d.x), vec4<i32>(~u_input.d.x, -u_input.d.x, ~u_input.d.x, u_input.d.x)), u_input.d.yy, u_input.a, min(vec2<i32>(-1i) * -u_input.d.yx, -_wgslsmith_mult_vec2_i32(u_input.d.xz, u_input.d.zy))), Struct_1(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(-63254i, 0i, u_input.d.x)), u_input.d)), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.d.x, -413i, 4137i, -10208i)), ~vec4<i32>(u_input.d.x, 0i, 25984i, -2147483647i)), vec2<i32>(u_input.d.x, min(u_input.d.x, -10415i)) ^ countOneBits(-u_input.d.xy), abs(57877u), vec2<i32>(firstTrailingBit(u_input.d.x), u_input.d.x)));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1931f, 318f, global0.x, var_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1013f, 1000f) + vec4<f32>(global0.x, 772f, global0.x, global0.x))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) + _wgslsmith_f_op_f32(round(1287f))), var_0, -438f))));
    let var_2 = var_1;
    return _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(var_2.c.b | var_2.a, _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, -1i, u_input.d.x, var_1.b.x), vec4<i32>(-2147483647i, 1i, 1i, 0i))), max(vec4<i32>(2147483647i, 2147483647i, -52281i, var_1.b.x) | vec4<i32>(var_1.c.a.x, u_input.d.x, var_2.c.a.x, 89133i), vec4<i32>(u_input.d.x, var_2.a.x, -31432i, var_2.a.x)) | _wgslsmith_mod_vec4_i32(var_1.a, ~vec4<i32>(10209i, -1i, var_2.d.b.x, var_2.c.b.x))) ^ -2147483647i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = -1072f;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_div_f32(120f, 1134f), -650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -205f)))));
    var_0 = -533f;
    var var_1 = Struct_1(abs(_wgslsmith_mod_vec2_i32(~(-u_input.d.yx), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, u_input.d.x), vec2<i32>(u_input.d.x, 2147483647i)))), vec4<i32>(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(-8285i, u_input.d.x, u_input.d.x, -1i), vec4<i32>(-2147483647i, u_input.d.x, -1i, 21766i), false), -_wgslsmith_clamp_vec4_i32(vec4<i32>(51105i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-264i, -2147483647i, 1i, arg_2), vec4<i32>(-6885i, 2147483647i, 31350i, 7566i))), -55096i, -18200i, ~_wgslsmith_mult_i32(u_input.d.x, -u_input.d.x)), vec2<i32>(func_3() & -48243i, -_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(arg_2, -681i))), ~(~(~37437u)), firstTrailingBit(-(u_input.d.zx << (vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u)))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(5463u, arg_1.x), ~arg_1.xy, _wgslsmith_add_vec2_u32(u_input.c.xy ^ vec2<u32>(25964u, arg_1.x), arg_1.yy)) % vec2<u32>(32u)));
    var_1 = Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.c.x, 0i), var_1.a), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -20565i, 0i, u_input.d.x, -10393i), min(firstTrailingBit(var_1.b), max(var_1.b, var_1.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(36607i), -var_1.e.x, min(-29256i, u_input.d.x), u_input.d.x), -var_1.b)), _wgslsmith_mult_vec2_i32(u_input.d.xx, select(vec2<i32>(-8401i, arg_2), vec2<i32>(arg_2, -2147483647i), true)) >> ((vec2<u32>(u_input.a, reverseBits(21509u)) ^ u_input.c.zy) % vec2<u32>(32u)), reverseBits(~(~arg_1.x & ~arg_1.x)), countOneBits(var_1.b.yw));
    return -822f;
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(-1192f - global0.x)), _wgslsmith_f_op_f32(func_2(vec3<f32>(-506f, _wgslsmith_f_op_f32(314f * global0.x), _wgslsmith_f_op_f32(max(global0.x, global0.x))), u_input.c, 2636i)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1300f, 1f)) - global0.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(global0.xy));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -976f)))));
    var var_2 = ~(-1i);
    return vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, -1000f, 291f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x + 503f), -330f, 334f, _wgslsmith_f_op_f32(global0.x * 328f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1583f, -288f) * vec4<f32>(global0.x, global0.x, global0.x, -1400f)) - _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x), u_input.d, Struct_1(vec2<i32>(8643i, 35236i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x), 0u, u_input.d.xz), Struct_1(u_input.d.xy, vec4<i32>(-4085i, -4265i, u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, -3513i), u_input.b.x, u_input.d.yx))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -554f, -667f)))));
    let var_0 = Struct_2(vec4<i32>(select(u_input.d.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(-28225i, u_input.d.x, -1i, u_input.d.x)), -u_input.d.x), !any(vec3<bool>(false, true, true))), ~(-1i), u_input.d.x ^ 14651i, 2147483647i), firstTrailingBit(reverseBits(u_input.d)), Struct_1(u_input.d.zx & reverseBits(min(u_input.d.zx, vec2<i32>(u_input.d.x, u_input.d.x))), ~reverseBits(select(vec4<i32>(-2147483647i, -13573i, u_input.d.x, -1i), vec4<i32>(2147483647i, -1i, u_input.d.x, u_input.d.x), false)), firstLeadingBit(-select(u_input.d.zy, u_input.d.zz, vec2<bool>(false, false))), u_input.b.x, ~vec2<i32>(u_input.d.x, u_input.d.x) | ~vec2<i32>(u_input.d.x, u_input.d.x)), Struct_1(u_input.d.zz >> (abs(firstTrailingBit(u_input.b)) % vec2<u32>(32u)), select(~firstTrailingBit(vec4<i32>(64948i, u_input.d.x, 1i, 10874i)), vec4<i32>(abs(2147483647i), -u_input.d.x, 0i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), select(true, true, any(vec3<bool>(false, true, true)))), min((u_input.d.zy ^ u_input.d.zz) << (u_input.c.yz % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -1i, 14554i)), u_input.c.x, firstLeadingBit(-(vec2<i32>(37864i, -1i) >> (u_input.b % vec2<u32>(32u))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1300f, _wgslsmith_f_op_f32(-global0.x), 1f, _wgslsmith_f_op_f32(1147f * global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 373f, global0.x))))));
    let var_1 = 0u;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1180f, global0.x, 1093f, global0.x)))))));
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.d.x, -2147483647i)), countOneBits(~var_0.b.yy)) & abs(~(-vec2<i32>(-45104i, var_0.c.e.x))), var_0.d.b, vec2<i32>(-6769i, reverseBits(11161i)), 35271u, var_0.a.wz);
    let var_3 = var_2.a;
    var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), 1339f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1927f, global0.x, 620f, global0.x))))), firstTrailingBit(select(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.d, var_2.d), u_input.b), ~vec2<u32>(0u, var_1), vec2<bool>(true, true))), vec3<u32>(max(abs(~var_2.d), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 49570u, 56864u, 77775u), vec4<u32>(0u, var_1, var_2.d, 4294967295u)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_2.d, 62210u, u_input.a)))), abs(~firstLeadingBit(var_0.c.d)), _wgslsmith_add_u32(0u, 1u)));
}

