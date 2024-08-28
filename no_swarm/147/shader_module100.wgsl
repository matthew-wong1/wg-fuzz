struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    global0 = !vec2<bool>(global0.x, true);
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, -1052f)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(-1000f))) + -938f)), arg_1, abs(min(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(4294967295u, 34490u)), vec2<u32>(u_input.c.x, u_input.c.x)), reverseBits(~u_input.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, _wgslsmith_f_op_f32(-1184f - var_0.x))), Struct_1(u_input.a));
    let var_2 = Struct_4(abs(_wgslsmith_mod_vec4_i32(arg_0.a, -(arg_0.a | arg_0.a))));
    var var_3 = !(13366u >= var_1.c.x);
    return vec2<u32>(var_1.c.x, var_1.c.x);
}

fn func_2() -> Struct_4 {
    let var_0 = global0.x;
    let var_1 = 0i;
    let var_2 = firstLeadingBit(((~vec2<i32>(var_1, var_1) ^ ~vec2<i32>(61414i, u_input.a)) ^ ~reverseBits(vec2<i32>(u_input.a, -2147483647i))) >> ((vec2<u32>(4294967295u >> (0u % 32u), 1u) | func_3(Struct_4(vec4<i32>(u_input.a, u_input.a, -100i, 0i)), Struct_1(u_input.a), var_1)) % vec2<u32>(32u)));
    let var_3 = u_input.d.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(select(-243f, -631f, true)), _wgslsmith_f_op_f32(trunc(-571f)), _wgslsmith_f_op_f32(-724f - -715f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(252f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1658f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1458f - 1693f) - _wgslsmith_f_op_f32(sign(1000f))), -1000f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(-2398f, -998f)), _wgslsmith_f_op_f32(ceil(785f)), 1000f, -557f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(863f, 1314f, 714f, -348f))))), true)))), select(!(!vec4<bool>(true, false, true, global0.x)), select(vec4<bool>(global0.x, global0.x, select(global0.x, global0.x, global0.x), !global0.x), select(!vec4<bool>(false, global0.x, false, true), vec4<bool>(true, global0.x, true, global0.x), all(vec3<bool>(global0.x, false, global0.x))), global0.x), !vec4<bool>(all(vec4<bool>(true, global0.x, true, true)), true, global0.x, false))));
    return Struct_4(vec4<i32>(i32(-1i) * -firstTrailingBit(62469i), _wgslsmith_div_i32(min(firstTrailingBit(0i), var_2.x >> (u_input.e % 32u)), 15506i), 16526i, -u_input.a));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    var var_0 = (firstLeadingBit(max(_wgslsmith_mult_vec2_i32(arg_0.a.yw, arg_0.a.yy), arg_0.a.xx & arg_0.a.zy)) & _wgslsmith_add_vec2_i32(arg_0.a.yz, reverseBits(arg_0.a.ww))) >> (~(~vec2<u32>(0u, u_input.d.x) << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-844f * 1451f), _wgslsmith_f_op_f32(1105f * -1000f))))));
    let var_2 = Struct_3(Struct_2(var_1.x, Struct_1(-arg_0.a.x | min(var_0.x, 0i)), ~vec2<u32>(u_input.b.x, ~u_input.c.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(1189f))), var_1, select(!vec2<bool>(false, global0.x), !vec2<bool>(global0.x, false), global0.x))), Struct_1(min(abs(arg_0.a.x), ~(-40413i)))), Struct_2(1997f, Struct_1(9518i), u_input.b.xx, var_1, Struct_1(-70453i)), vec2<i32>(-(firstLeadingBit(var_0.x) >> (1u % 32u)), _wgslsmith_add_i32(select(-2147483647i, arg_0.a.x, 4294967295u != u_input.c.x), 1i)), _wgslsmith_clamp_i32(-45562i, _wgslsmith_mult_i32(-var_0.x, i32(-1i) * -2147483647i), -u_input.a >> (1u % 32u)));
    var_0 = -vec2<i32>(var_0.x, firstTrailingBit(_wgslsmith_sub_i32(55739i, _wgslsmith_add_i32(u_input.a, 2147483647i))));
    var var_3 = ~_wgslsmith_add_vec2_u32(~(vec2<u32>(6105u, var_2.a.c.x) & vec2<u32>(arg_1, 1u)) & max(vec2<u32>(var_2.a.c.x, var_2.a.c.x), ~vec2<u32>(u_input.d.x, u_input.e)), vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(1u, var_2.a.c.x)), 0u)));
    return var_2.b.e;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(func_2(), ~0u);
    let var_1 = Struct_2(-403f, func_4(func_2(), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_clamp_u32(43118u, 1u, 0u) >> (_wgslsmith_mod_u32(u_input.d.x, 4294967295u) % 32u))), vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_sub_u32(4294967295u, u_input.c.x)), ~func_3(Struct_4(vec4<i32>(u_input.a, var_0.a, var_0.a, 0i)), Struct_1(1i), 21352i).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1067f, -250f))) - vec2<f32>(567f, 538f)))), Struct_1(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, -3478i), ~var_0.a)));
    return Struct_3(var_1, var_1, vec2<i32>(-2147483647i, -67826i), ~(u_input.a & _wgslsmith_sub_i32(u_input.a, u_input.a)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_mod_vec4_u32(~u_input.b, ~vec4<u32>(arg_0.a.c.x, 4294967295u, arg_0.b.c.x, u_input.d.x));
    var var_1 = -12408i;
    var var_2 = u_input.a;
    var_1 = arg_2;
    var_2 = _wgslsmith_mod_i32(arg_0.b.b.a, firstLeadingBit(2147483647i));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(func_5(func_1(), vec4<f32>(_wgslsmith_f_op_f32(round(789f)), 1151f, _wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(f32(-1f) * -142f)), firstLeadingBit(u_input.a ^ -11851i)), false), select(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x)), vec2<bool>(true, global0.x | !global0.x), !(!any(vec3<bool>(global0.x, global0.x, global0.x)))), global0.x);
    let var_0 = -(min(~vec3<i32>(-26997i, -1i, u_input.a) ^ -vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.a, 2147483647i, -45366i)) ^ (vec3<i32>(u_input.a, -31387i, -24089i) & vec3<i32>(u_input.a, u_input.a, -17498i))) & min(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 0i, u_input.a), ~countOneBits(vec3<i32>(0i, u_input.a, u_input.a))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-211f + 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -225f)), Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, -1i, -7275i), var_0))), ~_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.c.x, u_input.d.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1458f * 2411f))), 885f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, 2567f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1824f, -2329f))))))), Struct_1(32830i));
    let var_2 = true && (reverseBits(~(-1i) ^ u_input.a) <= -(29532i >> (var_1.c.x % 32u)));
    let var_3 = _wgslsmith_f_op_f32(-var_1.a);
    global0 = vec2<bool>(all(vec2<bool>(true, all(vec2<bool>(true, false)) | global0.x)), any(!(!vec3<bool>(var_2, global0.x, var_2))));
    var_1 = func_1().a;
    let var_4 = Struct_4(func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.yy, var_4.a.wy), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.a, var_1.e.a, 43793i), var_4.a.yzx), -vec3<i32>(55329i, var_4.a.x, -14127i)) | (_wgslsmith_clamp_i32(0i, -1i, -505i) ^ var_4.a.x), var_1.b.a), var_0.yx, _wgslsmith_f_op_f32(-578f * var_1.d.x));
}

