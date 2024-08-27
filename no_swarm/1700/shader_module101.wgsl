struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = any(!select(vec2<bool>(false, all(vec3<bool>(arg_0, arg_0, arg_0))), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0), vec2<bool>(true, true), arg_0), false));
    let var_1 = Struct_3(~(~4294967295u), select(u_input.a.x, ~abs(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), select(!var_0, true, all(vec2<bool>(arg_0, true)) & true)), Struct_1(u_input.d.zzw, _wgslsmith_f_op_f32(-arg_1.a)), arg_1.a, arg_0);
    let var_2 = Struct_4(select(vec4<bool>((true && var_0) == true, true, false, !var_0), !(!(!vec4<bool>(var_0, true, var_1.e, var_1.e))), true), -2147483647i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.c.x), vec4<i32>(-19995i, 8864i, -48257i, 2147483647i)), ~vec4<i32>(u_input.c.x, 24064i, u_input.c.x, u_input.c.x)));
    let var_3 = 1u;
    let var_4 = Struct_3(u_input.e.x & ~abs(0u), 1u, var_1.c, _wgslsmith_f_op_f32(-var_1.d), true);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1126f, arg_1.a)) * -369f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_1(vec3<u32>(4294967295u, ~(~(~55815u)), ~max(84623u, 1u >> (u_input.d.x % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.x, Struct_2(-1173f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-908f + 463f), _wgslsmith_f_op_f32(f32(-1f) * -967f))), 833f)));
    let var_1 = all(vec3<bool>(arg_0.x, false, select(true, any(!vec2<bool>(arg_0.x, true)), !(arg_0.x & true))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -373f, 1000f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(sign(var_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, -786f, var_0.b))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -1379f, 639f)))));
    let var_3 = Struct_4(!select(select(select(vec4<bool>(arg_0.x, var_1, false, arg_0.x), vec4<bool>(false, var_1, arg_0.x, true), arg_0.x), !vec4<bool>(true, var_1, false, true), select(vec4<bool>(arg_0.x, true, false, var_1), vec4<bool>(true, var_1, var_1, true), vec4<bool>(true, true, false, arg_0.x))), !select(vec4<bool>(arg_0.x, true, arg_0.x, var_1), vec4<bool>(false, arg_0.x, var_1, false), vec4<bool>(false, var_1, var_1, var_1)), !(var_1 == false)), u_input.c.x);
    var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(1u, var_0.a.x), _wgslsmith_dot_vec3_u32(u_input.e, _wgslsmith_mod_vec3_u32(var_0.a, var_0.a))), firstTrailingBit(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
    return Struct_3(52785u, ~(~6364u), Struct_1(var_0.a, 823f), _wgslsmith_f_op_f32(max(-105f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b, var_2.x), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + _wgslsmith_f_op_f32(-var_0.b)))))), true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = select(select(vec3<bool>(false, all(!vec4<bool>(arg_1.a.x, false, arg_0.e, true)), false), select(select(vec3<bool>(true, arg_1.a.x, arg_0.e), arg_1.a.xwz, vec3<bool>(arg_0.e, true, arg_0.e)), !arg_1.a.yxz, select(vec3<bool>(arg_1.a.x, true, false), select(vec3<bool>(arg_1.a.x, arg_0.e, false), arg_1.a.xxw, arg_1.a.zwz), arg_1.a.xxx)), arg_0.e), select(!(!arg_1.a.xwz), !arg_1.a.yyw, arg_1.a.xzx), vec3<bool>(arg_0.e, arg_0.e, !(arg_0.c.b >= _wgslsmith_f_op_f32(-arg_0.d))));
    var_0 = !arg_1.a.wwx;
    var_0 = arg_1.a.yzx;
    let var_1 = arg_1;
    var var_2 = arg_0.c;
    return countOneBits(~(~(u_input.d | u_input.d)) | firstTrailingBit(~u_input.d));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = ~(~func_4(func_2(vec2<bool>(false, arg_1)), Struct_4(select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false)), u_input.c.x)));
    let var_1 = Struct_2(1877f);
    let var_2 = func_2(vec2<bool>(true, arg_1)).c;
    var var_3 = Struct_4(!(!(!(!vec4<bool>(true, arg_1, arg_1, true)))), -_wgslsmith_mult_i32(-16272i, u_input.b.x));
    var var_4 = select(var_3.a.zx, select(select(var_3.a.zx, vec2<bool>(true, var_3.a.x | arg_1), false), vec2<bool>(~var_3.b >= 39884i, any(vec4<bool>(true, false, var_3.a.x, false))), var_3.a.wy), !var_3.a.xx);
    return func_2(vec2<bool>(var_3.a.x, any(var_3.a.zw)));
}

fn func_5(arg_0: Struct_3) -> u32 {
    let var_0 = !(!vec4<bool>(_wgslsmith_f_op_f32(sign(arg_0.c.b)) > _wgslsmith_f_op_f32(min(-1000f, 365f)), any(vec4<bool>(arg_0.e, arg_0.e, false, arg_0.e)), !(!arg_0.e), !(arg_0.e == false)));
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b))))));
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d - -269f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b - arg_0.c.b), -1081f, false)))));
    var_3 = Struct_2(_wgslsmith_f_op_f32(sign(1702f)));
    return ~(~(arg_0.c.a.x & 11144u));
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = 517f;
    let var_1 = u_input.e.x;
    let var_2 = i32(-1i) * -9903i;
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -1i, 2147483647i) | _wgslsmith_mult_vec2_i32(u_input.b.zx, vec2<i32>(~var_2, _wgslsmith_add_i32(-2147483647i, var_2))), abs(u_input.c.yy << ((arg_0.yy | arg_2.c.a.xx) % vec2<u32>(32u))) << (select(arg_2.c.a.zy, func_2(vec2<bool>(false, true)).c.a.yy, arg_3) % vec2<u32>(32u)));
    let var_4 = Struct_4(select(!vec4<bool>(arg_3.x, true, -2147483647i < var_2, select(arg_2.e, false, arg_2.e)), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, arg_2.e, true), vec4<bool>(false, true, arg_2.e, false)), select(vec4<bool>(arg_3.x, false, arg_3.x, false), vec4<bool>(arg_2.e, arg_2.e, arg_3.x, arg_2.e), false)), select(vec4<bool>(var_0 > var_0, !arg_2.e, arg_2.e & true, all(vec3<bool>(true, true, arg_2.e))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, arg_3.x, true), false), vec4<bool>(true, arg_2.e, arg_2.e, arg_2.e), vec4<bool>(true, true, false, arg_2.e)), vec4<bool>(arg_2.e, !arg_3.x, arg_3.x & arg_2.e, arg_2.e))), -arg_1);
    return Struct_2(-1486f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<u32>(1u, func_5(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1233f), false, _wgslsmith_mod_vec2_u32(vec2<u32>(155u, 71874u), u_input.d.xw))), _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d), ~vec4<u32>(u_input.d.x, u_input.e.x, u_input.e.x, 4294967295u)) ^ abs(u_input.d.x)), -28281i, func_1(_wgslsmith_f_op_f32(f32(-1f) * -244f), !(func_1(1000f, false, u_input.d.wy).d > _wgslsmith_f_op_f32(-644f * 929f)), firstLeadingBit(vec2<u32>(reverseBits(u_input.d.x), 69587u))), vec2<bool>(!(u_input.a.x < 0u), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))));
    var var_1 = Struct_4(vec4<bool>(1i == (_wgslsmith_add_i32(u_input.b.x, 1i) | u_input.b.x), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, false, true))), (_wgslsmith_div_f32(var_0.a, 1097f) > func_6(vec3<u32>(943u, u_input.e.x, 4294967295u), u_input.b.x, Struct_3(u_input.e.x, u_input.e.x, Struct_1(u_input.d.yzw, var_0.a), 1075f, true), vec2<bool>(true, true)).a) && all(vec3<bool>(true, true, true)), false), ~(-(~u_input.b.x)) << (reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 1u, ~21777u)) % 32u));
    var var_2 = u_input.a.x;
    let var_3 = firstTrailingBit(abs(_wgslsmith_mult_i32(u_input.c.x, var_1.b)) << (u_input.d.x % 32u));
    var var_4 = func_1(893f, !var_1.a.x, ~reverseBits(vec2<u32>(func_4(Struct_3(130504u, 0u, Struct_1(u_input.e, var_0.a), var_0.a, var_1.a.x), Struct_4(vec4<bool>(false, false, var_1.a.x, var_1.a.x), var_1.b)).x, _wgslsmith_mult_u32(u_input.e.x, 16203u)))).c;
    var var_5 = _wgslsmith_f_op_f32(var_4.b + 946f);
    var_5 = var_4.b;
    var_1 = Struct_4(select(var_1.a, vec4<bool>(var_1.a.x, all(vec2<bool>(false, var_1.a.x)), false, true), var_1.a.x), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b, var_0.a, 710f, -337f), vec4<f32>(var_4.b, var_0.a, var_4.b, var_0.a), false)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, var_4.b, var_4.b, 709f), vec4<f32>(-999f, var_0.a, var_0.a, -149f)))))), ~max(-(u_input.c.x | var_3), reverseBits(34685i)));
}

