struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(u_input.c, u_input.a);
    let var_1 = !vec4<bool>(false, false, !(u_input.a == u_input.a), false);
    var var_2 = vec4<bool>(all(vec4<bool>(var_1.x, any(vec4<bool>(var_1.x, var_1.x, false, true)), true, true)), any(select(select(var_1.zzz, !var_1.xww, var_1.www), var_1.zyx, (var_0.a.x <= u_input.c.x) == select(false, true, true))), true, true);
    let var_3 = vec2<i32>(-10716i, min(~(reverseBits(u_input.c.x) | ~1i), _wgslsmith_sub_i32(-1i, i32(-1i) * -var_0.a.x)));
    let var_4 = select(vec2<i32>(u_input.b.x, ~0i), vec2<i32>(select(u_input.b.x, 1i, true), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_3.x, var_0.a.x), _wgslsmith_sub_i32(u_input.c.x, -1i) << (_wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.zy) % 32u))), select(var_2.xy, !select(var_2.xw, !var_2.wx, false), var_1.x));
    return vec4<bool>(var_1.x, all(!select(var_2.zy, vec2<bool>(false, true), false)) & true, var_1.x, var_1.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = 4294967295u;
    let var_1 = func_3();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(280f, -1592f))))) + 631f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-458f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(425f - -154f))))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(128f, 302f)), -469f)) + _wgslsmith_f_op_f32(967f - _wgslsmith_f_op_f32(f32(-1f) * -319f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1772f, 436f)), -761f)), 683f, true)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-559f)), _wgslsmith_f_op_f32(-870f + -329f), 1000f))));
    return arg_2.a.x << (95239u % 32u);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_1(vec4<i32>(min(-1i, arg_0.x), firstTrailingBit(_wgslsmith_add_i32(~arg_0.x, u_input.b.x)), -func_2(vec2<i32>(u_input.b.x, u_input.c.x), Struct_2(arg_0, vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x)), Struct_1(u_input.c, u_input.a)), 2147483647i), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_div_u32(~(~3577u), select(59825u, u_input.d.x, select(false, arg_1, true)))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_sub_u32(4294967295u, var_0.b));
    var var_2 = arg_1;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(min(1460f, _wgslsmith_f_op_f32(round(1196f)))), Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(var_1.a, firstLeadingBit(vec4<i32>(u_input.c.x, u_input.b.x, -8794i, 0i))), _wgslsmith_sub_i32(0i, 1i), -33605i), vec4<u32>(~66664u, 39286u, ~(~4294967295u), var_1.b)), Struct_1(_wgslsmith_clamp_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(var_1.a.x, arg_0.x, arg_0.x, -28123i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, var_1.a.x), ~var_1.a, ~vec4<i32>(9358i, var_1.a.x, var_0.a.x, var_1.a.x)), u_input.c), ~u_input.a), func_3(), Struct_1(vec4<i32>(-countOneBits(-1i), _wgslsmith_clamp_i32(45973i, 1i, arg_0.x), reverseBits(u_input.c.x), 1i), countOneBits(firstTrailingBit(var_0.b | 1u))));
    let var_4 = Struct_3(var_3.a, var_3.b, var_3.e, !vec4<bool>(true, arg_1 | all(var_3.d), !all(vec2<bool>(false, true)), false), Struct_1(~(vec4<i32>(arg_0.x, u_input.c.x, var_1.a.x, u_input.b.x) & vec4<i32>(var_0.a.x, var_3.e.a.x, 2147483647i, 12472i)), 40457u));
    return false;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(810f - 720f), -1275f, 716f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(248f, 458f, -1000f), vec3<f32>(297f, -303f, -863f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(817f, -1000f, -220f), vec3<f32>(-1000f, 1364f, -178f))), true))))));
    let var_1 = _wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(~u_input.d.xyy, arg_1), ~(~89785u), true), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(0u, arg_1.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, 44506u), u_input.d.wz))) <= (arg_0 >> (arg_1.x % 32u));
    let var_2 = select(true, !select(select(!var_1, true, any(vec2<bool>(false, var_1))), all(!vec3<bool>(false, false, var_1)), true), func_3().x);
    var var_3 = Struct_3(var_0.a.x, Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-2071i, func_2(vec2<i32>(u_input.c.x, u_input.b.x), Struct_2(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), u_input.d), Struct_1(u_input.c, 80174u)), reverseBits(24705i)), u_input.b), _wgslsmith_add_vec4_u32(~u_input.d, abs(_wgslsmith_add_vec4_u32(u_input.d, u_input.d)))), Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -26998i, -1i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x)), arg_0), vec4<bool>(!func_3().x, var_1, any(select(vec2<bool>(var_1, false), !vec2<bool>(var_1, true), func_3().zy)), true), Struct_1(vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, -1943i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(1i, 12763i) << (vec2<u32>(u_input.a, 22341u) % vec2<u32>(32u))), 2147483647i, abs(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x))), ~select(u_input.a, ~49228u, true)));
    var var_4 = false || (_wgslsmith_f_op_f32(277f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f - 771f))) < _wgslsmith_f_op_f32(trunc(-945f)));
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(36642u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, reverseBits(0u)), ~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), select(u_input.d.x, countOneBits(abs(u_input.a | 22898u)), any(vec3<bool>(func_1(vec3<i32>(-2147483647i, -2147483647i, u_input.b.x), false, vec2<f32>(-679f, 399f)), all(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, false))))));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~u_input.d), vec4<u32>(firstLeadingBit(u_input.d.x << (u_input.d.x % 32u)), _wgslsmith_mod_u32(~11855u, u_input.d.x), 1u, ~1u) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.wy | vec2<u32>(0u, 21278u), vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, 0u)), 28716u, ~0u, u_input.d.x) % vec4<u32>(32u)));
    var var_2 = Struct_1(firstTrailingBit(firstLeadingBit(u_input.c)), u_input.a);
    let var_3 = -_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -var_2.a.wxy, var_2.a.yyy) >> (var_1.xxy % vec3<u32>(32u));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -1389f);
    var_2 = Struct_1(var_2.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(71387u, 1u) & _wgslsmith_sub_u32(var_2.b, 8773u >> (0u % 32u)), var_2.b));
    var var_5 = Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.c.x, var_3.x) | -var_2.a.wzx, vec3<i32>(_wgslsmith_dot_vec4_i32(var_2.a, u_input.c), reverseBits(-34376i), countOneBits(var_3.x))), _wgslsmith_add_vec3_i32(abs(u_input.c.zyz), u_input.b) ^ ~(vec3<i32>(u_input.c.x, -1i, 2147483647i) << (vec3<u32>(var_2.b, 0u, u_input.d.x) % vec3<u32>(32u)))), ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.d.x) >> (vec2<u32>(9004u, var_1.x) % vec2<u32>(32u)), max(~vec2<u32>(22008u, var_5.b.x), ~vec2<u32>(4294967295u, var_5.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xy, var_5.b.zy), ~vec2<u32>(var_5.b.x, var_1.x))));
}

