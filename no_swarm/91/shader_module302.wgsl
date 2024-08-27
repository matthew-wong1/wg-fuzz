struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = ~global1.x;
    global1 = ~max(~firstLeadingBit(select(vec3<u32>(4294967295u, 4294967295u, 54395u), vec3<u32>(var_0, global1.x, var_0), true)), vec3<u32>(var_0, 0u, 4294967295u));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, -299f, -1814f)), vec3<f32>(1547f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-865f, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, 275f, global0.x)))))));
    let var_1 = false;
    global1 = ~(~(firstLeadingBit(vec3<u32>(1u, u_input.b, var_0)) << (vec3<u32>(1u, firstTrailingBit(u_input.a.x), u_input.b >> (47879u % 32u)) % vec3<u32>(32u))));
    return !select(vec2<bool>(any(vec3<bool>(var_1, true, true)) && true, true), vec2<bool>(true, all(!vec4<bool>(false, var_1, true, true))), any(!(!vec2<bool>(true, var_1))));
}

fn func_2() -> vec3<u32> {
    var var_0 = vec4<bool>(true, any(select(func_3(), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)) && (global0.x >= global0.x), true, true);
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(select(4598i, -2147483647i, true), -18822i), 3172i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 35817i), vec2<i32>(2147483647i, -1i)) << (vec2<u32>(countOneBits(60965u), _wgslsmith_div_u32(1u, u_input.b)) % vec2<u32>(32u)), vec2<i32>(-1i, min(abs(7960i), _wgslsmith_mult_i32(23926i, -18480i)))));
    var var_2 = vec3<i32>(var_1.x, 36928i, -2147483647i) << (~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, u_input.b), vec3<u32>(u_input.a.x, global1.x, u_input.b), vec3<u32>(4294967295u, 4294967295u, u_input.b)) ^ countOneBits(vec3<u32>(44369u, global1.x, 51403u)), ~vec3<u32>(1u, u_input.b, 41954u), true) % vec3<u32>(32u));
    var_0 = vec4<bool>(!var_0.x, true, !(!(var_0.x || true)), any(select(var_0.xwx, var_0.yxz, vec3<bool>(true, false, var_0.x))) & var_0.x);
    var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(var_2.x), select(var_2.x, var_2.x, true), var_1.x), vec3<i32>(23201i, ~1i, -1i));
    return ~(abs(countOneBits(~vec3<u32>(1u, 20667u, global1.x))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, global1.x, 56462u), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, u_input.a.x, 79764u), vec3<u32>(0u, 73470u, 58303u), vec3<u32>(global1.x, 6543u, 79325u)) >> (~vec3<u32>(global1.x, u_input.b, 1308u) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global1 = func_2();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(trunc(1302f)))) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(682f + global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0.x))))))), _wgslsmith_f_op_f32(sign(global0.x)));
    let var_0 = -_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(1i, -2147483647i, 0i) << (vec3<u32>(global1.x, 4294967295u, global1.x) % vec3<u32>(32u))) | vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(19196i, 20170i, 1i, -39074i), abs(vec4<i32>(2147483647i, -1858i, 2147483647i, 0i))), abs(-2147483647i), max(_wgslsmith_mult_i32(0i, -1i), 59850i)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.x, 2147483647i, -60702i, var_0.x), vec4<i32>(var_0.x, -53984i, var_0.x, var_0.x), vec4<bool>(true, false, false, false)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 74464i, var_0.x), vec4<i32>(20858i, 1i, var_0.x, var_0.x))), vec4<i32>(reverseBits(-var_0.x), 1i, _wgslsmith_div_i32(var_0.x, abs(var_0.x)), ~abs(13372i))), ~(_wgslsmith_mult_i32(1i, var_0.x | -58856i) << (global1.x % 32u)));
    var var_2 = u_input.b;
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(-global0.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(abs(u_input.a.x) <= ~4294967295u, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))));
    var var_1 = func_1();
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(46685u, global1.x, u_input.b, 19536u)), vec4<u32>(1u, 64146u & u_input.b, 4294967295u, ~global1.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 4294967295u), ~vec4<u32>(0u, global1.x, u_input.b, 4294967295u)) >> (vec4<u32>(4294967295u, global1.x, ~67956u, _wgslsmith_sub_u32(u_input.b, u_input.a.x)) % vec4<u32>(32u))), Struct_1(all(select(!var_0.xx, func_3(), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1699f, -1371f))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1157f * var_2.b.b.x), var_1.b.x)), 1000f))), global0.x, -147f);
    let var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5467i, -2147483647i, 0i), vec3<i32>(43153i, -30779i, -2147483647i)), 1i, -49381i, i32(-1i) * -8124i), (vec4<i32>(1i, 1i, -16426i, -1i) << (vec4<u32>(global1.x, u_input.a.x, 30836u, var_2.a) % vec4<u32>(32u))) ^ (vec4<i32>(3542i, 1i, 13956i, -80992i) << (vec4<u32>(global1.x, 16525u, u_input.a.x, 20966u) % vec4<u32>(32u)))), ~(-vec4<i32>(countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-31212i, -2147483647i, 38369i, 53036i), vec4<i32>(-12218i, 0i, -2147483647i, 0i)), _wgslsmith_mod_i32(28946i, 40150i), _wgslsmith_mod_i32(-29830i, 14450i))));
    var var_4 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(1u, var_2.a, 4294967295u) | vec3<u32>(global1.x, global1.x, 4294967295u)), min(vec3<u32>(4294967295u, global1.x, global1.x), vec3<u32>(u_input.a.x, 1u, 0u)) & vec3<u32>(4294967295u, 17502u, 30816u)), vec3<u32>(global1.x, 0u, ~33693u << (_wgslsmith_sub_u32(u_input.a.x, var_2.a) % 32u))) | _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a, u_input.a.x, 0u), vec4<u32>(44974u, 0u, u_input.a.x, 73190u)), _wgslsmith_clamp_u32(global1.x, var_2.a, global1.x))), firstLeadingBit(firstLeadingBit(~vec3<u32>(4294967295u, 76531u, u_input.a.x))));
    var var_5 = Struct_3(~4294967295u, Struct_1(any(vec4<bool>(false, var_1.a, var_0.x, var_1.a)) | func_3().x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1699f, -1000f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-970f, -979f), vec2<f32>(128f, -1197f)))))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f * _wgslsmith_f_op_f32(-965f - -1968f))) - 386f) * global0.x);
    var var_7 = max(_wgslsmith_dot_vec3_i32(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-44340i, var_3.x, var_3.x), vec3<i32>(-1i, 0i, 35048i))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, var_3.x, -2147483647i), var_3.wxx), vec3<i32>(var_3.x, -31745i, var_3.x) & var_3.wxx) ^ (vec3<i32>(1i, 1i, 1i) << (firstLeadingBit(vec3<u32>(24140u, var_2.a, 0u)) % vec3<u32>(32u)))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~0u), ~u_input.b), var_5.a, abs(abs(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(38861u, var_5.a, u_input.a.x, var_5.a), vec4<u32>(62828u, var_2.a, 0u, global1.x))))), _wgslsmith_dot_vec3_i32(countOneBits(var_3.xyy), -select(vec3<i32>(23799i, var_3.x, -2147483647i), var_3.wzw, var_5.b.a)));
}

