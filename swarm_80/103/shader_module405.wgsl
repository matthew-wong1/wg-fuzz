struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> bool {
    global0 = array<bool, 15>();
    var var_0 = abs(u_input.c);
    let var_1 = -1617f;
    let var_2 = ~(~(var_0.xz & min(u_input.c.yy >> (vec2<u32>(u_input.d, u_input.e) % vec2<u32>(32u)), select(var_0.xy, vec2<u32>(1u, 1u), vec2<bool>(false, false)))));
    global0 = array<bool, 15>();
    return any(vec3<bool>(true, true, all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)] | false, true, true))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 965f) * arg_1.x)))), !(!select(vec3<bool>(true, true, false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 15u)], true, global0[_wgslsmith_index_u32(23450u, 15u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 15u)], global0[_wgslsmith_index_u32(84658u, 15u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(u_input.e, 15u)]))), 41787i, global0[_wgslsmith_index_u32(u_input.c.x, 15u)] & all(vec4<bool>(!global0[_wgslsmith_index_u32(10491u, 15u)], func_3(vec4<i32>(1i, u_input.b, 2147483647i, u_input.b), vec2<i32>(u_input.b, 1405i)), false && global0[_wgslsmith_index_u32(42534u, 15u)], 1i == u_input.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1080f)))), arg_1.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1)))));
    var var_2 = Struct_3(_wgslsmith_mult_vec4_u32(max(vec4<u32>(~u_input.c.x, 84747u, 45083u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x)), ~(~vec4<u32>(u_input.e, u_input.e, 25190u, 4294967295u))), vec4<u32>(~u_input.d, 4294967295u, u_input.c.x, ~u_input.e)));
    var var_3 = ~1u;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1062f), 1694f), arg_1)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - 1158f))), arg_0.x))));
    return !select(vec3<bool>(true, global0[_wgslsmith_index_u32(~1u, 15u)], ~51193u >= ~var_2.a.x), select(vec3<bool>(all(var_0.b), false, global0[_wgslsmith_index_u32(~15736u, 15u)]), var_0.b, !var_0.b.x), true);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, 424f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), -1000f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - _wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-125f, _wgslsmith_f_op_f32(-1435f - arg_0.x), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 15u)], false, true))))), 2123f, _wgslsmith_f_op_f32(arg_0.x + 566f)));
    var var_1 = any(select(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, -947f, -839f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.x))), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.e, 15u)], global0[_wgslsmith_index_u32(~u_input.c.x, 15u)]), select(!func_2(vec4<f32>(var_0.x, -405f, arg_0.x, 836f), vec2<f32>(822f, -680f)), !func_2(vec4<f32>(var_0.x, -138f, arg_0.x, arg_0.x), vec2<f32>(arg_0.x, var_0.x)), !global0[_wgslsmith_index_u32(u_input.e, 15u)])));
    let var_2 = !(!(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(3848u, 15u)], false, true), select(vec4<bool>(global0[_wgslsmith_index_u32(53663u, 15u)], true, true, true), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(71833u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(u_input.e, 15u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 15u)], false, global0[_wgslsmith_index_u32(u_input.d, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.e, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(20797u, 15u)])))));
    var_1 = true;
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, -2147483647i), -reverseBits(u_input.a), _wgslsmith_add_i32(u_input.a, 0i)), vec3<i32>(-2147483647i, -(i32(-1i) * -8999i), u_input.a)) ^ select(_wgslsmith_div_vec3_i32(max(countOneBits(vec3<i32>(u_input.b, u_input.a, 0i)), abs(vec3<i32>(-19256i, u_input.b, -2147483647i))), vec3<i32>(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 795i, 3710i), vec4<i32>(u_input.a, u_input.a, 1i, 0i)), u_input.b)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-42553i, u_input.a, 12434i), vec3<i32>(u_input.b, 26691i, 10485i)) << (~u_input.c % vec3<u32>(32u)), -(vec3<i32>(2147483647i, u_input.b, u_input.b) << (vec3<u32>(u_input.d, 14341u, u_input.d) % vec3<u32>(32u))), (vec3<i32>(6940i, u_input.b, -2147483647i) >> (vec3<u32>(u_input.c.x, 4294967295u, u_input.e) % vec3<u32>(32u))) | vec3<i32>(u_input.a, -2147483647i, u_input.a)), var_2.zzw);
    return _wgslsmith_sub_i32(reverseBits(u_input.a), -(~(i32(-1i) * -27360i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = ~_wgslsmith_div_vec4_i32(select(vec4<i32>(firstLeadingBit(u_input.a), -1i, i32(-1i) * -4962i, ~7966i), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a, 1i, u_input.b, 1i), vec4<i32>(-4942i, -56005i, 0i, u_input.a)), vec4<i32>(49968i, 1i, u_input.a, -56130i)), any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 15u)])) | all(vec2<bool>(global0[_wgslsmith_index_u32(6070u, 15u)], false))), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), -2147483647i), 0i, (u_input.b & u_input.a) >> (u_input.e % 32u), -2147483647i));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-34386i, _wgslsmith_add_i32(var_0.x, abs(-2147483647i)), var_0.x, 66433i), vec4<i32>(func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-685f, 125f)))), var_0.x | ~(-25191i), -(var_0.x ^ var_0.x), -1i)) >> (countOneBits(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(16844u, 14460u, 28272u, u_input.d), vec4<u32>(1u, 55123u, u_input.e, u_input.c.x), vec4<bool>(false, global0[_wgslsmith_index_u32(222u, 15u)], true, global0[_wgslsmith_index_u32(u_input.e, 15u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 3695u, 71604u, 4294967295u), vec4<u32>(4294967295u, 66916u, 0u, u_input.c.x)))) % vec4<u32>(32u));
    var_0 = var_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f + 804f) - _wgslsmith_f_op_f32(trunc(443f)))) - -1204f), vec3<bool>(138f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2271f - -783f) - _wgslsmith_f_op_f32(trunc(115f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.zx << (vec2<u32>(u_input.e, 0u) % vec2<u32>(32u))), u_input.c.zz), 15u)], false), -1i, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-954f, _wgslsmith_div_f32(2059f, 1413f)))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-706f)) - -829f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) - _wgslsmith_f_op_f32(-703f - -342f)))));
    let var_3 = vec2<i32>(1i, -2147483647i);
    let var_4 = countOneBits(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 3444u, u_input.e, u_input.e) ^ vec4<u32>(1u, 66108u, u_input.d, 60851u), ~vec4<u32>(u_input.e, u_input.e, u_input.d, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.e, 58010u)) >> (min(~vec4<u32>(39589u, 4294967295u, u_input.c.x, u_input.e), ~vec4<u32>(4294967295u, u_input.e, 53380u, 20575u)) % vec4<u32>(32u))));
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-190f, -2082f) + vec2<f32>(-1802f, var_2.a)) * vec2<f32>(-678f, var_2.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(382f, var_2.a))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1000f - var_2.a), var_2.a), vec2<f32>(_wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_f_op_f32(var_2.a - 138f))))), var_4.yzz);
}

