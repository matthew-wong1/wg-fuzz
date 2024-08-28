struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: Struct_4,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec2<u32> {
    let var_0 = vec2<bool>(all(vec4<bool>(true, true, true, true)) && all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)), !(!(arg_1.x != arg_1.x) | false));
    let var_1 = i32(-1i) * -56232i;
    var var_2 = Struct_4(vec4<i32>(firstLeadingBit(-2147483647i), 13954i, arg_0.x, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(arg_0.x, arg_0.x)) ^ -_wgslsmith_div_i32(u_input.a.x, u_input.b)), vec3<f32>(arg_1.x, 1898f, -559f), vec3<u32>(~1u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_sub_u32(23219u, 1u)), ~4294967295u));
    var_2 = Struct_4(~countOneBits(vec4<i32>(_wgslsmith_div_i32(arg_0.x, -1i), 2147483647i, u_input.a.x, _wgslsmith_dot_vec2_i32(arg_0.xw, vec2<i32>(arg_0.x, -41352i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), -516f, _wgslsmith_f_op_f32(min(-1208f, -1453f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_2.b.x)))), ~vec3<u32>(var_2.c.x, var_2.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(46641u, 58585u, var_2.c.x, var_2.c.x), ~vec4<u32>(38374u, var_2.c.x, 5566u, 73047u))));
    var_2 = Struct_4(-var_2.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(791f, var_2.b.x, 1121f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, -480f, 101f) + var_2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b, var_2.b)) + vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x))))), _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(var_2.c, var_2.c), vec3<u32>(var_2.c.x, var_2.c.x, 1u)), select(vec3<u32>(1u, 6791u, 0u), _wgslsmith_mult_vec3_u32(var_2.c, vec3<u32>(var_2.c.x, var_2.c.x, var_2.c.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, false))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(43861u, 1u), var_2.c.yx), _wgslsmith_dot_vec2_u32(var_2.c.yx, vec2<u32>(var_2.c.x, 12028u)), abs(var_2.c.x)), vec3<u32>(max(var_2.c.x, 49152u), firstLeadingBit(var_2.c.x), 1u) & firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 7652u, 10409u), var_2.c))));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(4294967295u, 4294967295u, var_2.c.x, var_2.c.x)), max(~(~vec4<u32>(var_2.c.x, 81687u, var_2.c.x, var_2.c.x)), max(abs(vec4<u32>(var_2.c.x, 1u, var_2.c.x, 19710u)), ~vec4<u32>(86112u, var_2.c.x, 93096u, 1u)))), var_2.c.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = Struct_5(_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(24836u, arg_0) >> (vec2<u32>(53324u, arg_0) % vec2<u32>(32u)), vec2<u32>(arg_0, arg_0) | vec2<u32>(1u, 4294967295u)), ~(~func_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec2<f32>(arg_1.x, -597f)))), all(vec2<bool>(true, true)), Struct_4(~vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(18429i, -41937i, u_input.a.x), u_input.a), abs(u_input.a.x), ~0i), vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1331f, arg_1.x)), arg_1.x), min(vec3<u32>(arg_2, arg_0, 15381u) | (vec3<u32>(0u, 1910u, arg_0) >> (vec3<u32>(21364u, 0u, arg_2) % vec3<u32>(32u))), vec3<u32>(23018u, ~arg_2, func_3(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x), arg_1.yy).x))), countOneBits(abs(u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-142f, -2498f, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xxy + vec3<f32>(191f, arg_1.x, arg_1.x)), vec3<f32>(-1000f, -321f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(arg_1.zwz, vec3<f32>(-197f, arg_1.x, 533f))))))));
    var var_2 = vec4<bool>(var_1.b, true, -1438f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.b.x - arg_1.x))), true);
    var var_3 = var_1.c.a.wx;
    return Struct_1(_wgslsmith_clamp_vec2_u32(select(var_1.c.c.xz, func_3(abs(vec4<i32>(-2147483647i, u_input.b, 1i, var_1.d)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, var_1.e.x), vec2<f32>(912f, var_1.e.x))), true), abs(func_3(firstTrailingBit(var_1.c.a), _wgslsmith_f_op_vec2_f32(var_1.e.yz + var_1.e.xx))), _wgslsmith_mult_vec2_u32(vec2<u32>(66953u, _wgslsmith_mod_u32(arg_0, arg_2)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(18916u, 9859u), vec2<u32>(107915u, 4294967295u), var_1.c.c.yz), vec2<u32>(var_1.c.c.x, arg_0) | var_1.c.c.xy))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(var_1.c.a, ~(var_1.c.a << (vec4<u32>(53028u, 28540u, var_1.a.x, 0u) % vec4<u32>(32u)))), vec4<i32>(-1i, -2147483647i, var_3.x, 30144i)), select(vec3<bool>(true, !(var_1.b != true), false), vec3<bool>(var_2.x, any(var_2.yw), 1u > _wgslsmith_mult_u32(55107u, arg_2)), var_2.yww), var_1.c.c.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-235f))), _wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f), -740f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1036f, -661f, 278f, -144f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1848f, -210f, -1523f, -1411f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(106f, -612f, 1409f, 892f), vec4<f32>(-632f, -298f, -358f, 431f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-580f, 884f) * -659f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 761f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1589f, -655f), _wgslsmith_f_op_f32(1312f * 373f), arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f - 398f) * _wgslsmith_f_op_f32(max(-740f, -1804f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1000f, 420f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, var_0.x, -909f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 803f, var_0.x, 1072f), vec4<f32>(var_0.x, 488f, var_0.x, -822f), arg_1.c.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1744f, 1106f, -900f, -1123f) - vec4<f32>(1120f, 1523f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(977f, var_0.x, var_0.x, 187f) - vec4<f32>(1329f, -630f, 1793f, var_0.x)), arg_1.c.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(829f, _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(round(724f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1045f + 916f))))))));
    let var_1 = Struct_4(select(_wgslsmith_sub_vec4_i32(arg_1.b, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_1.b.x, arg_1.b.x, arg_0.x), vec4<i32>(u_input.b, arg_1.b.x, u_input.a.x, arg_1.b.x)))), -vec4<i32>(1i, 26503i, arg_0.x, arg_1.b.x ^ arg_1.b.x), -_wgslsmith_add_i32(arg_1.b.x, arg_0.x) >= -2277i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1329f)), var_0.x), ~select(~vec3<u32>(arg_1.a.x, arg_1.a.x, 0u), reverseBits(vec3<u32>(4294967295u, 0u, 0u) | vec3<u32>(arg_1.d, arg_1.d, 1u)), select(select(vec3<bool>(true, arg_1.c.x, false), arg_1.c, arg_1.c), vec3<bool>(true, true, arg_1.c.x), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_1.b.x, 419f, -174f), vec4<f32>(var_0.x, var_0.x, var_1.b.x, var_1.b.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -707f, var_1.b.x, 2826f), vec4<f32>(-776f, 1000f, -1084f, 1089f), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -571f, 1989f, var_1.b.x))))));
    let var_2 = Struct_2(select(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.x, arg_1.b.x, arg_0.x) << (reverseBits(var_1.c) % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.b, _wgslsmith_mod_i32(arg_0.x, arg_1.b.x))), min(vec3<i32>(-116i, 1i, max(-2147483647i, -2147483647i)), reverseBits(-arg_1.b.wyw)), func_2(_wgslsmith_div_u32(8139u, var_1.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2602f, -1000f, var_1.b.x, 338f)))), _wgslsmith_dot_vec3_u32(var_1.c >> (vec3<u32>(arg_1.d, var_1.c.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(var_1.c, vec3<u32>(var_1.c.x, arg_1.d, arg_1.a.x)))).c));
    return _wgslsmith_dot_vec3_u32(var_1.c, var_1.c);
}

fn func_5(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_4(max(~(-firstTrailingBit(vec4<i32>(2147483647i, u_input.b, u_input.a.x, u_input.b))), max(vec4<i32>(-54385i, 5499i, u_input.a.x & u_input.b, 1i), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-13281i, u_input.a.x), -13502i, _wgslsmith_add_i32(23895i, u_input.b)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(640f, -1000f, _wgslsmith_f_op_f32(-811f - 660f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -278f, -302f) + vec3<f32>(-904f, 742f, -335f)))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(17695u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 21285u, countOneBits(~arg_0.x)), _wgslsmith_add_vec3_u32(abs(select(vec3<u32>(5725u, 28852u, arg_0.x), vec3<u32>(0u, arg_0.x, arg_0.x), vec3<bool>(false, true, false))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 34491u, arg_0.x), ~vec3<u32>(0u, arg_0.x, 0u)))));
    var var_1 = ~arg_0.x;
    var_1 = 20015u;
    var var_2 = func_2(func_2(~abs(4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, var_0.b.x, -1556f, -756f))) + vec4<f32>(var_0.b.x, -911f, -1058f, var_0.b.x)), ~(~120455u)).a.x, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1302f, var_0.b.x))), -496f, _wgslsmith_f_op_f32(ceil(517f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - 645f), var_0.b.x)), 1u).b | _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(2147483647i, -9259i, var_0.a.x, u_input.b), var_0.a, true), select(var_0.a, var_0.a, false) | vec4<i32>(u_input.a.x, -56467i, -2147483647i, u_input.b)), var_0.a);
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -16056i), ~1089i);
    return Struct_5(_wgslsmith_clamp_vec2_u32(func_2(~_wgslsmith_dot_vec2_u32(var_0.c.yy, vec2<u32>(4294967295u, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1693f)), _wgslsmith_f_op_f32(floor(var_0.b.x)), var_0.b.x, 530f), ~_wgslsmith_sub_u32(var_0.c.x, var_0.c.x)).a, arg_0, ~(_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(2181u, var_0.c.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.x, 57546u), vec2<u32>(var_0.c.x, arg_0.x)) % vec2<u32>(32u)))), true, Struct_4(var_0.a & _wgslsmith_div_vec4_i32(vec4<i32>(30744i, -45087i, u_input.b, var_3.x), vec4<i32>(2147483647i, -30568i, -24967i, -520i)), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, 1521f)), var_0.b.x), ~var_0.c), -19205i, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1050f + var_0.b.x), -502f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1283f, 1320f, true)))))), _wgslsmith_f_op_f32(trunc(var_0.b.x))));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -199f);
    var_0 = -1756f;
    var var_1 = func_5(abs(vec2<u32>(func_4(vec4<i32>(7230i, -10497i, u_input.a.x, 1i), func_2(1u, vec4<f32>(-496f, 475f, 1000f, -805f), 4294967295u)), ~(~16555u))));
    let var_2 = min(vec4<u32>(var_1.a.x, select(select(~var_1.c.c.x, var_1.a.x >> (3627u % 32u), true), 1u >> (firstTrailingBit(24690u) % 32u), var_1.b), func_2(func_2(var_1.a.x, vec4<f32>(-582f, -1063f, var_1.c.b.x, var_1.e.x), 1u).a.x | var_1.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, -1295f, 1315f, var_1.c.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.x, var_1.c.b.x, 266f, var_1.e.x))), var_1.c.c.x).a.x, var_1.c.c.x), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.c.x, 33869u, var_1.c.c.x, var_1.c.c.x), vec4<u32>(var_1.a.x, var_1.a.x, var_1.c.c.x, 1u)) ^ ~vec4<u32>(0u, 1u, var_1.c.c.x, 0u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(step(var_1.c.b.x, var_1.e.x)))))));
    return Struct_5(var_2.zx, var_1.b, var_1.c, u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1583f, var_1.c.b.x, 881f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_5(~firstLeadingBit(vec2<u32>(var_0.c.c.x, 0u) << (var_0.c.c.yy % vec2<u32>(32u))));
    var_0 = Struct_5(~_wgslsmith_div_vec2_u32(select(vec2<u32>(var_0.a.x, 679u), vec2<u32>(var_0.c.c.x, 4294967295u), var_0.b), func_5(var_0.c.c.yx).c.c.xz) << (var_0.c.c.zy % vec2<u32>(32u)), var_0.a.x < firstLeadingBit(countOneBits(13343u)), func_5(~reverseBits(var_0.c.c.xx)).c, u_input.b | _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 2147483647i, u_input.b) << (_wgslsmith_div_u32(var_0.c.c.x, var_0.c.c.x) % 32u), abs(1i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1264f)), _wgslsmith_f_op_f32(1000f + var_0.e.x), 328f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b.x, 1450f, 1862f), _wgslsmith_f_op_vec3_f32(var_0.e - vec3<f32>(var_0.c.b.x, -2058f, 2608f)))))));
    var_0 = Struct_5(vec2<u32>(var_0.a.x, 1u), select(var_0.b == any(!vec4<bool>(false, var_0.b, var_0.b, var_0.b)), all(vec2<bool>(func_5(vec2<u32>(var_0.a.x, 4294967295u)).b, var_0.c.b.x == var_0.e.x)), var_0.b), Struct_4(var_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.b)), ~max(vec3<u32>(var_0.c.c.x, var_0.c.c.x, 17637u) << (var_0.c.c % vec3<u32>(32u)), var_0.c.c)), 56206i, _wgslsmith_f_op_vec3_f32(func_5(~(~vec2<u32>(0u, var_0.c.c.x))).c.b - var_0.e));
    var var_1 = Struct_2(var_0.c.a.zzx);
    var var_2 = vec2<bool>(var_0.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.xz * var_0.e.xz) - vec2<f32>(_wgslsmith_f_op_f32(587f + _wgslsmith_f_op_f32(ceil(var_0.e.x))), -1362f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, var_0.c.b.x, -612f, 448f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.x, var_0.e.x, var_0.e.x, var_0.c.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1470f, var_0.c.b.x, var_0.e.x, var_0.c.b.x)))), select(vec4<bool>(var_2.x, var_0.b, var_0.b, false), vec4<bool>(false, false, var_2.x, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(267f, 1597f, 423f, var_0.c.b.x)))))))), vec3<u32>(func_2(_wgslsmith_sub_u32(14049u & var_0.a.x, _wgslsmith_mult_u32(var_0.c.c.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.c.b.x, var_0.e.x, var_0.c.b.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.b.x, var_0.e.x, 1322f, var_0.c.b.x), vec4<f32>(207f, var_0.e.x, 2248f, var_0.e.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(var_0.a, var_0.a))).a.x, var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c.c.x, ~41826u, abs(0u), 31092u), vec4<u32>(select(var_0.c.c.x, var_0.a.x, var_0.b), _wgslsmith_clamp_u32(1u, var_0.c.c.x, 1u), func_5(vec2<u32>(87295u, var_0.a.x)).a.x, ~4294967295u))), max(37076u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(func_2(41591u, vec4<f32>(375f, 1000f, -464f, var_0.c.b.x), var_0.c.c.x).a.x, 1u, 0u), 7847u)), vec4<u32>(~43112u, ~(countOneBits(4294967295u) >> (_wgslsmith_add_u32(var_0.a.x, 0u) % 32u)), func_4(vec4<i32>(_wgslsmith_div_i32(2147483647i, var_1.a.x), 0i, 7914i, 0i), func_2(var_0.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.b.x, var_0.e.x, var_0.c.b.x, -694f), vec4<f32>(var_0.e.x, 2437f, 1429f, var_0.e.x)), var_0.a.x >> (var_0.a.x % 32u))), 60794u));
}

