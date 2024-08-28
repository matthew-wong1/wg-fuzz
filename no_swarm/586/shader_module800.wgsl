struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    let var_0 = vec4<bool>(true, (max(~1u, arg_3.x) == arg_3.x) || (1u == arg_2.c.x), all(select(!select(arg_1.xzz, arg_1.yzz, arg_2.a.x), vec3<bool>(all(vec3<bool>(true, arg_2.d.a.x, arg_1.x)), true, false), arg_2.a.x)), arg_1.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, -247f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2260f, arg_2.b) - vec2<f32>(3345f, arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(arg_2.b + arg_2.b), 1243f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.b, arg_2.b))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1903f, arg_2.b), vec2<f32>(534f, -3401f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(arg_2.b, 418f)), _wgslsmith_f_op_f32(-675f * -1017f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, arg_2.b) + vec2<f32>(arg_2.b, 359f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, -877f)))))), !var_0.xz));
    var var_2 = u_input.c.yww;
    var var_3 = Struct_2(select(!arg_2.d.a, select(arg_1.xzz, vec3<bool>(any(vec3<bool>(false, false, var_0.x)), all(var_0), true), all(vec2<bool>(false, arg_2.d.b.x))), true), 2134f, _wgslsmith_add_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(arg_3, vec3<u32>(u_input.d.x, 4294967295u, 53779u), arg_3)), arg_2.c), Struct_1(select(arg_2.a, select(select(arg_1.zzy, vec3<bool>(true, arg_2.d.a.x, arg_2.d.a.x), arg_2.d.a), arg_2.d.a, !vec3<bool>(arg_1.x, true, arg_1.x)), true), select(vec3<bool>(false, arg_1.x, true), !select(vec3<bool>(arg_2.d.b.x, arg_1.x, false), vec3<bool>(arg_2.d.b.x, true, true), arg_1.x), vec3<bool>(all(arg_2.a), true, var_0.x)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.d.c.x, arg_2.d.c.x, arg_2.d.c.x) >> (u_input.c.wxw % vec3<u32>(32u)), firstTrailingBit(arg_3), reverseBits(vec3<u32>(u_input.d.x, arg_2.d.c.x, 46043u))), _wgslsmith_sub_vec3_u32(arg_2.d.c, arg_2.c))));
    var_2 = _wgslsmith_clamp_vec3_u32(u_input.d ^ vec3<u32>(max(arg_2.d.c.x, var_3.d.c.x), ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, var_3.d.c.x, var_3.c.x, 19568u)), abs(abs(0u))), arg_2.c, var_3.c);
    return _wgslsmith_f_op_f32(var_3.b * arg_2.b);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 12>();
    let var_0 = u_input.b;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
    let var_2 = Struct_2(vec3<bool>(var_1.b.x, false, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1571f * 1485f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(62509i, vec4<bool>(var_1.a.x, var_1.b.x, var_1.a.x, var_1.b.x), Struct_2(var_1.b, -370f, var_1.c, Struct_1(var_1.b, vec3<bool>(var_1.b.x, var_1.a.x, true), vec3<u32>(48468u, var_0, var_1.c.x))), ~vec3<u32>(1477u, 76554u, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1407f)) * _wgslsmith_f_op_f32(step(338f, 616f))))), ~var_1.c, Struct_1(select(var_1.a, var_1.a, var_1.a.x), select(vec3<bool>(false, false, false), !var_1.a, select(var_1.b, select(vec3<bool>(false, true, var_1.a.x), var_1.a, true), var_1.a.x != true)), vec3<u32>(countOneBits(abs(u_input.c.x)), var_0, min(0u, ~var_1.c.x))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(1673f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f - 2184f)) - _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b))))), -921f, _wgslsmith_f_op_f32(f32(-1f) * -744f));
    return Struct_1(!vec3<bool>(false, select(var_1.a.x, true, true), any(!var_1.b)), select(!var_1.b, select(select(select(var_2.a, var_1.a, true), vec3<bool>(var_2.a.x, var_2.d.b.x, var_1.b.x), all(vec4<bool>(var_2.d.a.x, var_1.b.x, var_1.b.x, var_2.a.x))), vec3<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(var_1.b.x, true, true)), !var_2.d.a.x), !var_2.a.x), var_1.b), var_1.c);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.d, u_input.d);
    var_0 = firstTrailingBit((~(vec3<u32>(u_input.c.x, 17997u, 1u) & u_input.c.yyx) & (vec3<u32>(23327u, var_0.x, 59437u) ^ u_input.d)) ^ u_input.d);
    let var_1 = func_2();
    var var_2 = _wgslsmith_mod_vec3_i32(~abs(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -41279i, u_input.e, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.e)), u_input.a.x >> (var_0.x % 32u))), max(~(-vec3<i32>(-1i, u_input.e, u_input.a.x)), min(vec3<i32>(1i, -8349i, _wgslsmith_sub_i32(30562i, 33696i)), -u_input.a)));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1682f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - _wgslsmith_f_op_f32(-275f + -1402f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f * 1742f)), _wgslsmith_f_op_f32(f32(-1f) * -1431f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-160f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-450f, 1034f, 925f))))))));
    return _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(func_3(-2147483647i << (~(~u_input.d.x) % 32u), !(!select(vec4<bool>(var_1.b.x, false, var_1.b.x, true), vec4<bool>(var_1.a.x, true, false, var_1.a.x), vec4<bool>(var_1.b.x, false, var_1.a.x, false))), Struct_2(var_1.b, _wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(-var_3.x)), var_1.c, global0[_wgslsmith_index_u32(var_0.x, 12u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(79358u, 4294967295u, reverseBits(1u)), ~_wgslsmith_mult_vec3_u32(u_input.d, u_input.d), u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = vec4<bool>(var_0 >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0, -1000f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f * -271f) - _wgslsmith_div_f32(549f, var_0))), true, false, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(select(var_0, 1022f, true))))) >= _wgslsmith_f_op_f32(abs(-795f)));
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zy, 30278u);
}

