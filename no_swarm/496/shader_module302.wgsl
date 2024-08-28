struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 32463u, 4294967295u);

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: vec2<u32> = vec2<u32>(18635u, 29042u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> bool {
    global2 = u_input.b;
    global1 = array<vec3<f32>, 29>();
    global0 = min(~_wgslsmith_clamp_vec4_u32(abs(abs(vec4<u32>(54367u, u_input.b.x, 4294967295u, global2.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(15544u, 1u, 30647u, 66117u) >> (vec4<u32>(8120u, global0.x, 60054u, 1u) % vec4<u32>(32u)), abs(vec4<u32>(u_input.a.x, 65374u, 0u, global0.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.x, 912u, global2.x) | vec4<u32>(u_input.b.x, 4294967295u, 43726u, 46101u), firstLeadingBit(vec4<u32>(global0.x, global0.x, 1u, u_input.b.x)))), abs(vec4<u32>(_wgslsmith_mod_u32(select(4294967295u, global0.x, false), ~37984u), u_input.d.x, global2.x, firstLeadingBit(global2.x))));
    let var_0 = firstTrailingBit(48308u);
    var var_1 = Struct_1(~(vec4<u32>(max(u_input.d.x, 5403u), _wgslsmith_dot_vec3_u32(global0.wzy, u_input.d), ~28433u, _wgslsmith_div_u32(4294967295u, var_0)) & vec4<u32>(~global2.x, 22738u, u_input.b.x & 0u, var_0)), 0i, -1063f);
    return true;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~(arg_3.a << (_wgslsmith_clamp_vec4_u32(arg_3.a, arg_3.a, arg_3.a) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(arg_3.a, arg_3.a), select(~vec4<u32>(global0.x, global2.x, global2.x, global2.x), vec4<u32>(1u, 0u, 3556u, 4294967295u), vec4<bool>(true, true, true, arg_2)))), _wgslsmith_mod_i32(arg_3.b, u_input.e), 939f);
    global2 = u_input.a.zy;
    global1 = array<vec3<f32>, 29>();
    global2 = vec2<u32>(~(~((global2.x & global0.x) & (0u & global2.x))), var_0.a.x);
    var var_1 = Struct_1(max(vec4<u32>(1u, 29810u, _wgslsmith_dot_vec4_u32(~arg_3.a, arg_3.a), 78547u), vec4<u32>(global2.x, reverseBits(global0.x), reverseBits(_wgslsmith_mod_u32(6780u, global2.x)), _wgslsmith_div_u32(~46203u, countOneBits(12105u)))), 2147483647i, arg_0.x);
    return arg_3.a.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), -892f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, -219f), vec2<f32>(arg_2, -2655f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(729f, 182f), vec2<f32>(480f, arg_2))))))));
    global0 = ~(~abs(vec4<u32>(0u, u_input.d.x, 4294967295u, 0u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.d.yx)), abs(global2.x), _wgslsmith_add_u32(u_input.a.x, 0u) >> (u_input.a.x % 32u), ~45460u), ~(~vec4<u32>(45335u, 22653u, global2.x, 1u) << (min(vec4<u32>(80148u, 10348u, 4294967295u, global0.x), vec4<u32>(4294967295u, u_input.d.x, 58531u, 1u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_1 = Struct_1(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, global2.x, 13601u, 12819u), vec4<u32>(5112u, 1u, 0u, u_input.a.x)), vec4<u32>(global2.x, u_input.b.x, 0u, global2.x) ^ vec4<u32>(global0.x, 31647u, 5770u, global0.x))), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(trunc(-1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1436f))) + _wgslsmith_f_op_f32(-605f - var_0.x))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = ~min(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(var_1.a.x, 39409u)), var_1.a.yy | var_1.a.yw), ~_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d));
    return _wgslsmith_mult_u32(1u & func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1202f, 885f, 191f, -219f)), vec3<f32>(-2050f, _wgslsmith_f_op_f32(1498f - -609f), _wgslsmith_f_op_f32(var_0.x * var_0.x)), func_3(_wgslsmith_f_op_f32(sign(arg_2))), Struct_1(~vec4<u32>(6467u, 42085u, var_1.a.x, u_input.d.x), reverseBits(arg_3), _wgslsmith_f_op_f32(786f + arg_1))), var_1.a.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(global0.x, ~global2.x, global0.x, arg_1);
    let var_1 = arg_2;
    global2 = max(vec2<u32>(countOneBits(arg_1) << (771u % 32u), var_1.a.x) & _wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.b.x, arg_2.a.x), var_1.a.xy), countOneBits(~arg_2.a.zw)), reverseBits(~vec2<u32>(1u, var_0.x)));
    global2 = ~vec2<u32>(arg_1, abs(firstTrailingBit(~80211u)));
    var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(abs(abs(4294967295u)), arg_2.a.x, abs(~4294967295u), firstLeadingBit(_wgslsmith_div_u32(0u, global2.x))), var_1.a << (countOneBits(arg_2.a) % vec4<u32>(32u)));
    return Struct_1(arg_2.a, ~arg_2.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.c)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = !(!(!(!select(vec2<bool>(true, true), vec2<bool>(arg_0.x, false), vec2<bool>(false, true)))));
    global2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.a.wz, ~global0.yx), global2.x);
    var var_1 = Struct_1(~(~max(vec4<u32>(27256u, 0u, 82073u, arg_3.a.x), ~vec4<u32>(0u, 10899u, arg_2, 2436u))), _wgslsmith_dot_vec3_i32(-arg_1, abs(min(_wgslsmith_mult_vec3_i32(vec3<i32>(46192i, -10834i, u_input.c), vec3<i32>(arg_1.x, arg_3.b, arg_3.b)), abs(vec3<i32>(2147483647i, 2147483647i, arg_3.b))))), _wgslsmith_f_op_f32(max(156f, arg_3.c)));
    let var_2 = vec3<bool>(all(select(!vec3<bool>(var_0.x, true, arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(var_0.x, true, var_0.x), arg_0.x), var_0.x)) || any(vec4<bool>(false, select(arg_0.x, arg_0.x, var_0.x), arg_0.x || false, false)), true, !all(!vec4<bool>(false, true, false, var_0.x)));
    global0 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(~39384u, arg_3.a.x, ~u_input.b.x, global2.x)), var_1.a >> ((vec4<u32>(91126u, arg_2, 78921u & arg_2, _wgslsmith_mult_u32(0u, global2.x)) ^ vec4<u32>(0u, 0u, var_1.a.x & global0.x, 10494u)) % vec4<u32>(32u)));
    return ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~5318u, 26314u), ~(~min(var_1.a.zx, global0.zy)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 4294967295u << (global2.x % 32u)), reverseBits(vec2<u32>(arg_3.a.x, 8525u))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_1(~(~(~vec4<u32>(1u, 71084u, 4294967295u, 4294967295u))) ^ (~min(vec4<u32>(u_input.d.x, u_input.b.x, 1u, 17013u), vec4<u32>(1u, global2.x, 4294967295u, 4294967295u)) & ~vec4<u32>(global2.x, 14709u, 65363u, global0.x)), -41502i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-168f * -317f))) + _wgslsmith_f_op_f32(1948f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(147f, -2518f, arg_0.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.c * var_0.c), _wgslsmith_div_f32(-1159f, 1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, 1545f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c, var_0.c))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2294f, 824f) * vec2<f32>(668f, var_0.c)))), true)) + vec2<f32>(var_0.c, var_0.c));
    global2 = func_6(arg_0.yz, ~(vec3<i32>(u_input.e, ~var_0.b, var_0.b) | -vec3<i32>(0i, var_0.b, u_input.e)), ~0u, func_5(arg_0.zz, func_2(true, var_0.c, -1251f, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.b, -11147i), countOneBits(vec2<i32>(var_0.b, -60984i)))), Struct_1(~vec4<u32>(global2.x, 26797u, 48522u, 4294967295u), _wgslsmith_mod_i32(36086i, -32851i) << (countOneBits(var_0.a.x) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), -339f)), -227f, var_1.x)));
    var var_2 = -(~_wgslsmith_clamp_vec3_i32(countOneBits(countOneBits(vec3<i32>(-2147483647i, 0i, -1i))), max(vec3<i32>(-40578i, var_0.b, -2147483647i), -vec3<i32>(-2147483647i, var_0.b, var_0.b)), vec3<i32>(-1i, _wgslsmith_clamp_i32(-19312i, u_input.c, -53187i), -1i)));
    global2 = var_0.a.yy >> (reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.a.xz), _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(global2.x, global2.x))), ~global0.xx, min(_wgslsmith_div_vec2_u32(global0.yx, vec2<u32>(var_0.a.x, var_0.a.x)), select(u_input.d.yz, var_0.a.zw, arg_0.yy)))) % vec2<u32>(32u));
    return arg_0;
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c * arg_2.c), _wgslsmith_f_op_f32(463f * 2469f)))))));
    let var_1 = arg_1;
    global1 = array<vec3<f32>, 29>();
    var var_2 = Struct_1(~vec4<u32>(~36394u, 32628u, arg_2.a.x, var_1.a.x), _wgslsmith_clamp_i32(~(-arg_2.b), -(i32(-1i) * -1433i), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b, arg_3.b), vec2<i32>(arg_2.b, -2147483647i)) | u_input.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.c, var_1.c, true)), -103f)));
    global0 = select(vec4<u32>(~(~arg_2.a.x), ~global0.x, ~(~(~4294967295u)), 0u), ~arg_1.a, vec4<bool>(arg_3.b > _wgslsmith_div_i32(-17320i, arg_2.b), select(arg_0.x, arg_0.x, true) | arg_0.x, any(!vec3<bool>(arg_0.x, true, arg_0.x)), !all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))));
    return func_5(vec2<bool>(all(!func_1(arg_0).zx), func_3(_wgslsmith_f_op_f32(-arg_2.c))), 12585u, Struct_1(var_1.a, firstLeadingBit(-(arg_1.b ^ u_input.e)), 393f), global1[_wgslsmith_index_u32(4294967295u, 29u)]);
}

fn func_8(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = func_7(vec3<bool>(!arg_1, !(~u_input.e <= 1i), !(!arg_1)), Struct_1(arg_0.a, arg_0.b, 1100f), func_5(!func_1(select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), false)).zy, ~reverseBits(4294967295u ^ global0.x), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.a.x), 29u)]) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.c, arg_0.c, arg_0.c), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.b.x, 29u)] * vec3<f32>(arg_0.c, -1945f, arg_0.c)))))), arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), -1796f, 953f, 545f), vec4<f32>(var_0.c, 115f, 997f, func_5(vec2<bool>(true, true), 23832u, Struct_1(var_0.a, var_0.b, arg_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2731f, -681f) + vec3<f32>(var_0.c, -2025f, 493f))).c))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(arg_0.c, -781f))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2216f * 553f))), var_0.c, _wgslsmith_f_op_f32(-172f + var_0.c))));
    global1 = array<vec3<f32>, 29>();
    global1 = array<vec3<f32>, 29>();
    var var_2 = u_input.b;
    return func_5(!select(vec2<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), arg_1 | arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), arg_1), arg_1), _wgslsmith_clamp_u32(arg_0.a.x, _wgslsmith_dot_vec2_u32(min(u_input.b, vec2<u32>(var_2.x, 4294967295u) | arg_0.a.ww), ~vec2<u32>(global0.x, 1u)), _wgslsmith_dot_vec4_u32(~(~var_0.a), var_0.a)), Struct_1(var_0.a, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~arg_0.a, ~vec4<u32>(1u, 4294967295u, arg_0.a.x, var_0.a.x)), 29u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, _wgslsmith_f_op_f32(var_0.c + -400f), _wgslsmith_f_op_f32(-arg_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(select(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true), func_1(vec3<bool>(false, true, false)), func_3(1795f) & false), Struct_1(select(select(vec4<u32>(6565u, global2.x, 4294967295u, global2.x), vec4<u32>(9230u, 1u, global0.x, u_input.b.x), vec4<bool>(false, true, false, false)), select(vec4<u32>(u_input.a.x, u_input.b.x, 62413u, u_input.a.x), vec4<u32>(41085u, 1u, u_input.b.x, global0.x), false), u_input.a.x < 8422u), u_input.c, -672f), func_5(func_1(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))).yx, 0u, Struct_1(vec4<u32>(75122u, 19107u, u_input.a.x, 386u), -49934i, -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] + vec3<f32>(229f, -957f, -1574f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1388f, 855f, -812f) - global1[_wgslsmith_index_u32(4294967295u, 29u)]))), Struct_1(countOneBits(abs(vec4<u32>(global0.x, global2.x, 44476u, 30293u))), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)))), true);
    let var_1 = _wgslsmith_mult_i32(0i, -var_0.b);
    var var_2 = ~(~var_0.a.x & global0.x);
    global0 = var_0.a;
    global1 = array<vec3<f32>, 29>();
    let var_3 = func_8(func_5(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.c >= -910f), ~func_8(Struct_1(vec4<u32>(4294967295u, 27009u, global2.x, u_input.a.x), var_0.b, var_0.c), true).a.x, Struct_1(~(~vec4<u32>(var_0.a.x, 1u, 0u, global2.x)), _wgslsmith_clamp_i32(var_0.b, var_0.b, -13910i), 650f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-1000f + -1000f), func_8(var_0, -2147483647i >= u_input.e).c)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_4 = Struct_1(var_0.a, _wgslsmith_add_i32(-1i, firstTrailingBit(min(2147483647i, var_1)) & max(-2147483647i, -1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), var_0.c));
    let var_5 = func_1(!vec3<bool>(all(vec2<bool>(true, true)), func_3(_wgslsmith_f_op_f32(sign(-1641f))), !(global0.x < 36407u))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_7(!(!vec3<bool>(true, true, var_5)), func_7(select(vec3<bool>(var_5, false, var_5), vec3<bool>(var_5, false, true), vec3<bool>(true, var_5, var_5)), var_0, var_3, func_8(var_3, false)), func_5(vec2<bool>(var_5, true), global0.x, var_0, _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_4.a.x, 29u)])), var_0).c + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -411f), -1536f))));
}

