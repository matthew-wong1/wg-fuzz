struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: u32 = 0u;

var<private> global2: array<i32, 3> = array<i32, 3>(30149i, 1238i, -5899i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(abs(1u), abs(u_input.a)), ~abs(vec2<u32>(u_input.e, 16564u))), firstTrailingBit(abs(vec2<u32>(select(u_input.a, u_input.e, global0.x), ~u_input.e))));
    var var_1 = global0.xz;
    var var_2 = vec2<bool>(_wgslsmith_mod_u32(~u_input.e, 1u) <= u_input.e, var_1.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-693f, 295f, -1539f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(212f, 320f, 854f)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))))));
    var var_4 = -(-u_input.d >> (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 42417u, u_input.e) << (vec4<u32>(u_input.a, u_input.e, 58774u, u_input.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(7547u, u_input.e), u_input.e >> (49684u % 32u), ~95851u, u_input.e)) % vec4<u32>(32u)));
    return var_3.x;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = 0i << (arg_2.x % 32u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1837f, arg_0), arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -1249f)), -1507f), arg_0);
    global0 = vec3<bool>(global0.x || global0.x, global0.x, global0.x);
    let var_2 = select(!vec4<bool>(all(vec3<bool>(false, false, global0.x)), select(true || global0.x, global0.x, global0.x & false), all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true), select(!vec4<bool>(1u == u_input.e, 35984u > arg_1.x, global0.x, !global0.x), vec4<bool>(global0.x, any(vec3<bool>(true, global0.x, global0.x)), all(global0.xx) && true, !(!global0.x)), !(!select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, true, true, false), vec4<bool>(true, global0.x, global0.x, global0.x)))), vec4<bool>(true, any(select(!vec4<bool>(false, false, false, global0.x), select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true)), global0.x, !select(all(vec3<bool>(global0.x, true, global0.x)), false, global0.x | false)));
    global1 = arg_2.x;
    return select(!var_2.wwy, !vec3<bool>(global0.x, all(vec3<bool>(global0.x, false, false)), global0.x), !select(vec3<bool>(true, true, false), vec3<bool>(true, var_2.x, global0.x & false), var_2.ywx));
}

fn func_2() -> f32 {
    global2 = array<i32, 3>();
    let var_0 = select(select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), ~(~vec4<u32>(4294967295u, u_input.e, 1u, 57720u)), ~vec2<u32>(u_input.a, 4294967295u)), !select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(false, true, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), select(!vec3<bool>(global0.x, global0.x, global0.x), select(!vec3<bool>(true, false, global0.x), func_4(-906f, vec4<u32>(4294967295u, 0u, u_input.e, u_input.a), vec2<u32>(46602u, u_input.a)), true), !all(vec3<bool>(global0.x, false, global0.x)))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47719u, 44524u, u_input.a, 51901u), vec4<u32>(4294967295u, 26130u, 0u, 1u)), 3u)] <= global2[_wgslsmith_index_u32(~62493u, 3u)], global0.x, false), vec3<bool>(any(func_4(_wgslsmith_f_op_f32(1123f + -3481f), vec4<u32>(u_input.a, 31369u, 4294967295u, 0u), firstLeadingBit(vec2<u32>(u_input.e, 1u))).zz), global0.x | select(false, true, global2[_wgslsmith_index_u32(u_input.a, 3u)] == u_input.c.x), true));
    let var_1 = vec2<bool>(func_4(-191f, ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.e, 0u), vec4<u32>(20289u, 4294967295u, u_input.a, u_input.a)), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), vec2<u32>(select(abs(u_input.e), _wgslsmith_add_u32(u_input.e, 20921u), any(vec4<bool>(false, true, true, false))), select(u_input.e, u_input.e, true) ^ ~u_input.e)).x, true);
    var var_2 = Struct_1(~abs(-u_input.d.zw), ~_wgslsmith_div_vec4_u32(firstTrailingBit(abs(vec4<u32>(u_input.e, 35185u, 5810u, u_input.e))), firstTrailingBit(vec4<u32>(u_input.e, 1u, 11286u, u_input.e))), u_input.d);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(67630u, 4294967295u), countOneBits(~u_input.a) >> (_wgslsmith_mod_u32(4294967295u, var_2.b.x) % 32u)), 3u)];
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_2 {
    global2 = array<i32, 3>();
    var var_0 = vec3<bool>(23289u != arg_0.x, !global0.x, true);
    var var_1 = !global0.yx;
    var_0 = vec3<bool>(true, !any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 3u)] < u_input.d.x, false, true, !var_0.x)), select(var_1.x, global0.x, false));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1107f)) - -900f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))) * vec2<f32>(1156f, -771f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-740f, 1519f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-248f, -2461f), vec2<f32>(-162f, 211f), global0.xy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1619f, -1000f) + vec2<f32>(-683f, 337f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(217f, 607f) - vec2<f32>(1000f, 1148f))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(953f, -1000f, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -441f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -567f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1471f, var_2.x, var_2.x, 1083f), vec4<f32>(665f, -1382f, var_2.x, 955f)))))))), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(-5897i), i32(-1i) * -1i), _wgslsmith_div_vec2_i32(min(u_input.d.zy, u_input.d.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], 0i), u_input.d.xw)), vec2<i32>(u_input.d.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 95135u), 3u)])), select(vec4<u32>(1u, _wgslsmith_div_u32(u_input.a, u_input.e), u_input.a, ~1u), abs(~vec4<u32>(arg_0.x, 4294967295u, u_input.a, 31589u)), ~u_input.a < u_input.e), u_input.d));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, false);
    let var_1 = arg_1.b.b.yz;
    var var_2 = _wgslsmith_f_op_f32(-func_1(max(vec2<u32>(var_1.x, ~1u), select(var_1 ^ vec2<u32>(u_input.a, arg_0), vec2<u32>(4294967295u, 0u), !global0.yy)), _wgslsmith_add_i32(1i, -11028i)).a.x);
    let var_3 = Struct_1(u_input.c.xx, vec4<u32>(_wgslsmith_div_u32(1u, ~1627u) << (~u_input.a % 32u), 15523u, _wgslsmith_mod_u32(~6119u, 1u), 1u), countOneBits(-u_input.d));
    let var_4 = ~_wgslsmith_add_vec3_u32(arg_1.b.b.ywx, ~abs(vec3<u32>(4294967295u, u_input.e, 1u)));
    return func_1(~_wgslsmith_add_vec2_u32(var_4.xx, ~min(var_4.zx, arg_1.b.b.zz)), func_1(arg_1.b.b.wz, firstTrailingBit(_wgslsmith_sub_i32(14150i, 1i))).b.a.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a ^ ~select(~u_input.a, u_input.a, global0.x), func_1(vec2<u32>(u_input.a, 4294967295u), global2[_wgslsmith_index_u32(u_input.a, 3u)]), min(u_input.a, _wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5545u, 11876u, 4294967295u), vec4<u32>(19559u, 40360u, u_input.a, u_input.a)), ~87360u), _wgslsmith_add_u32(~u_input.e, abs(u_input.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1359f * -476f), -1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1454f - -695f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f * 1000f)), -536f)));
    var var_1 = func_1(~var_0.b.zz, global2[_wgslsmith_index_u32(0u, 3u)]);
    let var_2 = func_1(var_0.b.xw, firstTrailingBit(2147483647i)).b;
    var_1 = Struct_2(vec4<f32>(var_1.a.x, 702f, var_1.a.x, 1099f), var_2);
    var var_3 = 16630u >> (abs(min(~var_2.b.x, countOneBits(6769u)) >> (((0u | var_0.b.x) & ~48306u) % 32u)) % 32u);
    var_0 = var_2;
    let var_4 = vec3<bool>(!global0.x, global0.x, select(true && (_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)) == _wgslsmith_f_op_f32(f32(-1f) * -433f)), global0.x, func_4(-1441f, vec4<u32>(max(11817u, 1u), _wgslsmith_clamp_u32(17535u, var_2.b.x, 0u), ~var_2.b.x, ~u_input.e), reverseBits(_wgslsmith_div_vec2_u32(var_0.b.yx, vec2<u32>(4294967295u, 100652u)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.yzw, ~4294967295u, var_1.a.x, var_1.b.b.zw, u_input.d);
}

