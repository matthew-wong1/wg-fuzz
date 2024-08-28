struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1386f, 199f, -1345f);

var<private> global1: f32 = -1199f;

var<private> global2: vec2<u32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<i32>(-25447i, 25811i, -39873i, -44415i), 11159i, true), 2147483647i, Struct_1(vec4<i32>(-16807i, 1i, 2510i, 2147483647i), 0i, false));

var<private> global4: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = 42577u;
    var var_2 = global3.c.a.wwy;
    let var_3 = arg_0.a.x;
    let var_4 = true;
    return Struct_1(vec4<i32>(1i, -global3.a.b, -_wgslsmith_sub_i32(abs(global3.c.b), var_2.x), select(arg_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(4094i, 2147483647i), vec2<i32>(0i, var_3)), arg_0.c) ^ var_2.x), u_input.c.x, true);
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(func_2(Struct_1(vec4<i32>(-1i) * -vec4<i32>(global3.c.a.x, u_input.c.x, 1i, 1i), countOneBits(65313i) & ~global3.a.a.x, any(!vec2<bool>(true, global3.c.c)))), u_input.d, global3.a);
    global3 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(u_input.a, reverseBits(u_input.a)) & global3.c.a, -5393i, all(select(!vec4<bool>(global3.c.c, true, false, var_0.a.c), vec4<bool>(true, global3.a.c, global3.a.c, true), !vec4<bool>(true, global3.a.c, var_0.a.c, global3.a.c)))), 2147483647i, var_0.c);
    let var_1 = var_0;
    global4 = false;
    let var_2 = abs(var_1.a.a);
    return func_2(Struct_1(-select(vec4<i32>(2147483647i, 19509i, -21213i, var_2.x), vec4<i32>(-2147483647i, global3.c.a.x, u_input.c.x, -31499i), select(vec4<bool>(global3.a.c, var_1.c.c, global3.a.c, var_0.c.c), vec4<bool>(true, true, false, global3.c.c), vec4<bool>(true, true, var_1.c.c, var_0.c.c))), -19i, true));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-234f, _wgslsmith_f_op_f32(ceil(-1135f)))), _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * global0.x))))));
    let var_1 = _wgslsmith_clamp_i32(arg_3.b, abs(~16549i), arg_2.x);
    let var_2 = select((countOneBits(~arg_0) & global2.x) ^ global2.x, global2.x, arg_3.c.c || true);
    var var_3 = arg_1;
    global2 = vec2<u32>(countOneBits(var_2), var_2 & ~_wgslsmith_add_u32(1u, _wgslsmith_div_u32(0u, arg_0)));
    return arg_3.a;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(global2.x, func_2(Struct_1(vec4<i32>(min(-37695i, 1i), -global3.b, global3.a.b, 15407i), max(1i, 2147483647i), select(global3.c.c && true, false, true))), ~vec4<i32>(~(arg_1 ^ global3.b), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(23199i, -1i, 33264i, u_input.a.x), vec4<i32>(arg_1, -8145i, u_input.a.x, 6334i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, -12990i, 11519i), global3.c.a)), 2147483647i, -arg_1 | min(-1i, 0i)), Struct_2(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(534f, 1927f, -572f, arg_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, 464f, arg_0, global0.x)))), _wgslsmith_div_i32(u_input.c.x, ~(-global3.b)), global3.c));
    let var_1 = false;
    var var_2 = Struct_1(~(_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(-18038i, 2147483647i, 4803i, var_0.a.x)) ^ ~func_4(34837u, global3.a, global3.c.a, Struct_2(Struct_1(var_0.a, 25724i, global3.a.c), 2147483647i, global3.a)).a), func_4(~global2.x & 1u, func_2(func_2(global3.c)), var_0.a, Struct_2(global3.c, 1i, Struct_1(vec4<i32>(29969i, 2147483647i, 15648i, var_0.a.x), var_0.a.x, true))).a.x ^ (-1i ^ arg_1), all(select(vec2<bool>(global3.c.c, false), !(!vec2<bool>(global3.c.c, var_0.c)), var_1)));
    let var_3 = !all(vec2<bool>(true, any(!vec4<bool>(false, true, global3.a.c, false))));
    var var_4 = Struct_2(Struct_1(global3.a.a, var_0.b, var_1 & false), var_0.b, Struct_1(vec4<i32>(17131i, -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.b, u_input.d), 1i << (0u % 32u), -1i), -var_0.a.x), global3.b, func_3(vec4<f32>(-588f, _wgslsmith_f_op_f32(-601f - 735f), -818f, _wgslsmith_f_op_f32(-1000f * 1087f))).c));
    return func_3(vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1702f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-311f - arg_0)))), -664f, -1274f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.c, u_input.d, func_1(global0.x, max(_wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, u_input.b)), global3.c.a.x)));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(157f + 1171f), _wgslsmith_f_op_f32(round(677f)))), -1939f))), -513f));
    global3 = Struct_2(func_3(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(104f - -1000f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(~(~(-2147483647i)), 2147483647i & reverseBits(global3.a.b)), -(~global3.a.a.zx | vec2<i32>(-59353i, u_input.b))), func_4(global2.x, Struct_1(min(vec4<i32>(u_input.b, u_input.d, -3378i, u_input.a.x) >> (vec4<u32>(global2.x, global2.x, 4294967295u, 44825u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(0i, -1i, 29761i, 2147483647i))), select(26796i, u_input.b, global0.x >= -267f), _wgslsmith_f_op_f32(step(global0.x, global0.x)) < _wgslsmith_f_op_f32(select(-356f, 131f, global3.a.c))), u_input.a, Struct_2(func_1(_wgslsmith_f_op_f32(global0.x - 329f), -1141i), -(~0i), Struct_1(u_input.a >> (vec4<u32>(27696u, global2.x, 36148u, 17855u) % vec4<u32>(32u)), func_1(1899f, 1i).b, global2.x != global2.x))));
    let var_0 = global2.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -226f, global0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, 105f, global0.x) * vec3<f32>(global0.x, 1921f, global0.x)), vec3<f32>(global0.x, global0.x, global0.x)))))));
    global1 = -1109f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global0.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.zz))), vec2<bool>(-572f > global0.x, all(vec2<bool>(true, true))))), vec4<i32>(-1i, select(_wgslsmith_div_i32(-38585i, u_input.d), _wgslsmith_mult_i32(_wgslsmith_sub_i32(18202i, -1i), func_1(global0.x, 59842i).a.x), func_4(min(global2.x, 74812u), Struct_1(global3.a.a, -1i, false), ~global3.c.a, Struct_2(global3.c, u_input.a.x, Struct_1(global3.c.a, u_input.d, global3.a.c))).c), func_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), firstTrailingBit(1i))).b, ~u_input.a.x), vec2<f32>(-655f, _wgslsmith_f_op_f32(-1051f + -996f)), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-178f * -909f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-206f))), any(vec2<bool>(!global3.c.c, true)))));
}

