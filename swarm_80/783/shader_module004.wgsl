struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(-17422i, 16529i, 1i));

var<private> global1: vec2<i32>;

var<private> global2: u32;

var<private> global3: vec4<i32> = vec4<i32>(-45927i, 1i, -20438i, 1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_4 {
    var var_0 = Struct_3(abs(global3.x) & reverseBits(-2147483647i), Struct_2(arg_1.d), _wgslsmith_mult_u32(u_input.a, arg_1.b.x));
    var var_1 = ~arg_1.b;
    let var_2 = arg_1.a;
    global2 = _wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_mult_u32(arg_1.b.x, 1u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2, arg_1.a)))))), vec4<u32>(var_1.x, _wgslsmith_mod_u32(89184u, ~(arg_1.b.x ^ var_0.c)), ~(~(~1u)), reverseBits(abs(~var_0.c))), 0u, var_0.b.a);
    return Struct_4(vec3<i32>(51185i, var_0.a, -_wgslsmith_add_i32(countOneBits(-41804i), -global1.x)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1409f)), 356f)));
    var var_1 = _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(1816f))), true));
    let var_2 = arg_1.a.x;
    global2 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(~u_input.a, countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 62927u) | vec2<u32>(u_input.a, arg_2.x)), ~abs(72580u)), vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 31270u, 5581u, 29556u)), _wgslsmith_mod_vec4_u32(vec4<u32>(53499u, 56636u, 48107u, 8256u), vec4<u32>(arg_2.x, u_input.c.x, arg_2.x, 1u))), firstTrailingBit(u_input.c.x ^ u_input.a), ~arg_2.x | ~98359u, _wgslsmith_clamp_u32(~arg_2.x, countOneBits(arg_2.x), u_input.a))), (~select(vec4<u32>(13655u, 1u, u_input.a, 44263u), vec4<u32>(42380u, u_input.a, arg_2.x, 4294967295u), true) & vec4<u32>(countOneBits(102196u), u_input.a, arg_2.x, ~arg_2.x)) >> (vec4<u32>(1u, 21818u, ~arg_2.x, ~(~arg_2.x)) % vec4<u32>(32u)));
    var var_3 = 41102i;
    return Struct_3(1i, Struct_2(vec2<bool>(arg_0.x | true, 0u >= arg_2.x)), ~1u);
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(arg_0.x, firstTrailingBit(0u));
    global2 = abs(arg_0.x);
    let var_1 = arg_0.www;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), -382f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f + -902f)) * _wgslsmith_f_op_f32(max(1788f, _wgslsmith_f_op_f32(floor(-1279f))))))));
    var var_3 = func_3(vec2<bool>(false, false), func_2(all(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-639f)))), ~arg_0, var_1.x, select(vec2<bool>(true, true), vec2<bool>(true, false), true))), _wgslsmith_add_vec3_u32(~vec3<u32>(reverseBits(1u), _wgslsmith_mult_u32(4294967295u, var_0), 1u), ~_wgslsmith_sub_vec3_u32(var_1 >> (arg_0.yxy % vec3<u32>(32u)), ~var_1)), true);
    return Struct_3(_wgslsmith_mult_i32(1i, ~global0.a.x), Struct_2(func_3(var_3.b.a, Struct_4(abs(u_input.b)), var_1, all(vec2<bool>(true, var_3.b.a.x))).b.a), arg_0.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = reverseBits(u_input.c);
    global2 = arg_1.c;
    global3 = vec4<i32>(0i, i32(-1i) * -11359i, 1i, 3169i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-466f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(246f + 1464f))))) + -500f), -585f, _wgslsmith_f_op_f32(1720f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1219f))))));
    var var_2 = global0.a.xy;
    return func_1(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 28192u, var_0.x, u_input.c.x) >> (vec4<u32>(var_0.x, arg_1.c, 0u, 34455u) % vec4<u32>(32u)), vec4<u32>(arg_1.c, u_input.c.x, 63768u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 20885u, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 53543u) << (vec4<u32>(arg_1.c, u_input.a, 0u, u_input.a) % vec4<u32>(32u))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global2 = (func_4(4294967295u, func_1(~vec4<u32>(u_input.a, 1u, 38828u, 31351u)), -global3.x >> (~u_input.c.x % 32u)) >> (firstLeadingBit(1u) % 32u)) >> (_wgslsmith_mult_u32(1u, 63791u) % 32u);
    var var_1 = vec2<f32>(-795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-518f, -1082f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1404f)), u_input.b.x >= reverseBits(global0.a.x)))));
    var var_2 = select(countOneBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), abs(vec3<u32>(u_input.c.x, 41970u, u_input.a)), vec3<u32>(u_input.c.x, u_input.c.x, 57550u)), ~reverseBits(vec3<u32>(28368u, 0u, 52600u)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), ~select(abs(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) | firstLeadingBit(vec3<u32>(u_input.a, 27401u, u_input.a)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), false);
    global0 = func_2(false, Struct_1(var_1.x, _wgslsmith_mult_vec4_u32(max(vec4<u32>(var_2.x, 1u, u_input.c.x, u_input.c.x) << (vec4<u32>(var_2.x, 0u, 27785u, var_2.x) % vec4<u32>(32u)), vec4<u32>(var_2.x, 46411u, var_2.x, 70383u) >> (vec4<u32>(4294967295u, 8236u, 1u, 33733u) % vec4<u32>(32u))), ~(vec4<u32>(4294967295u, 0u, u_input.a, var_2.x) & vec4<u32>(4294967295u, var_2.x, 84377u, u_input.c.x))), func_3(vec2<bool>(true, true), func_2(all(vec4<bool>(false, false, false, false)), Struct_1(-965f, vec4<u32>(var_2.x, 0u, u_input.c.x, 60812u), u_input.a, vec2<bool>(true, true))), vec3<u32>(var_2.x, u_input.c.x, ~51786u), true).c, vec2<bool>(_wgslsmith_f_op_f32(sign(var_1.x)) != _wgslsmith_f_op_f32(-2265f + 185f), !any(vec2<bool>(false, false)))));
    let var_3 = abs(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4975u, ~func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(44825u, 0u, var_2.x, var_2.x), vec4<u32>(1u, 0u, var_3, u_input.a))).c));
}

