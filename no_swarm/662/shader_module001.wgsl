struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> bool {
    var var_0 = firstLeadingBit(u_input.b);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(168f * _wgslsmith_f_op_f32(212f + 349f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1319f, -714f, arg_2)) * -1000f))))), _wgslsmith_mod_vec2_u32(max(~_wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(106591u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(64987u, 0u) << (u_input.b.xw % vec2<u32>(32u)), firstTrailingBit(u_input.a), _wgslsmith_mult_vec2_u32(var_0.xy, u_input.a))), max(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(22729u, 1u), arg_0.a.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(arg_0.a.x, var_0.x))), u_input.b.zx)), ~(_wgslsmith_mult_vec3_u32(~vec3<u32>(30547u, var_0.x, arg_0.a.x), var_0.wwy) | arg_0.a));
    let var_2 = 16783i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, -230f, -910f, 371f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 172f, -532f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(986f, var_1.a, var_1.a, 569f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))))));
    var var_4 = var_2;
    return ~(~10896u | arg_0.a.x) <= arg_0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = Struct_1(-(~countOneBits(-arg_3)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1884f))), _wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1))))), any(vec2<bool>(select(arg_0.d, true, arg_2) || false, arg_0.d)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(207f, _wgslsmith_div_f32(arg_0.b, -271f)))))));
    let var_2 = Struct_1(-1i, -1261f, vec4<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(358f, arg_1.x)), 852f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_0.c.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.x)), -284f))), var_0.c.x), true);
    global0 = false;
    let var_3 = -(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -511i), -(vec2<i32>(arg_3, var_0.a) ^ vec2<i32>(2147483647i, -12371i))));
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = !select(all(!(!vec4<bool>(true, true, true, arg_1.x))), any(vec4<bool>(arg_1.x, true, true, true)), arg_3.d);
    global0 = any(arg_1);
    let var_0 = Struct_2(select(u_input.b.xzy, vec3<u32>(14257u, select(u_input.b.x, u_input.c, arg_3.d) ^ u_input.b.x, func_4(arg_3, arg_3.c, func_3(Struct_2(vec3<u32>(u_input.b.x, 1u, 0u)), vec3<bool>(arg_3.d, false, arg_3.d), true), _wgslsmith_div_i32(arg_3.a, arg_2))), any(!vec4<bool>(false, true, true, arg_1.x))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(arg_3.c.x * arg_0), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, 0u), var_0.a.yz) & ~(~vec2<u32>(var_0.a.x, 4294967295u)), countOneBits(~countOneBits(vec2<u32>(var_0.a.x, var_0.a.x)))), ~countOneBits(u_input.b.xxz << (var_0.a % vec3<u32>(32u))) ^ abs(min(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, var_0.a.x)), abs(u_input.b.yxy))));
    var var_2 = arg_3.d;
    return arg_3.b <= arg_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(min(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, ~0u, _wgslsmith_mod_u32(u_input.a.x, 31718u)), 70109u, ~u_input.c), vec3<u32>(0u, ~u_input.c, 1u) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(59590u, u_input.c, 294u), u_input.b.wyz)) % vec3<u32>(32u))));
    global0 = all(select(!(!vec4<bool>(true, arg_0.x, true, false)), vec4<bool>(func_3(Struct_2(u_input.b.xxw), arg_0, true), false, true, _wgslsmith_f_op_f32(min(-2316f, -1121f)) < _wgslsmith_f_op_f32(arg_1 - arg_1)), !(!any(vec4<bool>(true, true, arg_0.x, false)))));
    var_0 = ~var_1.a.x;
    var_1 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.a, u_input.b.xwx), u_input.b.zyw));
    return Struct_3(arg_0.x, Struct_2(~(var_1.a << (_wgslsmith_mod_vec3_u32(var_1.a, var_1.a) % vec3<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(1i, 16711i)), 1i) >> (~(~var_1.a.zz) % vec2<u32>(32u)), Struct_2(_wgslsmith_mult_vec3_u32(var_1.a << (vec3<u32>(4294967295u, u_input.b.x, 1u) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, var_1.a.x, u_input.c), vec3<bool>(true, arg_0.x, true)))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = true;
    global0 = true;
    let var_0 = func_5(vec3<bool>(true, func_2(_wgslsmith_f_op_f32(arg_3 - 1100f), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_2.d, arg_2.d), false), arg_0.c.x, arg_2) || arg_2.d, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(35750i, 2147483647i), arg_0.c), -arg_2.a) >= 2147483647i), arg_2.c.x);
    let var_1 = vec4<i32>(abs(-abs(42665i)), _wgslsmith_mod_i32(~(arg_2.a | arg_0.c.x) >> (arg_1 % 32u), 12862i), arg_2.a, abs(0i));
    global0 = true;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var var_1 = -363f;
    var_1 = -234f;
    let var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-786f, -379f), _wgslsmith_f_op_f32(func_1(Struct_3(false, Struct_2(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), vec2<i32>(-2147483647i, -9577i), Struct_2(u_input.b.yzy)), 13992u, Struct_1(-43303i, 225f, vec4<f32>(-1120f, 922f, 117f, -2322f), true), -476f)))), _wgslsmith_f_op_f32(func_1(Struct_3(true, Struct_2(u_input.b.zzw), vec2<i32>(2147483647i, 2147483647i), Struct_2(u_input.b.xzy)), countOneBits(u_input.c), Struct_1(4356i, -1000f, vec4<f32>(1132f, 1000f, -282f, 1169f), true), _wgslsmith_f_op_f32(1148f * -471f))))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-636f + 224f))))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false))) && !(15149u > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.c))), true);
    var var_3 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(u_input.b.x), u_input.a.x, u_input.a.x), vec3<u32>(41288u, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(31085u, u_input.c)), u_input.c >> (firstLeadingBit(u_input.b.x) % 32u))));
    var var_4 = Struct_2(~firstTrailingBit(var_3.a));
    let var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f - 189f) + _wgslsmith_f_op_f32(step(-1000f, -1650f))), _wgslsmith_f_op_f32(trunc(869f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1020f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1148f) - vec2<f32>(-242f, -1425f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2132f, 181f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-986f, -1309f), vec2<f32>(1000f, 1632f))))))), any(select(var_2.wx, var_2.yx, !(!var_2.zx)))));
    let var_6 = Struct_3(!var_2.x, Struct_2(u_input.b.xyy), -firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(-7719i, -29649i), -1i >> (var_4.a.x % 32u))), func_5(vec3<bool>(var_2.x, var_2.x, true || (u_input.b.x <= var_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.x * -1771f), _wgslsmith_f_op_f32(sign(var_5.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(ceil(var_5.x))), _wgslsmith_div_vec2_f32(vec2<f32>(415f, var_5.x), _wgslsmith_div_vec2_f32(vec2<f32>(351f, 742f), var_5))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(false, var_6.b, var_6.c, Struct_2(var_3.a)), 0u, Struct_1(2147483647i, var_5.x, vec4<f32>(-718f, var_5.x, var_5.x, 1418f), var_6.a), var_5.x)), var_5.x)))), min(1i, firstTrailingBit(-24187i | var_6.c.x) ^ -var_6.c.x));
}

