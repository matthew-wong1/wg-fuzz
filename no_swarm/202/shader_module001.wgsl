struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_5(_wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(arg_1.b.x, arg_1.b.x, 0u, arg_2.b.x)), vec4<u32>(firstTrailingBit(arg_1.a.a), _wgslsmith_mult_u32(1u, arg_1.a.a), 24429u, 4294967295u | arg_1.b.x), !(!vec4<bool>(arg_0, true, arg_0, arg_0))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.a.a, 0u, arg_1.a.a, 3961u) << (vec4<u32>(27438u, arg_2.a.a, arg_1.a.a, 53714u) % vec4<u32>(32u)), ~vec4<u32>(arg_1.b.x, 43774u, arg_1.a.a, 4145u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.a, arg_2.a.a, arg_2.b.x, arg_1.a.a), vec4<u32>(arg_1.b.x, 1u, 60814u, 1u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(15148u, 14892u, arg_2.b.x, arg_2.a.a) | vec4<u32>(arg_1.a.a, arg_2.b.x, 4294967295u, arg_1.a.a), vec4<u32>(arg_1.a.a, 29635u, 24499u, arg_2.b.x), vec4<u32>(23033u, arg_1.b.x, arg_1.b.x, arg_2.b.x) | vec4<u32>(1u, arg_1.b.x, 34199u, 4294967295u))), 23223u);
    let var_1 = vec2<bool>(select(true, arg_0, any(vec2<bool>(any(vec3<bool>(arg_0, arg_0, false)), false))), any(vec4<bool>(all(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), true)), all(vec4<bool>(arg_0, true, arg_0, false)), arg_2.c.a.x == arg_1.c.a.x, false | all(vec2<bool>(false, arg_0)))));
    let var_2 = Struct_5(~(~vec4<u32>(~4294967295u, 0u, ~1u, 91777u)), firstTrailingBit(var_0.a.x));
    let var_3 = -max(0i, _wgslsmith_div_i32(2147483647i, arg_2.c.b.x) ^ 0i);
    let var_4 = arg_2.c.b;
    return !select(!select(select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, true, arg_0, var_1.x), var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, arg_0), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_1.x, arg_0, arg_0)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, arg_0, false, var_1.x), !vec4<bool>(var_1.x, false, false, false), any(!vec4<bool>(true, arg_0, false, false))), !var_1.x);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(~76313u, 5u)], ~vec3<u32>(1u, 1u, 1u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u), ~_wgslsmith_add_u32(0u, 0u), select(~17031u, 50112u, !arg_1.x)), vec3<u32>(1u, 1u, 1u)), 20u)]);
    global0 = array<Struct_3, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), var_0.c.a.x, -1572f, _wgslsmith_f_op_f32(964f - arg_0)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, var_0.c.a.x, 943f, 604f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.a.x, var_0.c.a.x, -1000f, -1029f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-474f + var_0.c.a.x), -1295f, _wgslsmith_f_op_f32(1000f + 344f)), select(arg_1, func_3(true, var_0, var_0, 38104i), true)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.a.x, var_0.c.a.x))), vec2<i32>(u_input.a.x, 15112i), u_input.a.yy, _wgslsmith_add_vec2_u32(firstLeadingBit(var_0.b.zz), firstTrailingBit(~var_0.b.xy)));
    var var_3 = vec4<u32>(abs(~var_2.d.x), ~(~(~(0u ^ var_2.d.x))), ~(1u | var_0.a.a) & min(32271u, var_2.d.x), var_0.b.x);
    return min(firstLeadingBit(max(vec4<u32>(34927u, var_0.b.x, 76137u, var_2.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(75441u, var_2.d.x, 24660u, var_3.x), vec4<u32>(53534u, var_0.a.a, 40355u, var_3.x), vec4<u32>(1u, var_0.a.a, var_3.x, var_3.x))) | firstTrailingBit(~vec4<u32>(0u, var_0.b.x, 1u, var_0.a.a))), abs(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 78125u, 0u), vec4<u32>(105850u, 1u, var_0.a.a, 0u)))));
}

fn func_2() -> vec3<bool> {
    var var_0 = abs(reverseBits(~0u));
    global1 = array<vec4<i32>, 22>();
    var var_1 = !(!(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), true)));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(func_4(_wgslsmith_f_op_f32(floor(720f)), select(func_3(var_1.x, Struct_4(global0[_wgslsmith_index_u32(1u, 5u)], vec3<u32>(1u, 53926u, 38760u), Struct_1(vec2<f32>(848f, 1506f), global1[_wgslsmith_index_u32(28594u, 22u)])), Struct_4(global0[_wgslsmith_index_u32(46292u, 5u)], vec3<u32>(1u, 1u, 1u), Struct_1(vec2<f32>(-1423f, 890f), u_input.a)), u_input.a.x), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, var_1.x, false, var_1.x)), true)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(42913u, 1u), 4294967295u), 8568u, 1u, max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(76887u, 4294967295u, 0u), vec3<u32>(1u, 26127u, 1u))))), max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, select(53858u, 1u, false), abs(1u), 20227u), ~countOneBits(vec4<u32>(4294967295u, 7102u, 1u, 79049u))), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(80394u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 26022u, 4294967295u, 1u)), ~62819u, 4294967295u, firstTrailingBit(130150u)), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(159f, _wgslsmith_f_op_f32(f32(-1f) * -769f))))), ~u_input.a.wx, _wgslsmith_mult_vec2_i32(-min(_wgslsmith_clamp_vec2_i32(u_input.a.xw, u_input.a.yy, u_input.a.wy), abs(vec2<i32>(-14532i, -54i))), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(7859i, u_input.a.x), u_input.a.wy), u_input.a.x)), _wgslsmith_sub_vec2_u32(~max(vec2<u32>(var_2, 19945u), vec2<u32>(var_2, var_2)), ~select(vec2<u32>(1u, 78799u), vec2<u32>(var_2, 23340u), var_1.zy)) ^ _wgslsmith_sub_vec2_u32(~select(vec2<u32>(61715u, 68330u), vec2<u32>(42117u, var_2), var_1.xx), reverseBits(~vec2<u32>(var_2, 0u))));
    return select(!var_1.wxz, vec3<bool>(true, !(var_1.x & var_1.x), ~u_input.a.x < (u_input.a.x & select(2147483647i, u_input.a.x, var_1.x))), true);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_1, 20>();
    let var_0 = arg_0.a.x;
    global2 = array<Struct_1, 20>();
    var var_1 = Struct_5(countOneBits(~abs(~vec4<u32>(0u, 97556u, 1u, 0u))), countOneBits(~_wgslsmith_clamp_u32(firstLeadingBit(0u), 8715u, 33660u)));
    var var_2 = func_2();
    return _wgslsmith_f_op_f32(abs(-227f));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = vec2<bool>(all(select(func_3(false, Struct_4(arg_2.a, arg_2.b, global2[_wgslsmith_index_u32(32081u, 20u)]), Struct_4(global0[_wgslsmith_index_u32(0u, 5u)], vec3<u32>(1325u, arg_2.a.a, 0u), Struct_1(arg_2.c.a, vec4<i32>(arg_2.c.b.x, -2147483647i, 23902i, arg_2.c.b.x))), select(u_input.a.x, u_input.a.x, true)), !arg_0, arg_0.x)), func_3(select(arg_0.x, arg_2.a.a > 4294967295u, arg_0.x | false) || !(arg_0.x != arg_0.x), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.b, vec3<u32>(arg_3.x, arg_2.b.x, arg_2.a.a)), arg_2.b), 5u)], arg_2.b, global2[_wgslsmith_index_u32(85990u, 20u)]), arg_2, arg_2.c.b.x).x);
    let var_1 = !(!arg_0.x);
    let var_2 = Struct_5(vec4<u32>(~(~arg_2.b.x), ~1u ^ ~arg_3.x, ~arg_3.x, arg_2.b.x), arg_2.a.a);
    let var_3 = vec4<u32>(~_wgslsmith_mod_u32(~16560u, arg_3.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(var_2.a, vec4<u32>(arg_2.a.a, 13570u, var_2.a.x, 27348u)), vec4<u32>(_wgslsmith_sub_u32(arg_3.x, arg_2.a.a), reverseBits(arg_3.x), var_2.b, 91383u)), abs(1u)), ~var_2.a.x, 91549u);
    return Struct_5(~var_2.a, _wgslsmith_clamp_u32(min(var_3.x, 26918u), firstLeadingBit(_wgslsmith_mod_u32(var_2.b, 4294967295u)), firstTrailingBit(func_4(arg_1, arg_0).x)) >> (0u % 32u));
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(676f + 197f) * _wgslsmith_f_op_f32(trunc(153f))) - _wgslsmith_f_op_f32(f32(-1f) * -1019f))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(-394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1207f) + _wgslsmith_f_op_f32(1355f * 482f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-136f)), _wgslsmith_f_op_f32(step(210f, -712f))))), reverseBits(min(_wgslsmith_add_vec4_i32(u_input.a >> (arg_1.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), -(vec4<i32>(29546i, u_input.a.x, 0i, u_input.a.x) & global1[_wgslsmith_index_u32(15504u, 22u)]))));
    var var_2 = Struct_2(var_1.a.x, -u_input.a.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~global1[_wgslsmith_index_u32(arg_0, 22u)], u_input.a), -_wgslsmith_mod_i32(0i, u_input.a.x)), _wgslsmith_mod_vec2_i32(~(-var_1.b.ww), _wgslsmith_div_vec2_i32(-vec2<i32>(var_1.b.x, u_input.a.x), _wgslsmith_add_vec2_i32(var_1.b.zx, vec2<i32>(u_input.a.x, -2147483647i))))), vec2<u32>(~(~arg_0), reverseBits(8481u)) >> (_wgslsmith_mod_vec2_u32(arg_1.a.xw, max(vec2<u32>(arg_1.b, 0u), arg_1.a.zz)) % vec2<u32>(32u)));
    var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2.a)))), ~u_input.a.yw, var_2.b, abs(countOneBits(var_2.d)));
    var var_3 = (arg_1.b | max(8732u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a.x, arg_0, 0u), ~vec3<u32>(0u, var_2.d.x, arg_0)))) & arg_0;
    return Struct_4(global0[_wgslsmith_index_u32(arg_0, 5u)], ~max(~_wgslsmith_mult_vec3_u32(arg_1.a.zzx, vec3<u32>(29260u, arg_0, arg_1.b)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -132f), !vec4<bool>(false, arg_3.x, arg_3.x, arg_2.x)).xxy), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(305f * -895f), -2017f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, -107f)))), ~reverseBits(u_input.a)));
}

fn func_7(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = Struct_3(arg_0.a.a);
    return ~select(vec3<u32>(var_0.a, arg_0.a.a, _wgslsmith_mod_u32(0u, var_0.a)), ~(~arg_0.b), !select(func_2(), func_2(), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))));
}

fn func_8(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = firstLeadingBit(vec3<i32>(u_input.a.x, -(~u_input.a.x), 0i) << (~((arg_1 & vec3<u32>(arg_0, arg_0, arg_0)) ^ abs(arg_1)) % vec3<u32>(32u)));
    var_0 = u_input.a.xwz;
    var var_1 = func_6(select(_wgslsmith_mod_u32(countOneBits(arg_1.x), arg_1.x), 4294967295u, true), Struct_5(vec4<u32>(arg_1.x, ~arg_1.x, 4294967295u, 26350u & _wgslsmith_add_u32(104017u, arg_0)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_1, func_6(arg_0, Struct_5(vec4<u32>(arg_0, arg_0, 0u, 29847u), 102613u), arg_2.xwz, arg_2.zw).b), _wgslsmith_div_u32(0u, arg_1.x))), arg_2.zxx, arg_3).a;
    var_0 = reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.yzz, vec3<i32>(~(-11240i), -1i, ~53210i)), ~(~u_input.a.xzw) & vec3<i32>(_wgslsmith_div_i32(u_input.a.x, 0i), 4649i, u_input.a.x)));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(41444u | ~(~var_1.a), 5u)], vec3<u32>(~_wgslsmith_dot_vec3_u32(func_6(4294967295u, Struct_5(vec4<u32>(10274u, var_1.a, 1u, 1u), arg_0), arg_2.wxy, vec2<bool>(arg_2.x, arg_3.x)).b, vec3<u32>(34171u, 619u, 30737u) << (vec3<u32>(4294967295u, var_1.a, 44775u) % vec3<u32>(32u))), ~arg_0, ~(~_wgslsmith_mult_u32(53829u, arg_0))), global2[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(arg_0, var_1.a))), 20u)]);
    return func_6(var_1.a, Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_2.b.x, arg_1.x), var_2.b.x, ~10093u, abs(0u)), vec4<u32>(firstLeadingBit(var_1.a), 1u, ~var_2.b.x, ~arg_1.x)), var_2.a.a), !(!arg_2.xww), !vec2<bool>(true, true | !arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    global2 = array<Struct_1, 20>();
    global1 = array<vec4<i32>, 22>();
    let var_0 = func_8(~45891u, func_7(func_6(_wgslsmith_div_u32(~47188u, 1u), func_5(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-263f, 879f), global1[_wgslsmith_index_u32(4294967295u, 22u)]))), Struct_4(global0[_wgslsmith_index_u32(1u, 5u)], vec3<u32>(18294u, 62423u, 4294967295u), global2[_wgslsmith_index_u32(18181u, 20u)]), vec2<u32>(1u, 1u)), func_3(any(vec2<bool>(false, false)), Struct_4(Struct_3(1u), vec3<u32>(4294967295u, 19871u, 0u), global2[_wgslsmith_index_u32(1u, 20u)]), Struct_4(global0[_wgslsmith_index_u32(0u, 5u)], vec3<u32>(26385u, 40903u, 0u), Struct_1(vec2<f32>(-276f, -1408f), u_input.a)), u_input.a.x).xww, func_2().xz)), !func_3(false, Struct_4(global0[_wgslsmith_index_u32(17029u, 5u)], vec3<u32>(1u, 1u, 1u), func_6(1u, Struct_5(vec4<u32>(0u, 42576u, 21947u, 25051u), 4294967295u), vec3<bool>(true, false, false), vec2<bool>(false, false)).c), func_6(13189u, func_5(vec4<bool>(false, false, true, false), -1414f, Struct_4(Struct_3(61210u), vec3<u32>(0u, 12365u, 1u), global2[_wgslsmith_index_u32(26961u, 20u)]), vec2<u32>(1375u, 6532u)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec2<bool>(true, true)), _wgslsmith_mod_i32(~2147483647i, u_input.a.x)), !vec2<bool>(any(vec3<bool>(true, false, false)), false));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.a.x)) + _wgslsmith_div_f32(var_0.c.a.x, 591f)), -694f))))));
    global1 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(func_1(var_0.c)), var_0.c.b.yx);
}

