struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.xy, countOneBits(u_input.a.zy)), global0.b), Struct_1(global0.a, _wgslsmith_mult_vec2_u32(~(~global0.b), max(vec2<u32>(global0.b.x, 16647u), _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(global0.b.x, global0.b.x))))), 20150u);
    let var_1 = ~(select(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.b, var_0.a.b), ~12756u, global0.b.x, global0.b.x), vec4<u32>(_wgslsmith_mult_u32(1u, var_0.a.b.x), ~0u, global0.b.x, 30193u), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), true)) ^ vec4<u32>(4294967295u, _wgslsmith_clamp_u32(3286u, 1u, global0.b.x) & _wgslsmith_mod_u32(var_0.b.b.x, var_0.a.b.x), ~59241u | min(var_0.b.b.x, 1u), ~firstTrailingBit(4294967295u)));
    let var_2 = Struct_2(var_0.b, Struct_1(-6600i, ~(~(~var_1.zz))), ~max(_wgslsmith_add_u32(1u | var_1.x, ~global0.b.x), 13855u));
    let var_3 = Struct_1(_wgslsmith_mult_i32(28979i, 15644i), select(~var_1.yy, vec2<u32>(~(~30322u), ~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(37955u, 1u, 13982u, 0u))), false && (_wgslsmith_div_u32(var_1.x, var_2.a.b.x) >= _wgslsmith_mult_u32(var_0.b.b.x, 48241u))));
    let var_4 = vec2<i32>(global0.a, (18648i << (var_3.b.x % 32u)) << (_wgslsmith_sub_u32(global0.b.x, (var_0.b.b.x ^ 1u) >> (~1203u % 32u)) % 32u));
    return var_4.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.a, var_3.a) << (_wgslsmith_mod_vec2_u32(var_0.a.b, ~var_2.b.b) % vec2<u32>(32u)), vec2<i32>(var_3.a, _wgslsmith_add_i32(3447i, u_input.a.x)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f * -1326f));
    var var_1 = select(vec2<bool>(any(vec3<bool>(true, true, select(true, false, true))), !all(vec3<bool>(true, false, false))), vec2<bool>(min(global0.a, global0.a) == func_3(vec4<f32>(130f, -579f, 947f, -599f)), any(vec2<bool>(0u >= arg_0.x, true))), select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), !(global0.b.x != 1u)), true));
    var var_2 = !select(select(vec2<bool>(all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x || var_1.x), vec2<bool>(true, true), var_1.x), !select(vec2<bool>(false, true), vec2<bool>(false, false), var_1.x && var_1.x), vec2<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), all(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false)))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, ~abs(0i)), u_input.a) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-9455i, _wgslsmith_mod_i32(~global0.a, firstLeadingBit(global0.a)), i32(-1i) * -global0.a), vec3<i32>(_wgslsmith_sub_i32(-15304i, 7640i ^ global0.a), -1i, abs(global0.a)));
    let var_4 = global0.b.x | _wgslsmith_mod_u32(arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.b.x, 4294967295u) | ~4294967295u, ~_wgslsmith_clamp_u32(1u, 0u, 23711u), ~22223u));
    return Struct_1(-32198i, abs(vec2<u32>(~(~global0.b.x), ~(~arg_0.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    global0 = func_2(~(~vec4<u32>(35829u, global0.b.x, global0.b.x, global0.b.x) ^ (max(vec4<u32>(92883u, 4294967295u, global0.b.x, global0.b.x), vec4<u32>(0u, 4294967295u, global0.b.x, global0.b.x)) << (firstTrailingBit(vec4<u32>(global0.b.x, global0.b.x, 36300u, global0.b.x)) % vec4<u32>(32u)))));
    var var_0 = select(select(vec3<bool>(global0.a < ~arg_1, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(func_2(vec4<u32>(4294967295u, 4294967295u, global0.b.x, global0.b.x)).a != 0i, firstLeadingBit(global0.b.x) != ~global0.b.x, false), true), select(vec3<bool>(!(arg_0.x != 909f), -2719i < -arg_1, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !(arg_0.x > -1000f)), true), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, true, 82220u > global0.b.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), vec3<bool>(true, true, true)));
    global0 = func_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.b.x, 99241u, 0u) >> (~vec4<u32>(40106u, global0.b.x, 42595u, global0.b.x) % vec4<u32>(32u)), select(~vec4<u32>(global0.b.x, 72863u, global0.b.x, 32143u), vec4<u32>(4294967295u, global0.b.x, 4294967295u, global0.b.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), global0.b.x, ~(firstLeadingBit(10778u) ^ global0.b.x), ~(~(~global0.b.x))));
    var_0 = select(select(!select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), vec3<bool>(var_0.x, all(!vec3<bool>(true, true, var_0.x)), any(select(var_0.yx, var_0.zx, vec2<bool>(var_0.x, var_0.x)))), select(select(!vec3<bool>(false, false, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, var_0.x))), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false), false), select(!vec3<bool>(true, true, var_0.x), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, false, var_0.x), var_0.x), select(var_0.x, true, false)))), select(select(vec3<bool>(false, arg_0.x <= arg_0.x, var_0.x), !select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), var_0.x), any(vec4<bool>(false, var_0.x, var_0.x, false)) || true), !(!(!vec3<bool>(true, false, var_0.x))), false), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true)), vec3<bool>(false, arg_0.x == -1181f, true), any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x))));
    let var_1 = _wgslsmith_div_vec4_u32(select(~countOneBits(vec4<u32>(0u, 0u, global0.b.x, global0.b.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.b.x, 70733u, global0.b.x, 1u)) | vec4<u32>(295u, 24984u, global0.b.x, 31999u), ~vec4<u32>(14972u, 4294967295u, global0.b.x, global0.b.x)), vec4<bool>(false, !(!var_0.x), !(global0.a == arg_1), var_0.x)), ~(~vec4<u32>(4294967295u, global0.b.x, 74742u, 58990u)));
    return Struct_3(Struct_2(Struct_1(~1i, ~firstLeadingBit(vec2<u32>(global0.b.x, global0.b.x))), func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.x, global0.b.x, global0.b.x), var_1, ~vec4<u32>(58156u, 4294967295u, 76412u, var_1.x))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, global0.b.x, 4852u), abs(var_1)), global0.b.x)), Struct_2(Struct_1(~arg_1, abs(firstLeadingBit(var_1.yz))), func_2(max(~vec4<u32>(global0.b.x, 0u, 67338u, 5319u), abs(var_1))), ~_wgslsmith_add_u32(~global0.b.x, 35980u)), Struct_2(Struct_1(1i, vec2<u32>(var_1.x, 3797u) << (global0.b % vec2<u32>(32u))), func_2(reverseBits(~var_1)), 4294967295u), global0.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-236f, 1029f)), 586f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1182f, -997f))))), ~(countOneBits(2147483647i) << (arg_3.x % 32u))).b, Struct_2(arg_2.b, arg_2.a, ~_wgslsmith_sub_u32(~arg_0.a.a.b.x, arg_1.b.x)), Struct_2(Struct_1(select(-2147483647i, -1i, false) | -1i, ~arg_3.xw & vec2<u32>(64408u, 68469u)), Struct_1(_wgslsmith_div_i32(0i, func_3(vec4<f32>(352f, 1169f, -1000f, -1000f))), arg_2.a.b), _wgslsmith_add_u32(min(global0.b.x, _wgslsmith_mod_u32(arg_2.b.b.x, 42034u)), 0u)), ~(~(~arg_1.b.x)) | ~max(0u, arg_0.c.b.b.x));
    var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.a.b.a, arg_0.b.a.a, arg_2.a.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, arg_0.c.a.a, var_0.a.a.a, -18780i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1608i, global0.a, arg_2.b.a, u_input.a.x), vec4<i32>(global0.a, arg_0.a.b.a, var_0.c.b.a, arg_2.b.a)))), -abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.b.a, u_input.a.x, global0.a, -55530i), vec4<i32>(2147483647i, 6991i, -13277i, -1i)))));
    global0 = Struct_1(~(~(-35286i & min(u_input.a.x, arg_2.a.a))), vec2<u32>(arg_2.c, 1u));
    let var_2 = var_0.a.a;
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(vec2<f32>(1f, 1f), -2465i), Struct_1(global0.a, vec2<u32>(global0.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.b, global0.b), 0u ^ global0.b.x))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(137f, -121f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(667f, 714f), vec2<f32>(316f, -318f)))))), ~1i).a, _wgslsmith_div_vec4_u32(~(select(vec4<u32>(18705u, 4276u, global0.b.x, global0.b.x), vec4<u32>(0u, global0.b.x, 1u, global0.b.x), vec4<bool>(false, true, true, false)) & ~vec4<u32>(global0.b.x, 4294967295u, global0.b.x, global0.b.x)), vec4<u32>(reverseBits(4294967295u) & ~global0.b.x, global0.b.x, 64431u, global0.b.x)));
    global0 = Struct_1(_wgslsmith_mult_i32(57459i, -1i), vec2<u32>(~global0.b.x, reverseBits(2051u) | select(1u, _wgslsmith_mod_u32(global0.b.x, 13314u), select(true, false, true))));
    var var_0 = ~select(vec4<u32>(~func_2(vec4<u32>(global0.b.x, 4294967295u, global0.b.x, 29302u)).b.x, ~93690u ^ global0.b.x, 4294967295u, global0.b.x), min(reverseBits(~vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), ~vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), true);
    let var_1 = Struct_3(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1051f)) - -1370f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(826f, -972f)))), _wgslsmith_add_i32(-func_4(Struct_3(Struct_2(Struct_1(global0.a, global0.b), Struct_1(u_input.a.x, var_0.xy), 1u), Struct_2(Struct_1(u_input.a.x, vec2<u32>(var_0.x, global0.b.x)), Struct_1(global0.a, vec2<u32>(56631u, global0.b.x)), 1u), Struct_2(Struct_1(-2147483647i, global0.b), Struct_1(-1i, vec2<u32>(0u, 59661u)), 28401u), 4294967295u), Struct_1(global0.a, vec2<u32>(8971u, 1u)), Struct_2(Struct_1(-13353i, global0.b), Struct_1(-1i, vec2<u32>(var_0.x, 4294967295u)), 1u), vec4<u32>(0u, 45218u, 45014u, global0.b.x)).a, 10236i)).b, Struct_2(Struct_1(-2147483647i, min(vec2<u32>(0u, 1u) >> (var_0.xy % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(global0.b, global0.b))), func_2(~(~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))), global0.b.x), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1060f, 1421f)))), u_input.a.x).b.a, func_2(~vec4<u32>(var_0.x, var_0.x, global0.b.x, 78388u) << (abs(vec4<u32>(global0.b.x, 74781u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), var_0.x), _wgslsmith_div_u32(251u, abs(var_0.x)));
    let var_2 = ~_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 1i), -u_input.a.zy);
    let var_3 = var_1;
    var_0 = vec4<u32>(global0.b.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(var_1.b.a.b.x, _wgslsmith_div_u32(var_3.c.a.b.x, 47595u))), var_0.x, ~abs(0u)), 90379u, reverseBits(~_wgslsmith_add_u32(var_1.b.b.b.x, 69094u)));
    global0 = Struct_1(var_3.b.a.a, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a.a.b.x, var_0.x), vec2<u32>(_wgslsmith_add_u32(var_0.x, global0.b.x), _wgslsmith_add_u32(var_0.x, global0.b.x))));
    var var_4 = func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(159f, -573f) * vec2<f32>(-1600f, -663f)), vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(-354f * -1125f), 1000f)))), -var_3.b.b.a).b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.c.c, 1u), ~vec2<u32>(global0.b.x, 131812u)) | ~var_0.xy, var_0.yyx, 4294967295u, _wgslsmith_clamp_u32(var_0.x, ~(~1u), 58677u), select(-(-vec4<i32>(0i, var_2.x, 10201i, var_2.x) & min(vec4<i32>(1i, var_2.x, global0.a, -1i), vec4<i32>(2147483647i, 0i, 2147483647i, var_1.b.b.a))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, var_2.x, var_4.b.a, -1i) << (vec4<u32>(1u, global0.b.x, var_4.a.b.x, var_4.c) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, global0.a, var_1.c.b.a, var_2.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_4.b.b.x, 19560u, 0u), vec4<u32>(83018u, 25315u, var_1.d, var_4.b.b.x)) % vec4<u32>(32u))), true));
}

