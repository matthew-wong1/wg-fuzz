struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, true, true, true, true, false, true, true, true, false, false, false, false, true, false, false, false, true, true, true, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> u32 {
    global0 = array<bool, 21>();
    var var_0 = arg_1.ww;
    var var_1 = vec2<i32>(i32(-1i) * -abs(_wgslsmith_sub_i32(arg_3.b.x, 1i)), -81724i);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, countOneBits(arg_3.b.x), var_1.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_3.b.x, arg_3.b.x) & var_1.x, arg_3.b.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -var_1.x, firstLeadingBit(var_1.x), var_1.x), ~vec4<i32>(var_1.x, arg_3.b.x, 2147483647i, arg_3.b.x)));
    let var_3 = Struct_1(vec2<u32>(arg_2.x, ~0u), _wgslsmith_div_u32(4294967295u, ~1u), arg_0.a.xx, ~_wgslsmith_mod_u32(28661u | u_input.a, firstTrailingBit(u_input.b.x) & u_input.a));
    return _wgslsmith_mult_u32(4294967295u, firstTrailingBit(~((var_3.b | var_3.d) | 1u)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = ~(~_wgslsmith_add_u32(2207u, _wgslsmith_mod_u32(48601u, u_input.b.x)));
    var var_1 = _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 9858i, 21210i))) >> (vec3<u32>(~abs(u_input.a), min(_wgslsmith_div_u32(u_input.a, u_input.b.x), ~1u), 4294967295u) % vec3<u32>(32u)), vec3<i32>(-max(-2147483647i, -5031i) << (u_input.b.x % 32u), -33907i, _wgslsmith_div_i32(1i, i32(-1i) * -24327i) >> (func_3(Struct_2(vec3<u32>(u_input.a, 4294967295u, 4294967295u), Struct_1(vec2<u32>(u_input.b.x, u_input.a), u_input.a, vec2<u32>(4294967295u, u_input.b.x), u_input.b.x)), vec4<f32>(986f, 1000f, -654f, 819f), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b.yy), Struct_3(arg_0.x, vec2<i32>(-2147483647i, 23316i), vec3<f32>(-1000f, -683f, -1000f))) % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-895f, -1783f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1553f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), 2276f), _wgslsmith_f_op_f32(abs(-553f)));
    var var_1 = u_input.b.zz;
    global0 = array<bool, 21>();
    let var_2 = Struct_3(all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], var_0 == var_0)) || all(!vec4<bool>(global0[_wgslsmith_index_u32(7650u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], true, global0[_wgslsmith_index_u32(1u, 21u)])), -(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, arg_1) << (u_input.b.yx % vec2<u32>(32u)), reverseBits(vec2<i32>(arg_1, 2147483647i)), -vec2<i32>(arg_1, 2147483647i)) >> (~(~u_input.b.zx) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -769f, var_0)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + vec3<f32>(var_0, -1000f, var_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1378f, var_0, var_0)))))))));
    let var_3 = vec2<u32>(~4294967295u, 1u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-506f)))), var_2.a)), var_0)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3.b;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b.xy, u_input.b.x, u_input.b.xx, u_input.b.x), -1i))) * arg_3.c.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) + _wgslsmith_f_op_f32(arg_1 + arg_3.c.x)), arg_2.c.x, all(vec4<bool>(arg_3.a, false, true, global0[_wgslsmith_index_u32(72850u, 21u)])))))));
    let var_2 = ~vec3<i32>(-22733i, -66306i, var_0.x);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -284f)));
    var_1 = _wgslsmith_f_op_f32(-arg_2.c.x);
    return Struct_3(-countOneBits(_wgslsmith_mod_i32(arg_0.b.x, 59628i)) > -5119i, select(_wgslsmith_sub_vec2_i32(-(vec2<i32>(var_2.x, arg_0.b.x) & var_2.zy), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -1900i), arg_2.b, vec2<i32>(arg_0.b.x, -20840i))), -vec2<i32>(-2147483647i, 2147483647i & var_2.x), arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_2.c.x, -1793f) * vec3<f32>(arg_1, 949f, arg_3.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -(1i >> (~u_input.b.x % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -1821i), vec3<i32>(-23377i, -2147483647i, 2147483647i))), vec2<i32>(_wgslsmith_mult_i32(-16596i, -37561i), 1i)) & _wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(-43797i, -9483i, 1i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(-20701i, -1i, 1i))));
    var var_1 = Struct_2(u_input.b, Struct_1(_wgslsmith_sub_vec2_u32(abs(u_input.b.yx) & u_input.b.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.xy)), u_input.b.x, select(vec2<u32>(4294967295u, ~69014u), u_input.b.xx, true), ~0u));
    var var_2 = func_4(Struct_3(!(-487f != _wgslsmith_f_op_f32(func_1(var_1.b, var_0))), select((vec2<i32>(13110i, var_0) << (u_input.b.zz % vec2<u32>(32u))) << (vec2<u32>(1u, var_1.b.a.x) % vec2<u32>(32u)), vec2<i32>(19821i, var_0) ^ firstTrailingBit(vec2<i32>(var_0, -71437i)), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.b.c.x, 21u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-506f, -1000f, 738f)))) - vec3<f32>(_wgslsmith_f_op_f32(select(636f, 815f, global0[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(778f - 1867f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1664f))))), -821f, all(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(6755u, 21u)]))))), Struct_3(!all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(114277u, 21u)])), abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_0, 0i), ~vec2<i32>(var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), Struct_3(all(vec2<bool>(true, any(vec4<bool>(false, true, true, true)))), abs(vec2<i32>(2147483647i, 3519i)) | (_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 0i)) & firstTrailingBit(vec2<i32>(-2147483647i, -36747i))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1785f - 1196f), -693f)), -814f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 21u)], global0[_wgslsmith_index_u32(23986u, 21u)]))))))));
    var var_3 = Struct_3(!(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, 0u)), vec2<u32>(u_input.b.x, 1u)), 21u)]), _wgslsmith_mod_vec2_i32(var_2.b, -(~var_2.b)), var_2.c);
    var var_4 = Struct_1(u_input.b.xx, 29210u, max(~u_input.b.xx, var_1.a.yy), 26373u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_4(func_4(func_4(Struct_3(var_3.a, vec2<i32>(var_3.b.x, -2147483647i), vec3<f32>(1086f, -197f, var_2.c.x)), -1000f, Struct_3(var_3.a, var_3.b, var_3.c), Struct_3(var_2.a, var_3.b, var_2.c)), _wgslsmith_f_op_f32(-var_2.c.x), func_4(Struct_3(var_2.a, vec2<i32>(var_2.b.x, var_0), vec3<f32>(var_2.c.x, 940f, -788f)), var_2.c.x, Struct_3(var_2.a, vec2<i32>(var_3.b.x, -25650i), var_3.c), Struct_3(true, vec2<i32>(var_3.b.x, var_2.b.x), var_2.c)), func_4(Struct_3(true, vec2<i32>(var_3.b.x, var_3.b.x), vec3<f32>(var_3.c.x, 1426f, var_2.c.x)), -585f, Struct_3(global0[_wgslsmith_index_u32(var_1.a.x, 21u)], var_3.b, var_3.c), Struct_3(var_3.a, var_3.b, var_3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-565f - 2741f) - _wgslsmith_f_op_f32(-var_3.c.x)), Struct_3(true, -var_3.b, var_3.c), Struct_3(true, var_2.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -374f, 800f), var_3.c)))).c.x), max(-vec4<i32>(var_0, -69627i, 57053i, var_3.b.x) << (abs(vec4<u32>(var_1.b.b, 54342u, var_4.b, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32((vec4<i32>(-2147483647i, var_2.b.x, var_3.b.x, var_0) | vec4<i32>(-7153i, var_3.b.x, 1i, var_0)) & _wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.x, var_3.b.x, var_3.b.x, -11246i), vec4<i32>(17934i, -333i, var_3.b.x, var_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(-26894i, -2147483647i, 50499i, var_3.b.x), vec4<i32>(var_2.b.x, -6499i, var_3.b.x, var_3.b.x)))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 61591u, 4294967295u), vec3<u32>(24002u, var_4.a.x, var_1.a.x))), _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, u_input.b.x)), ~u_input.b.x);
}

