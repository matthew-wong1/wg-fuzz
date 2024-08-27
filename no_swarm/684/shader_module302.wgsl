struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 24> = array<bool, 24>(true, false, false, true, true, true, true, false, false, true, false, true, true, false, true, false, false, false, true, true, true, false, false, true);

var<private> global3: i32;

var<private> global4: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(1000f, 463f), vec2<f32>(1361f, -237f), vec2<f32>(514f, -1752f), vec2<f32>(353f, 895f), vec2<f32>(1742f, 1693f), vec2<f32>(782f, 320f), vec2<f32>(2683f, 627f), vec2<f32>(1000f, -146f), vec2<f32>(123f, -172f), vec2<f32>(-467f, 795f), vec2<f32>(-955f, 709f), vec2<f32>(-707f, 664f), vec2<f32>(1015f, -1017f), vec2<f32>(-1069f, 1534f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = u_input.d.x;
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -2466f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(46837u, 13u)])), _wgslsmith_f_op_f32(global1.x - 1000f))), global1.x));
    let var_2 = vec2<i32>(u_input.c, -u_input.b.x);
    let var_3 = reverseBits(u_input.b);
    global4 = array<vec2<f32>, 14>();
    return var_1.a.zx;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = firstLeadingBit(vec3<u32>(u_input.a, u_input.a, max(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), 4294967295u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 13u)] * global1.x)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -196f))), reverseBits(max(-3121i << (0u % 32u), ~(-18149i))), var_0.x, vec2<bool>(global2[_wgslsmith_index_u32(~select(1u, 15256u, false), 24u)], min(var_0.x, 5461u) <= 4294967295u), global2[_wgslsmith_index_u32(79966u, 24u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(82298u))), max(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, arg_0), 1i), _wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(73226i, arg_0, 1i, 2147483647i), u_input.d))), var_0.x, !vec2<bool>(false, any(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 24u)], global2[_wgslsmith_index_u32(64257u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]))), global2[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(var_0.x, 32588u, var_0.x), 18393u), 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_div_i32(_wgslsmith_sub_i32(max(-2263i, -arg_0), u_input.c), min(-_wgslsmith_div_i32(u_input.b.x, arg_0), ~(-u_input.b.x))), true);
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    global3 = min(0i, abs(u_input.d.x));
    var var_0 = func_2(_wgslsmith_mod_i32(-u_input.d.x & firstTrailingBit(-12738i), -_wgslsmith_sub_i32(~8001i, -25917i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 13u)], 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1110f, global1.x, global0[_wgslsmith_index_u32(u_input.a, 13u)]) - vec3<f32>(-384f, 171f, global0[_wgslsmith_index_u32(u_input.a, 13u)])))) * vec3<f32>(-1825f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a), 13u)]), global1.x)));
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(271f, 423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c))) - _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, 148f, -1310f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, global1.x, 922f) * vec3<f32>(global1.x, global1.x, 1313f)))));
    var var_1 = vec4<i32>(abs(func_2(1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global1.x, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<f32>(1397f, 608f, var_0.c)))).a.b), -30669i, -2147483647i, ~countOneBits(u_input.d.x));
    let var_2 = true;
    return select(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1442f) >= _wgslsmith_f_op_f32(trunc(1848f)), any(select(vec3<bool>(true, global2[_wgslsmith_index_u32(275u, 24u)], true), vec3<bool>(true, false, arg_0.x), arg_0.x)), all(arg_0) & var_2), vec3<bool>(!(_wgslsmith_f_op_f32(-769f - var_0.a.a.x) >= global0[_wgslsmith_index_u32(firstTrailingBit(var_0.a.c), 13u)]), any(!select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(40178u, 24u)]), vec3<bool>(false, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(27566u, 24u)], true))), var_0.b.c == select(~u_input.a, 0u & u_input.a, var_0.a.c < 0u)), select(var_2, !(max(var_1.x, 7393i) < var_1.x), _wgslsmith_f_op_f32(trunc(global1.x)) != _wgslsmith_f_op_f32(776f * var_0.b.a.x)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = u_input.a;
    var var_1 = func_2(1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], -735f, global0[_wgslsmith_index_u32(35013u, 13u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0, 13u)], -532f, global0[_wgslsmith_index_u32(u_input.a, 13u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1224f, -2382f, 1069f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 274f, global1.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 13u)], global0[_wgslsmith_index_u32(var_0, 13u)], -596f), vec3<f32>(global1.x, 452f, 1030f))), vec3<bool>(false, true, arg_0.x))))))).b;
    global4 = array<vec2<f32>, 14>();
    let var_2 = !select(vec2<bool>(1i != var_1.b, false), func_2(-2147483647i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1040f, global1.x, var_1.a.x))))).b.d, var_1.d);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + func_2(1i, vec3<f32>(-1416f, -160f, -575f)).a.a.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0, 13u)], global0[_wgslsmith_index_u32(~var_0, 13u)])), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 13u)], -269f), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), var_2.x))))));
    return Struct_3(var_1.c, global4[_wgslsmith_index_u32(func_2(70576i, vec3<f32>(global0[_wgslsmith_index_u32(var_0, 13u)], func_2(~0i, vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], var_3, var_3)).a.a.x, var_3)).a.c, 14u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(134f, -1400f, var_1.a.x, global1.x), vec4<f32>(-1607f, 459f, -145f, 1877f)))))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(select(func_1(vec2<bool>(global2[_wgslsmith_index_u32(24864u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])), vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 24u)], false, true)), global2[_wgslsmith_index_u32(4294967295u, 24u)] || global2[_wgslsmith_index_u32(u_input.a, 24u)], all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], true))), (23556u == u_input.a) & global2[_wgslsmith_index_u32(75807u, 24u)]), vec3<bool>(false, true, true), !(!func_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(35836u, 24u)])))));
    let var_1 = _wgslsmith_mod_i32(u_input.d.x, ~(countOneBits(u_input.c) << ((0u << (abs(var_0.a) % 32u)) % 32u)));
    global0 = array<f32, 13>();
    var var_2 = -216f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(firstTrailingBit(~(vec2<u32>(1u, 0u) | vec2<u32>(u_input.a, 16369u))), vec2<u32>(~60704u, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(116472u, 13u)]) - _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)) * _wgslsmith_f_op_f32(floor(1274f))), 4294967295u, max(~(vec2<u32>(4294967295u, var_0.a) | _wgslsmith_add_vec2_u32(vec2<u32>(11316u, u_input.a), vec2<u32>(0u, u_input.a))), _wgslsmith_add_vec2_u32(vec2<u32>(13190u, 4175u), vec2<u32>(u_input.a, 52230u)) << (~vec2<u32>(55407u, u_input.a) % vec2<u32>(32u))), u_input.b.x);
}

