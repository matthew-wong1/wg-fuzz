struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1160f, 186f, -955f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1316f))))), global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, global0.x, 1304f) - vec3<f32>(-1061f, -142f, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -511f, global0.x) - vec3<f32>(825f, 1000f, 286f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), -726f, _wgslsmith_f_op_f32(round(global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 659f, global0.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(554f, -2282f, 1632f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1013f, -1056f, global0.x))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(964f, -414f, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(sign(global0.x)), 547f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-768f, global0.x, global0.x, -376f) * vec4<f32>(-783f, 612f, -165f, global0.x))))))));
    let var_1 = _wgslsmith_mult_i32(~(min(i32(-1i) * -2147483647i, -2147483647i << (u_input.e % 32u)) ^ firstTrailingBit(arg_0.a.x)), arg_0.a.x);
    let var_2 = Struct_3(Struct_1(min(_wgslsmith_sub_vec4_i32(firstTrailingBit(arg_0.a), arg_0.a), u_input.d), arg_0.b), Struct_1(arg_0.a >> ((~vec4<u32>(0u, u_input.b.x, 0u, u_input.e) & (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u) | vec4<u32>(0u, 4294967295u, 4294967295u, 72378u))) % vec4<u32>(32u)), vec4<bool>(select(any(arg_0.b.yy), arg_0.b.x, true), any(vec2<bool>(arg_0.b.x, arg_0.b.x)) || arg_0.b.x, arg_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-9871i, arg_0.a.x, u_input.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, u_input.d.x, 0i, var_1)) < _wgslsmith_sub_i32(-2147483647i, arg_0.a.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(min(-12963i, -43143i), var_1), reverseBits(-19896i), reverseBits(-12127i)), -u_input.d.xxz), var_1, arg_0);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(1123f, -998f)))), global0.x, -280f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), global0.x, _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(select(523f, global0.x, true))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(916f, 746f, global0.x, -735f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, global0.x, global0.x, 953f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 993f, -1000f, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 730f, global0.x, global0.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(var_0.wx));
    global0 = _wgslsmith_f_op_vec3_f32(var_0.xxy - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xyx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(229f, 1000f, var_1.x))) - _wgslsmith_f_op_vec3_f32(var_0.zwy * var_0.xwy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yyw)))));
    let var_2 = Struct_1(vec4<i32>(u_input.a.x, -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, 0i), vec2<i32>(u_input.d.x, -2147483647i)), ~(-61941i), ~u_input.c.x), !vec4<bool>(select(select(true, true, true), true, true), true, func_3(Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, 9225i), vec4<bool>(true, false, true, false))) | false, true));
    let var_3 = reverseBits(~u_input.e);
    return Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a.x, u_input.d.x, var_2.a.x, -1i), ~vec4<i32>(-2147483647i, u_input.c.x, -1661i, var_2.a.x)) | countOneBits(u_input.d), select(!vec4<bool>(var_2.b.x, true, var_2.b.x, var_0.x < 1679f), select(var_2.b, vec4<bool>(true, var_2.b.x, true, true), var_2.b.x), !vec4<bool>(false | var_2.b.x, false, var_2.b.x, false)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f * global0.x))), global0.x);
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.c.x, -33102i, arg_0.d), vec4<i32>(u_input.d.x, u_input.a.x, -84773i, arg_0.c.x), vec4<i32>(7990i, u_input.d.x, u_input.d.x, 13164i))), min(u_input.d, select(vec4<i32>(u_input.d.x, arg_0.d, -6131i, arg_0.d), vec4<i32>(2147483647i, 49309i, -81547i, -2147483647i), false))), vec4<bool>(all(arg_0.a.b.zzw), _wgslsmith_f_op_f32(f32(-1f) * -1619f) <= global0.x, true, any(vec2<bool>(true, true)))), arg_0.e);
    var var_1 = Struct_2(Struct_1(arg_0.a.a, arg_0.b.b), Struct_1(arg_0.e.a, !(!select(vec4<bool>(var_0.b.b.x, var_0.b.b.x, false, arg_0.a.b.x), var_0.a.b, var_0.b.b))));
    var var_2 = -(~(vec2<i32>(-1i) * -vec2<i32>(var_1.a.a.x, -11958i)));
    var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(-(vec4<i32>(arg_0.e.a.x, 25994i, var_0.a.a.x, -32349i) << (vec4<u32>(4294967295u, u_input.e, 0u, 27915u) % vec4<u32>(32u))), u_input.d), vec4<bool>(false, true, !var_1.b.b.x, arg_0.b.b.x)), func_2());
    return Struct_2(Struct_1(abs(vec4<i32>(max(var_1.a.a.x, var_1.b.a.x), ~var_1.b.a.x, arg_0.d ^ var_1.a.a.x, var_2.x)), arg_0.e.b), func_2());
}

fn func_1() -> vec4<bool> {
    let var_0 = ~64845u;
    var var_1 = -vec4<i32>(u_input.a.x, select(_wgslsmith_mult_i32(u_input.c.x, -1i) ^ u_input.d.x, _wgslsmith_clamp_i32(~34260i, -1i, 0i), true), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, u_input.a.x >> (u_input.e % 32u)), u_input.c.x), u_input.c.x);
    var var_2 = func_4(Struct_3(func_2(), func_2(), var_1.zyx >> (abs(_wgslsmith_div_vec3_u32(vec3<u32>(12033u, 1u, 64348u), vec3<u32>(4294967295u, var_0, var_0))) % vec3<u32>(32u)), _wgslsmith_add_i32(var_1.x, -22680i), Struct_1(select(u_input.d, ~u_input.d, true), func_2().b)), _wgslsmith_sub_u32(u_input.b.x, 54792u));
    var var_3 = _wgslsmith_sub_vec4_i32(countOneBits(var_2.a.a), var_2.a.a);
    var_3 = u_input.d;
    return !(!(!var_2.a.b));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = vec2<bool>(arg_1.b.x, !(!(!select(true, arg_1.b.x, arg_1.b.x))));
    global0 = vec3<f32>(global0.x, -308f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.x)));
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(abs(arg_1.a.yxw), vec3<i32>(1162i, arg_1.a.x, -15647i)), arg_2.zyz), arg_2.xyz) | vec3<i32>(_wgslsmith_add_i32(-1i, 2147483647i), -_wgslsmith_mult_i32(-20976i, u_input.a.x), abs(_wgslsmith_mod_i32(arg_0.x, max(u_input.a.x, 1i))));
    let var_2 = max(reverseBits(~_wgslsmith_add_u32(u_input.e, u_input.b.x)), ~44639u) & ~_wgslsmith_mult_u32(63460u, abs(abs(1u)));
    var var_3 = !func_1().zx;
    return Struct_3(Struct_1(~arg_1.a, arg_1.b), arg_1, u_input.d.zxy, arg_0.x, func_4(Struct_3(func_2(), func_4(Struct_3(Struct_1(vec4<i32>(6338i, 60550i, var_1.x, -2147483647i), arg_1.b), arg_1, arg_1.a.zxw, u_input.c.x, Struct_1(vec4<i32>(-1i, arg_1.a.x, var_1.x, 0i), vec4<bool>(arg_1.b.x, var_3.x, true, true))), ~u_input.b.x).a, -abs(vec3<i32>(arg_1.a.x, var_1.x, var_1.x)), ~arg_2.x, Struct_1(vec4<i32>(arg_0.x, -926i, u_input.c.x, -1i), arg_1.b)), var_2).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<i32>(u_input.c.x, -19844i), Struct_1(vec4<i32>(~(u_input.c.x >> (u_input.e % 32u)), _wgslsmith_clamp_i32(-1i, u_input.c.x >> (47135u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(29720i, u_input.c.x, 0i), u_input.d.wyx)), abs(0i), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.d.x, 37240i), u_input.a.x & 26268i)), !(!func_1())), vec4<i32>(~u_input.d.x, -18168i, ~_wgslsmith_div_i32(u_input.a.x, -2147483647i << (u_input.b.x % 32u)), u_input.d.x));
    var var_1 = var_0.a;
    var_1 = func_5(var_1.a.wz, Struct_1(vec4<i32>(var_1.a.x, var_0.e.a.x, _wgslsmith_sub_i32(var_0.c.x, -26433i) ^ -1i, -2147483647i), !var_0.b.b), u_input.d).a;
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(734f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1221f, global0.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), 318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = reverseBits(~4294967295u);
    let var_3 = var_0.a.b.xww;
    var var_4 = u_input.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(abs(u_input.b))));
}

