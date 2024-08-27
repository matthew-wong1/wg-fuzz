struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    global0 = Struct_1(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(-global0.e, i32(-1i) * -1i), u_input.b.x)), global0.b, global0.c, vec2<bool>(false, select(true, true, global0.d.x)), global0.e);
    global0 = Struct_1(global0.a, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - -1000f) - _wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -663f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-534f, 1000f)))))), global0.d, -5853i);
    let var_0 = _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(61549u, ~global0.b, min(1u, 48032u), 1u));
    global0 = Struct_1(~u_input.d.x, ((u_input.c.x << (_wgslsmith_div_u32(17335u, 12774u) % 32u)) & ~13139u) & 1u, -474f, !global0.d, -2147483647i);
    global0 = Struct_1(u_input.d.x, abs(global0.b), global0.c, global0.d, -firstTrailingBit(~(-14073i)));
    return countOneBits(max(~23084i, firstTrailingBit(-1i)));
}

fn func_4(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.c), -650f, global0.c))) * vec3<f32>(global0.c, global0.c, 1237f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c, -283f, 168f)))), vec3<f32>(_wgslsmith_f_op_f32(max(global0.c, 537f)), _wgslsmith_f_op_f32(sign(479f)), _wgslsmith_f_op_f32(f32(-1f) * -198f))))))));
    var var_1 = Struct_3(~_wgslsmith_mult_u32(countOneBits(8757u), countOneBits(u_input.c.x)) & (_wgslsmith_sub_u32(_wgslsmith_mult_u32(48554u, 8375u), _wgslsmith_add_u32(global0.b, u_input.c.x)) >> (_wgslsmith_mod_u32(global0.b, ~u_input.c.x) % 32u)), vec4<i32>(0i, -firstTrailingBit(_wgslsmith_mult_i32(arg_0, 35649i)), i32(-1i) * -1i, ~_wgslsmith_div_i32(u_input.b.x, arg_0) >> (_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(0u, global0.b, 1u)) % 32u)));
    var_1 = Struct_3(~1u, -firstTrailingBit(_wgslsmith_div_vec4_i32(var_1.b, var_1.b) & select(var_1.b, vec4<i32>(0i, arg_0, 1i, var_1.b.x), vec4<bool>(global0.d.x, false, global0.d.x, false))));
    let var_2 = Struct_2(any(vec2<bool>(true, !global0.d.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(529f, -2005f, global0.c, var_0.x), vec4<f32>(global0.c, global0.c, 1516f, var_0.x), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.c, 113f, -191f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, var_0.x, -647f) + vec4<f32>(384f, -780f, -685f, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 838f, global0.c, var_0.x), vec4<f32>(global0.c, 329f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-726f, global0.c, global0.c, -1784f), vec4<f32>(var_0.x, -925f, global0.c, global0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1271f, 1417f, var_0.x, global0.c))))))));
    return _wgslsmith_dot_vec4_i32(~var_1.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -20064i, global0.a, arg_0), vec4<i32>(arg_0, 10969i, -29213i, -46761i))) | firstLeadingBit(u_input.d.x);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = Struct_1(40413i, 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.x, 1077f)), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(495f + global0.c)))), !(arg_1.x == -1858f))), global0.d, 1i);
    global0 = Struct_1(_wgslsmith_sub_i32(-func_4(func_3()), ~(-reverseBits(13879i))), countOneBits(global0.b), -248f, global0.d, 12980i);
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, countOneBits(-arg_2.x), -global0.e ^ -8377i) | _wgslsmith_sub_i32(abs(68153i), -(1i & u_input.a.x)), u_input.d.x);
    var var_1 = Struct_1(-3499i, ~0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.c)), arg_1.x)), select(select(global0.d, !global0.d, all(global0.d)), vec2<bool>(global0.d.x, all(select(vec3<bool>(global0.d.x, global0.d.x, false), vec3<bool>(true, global0.d.x, global0.d.x), false))), vec2<bool>(true, true)), countOneBits(-4425i));
    let var_2 = var_1.b;
    return vec2<bool>(var_1.d.x, select(false, any(!select(vec4<bool>(var_1.d.x, true, var_1.d.x, false), vec4<bool>(true, global0.d.x, true, true), false)), any(!(!var_1.d))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = Struct_1(u_input.a.x, select(_wgslsmith_add_u32(1u, arg_0), u_input.c.x, any(global0.d)), 1071f, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b, arg_1), vec3<u32>(105270u, global0.b, 71612u))), u_input.c.wx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, global0.c)))), min(_wgslsmith_div_vec3_i32(vec3<i32>(27342i, -1i, 16803i), vec3<i32>(0i, u_input.a.x, u_input.a.x)), abs(vec3<i32>(51444i, global0.a, 1i))) | ~_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a, 16537i, u_input.d.x), vec3<i32>(u_input.d.x, global0.e, u_input.d.x))), ~(~firstTrailingBit(-25563i)) >> (firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(25058u, 114796u, 4294967295u, 4294967295u), vec4<u32>(18851u, u_input.c.x, 4294967295u, 887u)))) % 32u));
    var var_0 = global0.d;
    var var_1 = Struct_1(u_input.d.x, _wgslsmith_dot_vec4_u32(abs(~select(u_input.c, vec4<u32>(0u, global0.b, 13474u, 0u), global0.d.x)), reverseBits(vec4<u32>(4294967295u, arg_0, ~arg_1, 41540u))), _wgslsmith_f_op_f32(-global0.c), vec2<bool>(arg_2.a, (all(vec4<bool>(true, var_0.x, true, false)) | select(global0.d.x, true, true)) & !(!arg_2.a)), u_input.b.x);
    var_1 = Struct_1(u_input.d.x, ~0u >> (~var_1.b % 32u), _wgslsmith_f_op_f32(round(-534f)), vec2<bool>(true, any(vec2<bool>(func_2(global0.b, vec3<f32>(-380f, global0.c, var_1.c), vec3<i32>(1i, var_1.a, -9761i)).x, var_0.x))), var_1.e);
    var_0 = var_1.d;
    return min(arg_0, ~abs(~5132u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_u32(~countOneBits(~global0.b), ~0u), ((countOneBits(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, global0.e)) ^ (vec4<i32>(u_input.d.x, global0.a, 0i, u_input.a.x) >> (u_input.c % vec4<u32>(32u)))) << (u_input.c % vec4<u32>(32u))) >> (~vec4<u32>(~4294967295u, reverseBits(0u), 14042u, 4294967295u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c, global0.c, global0.c))))));
    global0 = Struct_1(u_input.a.x << (abs(min(~4294967295u, func_1(1u, u_input.c.x, Struct_2(global0.d.x)))) % 32u), reverseBits(_wgslsmith_div_u32(abs(~1u), func_1(global0.b, global0.b, Struct_2(global0.d.x)))), global0.c, global0.d, -2147483647i);
    let var_2 = select(vec4<bool>(false & any(vec4<bool>(false, global0.d.x, global0.d.x, true)), u_input.c.x < ~_wgslsmith_clamp_u32(var_0.a, u_input.c.x, global0.b), true, global0.d.x), vec4<bool>(any(!(!vec3<bool>(global0.d.x, false, global0.d.x))), !global0.d.x, global0.d.x, false && (-u_input.a.x > -34516i)), all(select(select(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), vec4<bool>(true, true, false, true), global0.d.x || global0.d.x), select(select(vec4<bool>(global0.d.x, global0.d.x, true, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x)), select(vec4<bool>(false, global0.d.x, global0.d.x, true), vec4<bool>(global0.d.x, true, false, global0.d.x), vec4<bool>(false, global0.d.x, global0.d.x, false)), select(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(false, false, false, false), vec4<bool>(global0.d.x, false, global0.d.x, false))), !any(vec4<bool>(true, false, false, global0.d.x)))));
    let var_3 = !var_2.xwx;
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-590f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 386f, global0.d.x))), -511f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-150f, -1231f, -452f))), vec3<f32>(-760f, 838f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(57307u, var_0.a, _wgslsmith_add_u32(0u, 37498u), 32746u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.yzy, u_input.c.wyz), ~4293u), ~u_input.c.zz | vec2<u32>(var_0.a ^ global0.b, u_input.c.x)));
}

