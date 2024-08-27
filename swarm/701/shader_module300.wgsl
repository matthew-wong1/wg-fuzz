struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    var var_0 = ~(u_input.a << (0u % 32u));
    let var_1 = Struct_1(select(vec2<bool>((u_input.a << (36172u % 32u)) == u_input.c.x, any(vec3<bool>(true, true, true))), vec2<bool>(!any(vec3<bool>(true, false, false)), false), true), 0u, true, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(8130i, -28441i), -39175i, -u_input.c.x), reverseBits(vec3<i32>(-11957i, u_input.d, u_input.b.x))), -(~u_input.b)), 1334f);
    let var_2 = Struct_1(select(select(!select(var_1.a, var_1.a, var_1.a), vec2<bool>(!var_1.a.x, false || var_1.a.x), !vec2<bool>(var_1.c, var_1.a.x)), !var_1.a, !var_1.a), ~(~_wgslsmith_sub_u32(var_1.b, 1u) << (var_1.b % 32u)), !(188f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-575f)), _wgslsmith_f_op_f32(-var_1.e)))), u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2603f - _wgslsmith_f_op_f32(1205f * -681f))))));
    var_0 = var_1.d.x;
    var_0 = var_2.d.x;
    return var_1.a.x;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = !vec3<bool>(!all(vec3<bool>(false, false, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !func_3());
    let var_1 = arg_0;
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(firstLeadingBit(-2147483647i)), 47115i), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.d, 44557i)), vec2<i32>(0i, 3684i), vec2<i32>(u_input.b.x, u_input.a)) >> (min(vec2<u32>(1u, 1u), vec2<u32>(802u, 1u)) % vec2<u32>(32u))) << (~vec2<u32>(39753u, 1u) % vec2<u32>(32u));
    var var_3 = vec4<i32>(0i, ~_wgslsmith_sub_i32(~u_input.d, _wgslsmith_clamp_i32(-var_2.x, countOneBits(2147483647i), _wgslsmith_sub_i32(var_2.x, -1i))), var_2.x, min(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.x, -1i, 0i, u_input.b.x), vec4<i32>(-28502i, var_2.x, 1i, u_input.c.x), false), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(-1i, -1i, 24047i, 2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 11675i, -2147483647i), firstTrailingBit(vec4<i32>(var_2.x, 2147483647i, 40129i, -1i)))) >> (~1u % 32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2303f, var_1)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, 304f, 651f)))));
    return -(~(var_3.x & var_2.x));
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, min(1u, countOneBits(countOneBits(4294967295u))), 1u), vec3<u32>(_wgslsmith_mult_u32(13768u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 1644u, 0u)), ~vec4<u32>(0u, 56249u, 1370u, 0u))), 4294967295u, max(18746u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = vec3<i32>(-_wgslsmith_mod_i32(-abs(u_input.c.x), u_input.b.x << (6351u % 32u)), 0i, arg_0);
    var var_3 = Struct_1(!select(vec2<bool>(false, var_1 == var_1), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), 1u, any(vec4<bool>(!any(vec4<bool>(false, true, false, false)), !any(vec4<bool>(false, false, true, true)), !(-332f != var_1), !select(false, true, true))), max(var_2, select(vec3<i32>(u_input.d, 0i, u_input.b.x), _wgslsmith_clamp_vec3_i32(var_2, var_2, vec3<i32>(var_2.x, 2147483647i, var_2.x)), all(vec3<bool>(false, true, false))) & _wgslsmith_clamp_vec3_i32(abs(u_input.b), -var_2, var_2)), var_1);
    var var_4 = min(vec4<i32>(var_3.d.x, 0i, _wgslsmith_add_i32(arg_0, 1i), _wgslsmith_dot_vec2_i32(var_3.d.zy, var_2.yx)) & _wgslsmith_sub_vec4_i32(select(firstTrailingBit(vec4<i32>(u_input.a, 53022i, arg_0, 2147483647i)), vec4<i32>(2550i, arg_0, 54526i, 2147483647i), true), vec4<i32>(-2147483647i, 2147483647i, -u_input.d, _wgslsmith_add_i32(arg_0, -5319i))), countOneBits(abs(select(vec4<i32>(-2147483647i, -1i, var_3.d.x, arg_0), vec4<i32>(arg_0, u_input.b.x, 0i, 2147483647i), true))) & ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.d.x, -2147483647i, arg_0, 694i), vec4<i32>(47582i, var_2.x, 25381i, var_2.x), vec4<i32>(var_3.d.x, u_input.c.x, 63267i, var_3.d.x))));
    return Struct_2(Struct_1(var_3.a, ~var_3.b, (~var_3.b & 0u) != (~var_0.x | var_3.b), vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a, var_4.x, 7253i)), -2292f), vec4<i32>(1i, ~2777i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-30049i, 37521i, -2147483647i), u_input.b.x), i32(-1i) * -5054i) >> (vec4<u32>(1u, _wgslsmith_clamp_u32(76665u, _wgslsmith_dot_vec3_u32(var_0, var_0), abs(var_0.x)), _wgslsmith_mult_u32(1u, ~var_3.b), 1u) % vec4<u32>(32u)), var_1, Struct_1(vec2<bool>(true, var_3.a.x), 1u, all(!vec2<bool>(var_3.c, false)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_4.x, 2147483647i), 1i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_4.x, arg_0), countOneBits(arg_0), _wgslsmith_div_i32(-15106i, -2629i)), firstTrailingBit(0i)), var_1));
}

fn func_1() -> f32 {
    var var_0 = false;
    var var_1 = func_4(func_2(1f));
    var_1 = Struct_2(func_4(1i).d, func_4(-((2147483647i << (0u % 32u)) >> (firstLeadingBit(var_1.d.b) % 32u))).b, 213f, Struct_1(vec2<bool>(true, false), 1u << (var_1.d.b % 32u), var_1.a.c, firstLeadingBit(-(~u_input.b)), 849f));
    var_1 = Struct_2(func_4(~26407i).a, firstTrailingBit(vec4<i32>(max(firstTrailingBit(u_input.d), min(1i, var_1.d.d.x)), _wgslsmith_mult_i32(-2147483647i, u_input.a), reverseBits(_wgslsmith_add_i32(37532i, 1i)), 2147483647i)), _wgslsmith_f_op_f32(620f * -437f), Struct_1(select(select(func_4(u_input.d).d.a, var_1.d.a, true), select(!var_1.d.a, var_1.d.a, vec2<bool>(var_1.d.a.x, false)), select(func_4(var_1.d.d.x).a.a, vec2<bool>(true, true), var_1.d.a.x)), ~(~abs(12624u)), true, -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -37779i, var_1.d.d.x), vec3<i32>(-2147483647i, 2758i, -1i)), -399f));
    var_1 = Struct_2(Struct_1(var_1.a.a, max(60703u, ~reverseBits(var_1.a.b)), func_3(), vec3<i32>(u_input.b.x, ~reverseBits(0i), _wgslsmith_dot_vec2_i32(-var_1.a.d.xy, vec2<i32>(2147483647i, u_input.b.x))), var_1.a.e), select(~var_1.b, var_1.b, any(!vec4<bool>(var_1.d.c, var_1.a.c, false, false))) ^ select(var_1.b, var_1.b, any(vec4<bool>(false, false, false, true)) | !var_1.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c)) + var_1.c))) * _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(floor(-1627f)))), Struct_1(var_1.a.a, ~var_1.a.b, true, -(~u_input.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.e, 489f, var_1.a.a.x)))))));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = select(!(!vec2<bool>(any(vec4<bool>(false, true, true, true)), false)), vec2<bool>(!select(true, true, false), true), false);
    let var_2 = vec3<bool>(false, false, true);
    var_1 = var_2.xx;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + 2687f))));
    let var_4 = countOneBits(-firstLeadingBit(u_input.c.zz) & (func_4(-3603i).a.d.zy ^ min(abs(vec2<i32>(u_input.a, -1i)), vec2<i32>(u_input.b.x, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(45821u, _wgslsmith_f_op_f32(step(-428f, _wgslsmith_f_op_f32(select(681f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), false)))), _wgslsmith_dot_vec4_u32(vec4<u32>(3076u, ~24660u, _wgslsmith_mod_u32(~44159u, ~62084u), max(1u, 36797u)), vec4<u32>(1u, max(1u, ~4294967295u), 1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_3, 1189f, -372f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1239f, -361f, -311f, var_0), vec4<f32>(var_3, -844f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 1000f, var_0, 707f), vec4<f32>(var_0, -457f, var_0, var_0))))))));
}

