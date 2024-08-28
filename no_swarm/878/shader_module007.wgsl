struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(min(arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, all(vec2<bool>(arg_1.a.a, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-194f - global0.x)))))));
    global0 = arg_2;
    let var_0 = Struct_5(arg_1, arg_3, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1652f, -428f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(-global0.x), -1679f))), -1i);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(arg_0)))));
    let var_1 = firstLeadingBit((u_input.b & 0u) << ((1u >> (arg_1.b % 32u)) % 32u));
    return !var_0.b.a;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> f32 {
    global0 = vec2<f32>(-894f, arg_1);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1024f, _wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(select(1792f, 679f, true)), true)))));
    return _wgslsmith_f_op_f32(round(-137f));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> Struct_5 {
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global0.x, _wgslsmith_f_op_f32(-104f * -1946f), Struct_3(Struct_1(false, arg_1, 4294967295u, vec2<i32>(7144i, u_input.a.x), arg_3), ~1u), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(479f, global0.x), vec2<f32>(arg_2.x, -297f), vec2<bool>(arg_3, false))), Struct_3(Struct_1(arg_3, arg_0, u_input.b, u_input.c, false), u_input.b), vec2<f32>(-881f, 1000f), Struct_2(arg_3)))), 1712f), 501f);
    return Struct_5(Struct_3(Struct_1(all(select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, false), arg_3)), _wgslsmith_add_i32(arg_1, 2147483647i) << (reverseBits(u_input.b) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b) >> (vec3<u32>(1u, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec2<i32>(-11986i, _wgslsmith_div_i32(u_input.c.x, -33682i)), false), ~u_input.b), Struct_2((firstTrailingBit(arg_0) <= -u_input.a.x) || any(vec4<bool>(arg_3, arg_3, arg_3, arg_3))), Struct_3(Struct_1(all(vec4<bool>(arg_3, true, true, true)), firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, arg_0)), _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -17907i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), -u_input.a), arg_3), 5575u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2))))), arg_1);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.d.yy, vec2<f32>(global0.x, -1187f)));
    var var_0 = select(!(!vec3<bool>(true, true, !arg_1.b.a)), vec3<bool>(all(vec4<bool>(true, arg_3.a.e, all(vec4<bool>(false, arg_1.b.a, true, false)), arg_1.a.a.b < -2147483647i)), arg_3.a.a, all(vec2<bool>(true, true))), true);
    var var_1 = arg_2.a;
    var var_2 = arg_1;
    var_2 = func_2(-2680i, 8971i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(296f, 592f, 1150f))) - _wgslsmith_f_op_vec3_f32(var_2.d - vec3<f32>(var_2.d.x, 768f, -1183f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.d))), 0u >= _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 0u, arg_3.a.c | arg_3.a.c), ~vec3<u32>(28475u, var_2.a.b, u_input.b)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(1646f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(106f, 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a.x, u_input.c.x, 26826i, u_input.c.x), Struct_5(Struct_3(Struct_1(false, u_input.a.x, u_input.b, vec2<i32>(u_input.c.x, u_input.c.x), false), u_input.b), Struct_2(false), Struct_3(Struct_1(true, u_input.a.x, u_input.b, u_input.c, true), 25517u), vec3<f32>(global0.x, global0.x, global0.x), u_input.a.x), Struct_2(true), Struct_3(Struct_1(false, u_input.c.x, 7061u, vec2<i32>(0i, u_input.c.x), false), 1u))), _wgslsmith_f_op_f32(floor(1467f)))))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~firstTrailingBit(vec4<i32>(21061i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_5(func_2(u_input.c.x, -2147483647i, vec3<f32>(-1000f, 855f, 464f), true).a, func_2(-2712i, 2147483647i, vec3<f32>(global0.x, 2685f, global0.x), true).b, func_2(u_input.c.x, u_input.a.x, vec3<f32>(723f, 874f, global0.x), true).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, 870f, global0.x) + vec3<f32>(-374f, 694f, 1000f)), firstTrailingBit(u_input.c.x)), func_2(1i, 2147483647i, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(995f, 1732f, -1442f))), true).b, Struct_3(Struct_1(false, -1i, 52190u, vec2<i32>(u_input.a.x, u_input.c.x), false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 3046u, 1u), vec3<u32>(0u, u_input.b, 19311u)))))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x), func_2(u_input.c.x, -u_input.a.x >> (_wgslsmith_mod_u32(74696u, u_input.b) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -737f, global0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 370f, global0.x))) * vec3<f32>(-647f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1081f - global0.x))), true).b, func_2(u_input.a.x, -10490i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1428f, global0.x, 467f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(107f, global0.x, global0.x) - _wgslsmith_div_vec3_f32(vec3<f32>(290f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, 780f))))), !all(vec3<bool>(true, true, true))).a.a, u_input.b);
    global0 = _wgslsmith_f_op_vec2_f32(step(func_2(-2147483647i, -var_0.d.d.x, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_4(var_0.b.x, 716f, Struct_3(var_0.d, u_input.b), true)))), global0.x, 661f), var_0.b.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 111f) - _wgslsmith_f_op_f32(-global0.x))).d.xz, var_0.b));
    var var_1 = func_2(-abs(-23335i), -48985i >> (1u % 32u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(var_0.d.b, u_input.c.x, vec3<f32>(var_0.a, global0.x, var_0.a), false).d.x - 793f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(417f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f - global0.x) + global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(788f, -530f, global0.x), vec3<f32>(var_0.b.x, var_0.b.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.a, -1619f))), vec3<bool>(var_0.d.e, var_0.c.a, true))), true).b;
    var var_2 = -(vec4<i32>(-var_0.d.b, ~2147483647i | var_0.d.b, _wgslsmith_div_i32(~0i, 24452i), ~select(3488i, var_0.d.b, true)) & ~vec4<i32>(0i, var_0.d.b, max(0i, 16507i), ~var_0.d.b));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(~var_0.d.b, ~26272i, vec3<f32>(var_0.a, -1484f, 405f), false).d.x) * _wgslsmith_f_op_f32(ceil(-105f))), var_0.b.x, any(vec2<bool>(all(!vec3<bool>(var_0.c.a, true, var_0.d.e)), u_input.b < ~u_input.b))));
    var var_4 = vec3<bool>(func_3(var_0.b, Struct_3(Struct_1(any(vec2<bool>(var_1.a, false)), 1i, var_0.e << (0u % 32u), ~vec2<i32>(var_0.d.b, 1i), false), abs(u_input.b ^ 38472u)), _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.c), false, var_0.d.a);
    var var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1399f, global0.x, var_3)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 128f, global0.x, -746f)) * vec4<f32>(505f, -1537f, var_3, var_0.a))), vec4<f32>(1752f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a * global0.x))), global0.x, 162f))));
    var_2 = abs(~(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, u_input.a.x, 1i, -4084i), ~vec4<i32>(0i, -11228i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, var_2.x, var_2.x, -34695i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32((firstLeadingBit(vec2<u32>(1u, 98046u)) & ~vec2<u32>(u_input.b, u_input.b)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_0.d.c), vec2<u32>(27050u, 1u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.e, var_0.e), vec2<u32>(4294967295u, var_0.d.c), var_4.x), ~vec2<u32>(4294967295u, var_0.d.c), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.e, u_input.b), vec2<u32>(4294967295u, u_input.b))) << (~firstTrailingBit(vec2<u32>(1u, 0u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(195f * var_0.a), 1998f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(915f, 414f) * vec2<f32>(var_3, var_0.b.x)) - var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-513f)) - global0.x)), _wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 66485u, 83932u, 4294967295u)), ~reverseBits(vec4<u32>(22869u, u_input.b, 4294967295u, u_input.b))) & ~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_0.d.c, var_0.e, u_input.b, var_0.e)), ~vec4<u32>(1u, u_input.b, var_0.d.c, u_input.b), ~vec4<u32>(u_input.b, u_input.b, var_0.d.c, var_0.e)));
}

