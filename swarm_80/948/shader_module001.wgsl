struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global1: vec2<f32> = vec2<f32>(1665f, 308f);

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> f32 {
    global2 = 1234f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - global1.x), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-1000f + -1479f), _wgslsmith_f_op_f32(global1.x - arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 170f, global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.x))))))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-var_0.x)))))));
    global1 = var_2.ww;
    return var_2.x;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1666f)), _wgslsmith_f_op_f32(exp2(global1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1433f, -1835f, global1.x, 1000f))) - vec4<f32>(-167f, _wgslsmith_f_op_f32(f32(-1f) * -591f), _wgslsmith_f_op_f32(global1.x + -661f), _wgslsmith_f_op_f32(f32(-1f) * -1575f)))));
    let var_1 = var_0.xy;
    let var_2 = _wgslsmith_div_vec2_i32(u_input.d.xy, ~vec2<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.d.x & 13542i)));
    global2 = -985f;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(!vec4<bool>(false, global0.a.x, global0.a.x, false), _wgslsmith_f_op_vec3_f32(step(var_0.wxz, vec3<f32>(227f, global1.x, -126f))), u_input.a, vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) + _wgslsmith_f_op_f32(global1.x * -137f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-995f, global1.x), vec2<f32>(var_1.x, 361f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-var_0.x)) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -771f)));
    return Struct_3(Struct_1(global0.a), Struct_2(false, vec2<f32>(-132f, _wgslsmith_div_f32(var_0.x, -565f)), select(select(vec2<bool>(false, global0.a.x), select(global0.a.xx, vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global0.a.x, true)), select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.a.x, false), global0.a.zx)), vec2<bool>(global0.a.x, true), any(global0.a.zy)), true), u_input.d, -18336i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_1.x, -772f, -1656f))))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> vec2<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1593f + -945f)), _wgslsmith_f_op_f32(round(145f)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-962f, _wgslsmith_f_op_f32(arg_0 * var_0.e.x), global1.x > var_0.e.x)), var_0.b.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.e.x, -106f, arg_1)) * 195f), -873f)), _wgslsmith_f_op_f32(max(131f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + global1.x)))))));
    var var_2 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.d.x, arg_3, 44133i, arg_3)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_3, u_input.a.x, var_0.c.x), vec4<i32>(31211i, arg_3, 12671i, -1i)))), -reverseBits(vec4<i32>(-1i) * -vec4<i32>(11320i, var_0.c.x, var_0.c.x, arg_3)), select(vec4<i32>(-23722i, ~36837i, -arg_3, min(_wgslsmith_clamp_i32(2912i, u_input.a.x, -2147483647i), reverseBits(0i))), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(-55423i, 54043i, arg_3, 2147483647i), vec4<i32>(1i, arg_2.x, -1i, 0i)), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -1i, 2147483647i, 4106i), !select(vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(false, false, arg_1, global0.a.x), var_0.a.a.x)), !var_0.b.c.x));
    var_2 = ~(-vec4<i32>(firstLeadingBit(var_0.c.x), arg_2.x, firstTrailingBit(arg_3), u_input.a.x) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -18187i, -151i, 0i), firstLeadingBit(vec4<i32>(var_0.d, var_2.x, u_input.d.x, 2822i))), 0i, _wgslsmith_sub_i32(arg_2.x, i32(-1i) * -23260i), -countOneBits(3880i)));
    global2 = -2103f;
    return !vec2<bool>(true, all(vec4<bool>(false, var_0.a.a.x, any(vec4<bool>(false, global0.a.x, true, global0.a.x)), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = select(vec4<bool>(func_2().a.a.x, arg_0.a, var_0.d <= ~46000i, true), vec4<bool>(all(select(arg_1.c, global0.a.xx, false)), var_0.a.a.x, !global0.a.x, arg_0.a), select(vec4<bool>(!func_1(arg_1.b.x, true, var_0.c.zx, 12730i).x, var_0.b.a, !(!arg_0.d), true), select(select(!vec4<bool>(arg_1.a, arg_1.c.x, true, true), vec4<bool>(arg_1.d, false, var_0.a.a.x, global0.a.x), !vec4<bool>(global0.a.x, true, true, true)), select(vec4<bool>(arg_1.a, arg_1.a, global0.a.x, global0.a.x), !vec4<bool>(true, global0.a.x, false, true), false && var_0.a.a.x), true), vec4<bool>(true, true, var_0.e.x < arg_1.b.x, false)));
    var var_2 = Struct_4(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1619u, 0u, 105360u)), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(50441u, 86256u, u_input.c), vec3<u32>(35343u, u_input.c, 57188u)))), min(~(~20955u), u_input.b)), vec4<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.a, var_0.c), vec3<i32>(2147483647i, var_0.c.x, u_input.d.x) >> (~vec3<u32>(u_input.c, 4294967295u, 57050u) % vec3<u32>(32u))), u_input.d.x, u_input.a.x, var_0.c.x), Struct_3(Struct_1(!var_1.yxw), func_2().b, ~(vec3<i32>(30419i, var_0.c.x, -9699i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_0.c.x, u_input.a.x), vec3<i32>(u_input.d.x, u_input.d.x, 16032i), u_input.d)), firstLeadingBit(-1i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 1550f, arg_0.b.x, -2448f))))))), Struct_2(u_input.d.x >= ~(i32(-1i) * -27933i), arg_1.b, select(!select(global0.a.zy, vec2<bool>(arg_1.d, arg_1.d), var_0.b.c.x), select(func_2().a.a.zz, global0.a.xy, vec2<bool>(false, arg_1.c.x)), false), true), -1359f);
    global0 = Struct_1(!(!select(vec3<bool>(false, arg_0.d, true), var_2.c.a.a, !arg_1.a)));
    let var_3 = vec3<u32>(u_input.b, 4294967295u, u_input.c);
    return Struct_2(any(!select(select(var_1, var_1, false), var_1, select(global0.a.x, true, var_2.d.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2.d.b)))))), var_2.c.a.a.xx, !any(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -1000f;
    var var_0 = Struct_2(any(vec2<bool>(global0.a.x, all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(878f, -270f, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.x)))), vec2<bool>(global0.a.x, false || ((88437u | u_input.c) != (u_input.c >> (4294967295u % 32u)))), all(!select(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), select(vec4<bool>(global0.a.x, true, true, true), vec4<bool>(true, global0.a.x, false, global0.a.x), vec4<bool>(global0.a.x, true, false, global0.a.x)), vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))));
    var_0 = func_4(Struct_2(_wgslsmith_add_i32(u_input.a.x, u_input.d.x) >= 59710i, vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), select(!select(vec2<bool>(true, global0.a.x), vec2<bool>(false, global0.a.x), global0.a.xz), vec2<bool>(true, true), select(func_1(var_0.b.x, global0.a.x, vec2<i32>(0i, u_input.d.x), -23686i), vec2<bool>(true, true), var_0.c.x)), func_2().a.a.x), func_2().b);
    var_0 = func_4(func_4(Struct_2(!(!global0.a.x), var_0.b, !(!vec2<bool>(global0.a.x, global0.a.x)), true), Struct_2(!(var_0.b.x <= global1.x), var_0.b, global0.a.yz, !global0.a.x)), func_4(func_4(Struct_2(global0.a.x, var_0.b, vec2<bool>(false, var_0.d), all(global0.a)), func_2().b), Struct_2(all(vec3<bool>(var_0.d, var_0.d, var_0.c.x)), vec2<f32>(-806f, var_0.b.x), vec2<bool>(any(global0.a.zx), var_0.c.x), var_0.a)));
    global2 = -1072f;
    var var_1 = abs(~abs(_wgslsmith_mult_u32(75356u, u_input.b)));
    global0 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~9199u), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(0u, 4294967295u, 7441u, 1u)), vec4<u32>(1u, ~31494u, ~1u, u_input.b)), u_input.c));
}

