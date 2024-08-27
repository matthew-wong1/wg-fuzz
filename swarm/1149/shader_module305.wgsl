struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = -u_input.a.x;
    let var_1 = Struct_1(120821u);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-641f, 237f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-122f, 285f))) * _wgslsmith_f_op_f32(ceil(285f))), 1f, 978f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, -1671f, 1489f, -776f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-766f, -1873f, -618f, -1000f) + vec4<f32>(365f, 331f, 585f, -177f)))), vec4<f32>(-492f, -1847f, _wgslsmith_f_op_f32(f32(-1f) * -675f), 297f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2224f, 455f, 334f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2.x))))), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f))), !(!(_wgslsmith_sub_u32(u_input.c.x, 93853u) < firstLeadingBit(var_1.a)))));
    var var_3 = var_2.zx;
    return 0u;
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(all(vec2<bool>(u_input.a.x >= _wgslsmith_dot_vec3_i32(u_input.a.zwz, u_input.a.zyz), true)), false);
    var var_1 = _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(u_input.a.x, 1i, 1i) >> (~(~(~38063u)) % 32u), 40756i);
    var var_2 = func_3();
    let var_3 = vec2<u32>(u_input.c.x, abs(~(~u_input.b)));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(414f, 108f))) * 228f), Struct_2(all(!(!vec4<bool>(var_0.x, false, false, var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1062f - 370f)))), Struct_1(u_input.b), _wgslsmith_mod_u32(var_3.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, u_input.b), var_3))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-195f * -669f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2596f, 1000f) - vec2<f32>(977f, -1073f))))), !(!vec4<bool>(!var_0.x, var_0.x & var_0.x, any(vec2<bool>(var_0.x, var_0.x)), true)), vec3<i32>(u_input.a.x, -8791i, max(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x)));
    return var_4.b.d;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = any(select(select(select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, true), false), select(vec2<bool>(arg_1.x, false), arg_1, any(arg_1)), any(arg_1)), select(select(arg_1, select(vec2<bool>(arg_3.a, arg_3.a), arg_1, arg_1), vec2<bool>(false, false)), arg_1, u_input.c.x < arg_3.d), any(!select(vec4<bool>(arg_3.a, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_3.a, true, arg_3.a), false))));
    var var_1 = Struct_1(arg_3.c.a);
    var_1 = arg_3.c;
    var var_2 = _wgslsmith_mult_u32(arg_3.c.a & var_1.a, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.a, 24836u, 4883u) | _wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(0u, arg_3.d)), ~var_1.a));
    let var_3 = arg_3.a;
    return Struct_3(arg_3.b, Struct_2(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_3.b)))) - 325f), Struct_1(~4294967295u), ~_wgslsmith_mult_u32(1u, 35796u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_3.b)))), arg_3.b), !select(vec4<bool>(all(vec3<bool>(false, arg_3.a, var_0)), select(true, false, true), all(vec3<bool>(false, true, var_0)), !var_0), !select(vec4<bool>(var_3, arg_3.a, true, arg_3.a), vec4<bool>(var_0, true, false, true), vec4<bool>(true, var_3, var_0, var_0)), false), ~(vec3<i32>(-1i) * -arg_0));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a.x;
    var var_1 = func_4((_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.a.wzz), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)) >> (vec3<u32>(select(u_input.b, u_input.b, true), ~4294967295u, u_input.b) % vec3<u32>(32u))) << (~u_input.c.zxz % vec3<u32>(32u)), vec2<bool>(false, false && all(vec2<bool>(true, true))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.a.x | u_input.a.x, max(firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(-1i, u_input.a.x))), -_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.a.x) << (func_2() % 32u)), Struct_2(true, _wgslsmith_div_f32(612f, _wgslsmith_f_op_f32(select(-2205f, _wgslsmith_f_op_f32(1000f + 1234f), any(vec2<bool>(false, false))))), Struct_1(4294967295u), _wgslsmith_sub_u32(~9991u, ~55022u) << (((u_input.c.x & u_input.b) & u_input.c.x) % 32u)));
    let var_2 = any(func_4(~(~(-u_input.a.zzx)), vec2<bool>(all(vec2<bool>(true, true)), all(select(var_1.d.zw, vec2<bool>(var_1.b.a, false), var_1.d.x))), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), func_4(_wgslsmith_clamp_vec3_i32(u_input.a.wxw, ~u_input.a.yxx, var_1.e), select(vec2<bool>(true, var_1.b.a), var_1.d.zy, !var_1.d.xw), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) | ~1i, Struct_2(var_1.d.x, 186f, var_1.b.c, 63207u)).b).d.xz);
    var var_3 = Struct_2(!(!func_4(_wgslsmith_add_vec3_i32(vec3<i32>(36363i, 12165i, u_input.a.x), vec3<i32>(336i, u_input.a.x, u_input.a.x)), var_1.d.zy, ~(-50509i), func_4(vec3<i32>(0i, 11156i, var_1.e.x), vec2<bool>(false, var_1.d.x), 1i, var_1.b).b).b.a), _wgslsmith_f_op_f32(691f + var_1.b.b), var_1.b.c, 12543u);
    let var_4 = var_1.b;
    return Struct_3(_wgslsmith_f_op_f32(round(func_4(firstLeadingBit(-u_input.a.zzx), var_1.d.zy, _wgslsmith_div_i32(func_4(var_1.e, vec2<bool>(var_4.a, var_3.a), -60160i, var_1.b).e.x, u_input.a.x), func_4(u_input.a.wxw >> (u_input.c.xww % vec3<u32>(32u)), !vec2<bool>(var_3.a, false), max(var_1.e.x, -14200i), var_1.b).b).a)), func_4(var_1.e, select(vec2<bool>(var_1.b.a, !var_1.b.a), select(func_4(vec3<i32>(var_1.e.x, var_1.e.x, -1i), var_1.d.yw, u_input.a.x, Struct_2(false, var_1.c.x, var_3.c, 47321u)).d.xx, var_1.d.wy, var_3.a), true | func_4(vec3<i32>(var_1.e.x, 18410i, -4860i), vec2<bool>(true, var_2), -1i, Struct_2(true, -685f, var_4.c, 40861u)).b.a), u_input.a.x, func_4(var_1.e, !var_1.d.xy, -_wgslsmith_sub_i32(var_1.e.x, var_1.e.x), func_4(_wgslsmith_sub_vec3_i32(var_1.e, var_1.e), vec2<bool>(true, true), countOneBits(1803i), var_1.b).b).b).b, _wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_mult_vec3_i32(countOneBits(var_1.e), vec3<i32>(1i, 22670i, -35923i)), vec2<bool>(false, !var_3.a), countOneBits(_wgslsmith_sub_i32(46609i, 47060i)), func_4(_wgslsmith_add_vec3_i32(var_1.e, vec3<i32>(u_input.a.x, var_1.e.x, 2147483647i)), func_4(u_input.a.zwx, var_1.d.zw, u_input.a.x, var_1.b).d.yx, -46912i, var_1.b).b).c), var_1.d, vec3<i32>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.e.x, 74495i), u_input.a.zw)), countOneBits(-u_input.a.yz)), u_input.a.x, min(~(var_1.e.x >> (var_4.d % 32u)), var_1.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_1 = u_input.c.zx;
    let var_2 = func_1();
    var_1 = u_input.c.xz;
    let var_3 = any(!var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_2.e.xx, abs(abs(var_2.e.yx))), u_input.c.zy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-func_1().a))), var_2.e);
}

