struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(3575u, 4294967295u);

var<private> global1: Struct_5;

var<private> global2: f32;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = select(_wgslsmith_mult_vec2_u32(vec2<u32>(~select(global3.c.e, 0u, false), firstTrailingBit(global1.a)), abs(_wgslsmith_mult_vec2_u32(arg_0.c.yw, max(vec2<u32>(global0.x, global3.b.e), vec2<u32>(38632u, 4294967295u))))), global1.c.zx, global3.b.a.x);
    global2 = 1000f;
    let var_1 = !select(select(global3.c.c, global3.c.a.xw, !select(global3.c.c, global3.b.c, true)), vec2<bool>(false, all(global3.b.a) || (arg_0.b.b != global1.b.b)), !global3.c.c.x);
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b.b, -1068f))), _wgslsmith_f_op_vec2_f32(-global3.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-191f)), _wgslsmith_f_op_f32(sign(global1.b.b))))), global3.b, Struct_1(select(global3.c.a, !(!global3.b.a), arg_0.c.x > 4294967295u), global3.b.b, !vec2<bool>(global3.b.c.x, all(global3.c.a.zzy)), global3.b.d, _wgslsmith_add_u32(57605u, global3.b.e)));
    let var_3 = var_2.b.b.xx;
    return select(vec4<bool>(true, !(var_0.x > global3.b.e), true, any(!vec4<bool>(false, true, false, var_1.x))), !select(vec4<bool>(var_1.x, global3.b.a.x, all(var_2.c.a.ywy), true), !global3.b.a, var_2.c.a), !vec4<bool>(global3.c.c.x, all(vec2<bool>(true, true)), var_1.x, !var_1.x));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    var var_0 = !all(func_3(Struct_5(13141u, Struct_3(global1.b.a, -451f), global1.c << (u_input.b % vec4<u32>(32u)))));
    global0 = vec2<u32>(29710u, ~(~(4805u ^ ~global0.x)));
    global3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.b), -1436f), global3.c, global3.c);
    global0 = global1.c.wz >> (u_input.b.xz % vec2<u32>(32u));
    global1 = Struct_5(global0.x, Struct_3(vec3<i32>(global3.c.d.x, global3.c.d.x, u_input.d.x | firstTrailingBit(0i)), 1342f), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(7494u), global0.x, 1u, ~global3.c.e) >> (countOneBits(min(vec4<u32>(1u, global0.x, arg_0.b.x, 0u), arg_0.b)) % vec4<u32>(32u)), global1.c));
    return Struct_3(u_input.d.xwy, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(round(global1.b.b))) - -1120f)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global3.b;
    let var_1 = reverseBits(~(~1u));
    global2 = -181f;
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(1268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.b.x, arg_0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1090f))))), arg_2, Struct_1(select(global3.b.a, arg_2.a, !select(true, false, false)), vec3<f32>(_wgslsmith_f_op_f32(-946f + _wgslsmith_f_op_f32(round(arg_2.b.x))), _wgslsmith_f_op_f32(abs(-470f)), func_2(Struct_4(vec2<bool>(false, arg_2.a.x), vec4<u32>(80073u, global1.a, 0u, 0u), arg_2.b.x, vec3<i32>(17117i, -22751i, -15161i))).b), var_0.c, -vec2<i32>(arg_2.d.x, global1.b.a.x & -10105i), ~var_1));
    var var_3 = reverseBits(firstLeadingBit(arg_0.a.x));
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    global0 = abs(firstTrailingBit(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), select(_wgslsmith_clamp_vec2_u32(global1.c.ww, global1.c.xy, vec2<u32>(u_input.c, global3.c.e)), u_input.b.xy, arg_1.a.x))));
    var var_0 = arg_1.a.x;
    let var_1 = !func_4(func_2(Struct_4(vec2<bool>(false, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.c.x, global0.x, 4294967295u), vec4<u32>(u_input.b.x, global0.x, global3.b.e, u_input.e), global1.c), _wgslsmith_f_op_f32(sign(1000f)), firstTrailingBit(global1.b.a))), min(1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.d), vec4<i32>(2147483647i, -14908i, arg_1.d.x, 0i))), global3.c, _wgslsmith_div_vec2_i32(arg_1.d, reverseBits(firstTrailingBit(vec2<i32>(46101i, global3.b.d.x))))).a.yx;
    let var_2 = Struct_5(~1u, global1.b, _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(arg_1.e, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.c), abs(vec2<u32>(global0.x, 364u))), _wgslsmith_add_u32(0u, 1u), 40160u)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_4(global3.c.c, vec4<u32>(72246u, u_input.c, 0u, global3.b.e), global1.b.b, u_input.d.zzz)).b * _wgslsmith_f_op_f32(-global3.b.b.x)))), 643f, ~arg_1.d.x < 1i))));
    return Struct_3(global1.b.a, _wgslsmith_f_op_f32(518f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3))))));
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    global0 = firstLeadingBit(vec2<u32>(39351u, global3.b.e)) << ((vec2<u32>(func_4(func_2(Struct_4(vec2<bool>(true, global3.c.a.x), vec4<u32>(10675u, global3.b.e, 49075u, global0.x), -1954f, arg_0.a)), u_input.a.x, func_4(global1.b, 0i, Struct_1(vec4<bool>(global3.c.c.x, global3.b.c.x, global3.c.a.x, global3.b.a.x), global3.b.b, vec2<bool>(global3.b.a.x, global3.c.a.x), vec2<i32>(global1.b.a.x, -42415i), global0.x), global3.b.d), vec2<i32>(global1.b.a.x, -1i)).e, select(u_input.b.x, abs(57025u), true)) >> (vec2<u32>(~(~u_input.c), global0.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_0 = u_input.b.x;
    let var_1 = Struct_4(global3.c.a.wz, global1.c, global1.b.b, -global1.b.a | (arg_0.a & (_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.d.x), u_input.d.xwx, global1.b.a) ^ ~arg_0.a)));
    var var_2 = vec4<f32>(arg_0.b, -537f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c), -823f, true)) + var_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)), 1163f)), _wgslsmith_f_op_f32(-func_2(var_1).b));
    let var_3 = ~4294967295u;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + global3.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-670f))))), 2935f), global3.c, func_4(func_2(Struct_4(select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a, false), vec4<u32>(var_1.b.x, global0.x, global1.c.x, global0.x), _wgslsmith_div_f32(var_1.c, 333f), -u_input.d.wxx)), global3.b.d.x, Struct_1(select(!global3.c.a, select(global3.b.a, global3.b.a, global3.b.a), var_1.a.x != global3.c.a.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-972f, global3.a.x, var_1.c))), global3.b.c, ~(~vec2<i32>(arg_0.a.x, global1.b.a.x)), var_1.b.x), abs(~func_4(global1.b, 1i, global3.c, vec2<i32>(u_input.d.x, -1i)).d)));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_2 {
    global3 = arg_1;
    let var_0 = Struct_5(13341u, Struct_3(u_input.d.yxy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(212f)))), ~(firstLeadingBit(~global1.c) ^ u_input.b));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_4(global3.b.a.xz, ~global1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2700f - _wgslsmith_f_op_f32(global1.b.b * _wgslsmith_f_op_f32(min(global3.c.b.x, global1.b.b)))))), global1.b.a);
    global3 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * global1.b.b), _wgslsmith_div_f32(var_0.c, 632f), any(vec2<bool>(arg_0, true))))) * _wgslsmith_f_op_f32(557f * _wgslsmith_f_op_f32(-707f + var_0.c))), func_6(func_5(-global1.b.a.x, func_4(func_2(var_0), global1.b.a.x >> (1u % 32u), global3.c, max(vec2<i32>(global1.b.a.x, 10155i), u_input.a)), -1716f)), min(_wgslsmith_sub_u32(4294967295u, ~(~0u)), u_input.b.x), global3.b.d.x);
    global1 = Struct_5(reverseBits(63791u), global1.b, global1.c);
    let var_1 = vec3<f32>(331f, 1458f, -127f);
    global0 = ~max(~vec2<u32>(53352u, var_0.b.x), global1.c.wx) & vec2<u32>(_wgslsmith_add_u32(global3.c.e, _wgslsmith_mod_u32(64126u, 1u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 2134u, global1.c.x, 92794u)), _wgslsmith_add_vec4_u32(max(var_0.b, vec4<u32>(1u, 4372u, 1u, global3.b.e)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, global1.a, global0.x, global1.c.x), var_0.b, u_input.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_6(func_5(~global1.b.a.x, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -836f))).b.b.x)) * func_5(_wgslsmith_mod_i32((27889i ^ var_0.d.x) << (_wgslsmith_dot_vec2_u32(global1.c.yz, vec2<u32>(global3.c.e, global1.a)) % 32u), _wgslsmith_dot_vec2_i32(-u_input.a, global3.b.d)), func_7(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(322f - global1.b.b), _wgslsmith_f_op_f32(max(global1.b.b, -291f)), global3.c.a.x & true)), func_7(-737f, func_6(Struct_3(var_0.d, global3.c.b.x)), ~35688u, u_input.d.x), ~_wgslsmith_add_u32(global1.c.x, 1u), ~(~global1.b.a.x)).b, global3.b.b.x).b);
}

fn func_8(arg_0: vec4<f32>) -> Struct_5 {
    return Struct_5(firstLeadingBit(_wgslsmith_div_u32(~(5940u << (u_input.e % 32u)), 26057u)), Struct_3(~(~min(vec3<i32>(0i, 1i, 4532i), global1.b.a)), arg_0.x), vec4<u32>(4294967295u, firstLeadingBit(~_wgslsmith_sub_u32(12294u, global1.c.x)), select(~global0.x, u_input.e, false) << (~reverseBits(0u) % 32u), ~(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(global1.c.yx, vec2<u32>(1u ^ _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(25712u, u_input.b.x, 66885u, 10766u)), global0.x) & ~global1.c.yy);
    global1 = func_8(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.b.x, _wgslsmith_f_op_f32(sign(global3.b.b.x)), _wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.b.x, global1.b.b, global1.b.b) + vec3<f32>(1258f, -188f, global1.b.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b - global3.c.b.x) * -281f)) + vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(global3.c.c, vec4<u32>(var_0.x, 1u, 1163u, 0u), global3.c.b.x, u_input.d.zwy)).b - _wgslsmith_f_op_f32(-1000f * global3.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.b.b, -1000f, global3.b.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.b.b)), global3.b.b.x, true)), _wgslsmith_f_op_f32(round(1f)))));
    let var_1 = Struct_5(max(global1.a, _wgslsmith_div_u32(select(1u, 0u, global3.b.c.x), 4294967295u)) ^ ~(~(41737u | var_0.x)), global1.b, vec4<u32>(0u, _wgslsmith_sub_u32(func_6(global1.b).b.e, ~76333u) & (global1.c.x & ~2419u), 0u, max(global3.b.e, global3.c.e)));
    var var_2 = _wgslsmith_clamp_i32(2147483647i, -8950i, global3.c.d.x);
    var_0 = var_1.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yyw, ~func_8(vec4<f32>(854f, _wgslsmith_f_op_f32(143f * var_1.b.b), _wgslsmith_f_op_f32(global1.b.b * 468f), 889f)).a, vec3<u32>(abs(~4294967295u), var_1.a, _wgslsmith_add_u32(var_0.x, 0u >> (_wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(var_1.c.x, 3864u, global3.c.e, var_1.c.x)) % 32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(global1.b.a.x, global3.b.d.x), firstTrailingBit(global1.b.a.x | 27461i), 11538i, global1.b.a.x), u_input.d));
}

