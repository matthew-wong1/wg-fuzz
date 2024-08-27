struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -379f);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) - _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))))), arg_1.a.x, arg_1.a.x);
    let var_1 = ~(~vec2<u32>(reverseBits(arg_0.x), 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_2))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(arg_1.a.x)))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a), _wgslsmith_f_op_vec3_f32(max(arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, -1002f, var_2)))));
    return vec4<bool>(true, true, all(vec2<bool>(true, true)), !(all(vec3<bool>(true, true, true)) & false));
}

fn func_1(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_2(all(select(func_2(vec3<u32>(81395u, 0u, 1u), Struct_1(arg_0)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), Struct_1(vec3<f32>(-742f, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(arg_0.x + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - _wgslsmith_f_op_f32(arg_0.x - -1337f)))), ~(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 0u, 11137u)), _wgslsmith_mod_vec3_u32(vec3<u32>(11655u, 32948u, 0u), vec3<u32>(1u, 26857u, 43723u)))));
    let var_1 = -566f;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, var_0.b.a.x, var_1) * var_0.b.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1227f, 221f, var_1), vec3<f32>(-293f, var_0.b.a.x, -2267f)) - _wgslsmith_f_op_vec3_f32(var_0.c.a + vec3<f32>(-565f, var_1, arg_0.x)))))), _wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1196f, -230f, arg_0.x) + vec3<f32>(-412f, var_0.b.a.x, var_0.c.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a * arg_0) + _wgslsmith_f_op_vec3_f32(var_0.c.a + arg_0)))))));
    let var_3 = select(!select(vec4<bool>(var_0.a, var_0.a, var_0.a, !var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, true), select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a)), false), !func_2(vec3<u32>(4294967295u, 4294967295u, var_0.d), var_0.c)), select(vec4<bool>(var_0.a, var_0.a, true, (arg_0.x > arg_0.x) | false), !(!select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a))), !(!var_0.a)), !(!select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a), false), !vec4<bool>(true, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))));
    let var_4 = 3423u;
    return -_wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), u_input.a.x, 2147483647i, -1i), max(vec4<i32>(-23143i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 52413i) & vec4<i32>(-57320i, u_input.a.x, 23226i, -10442i)) ^ -vec4<i32>(-2147483647i, 0i, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(select(min(vec4<i32>(11692i, u_input.a.x, u_input.a.x, -15972i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), ~vec4<i32>(2147483647i, -1i, u_input.a.x, 17846i), var_0.a), -(~vec4<i32>(u_input.a.x, -24785i, 0i, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2821f, -165f, 371f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2247f, 531f, 1030f))))) >> ((vec4<u32>(1u, min(~1u, 63793u), ~38441u, 6483u) | ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 52089u, 4294967295u), vec4<u32>(41645u, 29436u, 21007u, 100618u), ~vec4<u32>(4294967295u, 49529u, 60845u, 40936u))) % vec4<u32>(32u));
    let var_1 = Struct_2(false, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-192f, 1107f, -1217f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-555f, -542f, -661f) + vec3<f32>(877f, -282f, -827f)))))), abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15336u, 16201u), vec3<u32>(1u, 22261u, 1u)) ^ 1u)));
    let var_2 = false;
    var var_3 = (59344u >> (_wgslsmith_mod_u32(firstTrailingBit(firstLeadingBit(4294967295u)), var_1.d) % 32u)) >= 66263u;
    var_0 = vec4<i32>(firstLeadingBit(0i), ~_wgslsmith_div_i32(firstLeadingBit(12788i), _wgslsmith_add_i32(36453i, u_input.a.x)), 21989i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(var_0.x, 2147483647i, 27751i), vec3<i32>(var_0.x, var_0.x, u_input.a.x)), -u_input.a) | -2147483647i) ^ min(~(-vec4<i32>(-6800i, var_0.x, 21122i, 1i)) ^ vec4<i32>(func_1(var_1.b.a).x, min(-1i, u_input.a.x), u_input.a.x, firstLeadingBit(8781i)), vec4<i32>(u_input.a.x, ~1i, ~(-4246i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, -13029i, u_input.a.x), var_0.ywy, var_1.a), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(58894i, -12266i, -16643i)))));
    var_3 = all(func_2(~(~vec3<u32>(var_1.d, var_1.d, 11629u)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.a.x, var_1.b.a.x, 1128f))))))).xz);
    var_3 = var_0.x < _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.a.x, var_0.x, -63417i)), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(1913i), u_input.a.x, var_0.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) & countOneBits(var_0.xyx)));
    let var_4 = Struct_3(firstLeadingBit(var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a.x, var_4.a);
}

