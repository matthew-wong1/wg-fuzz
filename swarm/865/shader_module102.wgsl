struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -35203i), 33994i), firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.a.wy, vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a.wy))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-721f)))), true)))));
    var var_2 = vec3<i32>(~(-1i) & var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 1i, -1i, u_input.a.x), u_input.a), 5895i, _wgslsmith_clamp_i32(u_input.a.x, -1i, 1i) ^ -u_input.a.x, _wgslsmith_mult_i32(var_0 >> (4294967295u % 32u), max(u_input.a.x, var_0))), vec4<i32>(var_0, 47071i, var_0, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, 2147483647i), 1i))), -u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, var_1.a, var_1.a, var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(var_1.a - var_1.a), 1f, -856f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, 840f, var_1.a) + vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a))) * vec4<f32>(_wgslsmith_f_op_f32(118f * -1467f), -1082f, 929f, var_1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(step(278f, -1589f)), _wgslsmith_f_op_f32(var_1.a - -997f), _wgslsmith_div_f32(var_1.a, var_1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, var_1.a, var_1.a, -1448f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<f32>(var_1.a, var_1.a, var_1.a, -881f))))), vec4<f32>(-2081f, _wgslsmith_f_op_f32(round(var_1.a)), -707f, -140f))), all(vec2<bool>(false, all(vec4<bool>(true, false, true, false))))));
    var_2 = -vec3<i32>(min(1i, -_wgslsmith_mod_i32(1i, -2147483647i)), abs(~(-15913i)), -2147483647i);
    return !select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, all(vec4<bool>(true, false, false, false))), true), vec4<bool>(true, select(true, false, any(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)), true), !vec4<bool>(true, select(true, true, false), false, true));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_5 {
    let var_0 = arg_0.x;
    var var_1 = !select(!(!vec4<bool>(arg_1.a.b.c.x, arg_1.a.b.a.x, arg_1.a.b.a.x, true)), !select(func_3(), func_3(), all(vec4<bool>(arg_1.a.b.c.x, arg_1.a.b.a.x, false, true))), vec4<bool>(arg_1.a.b.a.x | arg_1.a.b.c.x, select(true, false, arg_1.a.b.c.x), arg_1.a.b.c.x, arg_1.a.b.c.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_1.a.b.e * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, -852f, -234f)));
    var_1 = vec4<bool>(arg_1.a.b.b != _wgslsmith_mod_u32(arg_1.a.b.b, firstLeadingBit(abs(7702u))), !var_1.x, true, var_1.x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(709f, arg_1.a.b.d.a, false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-834f + _wgslsmith_div_f32(-1411f, _wgslsmith_f_op_f32(1128f - arg_1.a.d))))));
    return Struct_5(arg_1.a.b, var_1.x, var_2.x, vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(25606u, arg_1.a.b.b), ~vec2<u32>(arg_1.a.b.b, 4294967295u)), 59717u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(arg_2, arg_2, _wgslsmith_mod_u32(54353u, arg_2)), ~(~(~arg_0.x))) != ~_wgslsmith_div_u32(38809u, arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1867f);
    var var_2 = func_2(u_input.a.yxy, Struct_4(Struct_3(u_input.a.yz, Struct_2(select(vec3<bool>(arg_1.x, true, false), arg_1.wwy, true), 1u, vec2<bool>(arg_1.x, arg_1.x), Struct_1(var_1), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, 447f), vec3<f32>(1000f, var_1, -109f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-492f, -967f) * vec2<f32>(1820f, -610f)))), 680f), 1000f));
    var var_3 = Struct_3(min(_wgslsmith_mult_vec2_i32((u_input.a.xx << (var_2.d % vec2<u32>(32u))) << (~arg_0.zz % vec2<u32>(32u)), vec2<i32>(~u_input.a.x, u_input.a.x)), ~firstTrailingBit(abs(u_input.a.yw))), var_2.a, _wgslsmith_f_op_vec2_f32(-var_2.a.e.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - 339f));
    var_2 = func_2(u_input.a.zxx, Struct_4(Struct_3(var_3.a, func_2(select(vec3<i32>(1i, var_3.a.x, var_3.a.x), u_input.a.zxw, vec3<bool>(var_3.b.a.x, var_2.a.a.x, arg_1.x)), Struct_4(Struct_3(vec2<i32>(14920i, u_input.a.x), var_3.b, vec2<f32>(var_1, var_1), 644f), -289f)).a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-326f + var_2.a.e.x), var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f))));
    return StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.e.yz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.d, var_3.b.e.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, 1467f)), _wgslsmith_f_op_vec2_f32(-var_3.c)) - var_3.b.e.yx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.e.x * var_2.c) * -519f), _wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_f_op_f32(-var_3.d))), ~(0i & _wgslsmith_mod_i32(u_input.a.x, var_3.a.x)) | countOneBits(u_input.a.x), ~min(_wgslsmith_mult_vec4_u32(arg_0, arg_0), _wgslsmith_mult_vec4_u32(arg_0, arg_0)) & vec4<u32>(~(~arg_2), ~arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, arg_3), vec3<u32>(var_3.b.b, var_3.b.b, arg_3) >> (vec3<u32>(var_2.a.b, 21240u, var_2.d.x) % vec3<u32>(32u))), firstLeadingBit(select(35011u, 1u, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(-83822i, u_input.a.x, 0i) << (vec3<u32>(0u, ~4294967295u, ~var_3.b.b) % vec3<u32>(32u)), -u_input.a.zwy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~_wgslsmith_sub_u32(1u, 1u), 15137u);
    let x = u_input.a;
    s_output = func_1((~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, 1u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 100470u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x >> (var_0.x % 32u), _wgslsmith_div_u32(var_0.x, var_0.x), ~43978u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 6526u, var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u)) >> (~vec4<u32>(4294967295u, var_0.x, 4294967295u, 0u) % vec4<u32>(32u))), !select(vec4<bool>(all(vec3<bool>(true, false, true)), true, false, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), 111992u <= reverseBits(var_0.x)), _wgslsmith_clamp_u32(abs(~58282u), var_0.x, 4294967295u), 0u);
}

