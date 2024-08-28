struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = abs(max(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, 4294967295u, 34909u, 23471u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a.x), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 30227u), vec2<u32>(643u, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 47418u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) << (~vec4<u32>(11124u, 0u, u_input.a.x, 48576u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 0u, min(4294967295u, 49907u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 39981u), u_input.a)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-497f, _wgslsmith_f_op_f32(min(1704f, 1009f))))), _wgslsmith_div_f32(1285f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1130f)), _wgslsmith_f_op_f32(-145f + -1234f))), 16188i >= _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -25111i, -14631i)), min(vec3<i32>(-1i, 9064i, -2040i), vec3<i32>(-2147483647i, -16889i, -21903i))))));
    var var_2 = false;
    let var_3 = Struct_1(max(reverseBits(max(vec2<i32>(-27767i, 53749i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-2147483647i, 30897i)))), min(vec2<i32>(186i, -14179i << (var_0.x % 32u)), -vec2<i32>(38015i, -9i) << (select(u_input.a.yy, u_input.a.zy, true) % vec2<u32>(32u)))), vec3<bool>(all(vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), var_1.a == 2291f, !any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(1023f + _wgslsmith_f_op_f32(-var_1.a))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a) * vec3<f32>(var_1.a, -884f, -800f)) * vec3<f32>(var_1.a, -1298f, 378f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-553f, 1277f, var_1.a), vec3<f32>(1301f, var_1.a, var_1.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 131f, var_1.a)))))), var_1.a != 359f, vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xy, vec2<u32>(var_0.x, 1u)) | ~u_input.a.zy, u_input.a.yy), 4294967295u));
    var_2 = (~_wgslsmith_dot_vec2_i32(var_3.a, var_3.a | vec2<i32>(1i, -2147483647i)) != _wgslsmith_clamp_i32(~(~(-20843i)), var_3.a.x, 0i)) | true;
    return ~vec3<u32>(9692u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(14690u, 62216u, var_3.e.x)), firstTrailingBit(u_input.a)), 1u & reverseBits(var_0.x));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(380f);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -1i, 286i), -(~select(vec2<i32>(40009i, 0i), vec2<i32>(8555i, -2147483647i), vec2<bool>(false, false)))), vec3<bool>(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)) > var_0.a, ((2147483647i << (u_input.a.x % 32u)) <= abs(-20716i)) && false, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1329f, _wgslsmith_f_op_f32(var_0.a + 1000f), var_0.a)), true, func_3());
    let var_2 = select(u_input.a.xx, vec2<u32>(4294967295u, ~var_1.e.x), !arg_0.x & all(vec3<bool>(var_1.d, arg_0.x, var_1.b.x)));
    let var_3 = Struct_1((~var_1.a | _wgslsmith_mult_vec2_i32(var_1.a, ~vec2<i32>(-1i, var_1.a.x))) | select(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.a.x, -2147483647i), vec2<i32>(var_1.a.x, 2147483647i)), -var_1.a, var_1.d), select(select(vec3<bool>(arg_0.x, true, true), select(!vec3<bool>(false, var_1.d, var_1.b.x), !vec3<bool>(var_1.d, true, var_1.d), var_1.b), all(vec3<bool>(arg_0.x, var_1.b.x, true))), vec3<bool>(arg_0.x, all(!var_1.b), arg_0.x), arg_0.x), var_1.c, arg_0.x, ~var_1.e);
    let var_4 = ~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, var_2.x)) << (_wgslsmith_dot_vec2_u32(reverseBits(var_2), func_3().xy) % 32u), ~_wgslsmith_sub_u32(var_2.x, ~4294967295u), reverseBits(~0u), 25183u);
    return Struct_1(var_3.a, !(!(!vec3<bool>(var_3.b.x, true, arg_0.x))), vec3<f32>(887f, var_1.c.x, -536f), !any(select(!vec3<bool>(var_3.b.x, var_3.d, var_3.b.x), arg_0, true)), u_input.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = !select(arg_1.b, !vec3<bool>(true, !arg_1.d, true), arg_1.b);
    var var_1 = Struct_1(arg_0.yy, select(!var_0, !(!select(var_0, arg_1.b, vec3<bool>(true, arg_1.b.x, var_0.x))), true), _wgslsmith_f_op_vec3_f32(-arg_1.c), !(!(false || arg_1.d)) & (_wgslsmith_div_u32(arg_1.e.x, countOneBits(81655u)) == ~u_input.a.x), select(firstTrailingBit(arg_1.e), ~(~(~arg_1.e)), vec3<bool>(!var_0.x, arg_1.b.x, true)));
    var_1 = arg_1;
    let var_2 = !any(!select(!var_0, vec3<bool>(var_1.d, false, var_1.b.x), func_2(vec3<bool>(true, true, var_1.d)).b.x));
    let var_3 = var_1.c.x;
    return func_2(!select(!func_2(vec3<bool>(false, var_1.b.x, true)).b, arg_1.b, var_2)).a.x;
}

fn func_1() -> bool {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f + 1014f)))), -679f));
    let var_1 = vec2<i32>(~func_4(vec3<i32>(_wgslsmith_div_i32(-36574i, -2147483647i), -2147483647i, reverseBits(-15188i)), func_2(vec3<bool>(true, true, true))), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -11328i), vec2<i32>(-46819i, 0i)), 0i << (u_input.a.x % 32u)), -10679i)));
    var var_2 = select(true, func_2(!vec3<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)), func_2(vec3<bool>(false, true, true)).b.x)).b.x, !all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)))));
    let var_3 = _wgslsmith_f_op_f32(-777f * -2579f);
    let var_4 = ~(vec2<i32>(2147483647i, var_1.x) << (select(vec2<u32>(~u_input.a.x, 1u), u_input.a.yy, any(vec4<bool>(false, false, true, false))) % vec2<u32>(32u)));
    return ~(~(~(1u ^ u_input.a.x))) == 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(arg_0.a, select(!select(arg_0.b, select(arg_0.b, vec3<bool>(arg_0.b.x, arg_0.d, false), false), arg_0.b), arg_0.b, select(vec3<bool>(arg_0.b.x, true, any(arg_0.b)), arg_0.b, func_2(!arg_0.b).b)), arg_2.ywz, arg_0.d, ~vec3<u32>(u_input.a.x | arg_1.x, func_3().x, ~_wgslsmith_div_u32(4294967295u, u_input.a.x)));
    var var_1 = !select(!select(!vec4<bool>(var_0.d, true, true, true), vec4<bool>(false, false, var_0.b.x, arg_0.d), false), !(!(!vec4<bool>(arg_0.d, var_0.b.x, true, false))), true | !(arg_0.e.x < arg_0.e.x));
    let var_2 = ~(~var_0.a.x);
    var var_3 = select(vec2<bool>(!any(!vec2<bool>(arg_0.d, var_0.b.x)), !(!var_0.b.x) || var_0.d), arg_0.b.yy, arg_0.a.x < ~func_2(var_0.b).a.x);
    var var_4 = firstTrailingBit(max(reverseBits(select(arg_0.e, ~vec3<u32>(arg_0.e.x, 32054u, u_input.a.x), var_1.zzz)), var_0.e));
    return Struct_2(-112f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-79131i, -4473i, -26035i), 1i) >> (~(vec2<u32>(u_input.a.x, u_input.a.x) | vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), vec3<bool>(func_1() & true, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-426f, -729f, 2381f) * vec3<f32>(-1000f, 684f, 496f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1052f, -398f)))))), true, max(u_input.a, _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 1u)), u_input.a))), func_3().xx, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(404f, -1740f, -459f, 840f), vec4<f32>(1235f, -1000f, 280f, 2131f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -953f, -733f, 196f) - vec4<f32>(347f, -518f, 186f, -901f))))))));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_add_i32(0i, -2147483647i), -38882i, reverseBits(-1i), reverseBits(0i))), _wgslsmith_add_i32(_wgslsmith_sub_i32(20908i, i32(-1i) * -61655i), 1773i)), !vec3<bool>(true, select(true, false, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, 668f), vec3<f32>(-945f, 1170f, var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(502f, var_0.a, 276f) * vec3<f32>(var_0.a, 660f, 558f))), vec3<bool>(true, true, false)))), firstTrailingBit(countOneBits(1i)) == abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 34001i, -28510i, 21076i), -vec4<i32>(-22675i, -1i, 1i, 0i))), u_input.a);
    let var_2 = func_2(var_1.b);
    var_1 = func_2(select(func_2(var_1.b).b, var_2.b, true));
    let var_3 = func_2(!(!select(!var_1.b, var_1.b, select(var_2.b, vec3<bool>(var_2.b.x, true, var_2.d), true))));
    var_1 = Struct_1(vec2<i32>(-var_3.a.x, ~(i32(-1i) * -2147483647i)), vec3<bool>(var_2.d, false, var_1.e.x < ~4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f) * _wgslsmith_f_op_f32(round(var_1.c.x))), _wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(-1194f - var_3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)))), true, var_1.e & vec3<u32>(17746u, var_2.e.x, var_2.e.x));
    var_1 = Struct_1(firstTrailingBit(reverseBits(~firstTrailingBit(vec2<i32>(0i, 1i)))), vec3<bool>(u_input.a.x < ~var_2.e.x, all(vec3<bool>(select(true, false, true), !var_2.b.x, var_2.d)), true), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1168f)), _wgslsmith_f_op_f32(-510f + _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c.x))))), false, _wgslsmith_div_vec3_u32(max(min(u_input.a | vec3<u32>(var_2.e.x, 98507u, 84337u), vec3<u32>(var_2.e.x, 1u, 0u)), ~(var_1.e & vec3<u32>(var_2.e.x, 0u, 37524u))), ~((vec3<u32>(1u, 77430u, u_input.a.x) ^ vec3<u32>(1u, u_input.a.x, u_input.a.x)) | var_3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, countOneBits(_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 0u, 0u, 0u)), firstLeadingBit(~vec4<u32>(var_2.e.x, 4294967295u, 31174u, 27938u)))), ~select(var_1.e.x << (reverseBits(1u) % 32u), ~u_input.a.x << (min(var_1.e.x, 4294967295u) % 32u), false));
}

