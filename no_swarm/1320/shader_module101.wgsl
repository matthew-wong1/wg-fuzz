struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(2147483647i, 1i, 0i, -25282i));

var<private> global1: vec4<u32> = vec4<u32>(67595u, 2724u, 22574u, 4294967295u);

var<private> global2: vec4<i32> = vec4<i32>(0i, 1i, 2147483647i, -1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, global2.x), -u_input.a.x), firstLeadingBit(-1i)) ^ arg_1.x, _wgslsmith_clamp_i32(arg_1.x, global2.x, arg_1.x), _wgslsmith_mod_i32(0i | arg_1.x, -21164i));
    var var_1 = Struct_1(-_wgslsmith_mult_i32(~var_0.x, -u_input.a.x) <= 0i, ~abs(countOneBits(vec4<u32>(global1.x, global1.x, global1.x, 0u)) | vec4<u32>(global1.x, 4294967295u, 1u, global1.x)));
    var var_2 = reverseBits(select(var_0.x, global2.x, !all(select(arg_0.zx, arg_0.yy, arg_0.wy))));
    let var_3 = Struct_1(arg_0.x, var_1.b);
    var var_4 = Struct_1((arg_0.x & false) || true, _wgslsmith_add_vec4_u32(firstLeadingBit(~(~var_1.b)), vec4<u32>(global1.x, global1.x, var_3.b.x, 36799u)));
    return 40503u;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(false, vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, global1.x)), select(~vec2<u32>(18600u, global1.x), ~global1.ww, true)), global1.x, (abs(23106u) << (global1.x % 32u)) & _wgslsmith_sub_u32(4294967295u, global1.x), ~func_3(vec4<bool>(true, true, true, true), firstLeadingBit(global2.wyy))));
    var var_1 = select(vec2<u32>(8234u, ~max(74282u, 4294967295u)) >> (var_0.b.wz % vec2<u32>(32u)), ~firstLeadingBit(firstLeadingBit(~vec2<u32>(global1.x, 12298u))), var_0.a);
    let var_2 = Struct_1(true, var_0.b);
    var var_3 = select(!(!vec3<bool>(all(vec4<bool>(true, var_0.a, var_0.a, var_2.a)), var_2.a, var_0.a & var_0.a)), select(select(vec3<bool>(false, false, false), !(!vec3<bool>(var_0.a, var_0.a, true)), vec3<bool>(false, var_2.a, var_2.a && false)), vec3<bool>(var_1.x == global1.x, var_2.a, false), vec3<bool>(true, _wgslsmith_f_op_f32(select(-1424f, -419f, var_0.a)) >= _wgslsmith_f_op_f32(sign(-1000f)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, var_2.a, true), var_0.a)))), select(vec3<bool>(!select(var_0.a, var_0.a, true), !any(vec3<bool>(var_2.a, true, false)), false), !select(select(vec3<bool>(true, var_2.a, false), vec3<bool>(var_0.a, var_0.a, var_2.a), true), !vec3<bool>(var_0.a, var_0.a, false), !vec3<bool>(true, var_2.a, var_0.a)), !any(!vec3<bool>(var_0.a, var_0.a, var_2.a))));
    var_3 = !vec3<bool>(false, var_0.a, true);
    return vec3<bool>(!var_0.a, var_0.a, ~(~4294967295u) != _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b.x, firstLeadingBit(0u)), 21857u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_u32(1u, global1.x);
    var var_1 = arg_0;
    let var_2 = func_2().x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) * -630f);
    let var_4 = min(_wgslsmith_mod_vec4_u32(vec4<u32>(1u ^ ~global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_1.b.x, 39623u, global1.x), ~var_1.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 0u), vec2<u32>(0u, global1.x)), min(53096u, 13617u)), ~1u), var_1.b), arg_0.b);
    return arg_0;
}

fn func_1() -> vec2<f32> {
    let var_0 = -175f;
    global0 = array<vec4<i32>, 1>();
    global0 = array<vec4<i32>, 1>();
    let var_1 = func_4(Struct_1(false, firstLeadingBit(~(vec4<u32>(1u, 12182u, global1.x, 0u) ^ vec4<u32>(global1.x, 1u, 0u, global1.x)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), func_2())), firstTrailingBit((vec2<i32>(u_input.a.x, -1i) << (global1.wx % vec2<u32>(32u))) >> ((~vec2<u32>(63184u, 82929u) & vec2<u32>(75373u, global1.x)) % vec2<u32>(32u))));
    global2 = vec4<i32>(u_input.a.x, select(1i, -u_input.a.x, true), 39079i & _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-15243i, ~global2.x), -29130i), ~_wgslsmith_div_i32(i32(-1i) * -17331i, u_input.a.x | (-11788i & u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-338f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * 225f), var_0, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, !any(vec4<bool>(false, true, false, true)), false && (global1.x <= 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    var var_2 = vec4<bool>((((global1.x & global1.x) << (~4294967295u % 32u)) <= ~global1.x) & (45561i >= -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), func_2().x, false, false);
    var var_3 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -222f))))), _wgslsmith_f_op_f32(108f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), var_1.x);
    var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -868f, _wgslsmith_f_op_f32(204f - var_3.x), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1593f, var_3.x, -398f, var_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-870f, -536f, var_1.x, var_1.x) * vec4<f32>(var_3.x, var_1.x, 308f, var_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_3.x, var_1.x, var_1.x), vec4<f32>(var_3.x, var_1.x, var_1.x, -515f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-686f, var_3.x, -1508f, 791f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_3.x, var_3.x, var_3.x), vec4<f32>(var_3.x, var_3.x, -1319f, var_1.x), vec4<bool>(true, var_2.x, var_0, var_2.x)))))))));
    global1 = firstLeadingBit(vec4<u32>(50853u, 4294967295u, select(0u, global1.x ^ global1.x, var_2.x), ~global1.x | (global1.x & 4294967295u)) << (abs(vec4<u32>(39247u, global1.x, 0u, global1.x) ^ reverseBits(vec4<u32>(4294967295u, 4294967295u, 114621u, 0u))) % vec4<u32>(32u)));
    var var_4 = global1.x;
    var var_5 = Struct_1(all(var_2.yzz), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, 25726u, global1.x, 4294967295u), vec4<u32>(1u, global1.x, 4294967295u, global1.x)), abs(vec4<u32>(global1.x, 0u, 4294967295u, global1.x))));
    let var_6 = !select(true, var_0, !var_2.x || true) | (all(!select(vec4<bool>(true, var_5.a, true, false), vec4<bool>(var_0, var_5.a, false, false), false)) && var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

