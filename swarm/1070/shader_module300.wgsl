struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.d.zy) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_2.d.xy, _wgslsmith_f_op_vec2_f32(arg_2.d.yz - vec2<f32>(1195f, 1000f))))) - _wgslsmith_f_op_vec2_f32(floor(arg_2.d.xy))));
    var var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(arg_2.d.wzy, arg_2.d.wzz)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 439f, arg_2.d.x))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_2.d.zzy))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_1.x), _wgslsmith_f_op_f32(-277f - var_1.x)), _wgslsmith_div_f32(arg_2.b, -1282f), _wgslsmith_f_op_f32(max(var_1.x, -976f))))), vec3<bool>(true, arg_1.b, _wgslsmith_f_op_f32(min(-308f, arg_2.d.x)) >= -494f)));
    var var_3 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(arg_2.b, arg_2.d.x)));
    var var_4 = _wgslsmith_div_i32(min(u_input.b.x, _wgslsmith_add_i32(13780i, _wgslsmith_mod_i32(arg_1.c.a.x, -1i << (u_input.a.x % 32u)))), 1i & ~max(arg_1.c.a.x, firstTrailingBit(u_input.b.x)));
    return firstLeadingBit(arg_2.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec2<f32> {
    var var_0 = arg_1.c;
    let var_1 = !(!select(select(!vec4<bool>(true, arg_1.a, true, arg_1.a), select(vec4<bool>(false, arg_1.a, false, false), vec4<bool>(arg_1.a, arg_1.b, arg_1.b, arg_1.a), vec4<bool>(false, arg_1.a, false, true)), vec4<bool>(true, arg_1.b, arg_1.b, false)), vec4<bool>(select(arg_1.a, true, true), select(false, arg_1.b, arg_1.a), true, true), !vec4<bool>(false, arg_1.a, false, arg_1.b)));
    var var_2 = _wgslsmith_mult_vec3_i32(~abs((var_0.a << (vec3<u32>(14417u, 4294967295u, 0u) % vec3<u32>(32u))) | vec3<i32>(-1i, 0i, arg_3)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, ~arg_3), vec3<i32>(u_input.b.x, 0i ^ arg_1.c.a.x, -arg_3)) | vec3<i32>(-select(arg_3, arg_3, true), _wgslsmith_dot_vec3_i32(-arg_1.c.a, arg_1.c.a), ~1i));
    let var_3 = func_3(Struct_2(all(!select(var_1, var_1, vec4<bool>(false, true, true, var_1.x))), true, Struct_1(max(vec3<i32>(var_0.a.x, var_2.x, arg_3), var_0.a))), arg_1, Struct_3(vec4<i32>(countOneBits(var_2.x), -73306i, _wgslsmith_dot_vec3_i32(arg_1.c.a, vec3<i32>(arg_3, 0i, arg_3)), abs(var_0.a.x >> (u_input.a.x % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -396f)), -197f), arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, arg_2, -764f, -116f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-438f, arg_2, 1847f, -347f) - vec4<f32>(310f, 421f, -1000f, 733f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, arg_2, 485f, arg_0))))), -var_0.a.x), var_1);
    var var_4 = arg_1;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_2(!arg_1, false, Struct_1(vec3<i32>(~u_input.b.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-11322i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 3835i)), u_input.b.x, arg_1), -_wgslsmith_clamp_i32(16665i, 6151i, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(-197f, var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f * 1000f) - _wgslsmith_f_op_f32(786f * -860f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - -923f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - -1824f) - -242f)))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(func_3(Struct_2(arg_0.x, true, Struct_1(var_0.c.a)), var_0, Struct_3(vec4<i32>(-38557i, var_0.c.a.x, 0i, var_0.c.a.x), 883f, var_0, vec4<f32>(-1000f, -804f, -1000f, -1527f), -10074i), select(vec4<bool>(var_0.b, var_0.a, arg_1, true), vec4<bool>(false, arg_0.x, var_0.a, arg_0.x), arg_1)), -(vec4<i32>(-40401i, 1i, -827i, -5264i) | vec4<i32>(u_input.b.x, 2147483647i, 28399i, 0i))), ~(-vec4<i32>(u_input.b.x, -44864i, u_input.b.x, -30685i) >> ((vec4<u32>(23956u, u_input.a.x, 1u, 0u) >> (vec4<u32>(1u, u_input.a.x, 23469u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))))));
    let var_2 = u_input.a << (_wgslsmith_clamp_vec2_u32(vec2<u32>(~firstTrailingBit(0u), 1u << (firstTrailingBit(23275u) % 32u)), vec2<u32>(7326u, ~68955u) << (u_input.a % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.a, ~u_input.a, ~u_input.a)) % vec2<u32>(32u));
    return Struct_2(2147483647i == -u_input.b.x, true, var_0.c);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = abs(arg_2.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 1000f)) + _wgslsmith_f_op_vec2_f32(-arg_2.d.wy))), arg_0.d.xw, arg_0.c.b)), _wgslsmith_f_op_vec2_f32(exp2(arg_0.d.yx)), !arg_0.c.a));
    var var_2 = Struct_2((!(arg_0.c.a && false) | (_wgslsmith_f_op_f32(f32(-1f) * -345f) != _wgslsmith_f_op_f32(step(1406f, var_1.x)))) || true, select(false, !(!arg_2.c.b & true), all(vec4<bool>(arg_0.c.a, arg_0.c.b, true, arg_2.c.a))), func_2(vec4<bool>(true, arg_0.c.a, !func_2(vec4<bool>(arg_2.c.b, true, false, arg_2.c.b), arg_0.c.a).a, true), any(vec3<bool>(true, true, true))).c);
    return Struct_3(~arg_0.a, _wgslsmith_f_op_f32(684f - 1223f), Struct_2(arg_2.c.a, select(!var_2.a, arg_2.c.a, true), Struct_1(-_wgslsmith_mult_vec3_i32(var_0.xwy, arg_0.a.yyy))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1400f, 968f)), _wgslsmith_f_op_f32(375f * var_1.x), 788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.d.x)) + _wgslsmith_f_op_f32(sign(-837f))))), u_input.b.x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(reverseBits(-29138i << ((_wgslsmith_dot_vec4_u32(vec4<u32>(15676u, u_input.a.x, u_input.a.x, 34586u), vec4<u32>(0u, 1u, u_input.a.x, 1u)) | _wgslsmith_add_u32(4294967295u, u_input.a.x)) % 32u)), 22559i);
    var var_1 = func_5(Struct_3(vec4<i32>(191i, _wgslsmith_clamp_i32(-45564i, u_input.b.x, -2147483647i) & (i32(-1i) * -27699i), ~(~u_input.b.x), u_input.b.x), -347f, func_2(vec4<bool>(true, true, true, true), true), vec4<f32>(1f, -528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1015f, -261f, false))), 791f), firstLeadingBit(u_input.b.x)), select(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, u_input.a.x, 80903u), vec3<u32>(u_input.a.x, u_input.a.x, 8110u), true), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 3313u, 0u), vec3<u32>(u_input.a.x, 21732u, 1u)), 0u, _wgslsmith_mod_u32(61473u, 4294967295u))), 1u, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), Struct_3(vec4<i32>(u_input.b.x, u_input.b.x >> (0u % 32u), countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x))) | min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(0i, u_input.b.x, u_input.b.x, -29774i), vec4<i32>(2147483647i, -36250i, -37735i, 14886i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(431f)), _wgslsmith_f_op_f32(779f + -641f))), func_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, true)), !any(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, 606f, -1750f, 577f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(999f, -455f, -1591f, 1187f), vec4<f32>(-606f, 934f, -1474f, -460f), vec4<bool>(false, true, false, true))))), _wgslsmith_clamp_i32(u_input.b.x ^ 1i, 0i, -_wgslsmith_div_i32(33857i, 2147483647i))));
    var_1 = func_5(Struct_3(_wgslsmith_sub_vec4_i32(reverseBits(abs(var_1.a)), -(~vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -2147483647i))), var_1.d.x, var_1.c, var_1.d, 0i >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), countOneBits(u_input.a.x)) % 32u)), _wgslsmith_clamp_u32(99408u, 1u, u_input.a.x), func_5(Struct_3(vec4<i32>(42418i, 0i, var_1.a.x, var_1.a.x) >> (~vec4<u32>(16561u, 4294967295u, u_input.a.x, 21455u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * -716f) - -544f), Struct_2(all(vec2<bool>(true, var_1.c.a)), true, Struct_1(vec3<i32>(var_1.e, -78972i, -1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, -290f, var_1.d.x, -913f)), ~(-2147483647i) | ~u_input.b.x), 4294967295u, Struct_3(func_3(func_2(vec4<bool>(var_1.c.a, false, false, var_1.c.a), var_1.c.a), var_1.c, func_5(Struct_3(var_1.a, 183f, var_1.c, var_1.d, 0i), 0u, Struct_3(vec4<i32>(7447i, u_input.b.x, var_1.c.c.a.x, -1i), -482f, var_1.c, var_1.d, -2147483647i)), vec4<bool>(var_1.c.b, true, var_1.c.b, false)), _wgslsmith_f_op_f32(-var_1.b), func_2(!vec4<bool>(true, true, var_1.c.a, var_1.c.b), true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1306f, -297f, -1000f)))), u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) + var_1.d);
    let var_3 = true;
    return func_5(Struct_3(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f - _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(-var_2.x)), var_1.c, _wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.d)))), var_1.c.c.a.x), _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, ~42600u), vec2<u32>(_wgslsmith_div_u32(103923u, u_input.a.x), reverseBits(0u)), ~(u_input.a >> (u_input.a % vec2<u32>(32u))))), Struct_3(-var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(600f, -1000f)), -1126f) * _wgslsmith_div_f32(304f, var_1.d.x)), Struct_2(var_3, true, func_2(vec4<bool>(var_3, var_3, var_1.c.a, var_1.c.a), false).c), _wgslsmith_f_op_vec4_f32(-var_1.d), 1i)).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, !any(vec2<bool>(true, true)), func_1());
    var var_1 = func_2(select(vec4<bool>(var_0.b, !all(vec2<bool>(var_0.a, false)), !all(vec3<bool>(false, var_0.a, false)), func_5(Struct_3(vec4<i32>(-13591i, var_0.c.a.x, 14224i, -51678i), 1000f, Struct_2(var_0.b, false, Struct_1(var_0.c.a)), vec4<f32>(1655f, -467f, -317f, 434f), 9037i), 30966u, Struct_3(vec4<i32>(u_input.b.x, var_0.c.a.x, 1i, var_0.c.a.x), 815f, Struct_2(true, false, var_0.c), vec4<f32>(-888f, -1441f, -837f, -977f), var_0.c.a.x)).c.b | !var_0.a), vec4<bool>(var_0.b, !var_0.b, true, var_0.b), max(u_input.b.x, 51983i) >= firstLeadingBit(_wgslsmith_mult_i32(-23021i, var_0.c.a.x))), !var_0.a).c;
    var_0 = Struct_2(false, all(!(!(!vec4<bool>(false, var_0.b, var_0.a, var_0.b)))), var_0.c);
    var_1 = func_5(func_5(func_5(Struct_3(firstLeadingBit(vec4<i32>(69554i, -16208i, u_input.b.x, -73293i)), _wgslsmith_f_op_f32(max(-660f, -214f)), func_5(Struct_3(vec4<i32>(39611i, var_1.a.x, var_1.a.x, u_input.b.x), -1539f, Struct_2(true, true, Struct_1(var_0.c.a)), vec4<f32>(-1297f, 1200f, -104f, -628f), var_1.a.x), u_input.a.x, Struct_3(vec4<i32>(-2642i, -65558i, 75335i, var_0.c.a.x), 914f, Struct_2(var_0.a, var_0.a, var_0.c), vec4<f32>(737f, 576f, -1253f, -1000f), 2147483647i)).c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1810f, 932f, -599f, 497f))), ~44862i), u_input.a.x, Struct_3(vec4<i32>(var_1.a.x, var_1.a.x, -1i, 26157i) | vec4<i32>(-25102i, var_0.c.a.x, 3744i, var_1.a.x), _wgslsmith_div_f32(-476f, 943f), Struct_2(false, true, Struct_1(var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1331f, -102f, 105f, -872f)), 1i)), u_input.a.x, func_5(Struct_3(-vec4<i32>(1i, 37100i, -1727i, u_input.b.x), 1000f, func_2(vec4<bool>(var_0.b, var_0.a, var_0.a, true), true), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(499f, -1000f, 578f, 307f), vec4<f32>(971f, -1271f, -1042f, 574f))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, -1i, var_1.a.x), vec4<i32>(u_input.b.x, -7678i, 2147483647i, var_1.a.x))), 1491u, func_5(func_5(Struct_3(vec4<i32>(0i, var_1.a.x, var_1.a.x, var_1.a.x), 1271f, Struct_2(false, true, var_0.c), vec4<f32>(-1278f, -1856f, 1206f, 1984f), var_0.c.a.x), u_input.a.x, Struct_3(vec4<i32>(var_1.a.x, var_1.a.x, 1i, var_0.c.a.x), 1668f, Struct_2(false, true, Struct_1(var_0.c.a)), vec4<f32>(-1036f, 1049f, -1468f, 1000f), 29760i)), ~40670u, func_5(Struct_3(vec4<i32>(-25740i, -26944i, var_1.a.x, -1i), 358f, Struct_2(true, true, Struct_1(vec3<i32>(var_0.c.a.x, -1320i, -1i))), vec4<f32>(1000f, 579f, 470f, 1123f), -6207i), 0u, Struct_3(vec4<i32>(1i, u_input.b.x, var_0.c.a.x, u_input.b.x), -1358f, Struct_2(var_0.b, var_0.b, Struct_1(vec3<i32>(25962i, 21959i, 1i))), vec4<f32>(-1013f, -343f, -607f, 1202f), 1i))))), _wgslsmith_dot_vec3_u32(select(min(~vec3<u32>(4457u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 1u, 0u) >> (vec3<u32>(45816u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), ~vec3<u32>(30343u, u_input.a.x, 0u), select(select(vec3<bool>(var_0.b, var_0.a, false), vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.b)), !vec3<bool>(var_0.a, false, var_0.a), var_0.b || true)), ~select(vec3<u32>(9493u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 9155u, 1u), vec3<u32>(64976u, u_input.a.x, 40236u) & vec3<u32>(u_input.a.x, 50271u, u_input.a.x), false)), Struct_3(select(min(abs(vec4<i32>(var_0.c.a.x, -2147483647i, 20731i, -17271i)), vec4<i32>(-33069i, 22123i, var_1.a.x, u_input.b.x)), vec4<i32>(1i, -58169i, u_input.b.x, var_0.c.a.x), vec4<bool>(false, false, true, true)), -139f, Struct_2(!var_0.b & true, var_0.a, var_0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(432f, -205f, false)) + _wgslsmith_f_op_f32(floor(1688f))), -265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)), -103f), abs(reverseBits(2147483647i)) << (firstTrailingBit(~19239u) % 32u))).c.c;
    let var_2 = u_input.b.x;
    var_1 = var_0.c;
    let var_3 = u_input.a.x > (~u_input.a.x & ~(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 15488u)));
    let var_4 = vec3<i32>(1i, -35986i, var_2 | (u_input.b.x ^ 2147483647i)) | vec3<i32>(_wgslsmith_sub_i32(var_2, var_2), reverseBits(func_5(Struct_3(vec4<i32>(-1i, 0i, var_2, 28094i), 516f, Struct_2(var_3, var_0.a, var_0.c), vec4<f32>(-2108f, 766f, -1113f, 1807f), var_2), u_input.a.x, Struct_3(vec4<i32>(u_input.b.x, 10951i, 1244i, -24017i), -1000f, Struct_2(true, false, var_0.c), vec4<f32>(1000f, 2315f, 400f, 1031f), var_2)).e >> (abs(u_input.a.x) % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_2, 28851i, var_1.a.x) ^ vec4<i32>(-27924i, 0i, 0i, var_2), -vec4<i32>(1i, var_1.a.x, -16159i, -2147483647i)), -vec4<i32>(u_input.b.x, u_input.b.x, var_1.a.x, var_0.c.a.x)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-388f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, 1554f)), !(u_input.a.x >= u_input.a.x))), 634f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-666f)) + _wgslsmith_f_op_f32(980f - -708f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-741f - -125f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(51624u, 0u, _wgslsmith_mult_u32(abs(106274u), u_input.a.x)));
}

