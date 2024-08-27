struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> f32 {
    let var_0 = global1.b.d.a;
    var var_1 = Struct_3(all(!vec4<bool>(!global1.a, !global1.a, global1.a, global1.a)), global1.b, global1.b.d);
    let var_2 = Struct_3(false, var_1.b, global1.b.d);
    var var_3 = global1.c;
    global1 = var_2;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.c.x * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1076f)) - _wgslsmith_f_op_f32(max(270f, -774f)))))));
}

fn func_3(arg_0: u32) -> i32 {
    global1 = Struct_3(any(select(select(select(vec3<bool>(true, false, global1.a), vec3<bool>(global1.a, false, global1.a), true), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, false, global1.a), vec3<bool>(false, global1.a, false)), !vec3<bool>(global1.a, global1.a, false)), select(vec3<bool>(global1.a, global1.a, false), !vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, global1.a, global1.a)), select(vec3<bool>(global1.a, global1.a, false), select(vec3<bool>(true, global1.a, global1.a), vec3<bool>(global1.a, true, false), global1.a), global1.a & global1.a))), Struct_2(vec3<i32>(-1i) * -(~global1.b.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.d.e.x, global1.c.e.x)) * global0.wx))), _wgslsmith_div_i32(-2147483647i, -global1.b.a.x), Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), ~global1.b.d.a), -17469i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.b.x, -307f, global0.x), global1.c.c, true)))), reverseBits(vec2<i32>(global1.b.c, 48817i) | vec2<i32>(global1.b.d.b, global1.b.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.b.d.e.x, -543f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, -344f))))), global1.b.d);
    let var_0 = global1.a;
    var var_1 = ~max(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, 42766u, arg_0), vec4<u32>(1u, u_input.a, arg_0, global1.b.d.a.x)) | ~global1.b.d.a.x, _wgslsmith_sub_u32(1u, 0u)), vec2<u32>(1u, ~global1.b.d.a.x));
    var var_2 = Struct_3(global1.a, global1.b, Struct_1(max(vec3<u32>(8848u, 1u, arg_0 & u_input.a), abs(vec3<u32>(var_1.x, global1.c.a.x, arg_0))), global1.b.d.b ^ global1.b.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.d.c))), ~global1.c.d, vec2<f32>(1537f, -792f)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, 888f, -1000f, 796f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.c.e.x - -373f), 491f, _wgslsmith_f_op_f32(floor(global1.b.b.x)), _wgslsmith_f_op_f32(trunc(global0.x))))));
    return var_2.b.d.b;
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1000f, 372f)), _wgslsmith_f_op_f32(-230f + 1000f), _wgslsmith_f_op_f32(func_2()), global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.e.x, global1.c.e.x, global1.c.c.x, -1000f) * vec4<f32>(global1.b.b.x, 685f, -1331f, 1348f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 806f, 1620f, global1.b.d.e.x), vec4<f32>(-2242f, 285f, global1.b.d.c.x, 235f)))))));
    var var_1 = Struct_3(true, Struct_2(_wgslsmith_add_vec3_i32(-(vec3<i32>(global1.b.c, 3956i, 0i) ^ vec3<i32>(50590i, global1.b.a.x, global1.c.b)), vec3<i32>(8064i, ~global1.c.d.x, -1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -175f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, -644f))), -global1.b.a.x, Struct_1(vec3<u32>(~u_input.a, 43787u, abs(var_0)), -2147483647i, _wgslsmith_f_op_vec3_f32(global0.xzw - _wgslsmith_f_op_vec3_f32(max(global1.c.c, global1.b.d.c))), vec2<i32>(global1.c.d.x, func_3(var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, 1062f), global1.c.e))))), Struct_1(global1.c.a, -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c.b, global1.b.a.x, 0i, -2147483647i), vec4<i32>(global1.c.b, -2147483647i, global1.c.b, -2147483647i), vec4<i32>(global1.b.c, global1.b.d.b, global1.c.d.x, 110693i)), reverseBits(vec4<i32>(-2147483647i, 10574i, global1.b.d.b, global1.c.d.x))), vec3<f32>(_wgslsmith_f_op_f32(min(-1381f, _wgslsmith_f_op_f32(abs(global1.b.b.x)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.d.c.x - global0.x))), global1.c.d, vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), global1.b.d.e.x)));
    global1 = Struct_3(global1.a, Struct_2(-var_1.b.a, global1.b.b, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.c.d.x, global1.c.d.x) << (vec3<u32>(u_input.a, var_0, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-1i, -48011i, global1.c.b))), Struct_1(var_1.b.d.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global1.b.a, global1.b.a), -global1.b.a), _wgslsmith_f_op_vec3_f32(global0.xzw + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1684f, var_1.b.d.e.x, var_1.c.e.x) * var_1.c.c)), ~global1.b.d.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.wz))))), var_1.c);
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b.d.c.x, 981f)), _wgslsmith_f_op_f32(1074f + 149f), global1.b.d.e.x, -557f)))));
    return Struct_1(vec3<u32>(1u, ~var_0, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.c.a.xy, vec2<u32>(48253u, var_0)), vec2<u32>(20220u, u_input.a))), func_3(u_input.a), global0.zxx, _wgslsmith_div_vec2_i32(vec2<i32>(1i, -global1.b.a.x), -vec2<i32>(-2147483647i, _wgslsmith_div_i32(global1.b.c, var_1.b.c))), vec2<f32>(_wgslsmith_f_op_f32(-global1.b.d.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b.x + 1373f) * _wgslsmith_f_op_f32(f32(-1f) * -902f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_3(all(!select(vec4<bool>(global1.a, global1.a, global1.a, false), select(vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(global1.a, true, false, true), vec4<bool>(global1.a, global1.a, true, global1.a)), false & global1.a)), Struct_2(vec3<i32>(func_1().d.x, -1i, _wgslsmith_mult_i32(global1.b.a.x, firstLeadingBit(arg_0.d.x))), global0.ww, countOneBits(select(_wgslsmith_mult_i32(1i, global1.b.d.d.x), -arg_0.b, arg_0.c.x <= 290f)), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, arg_0.a.x), global1.c.a), 25408i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, global1.c.e.x), global1.b.d.c)), vec2<i32>(6686i, -1i) ^ arg_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-345f, arg_1) + _wgslsmith_f_op_vec2_f32(arg_0.c.zz * vec2<f32>(arg_1, 1000f))))), arg_0);
    let var_1 = false;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(step(1186f, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-861f)) * _wgslsmith_f_op_f32(arg_1 * -1753f))))), -1563f, 1000f, 198f);
    var var_2 = Struct_2(~reverseBits(min(~vec3<i32>(0i, var_0.c.d.x, 6270i), vec3<i32>(2147483647i, 0i, arg_0.d.x))), _wgslsmith_f_op_vec2_f32(exp2(arg_0.e)), ~global1.c.d.x, var_0.c);
    global1 = Struct_3(select(true, !(!(var_0.a & false)), select(!(-15303i < var_0.b.d.d.x), all(vec4<bool>(true, false, var_0.a, false)) | any(vec2<bool>(var_0.a, true)), !(!global1.a))), global1.b, Struct_1(_wgslsmith_clamp_vec3_u32(~var_0.c.a, arg_0.a, _wgslsmith_div_vec3_u32(~global1.b.d.a, vec3<u32>(var_0.c.a.x, 0u, 25472u) & global1.b.d.a)), _wgslsmith_mult_i32(arg_0.d.x, firstTrailingBit(~0i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.c.x)), 1000f, _wgslsmith_f_op_f32(ceil(var_0.c.e.x))), firstTrailingBit(global1.c.d), _wgslsmith_f_op_vec2_f32(-global1.c.c.zx)));
    return Struct_1(var_0.b.d.a & ~firstLeadingBit(~global1.b.d.a), -countOneBits(_wgslsmith_mult_i32(var_0.c.b, 38201i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1501f, 130f) - _wgslsmith_f_op_f32(min(-652f, arg_1))), 1000f))), countOneBits(reverseBits(_wgslsmith_mult_vec2_i32(var_0.b.d.d, var_2.a.zz))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 751f) * -238f))), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~min(_wgslsmith_mult_vec4_u32(vec4<u32>(78950u, 4294967295u, global1.b.d.a.x, global1.c.a.x), vec4<u32>(u_input.a, u_input.a, global1.c.a.x, global1.c.a.x)), vec4<u32>(u_input.a, 38543u, u_input.a, 0u) ^ vec4<u32>(global1.b.d.a.x, 17865u, u_input.a, u_input.a)), countOneBits(~vec4<u32>(9426u, global1.c.a.x, 0u, 1u) << (~vec4<u32>(u_input.a, global1.c.a.x, 21419u, 0u) % vec4<u32>(32u))), select(vec4<bool>(1627f < global1.b.d.e.x, global1.a, any(vec3<bool>(true, true, global1.a)), !global1.a), vec4<bool>(true, global1.a, true, global1.a), global1.a)) >> (firstTrailingBit(reverseBits(~vec4<u32>(4294967295u, 4294967295u, 110260u, global1.c.a.x))) % vec4<u32>(32u));
    let var_1 = global1.a;
    var_0 = vec4<u32>(var_0.x, 35511u, ~(~global1.c.a.x), global1.b.d.a.x);
    var var_2 = Struct_3(!(!all(!vec4<bool>(true, false, global1.a, false))), Struct_2(global1.b.a, vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x), min(global1.c.d.x, 1i), func_4(func_1(), global0.x)), func_1());
    var_2 = Struct_3(true, Struct_2(vec3<i32>(func_3(4294967295u), abs(global1.c.d.x) & global1.b.a.x, (var_2.c.b >> (73641u % 32u)) ^ (global1.b.a.x >> (var_2.c.a.x % 32u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(global1.c.c.yy)))), _wgslsmith_mod_i32(~abs(var_2.c.d.x), -1i & _wgslsmith_mod_i32(76855i, global1.b.a.x)), global1.c), Struct_1(_wgslsmith_add_vec3_u32(var_2.c.a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(30990u, 51533u, u_input.a), var_0.wzz)), ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-51626i, global1.c.b, var_2.b.c)), select(vec3<i32>(52043i, var_2.c.d.x, global1.b.d.d.x), vec3<i32>(var_2.b.d.b, 1i, var_2.b.d.d.x), vec3<bool>(true, var_2.a, global1.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.c + global1.b.d.c) - vec3<f32>(var_2.b.d.e.x, global0.x, global1.b.d.e.x)))), func_1().d, vec2<f32>(_wgslsmith_f_op_f32(411f - _wgslsmith_div_f32(global1.c.c.x, 1000f)), _wgslsmith_f_op_f32(-829f + 209f))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1337f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global1.c.c.x, var_2.c.e.x), _wgslsmith_f_op_f32(945f + global0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.c.e.x, global1.b.d.c.x, var_2.c.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-789f, 873f, global1.b.d.c.x, global1.b.b.x) - vec4<f32>(global0.x, var_2.b.d.e.x, 550f, -1034f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -687f, 1000f, 1635f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.c.x, global0.x)));
}

