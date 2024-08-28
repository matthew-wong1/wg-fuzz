struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(42762u, 2503u, 26710u);

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-24320i, i32(-2147483648), -1i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_add_i32(global2.a.x | u_input.b, -(~global2.a.x)) << ((~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.xz, vec2<u32>(49820u, u_input.c.x)), select(vec2<u32>(66511u, global0.x), vec2<u32>(0u, global0.x), vec2<bool>(false, true))) & u_input.c.x) % 32u);
    let var_1 = _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-840f - -1298f))) - _wgslsmith_f_op_f32(floor(190f))))));
    var var_2 = abs(27147u);
    var var_3 = firstTrailingBit(~global0.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-957f, _wgslsmith_f_op_f32(step(-998f, var_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(ceil(var_1))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 + var_1), -1505f)))), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 * 2156f))))))));
    return var_4.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    let var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * -470f)))));
    var_1 = vec2<f32>(256f, _wgslsmith_f_op_f32(sign(arg_0.d)));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1411f)), arg_0.d) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1857f, arg_0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.d) + vec2<f32>(var_1.x, -855f)), arg_0.c & arg_0.b.d.x)))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 22u)];
    return global0.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global2 = Struct_1(global2.a);
    var var_0 = Struct_1(global2.a << (max(vec3<u32>(firstLeadingBit(4294967295u), global0.x, func_2(Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, -1689i)), -30397i, u_input.c.yyw, vec2<bool>(false, false), vec4<i32>(u_input.a.x, u_input.a.x, -66050i, -2147483647i)), Struct_2(Struct_1(u_input.a.zxx), -59652i, u_input.c.xxx, vec2<bool>(true, true), u_input.a), true, 615f), u_input.c)), ~u_input.c.zzx << ((u_input.c.xzz ^ vec3<u32>(arg_0.x, global0.x, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-712f, _wgslsmith_f_op_f32(f32(-1f) * -187f))) - _wgslsmith_f_op_f32(f32(-1f) * -1590f)))));
    let var_2 = select(vec3<bool>(false, false, -abs(global2.a.x) == ~abs(global2.a.x)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), all(vec2<bool>(true, false)) && false), vec3<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), max(u_input.d, 0u) >= 4294967295u)), !vec3<bool>(any(vec3<bool>(true, false, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(true, var_1 >= -1958f, select(false, false, true))));
    let var_3 = global1[_wgslsmith_index_u32(~func_2(Struct_3(Struct_2(Struct_1(vec3<i32>(1i, var_0.a.x, u_input.a.x)), ~(-4111i), u_input.c.zxz | vec3<u32>(9562u, 0u, arg_0.x), var_2.zy, vec4<i32>(var_0.a.x, global2.a.x, u_input.a.x, -21211i)), Struct_2(Struct_1(vec3<i32>(global2.a.x, var_0.a.x, -25187i)), var_0.a.x, vec3<u32>(u_input.c.x, 46487u, arg_0.x), vec2<bool>(true, true), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 4606i, var_0.a.x, global2.a.x), vec4<i32>(-1i, u_input.a.x, global2.a.x, global2.a.x))), any(var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), reverseBits(max(u_input.c, vec4<u32>(33158u, u_input.d, 43774u, 22235u)))), 22u)];
    return Struct_1(~vec3<i32>(var_0.a.x, global2.a.x | global2.a.x, _wgslsmith_sub_i32(0i, ~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~u_input.c.wxz);
    let var_0 = true;
    global2 = func_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, global0.x) ^ firstTrailingBit(~global0.zz), u_input.c.xx));
    var var_1 = func_1(vec2<u32>(global0.x, _wgslsmith_dot_vec2_u32(~u_input.c.ww, vec2<u32>(global0.x, ~4294967295u))));
    var var_2 = -(~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yw, _wgslsmith_div_vec2_i32(var_1.a.yz, vec2<i32>(global2.a.x, var_1.a.x))), vec2<i32>(1i, global2.a.x)));
    global0 = ~u_input.c.zwx;
    let var_3 = Struct_2(func_1(vec2<u32>(~11335u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(9358u, 1u, 40794u, 1u), u_input.c))), 1i, max(vec3<u32>(global0.x, 13442u, ~global0.x) | min(u_input.c.yyy ^ vec3<u32>(4294967295u, u_input.d, 4294967295u), vec3<u32>(global0.x, 1u, u_input.c.x)), u_input.c.wxz), select(select(vec2<bool>(var_0 || true, var_0), vec2<bool>(true, any(vec3<bool>(true, var_0, var_0))), !vec2<bool>(false, var_0)), select(!vec2<bool>(var_0, var_0), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0), select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), var_0 && var_0)), vec2<bool>(var_0, !(!var_0))), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(func_1(u_input.c.xz).a.x, 35197i, var_1.a.x, _wgslsmith_sub_i32(u_input.a.x, -10363i))), u_input.a & (_wgslsmith_clamp_vec4_i32(vec4<i32>(24623i, var_2.x, global2.a.x, 2147483647i), vec4<i32>(-2147483647i, var_1.a.x, var_2.x, var_2.x), u_input.a) ^ vec4<i32>(global2.a.x, 0i, u_input.b, var_2.x))));
    global0 = vec3<u32>(_wgslsmith_add_u32(22503u, min(_wgslsmith_dot_vec3_u32(u_input.c.xww, var_3.c), _wgslsmith_sub_u32(var_3.c.x, global0.x)) << (~abs(global0.x) % 32u)), _wgslsmith_add_u32(26232u, 1u), global0.x);
    let var_4 = func_1(firstLeadingBit(reverseBits(~_wgslsmith_clamp_vec2_u32(var_3.c.xy, vec2<u32>(global0.x, u_input.e), u_input.c.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(30775u, 22u)]) + global1[_wgslsmith_index_u32(1u, 22u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, _wgslsmith_f_op_f32(-1862f + 1536f), -1156f, _wgslsmith_f_op_f32(abs(352f))))));
}

