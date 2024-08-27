struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1142f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f))));
    let var_0 = arg_2.e;
    var var_1 = arg_2.d;
    let var_2 = arg_2.d;
    var var_3 = Struct_3(u_input.a, any(select(!vec2<bool>(true, var_0.c), select(vec2<bool>(arg_2.e.c, false), vec2<bool>(var_0.c, false), select(vec2<bool>(true, false), vec2<bool>(true, arg_2.e.c), vec2<bool>(var_0.c, false))), vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1102f)), -622f, _wgslsmith_f_op_f32(trunc(arg_1.x))), Struct_1(~arg_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.e.a, -437f, var_2.b.x, var_1.b.x))), vec4<f32>(-582f, var_2.b.x, var_0.a, -499f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.b * arg_2.d.b))), select(vec4<bool>(true, var_0.c, true, true), select(vec4<bool>(var_0.c, true, var_0.c, var_0.c), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, arg_2.b, var_0.c, true), vec4<bool>(false, false, true, false), false)))), select(arg_2.d.c, countOneBits(_wgslsmith_mult_u32(35290u, 1u)), any(vec3<bool>(true, var_0.c, true))), vec4<i32>(_wgslsmith_mult_i32(min(-2147483647i, arg_0.x), arg_0.x >> (32246u % 32u)), _wgslsmith_clamp_i32(countOneBits(arg_2.d.a), -15173i, countOneBits(1i)), firstTrailingBit(arg_0.x), abs(61350i) ^ var_2.d.x)), var_0);
    return _wgslsmith_div_i32(0i, var_1.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    global0 = 1467f;
    var var_0 = vec3<i32>(func_3(_wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 18921i), u_input.a.zz), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-20070i, 21792i), u_input.a.zy))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x - 1000f), _wgslsmith_f_op_f32(arg_2.x - -895f), _wgslsmith_f_op_f32(arg_2.x * 1033f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, -1921f, 1451f), vec3<f32>(arg_2.x, arg_2.x, arg_2.x))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, -742f, arg_2.x))))), Struct_3(u_input.a, false, vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-214f - 1000f)), Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1129f, arg_2.x, arg_2.x, -555f))), 34761u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -15343i)), Struct_2(_wgslsmith_div_f32(305f, arg_2.x), 405f, any(vec4<bool>(false, true, true, false))))), ~u_input.a.x, u_input.a.x);
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-856f, arg_2.x, -1298f, arg_2.x) - vec4<f32>(arg_2.x, 1097f, arg_2.x, -838f)))))), _wgslsmith_mod_u32(max(4294967295u, arg_0.x) >> (~(~75795u) % 32u), 33034u), ~firstLeadingBit(-abs(vec4<i32>(-1i, 22344i, var_0.x, var_0.x))));
    var var_2 = Struct_4(!vec4<bool>(true, true, false, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), var_1);
    let var_3 = var_2.b.d.x;
    return 13742u;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(~_wgslsmith_mult_u32((u_input.c.x | 1u) >> (func_2(u_input.c.zyy, vec2<u32>(u_input.c.x, u_input.c.x), vec2<f32>(222f, -756f)) % 32u), ~(u_input.c.x << (u_input.c.x % 32u))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.c.xw, u_input.c.ww, vec2<u32>(u_input.c.x, 22269u))), u_input.c.zw));
    return Struct_1(~(-75658i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(954f + -510f) * -591f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -115f), 1500f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1068f + 647f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f + 1062f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1905f)) - -1017f)))), var_0.x, countOneBits(~(~vec4<i32>(5284i, u_input.a.x, 2147483647i, u_input.a.x) << (~vec4<u32>(1u, 19101u, 32532u, var_0.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec4<bool>(true, true, true, true)) | false);
    let var_1 = Struct_3(vec3<i32>(u_input.a.x, countOneBits(u_input.a.x), 416i) & ~u_input.a, var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -673f), 1619f)), _wgslsmith_f_op_f32(-846f - -415f))), func_1(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1325f - -350f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2495f, -297f) + -664f))), !all(vec4<bool>(var_0, var_0, var_0, var_0))));
    var var_2 = vec2<f32>(471f, 446f);
    let var_3 = func_1().b.x;
    let var_4 = var_1.d.d;
    var var_5 = Struct_4(!vec4<bool>(!(!var_1.b), any(vec4<bool>(true, var_0, false, var_1.b)), (-2147483647i < var_4.x) | var_0, _wgslsmith_add_i32(var_1.a.x, 2147483647i) > (i32(-1i) * -1i)), var_1.d);
    var var_6 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.a.x, -_wgslsmith_mod_i32(44056i, var_1.d.a)) << (~(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(34398u, u_input.d.x, var_1.d.c, var_1.d.c))) % 32u), max(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(var_1.d.c, 2974u)), var_1.d.c), _wgslsmith_dot_vec3_u32(u_input.c.yyw, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(25971u, var_5.b.c, 48079u), vec3<u32>(u_input.d.x, u_input.d.x, var_5.b.c))))), u_input.c.yy, var_1.a, _wgslsmith_mult_vec3_i32(select(reverseBits(u_input.a), reverseBits(var_5.b.d.wyz), !vec3<bool>(false, var_0, var_1.b)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-15964i, var_1.d.a, 0i), var_1.a)) >> (u_input.d.zzy % vec3<u32>(32u)));
}

