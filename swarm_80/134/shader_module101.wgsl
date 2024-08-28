struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> vec2<i32> {
    global0 = array<Struct_1, 19>();
    let var_0 = select(_wgslsmith_sub_vec2_i32(-countOneBits(arg_0.c.xy) | countOneBits(countOneBits(vec2<i32>(-2147483647i, -35947i))), reverseBits(abs(vec2<i32>(u_input.a.x, u_input.a.x))) | vec2<i32>(select(2147483647i, 65435i, arg_1), i32(-1i) * -18534i)), max(_wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(u_input.b, -2147483647i)), firstTrailingBit(select(arg_0.c.zy, vec2<i32>(1i, arg_0.c.x), vec2<bool>(false, arg_0.a)))) & vec2<i32>(arg_0.b, u_input.a.x), vec2<bool>(all(vec3<bool>(arg_0.b > u_input.b, all(vec3<bool>(true, arg_0.a, false)), !arg_1)), true));
    let var_1 = arg_0;
    let var_2 = vec3<bool>(any(!vec4<bool>(all(vec4<bool>(arg_1, var_1.a, false, arg_0.a)), all(vec3<bool>(false, false, var_1.a)), false, true)), true, arg_0.a);
    global0 = array<Struct_1, 19>();
    return vec2<i32>(~(var_0.x | u_input.b), var_0.x);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = !(!any(select(select(vec2<bool>(false, false), arg_2.yy, arg_0), vec2<bool>(true, arg_0), true)));
    let var_1 = ~(~(~u_input.a));
    let var_2 = max(arg_1.x, firstTrailingBit(abs(-u_input.b << (4294967295u % 32u))));
    var var_3 = arg_2;
    var_3 = !arg_2;
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(14114u, 19u)];
    let var_1 = Struct_3(true, -func_4(true & var_0.b, func_3(arg_1, !var_0.b, _wgslsmith_f_op_vec3_f32(-arg_0.a)), vec3<bool>(arg_2.c > arg_0.c, !arg_0.b, true)), u_input.a);
    var_0 = arg_2;
    let var_2 = arg_2;
    var var_3 = arg_1.c.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.x - var_2.a.x)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<bool>(false, !arg_0.a, true, !(!arg_2));
    global0 = array<Struct_1, 19>();
    var var_1 = Struct_2(~min(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(1u, 1u))), func_3(Struct_3(false & var_0.x, -(~(-11172i)), vec3<i32>(-u_input.a.x, -60649i, firstLeadingBit(-2147483647i))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1263f, arg_1.x, -353f) + vec3<f32>(arg_1.x, 690f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, 535f, arg_1.x))))).x, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), any(select(vec4<bool>(arg_0.a, false, false, var_0.x), select(vec4<bool>(arg_0.a, true, var_0.x, arg_2), vec4<bool>(false, false, arg_0.a, arg_0.a), false), var_0.x)), ~3326u, !vec3<bool>(arg_0.a, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(-216f, arg_1.x))))));
    var_0 = !select(!select(vec4<bool>(arg_0.a, false, arg_0.a, arg_2), vec4<bool>(var_1.c.d.x, var_1.c.b, true, false), arg_1.x < arg_1.x), !select(!vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, true, false, var_1.c.d.x), vec4<bool>(var_1.c.b, arg_2, var_0.x, var_1.c.d.x)), arg_0.a);
    let var_2 = vec3<f32>(-2518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f + _wgslsmith_f_op_f32(f32(-1f) * -463f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(arg_1.x, var_1.d.x)), var_1.c.a.x, arg_0.a)), 187f));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.d.x)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-643f + -146f), var_2.x)))), arg_0.a, countOneBits(countOneBits(1u)), !var_0.xyy);
}

fn func_1() -> Struct_1 {
    var var_0 = !vec4<bool>(true, false, -u_input.b == _wgslsmith_clamp_i32(abs(14060i), -u_input.a.x, ~(-17304i)), true);
    global0 = array<Struct_1, 19>();
    var var_1 = !select(vec3<bool>(true, !any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x), vec3<bool>(false, false, var_0.x), all(vec2<bool>(true, true)));
    var_1 = var_0.yxx;
    var var_2 = vec4<i32>(-abs(abs(-2147483647i)), _wgslsmith_div_i32(0i, reverseBits(-1i)) << (abs(_wgslsmith_clamp_u32(~4294967295u, ~4294967295u, _wgslsmith_mult_u32(4294967295u, 1u))) % 32u), 0i, i32(-1i) * -1i);
    return func_5(Struct_3(false, var_2.x, max(~var_2.wxx, select(var_2.zwx, vec3<i32>(var_2.x, u_input.b, u_input.a.x), var_1.x)) ^ u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(24934u, 19u)], Struct_3(false, u_input.a.x, vec3<i32>(u_input.b, -23343i, 2147483647i)), global0[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u))))), any(vec4<bool>(all(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, false, true, true))), false, false, !any(vec4<bool>(var_0.x, true, var_1.x, false)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~vec2<u32>(_wgslsmith_mult_u32(1u, 1u), abs(1u)), ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, u_input.b), -1i & u_input.a.x) & -29570i, func_6(func_1(), select(vec3<i32>(u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b), 1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.b, -5212i))), any(vec2<bool>(true, false))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-771f, 2011f)))) - _wgslsmith_f_op_vec2_f32(-func_5(Struct_3(true, u_input.b, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(220f, -169f) * vec2<f32>(1060f, -102f)), func_1().d.x).a.xz)));
    let var_1 = ~1u;
    let var_2 = vec3<f32>(-1821f, _wgslsmith_f_op_f32(708f + _wgslsmith_f_op_f32(sign(865f))), var_0.c.a.x);
    var var_3 = -1416f;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-1244f * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.c.a.x)), -403f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))), _wgslsmith_f_op_f32(round(var_2.x))));
    let var_5 = vec4<f32>(321f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_0.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.c.a.x, var_4.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.a.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-37214i, -9986i)) & vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_div_vec2_i32(~(~u_input.a.zz), ~vec2<i32>(var_0.b, u_input.b))), ~firstLeadingBit(var_1) | ~var_1, _wgslsmith_f_op_f32(-1703f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1069f))), var_0.c.d.x))));
}

