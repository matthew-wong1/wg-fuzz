struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_sub_i32(-(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 11569i, u_input.a, 1i), vec4<i32>(global2.x, u_input.a, 43527i, 0i))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-13057i, u_input.a, u_input.a), ~1i));
    let var_1 = Struct_2(false, max(vec2<u32>(~min(4294967295u, 1u), 4294967295u), ~(~vec2<u32>(0u, 7006u))), firstTrailingBit(~(~vec2<u32>(1u, 1u))));
    global1 = abs(~_wgslsmith_mod_i32(0i, abs(firstLeadingBit(2147483647i))));
    var var_2 = var_1.b.x;
    let var_3 = i32(-1i) * -4095i;
    return max(0u, var_1.c.x ^ reverseBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_1.b.x), 1u)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> f32 {
    global0 = arg_2.c.x;
    var var_0 = arg_2;
    var var_1 = !(!select(vec3<bool>(!arg_1, arg_1 && true, any(vec2<bool>(arg_1, false))), vec3<bool>(true, true, true), true));
    var_1 = !vec3<bool>(true, (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, arg_0), vec2<i32>(u_input.a, 0i)) == u_input.a) || var_1.x, all(vec4<bool>(arg_0 <= arg_3, true, select(var_1.x, true, var_1.x), true)));
    var var_2 = Struct_1(func_3(), !arg_2.a, -_wgslsmith_mult_i32(arg_0, _wgslsmith_dot_vec3_i32(global2.yww, vec3<i32>(u_input.a, global2.x, arg_0) | global2.zwy)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-281f))), -129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2418f * 1104f) + _wgslsmith_f_op_f32(abs(-692f))))), ~countOneBits(_wgslsmith_mod_i32(arg_0, 2147483647i)));
    return var_2.d.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = abs(abs(reverseBits(u_input.a)));
    global1 = -71926i | _wgslsmith_dot_vec2_i32(max(global2.ww | firstLeadingBit(global2.xw), select(vec2<i32>(arg_3.x, 36800i), arg_3.yx, arg_1) & global2.wy), ~vec2<i32>(-16386i, u_input.a));
    var var_1 = 1219f;
    global2 = _wgslsmith_sub_vec4_i32(-arg_3, abs(reverseBits(~firstLeadingBit(vec4<i32>(-17057i, 2147483647i, 80213i, 0i)))));
    let var_2 = select(select(vec2<bool>(arg_2.x != 0u, select(any(vec3<bool>(arg_1, arg_1, arg_1)), arg_2.x >= arg_2.x, true || arg_1)), !(!(!vec2<bool>(arg_1, false))), select(vec2<bool>(any(vec4<bool>(false, arg_1, arg_1, true)), true), vec2<bool>(!arg_1, !arg_1), !select(vec2<bool>(arg_1, true), vec2<bool>(false, false), vec2<bool>(arg_1, false)))), vec2<bool>(true, true), !(abs(0u) != arg_2.x));
    return Struct_2(all(var_2), arg_2.yy, ~max(vec2<u32>(1u, ~47320u), arg_2.zx));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> vec4<i32> {
    let var_0 = 4294967295u;
    let var_1 = ~arg_0.b.x;
    var var_2 = vec2<bool>(arg_1, true);
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 0u, 21212u), vec3<u32>(0u, 41424u, 88177u)) | (vec3<u32>(13842u, 19427u, 29308u) << (vec3<u32>(var_1, arg_0.b.x, 98260u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 4294967295u, arg_0.b.x, 11469u), vec4<u32>(arg_0.b.x, arg_0.c.x, arg_0.c.x, var_0)), _wgslsmith_add_u32(var_0, var_1), ~var_0)), firstLeadingBit(firstLeadingBit(~vec3<u32>(54549u, arg_0.b.x, 1u)))), 0u);
    var var_3 = vec4<i32>(-u_input.a, 23828i >> (firstLeadingBit(_wgslsmith_div_u32(var_0, 4294967295u) >> (var_1 % 32u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, ~global2.x), u_input.a), -1i);
    return _wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -1i), vec4<i32>(global2.x, u_input.a, u_input.a, global2.x), false) | ~vec4<i32>(-2147483647i, -2147483647i, global2.x, u_input.a), vec4<i32>(min(-48029i, u_input.a), 1i, 0i, global2.x & 1i), min(-vec4<i32>(var_3.x, global2.x, u_input.a, global2.x), -vec4<i32>(-36651i, 2147483647i, 0i, -2147483647i))), select(vec4<i32>(var_3.x, _wgslsmith_sub_i32(i32(-1i) * -925i, i32(-1i) * -2147483647i), -22466i, 20682i), -(~vec4<i32>(var_3.x, u_input.a, u_input.a, 1i)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, arg_0.b.x, 18849u, 1u), vec4<u32>(4294967295u, 34233u, var_1, 59695u), vec4<u32>(arg_0.c.x, var_1, 97778u, var_0)) % vec4<u32>(32u)), !arg_1));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = func_5(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f * -1000f)), _wgslsmith_f_op_f32(func_2(abs(global2.x), true, Struct_2(false, vec2<u32>(0u, 42728u), vec2<u32>(4294967295u, 0u)), -2147483647i)))), any(vec3<bool>(true, true, false)), reverseBits(vec4<u32>(4294967295u, abs(25266u), ~98459u, 0u)), -(~(-vec4<i32>(arg_0, -1i, u_input.a, 0i)))), any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), false)));
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-366f, 1849f, true)) * _wgslsmith_f_op_f32(abs(-835f))), -1892f))), false, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(45039u, _wgslsmith_div_u32(37112u, 15177u)), vec2<u32>(~4294967295u, _wgslsmith_mod_u32(7191u, 38167u))), reverseBits(func_3()), 53589u, _wgslsmith_mult_u32(1u, firstLeadingBit(firstLeadingBit(14247u)))), firstTrailingBit(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, -14875i, u_input.a, -2147483647i), vec4<i32>(2147483647i, -38968i, u_input.a, arg_0), vec4<bool>(false, false, false, true)), vec4<i32>(arg_0, -1i, -16441i, -2147483647i))) << (firstLeadingBit(_wgslsmith_div_vec4_u32(min(vec4<u32>(7750u, 0u, 68871u, 0u), vec4<u32>(47269u, 2817u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u)));
    var var_1 = vec4<i32>(-11801i, global2.x, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, 0i), select(5549i, arg_0, var_0.a)), arg_0) & reverseBits(arg_0), ~(~reverseBits(_wgslsmith_sub_i32(global2.x, u_input.a))));
    let var_2 = vec3<u32>(48948u, var_0.b.x, 1u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -983f))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    var var_0 = func_1(-global2.x);
    var var_1 = Struct_1(~reverseBits(min(1u, abs(var_0.b.x))), var_0.a, -abs(abs(667i)), vec3<f32>(_wgslsmith_f_op_f32(195f * -424f), _wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1157f + 330f))), _wgslsmith_f_op_f32(func_2(reverseBits(global2.x), var_0.a, Struct_2(true, ~var_0.c, var_0.b >> (var_0.c % vec2<u32>(32u))), -1130i))), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.yx, vec2<i32>(u_input.a, u_input.a)), abs(0i)), _wgslsmith_add_i32(u_input.a & global2.x, -18081i)));
    let var_2 = min(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.c.x, 21102u, var_1.a), vec4<u32>(44807u, 30206u, 0u, var_1.a))), firstLeadingBit(vec4<u32>(~0u, 1u, reverseBits(4625u), var_1.a ^ var_0.c.x))), reverseBits(firstTrailingBit(select(vec4<u32>(var_1.a, 1u, var_1.a, 13637u), vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a), false) | (vec4<u32>(4294967295u, var_1.a, var_1.a, var_1.a) | vec4<u32>(66543u, 19416u, 75841u, 82165u)))));
    global0 = var_1.a;
    let var_3 = func_1(global2.x);
    let var_4 = vec2<bool>(var_1.b, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.d.x, var_1.d.x), var_1.d.x, -1055f, _wgslsmith_f_op_f32(-var_1.d.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_div_f32(372f, var_1.d.x), -102f))));
}

