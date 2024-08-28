struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = 1000f;
    var var_1 = Struct_2(vec2<bool>(true, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 7963u, u_input.a.x, u_input.c.x), vec4<u32>(u_input.c.x, 14844u, 57923u, u_input.a.x)), u_input.a.x) != reverseBits(u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~0u), 40859u, 1u, u_input.a.x), abs(~reverseBits(vec4<u32>(1350u, u_input.c.x, 59725u, u_input.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(308f, -481f)) - vec2<f32>(-292f, -170f))), vec2<u32>(_wgslsmith_sub_u32(1u, u_input.a.x | 17950u), 1916u), ~u_input.b, select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(617f, -1252f), _wgslsmith_f_op_f32(1151f - -935f))))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(823f, 797f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(509f, 379f) * vec2<f32>(495f, 1585f))))), abs(select(min(u_input.c, vec2<u32>(u_input.c.x, 39878u)), u_input.c, true)), u_input.b, vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, 1000f)))))));
    return _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.b, ~select(~vec4<i32>(10766i, var_1.d.c.x, u_input.b.x, -1i), -vec4<i32>(u_input.b.x, u_input.b.x, var_1.d.c.x, u_input.b.x), false != var_1.d.d.x), select(vec4<i32>(u_input.b.x, -1i, 49427i, 1i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.d.c.x, u_input.b.x, u_input.b.x, -36915i), vec4<i32>(u_input.b.x, var_1.c.c.x, u_input.b.x, 0i), u_input.b), var_1.d.c, select(select(vec4<bool>(var_1.d.d.x, false, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.c.d.x, false, var_1.c.d.x), true), select(vec4<bool>(var_1.d.d.x, false, var_1.a.x, var_1.d.d.x), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.d.d.x), vec4<bool>(var_1.a.x, true, var_1.c.d.x, var_1.a.x)), select(vec4<bool>(var_1.c.d.x, true, var_1.c.d.x, var_1.c.d.x), vec4<bool>(var_1.c.d.x, var_1.a.x, true, true), vec4<bool>(var_1.c.d.x, var_1.a.x, true, var_1.a.x))))), vec4<i32>(2147483647i, 1i, _wgslsmith_div_i32(2147483647i | var_1.d.c.x, ~var_1.c.c.x) >> (1u % 32u), var_1.d.c.x));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_3))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_3.x, arg_3.x), _wgslsmith_div_f32(-464f, -516f)) + arg_3))), abs(min(vec2<u32>(u_input.c.x, 2133u), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 12809u), u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_sub_i32(arg_1.x, arg_1.x) | _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b.xzz, vec3<i32>(-25906i, 6079i, u_input.b.x)), 12810i), func_3()), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) + 1021f) >= _wgslsmith_f_op_f32(arg_3.x + 2195f), true), arg_3);
    let var_1 = vec4<bool>(!var_0.d.x, var_0.d.x == true, !(!all(vec3<bool>(var_0.d.x, false, false))), -1i < _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zyy, u_input.b.www) >> (vec3<u32>(var_0.b.x, arg_0, arg_0) % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, var_0.c.x, 2147483647i)));
    global0 = true;
    let var_2 = max(vec2<u32>(17752u, u_input.a.x), u_input.c);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e - arg_3)), min(~max(arg_2.yy, vec2<u32>(4294967295u, 50445u)), select(abs(abs(u_input.c)), vec2<u32>(select(16129u, var_0.b.x, false), select(55372u, arg_2.x, var_0.d.x)), var_1.zx)), vec4<i32>(u_input.b.x, ~var_0.c.x, _wgslsmith_dot_vec2_i32(var_0.c.zw, firstLeadingBit(firstLeadingBit(vec2<i32>(2147483647i, arg_1.x)))), arg_1.x), vec2<bool>(0u >= arg_2.x, ((arg_1.x >> (var_0.b.x % 32u)) & _wgslsmith_mod_i32(7094i, u_input.b.x)) < _wgslsmith_clamp_i32(6119i, -1i >> (1u % 32u), arg_1.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x - -659f) + _wgslsmith_f_op_f32(f32(-1f) * -360f)), _wgslsmith_f_op_f32(-606f + var_0.e.x)))));
    return 4294967295u | _wgslsmith_add_u32(reverseBits(var_0.b.x ^ (arg_0 >> (u_input.a.x % 32u))), var_0.b.x);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(arg_3.e, _wgslsmith_add_vec2_u32(vec2<u32>(func_2(_wgslsmith_sub_u32(4294967295u, 4294967295u), vec2<i32>(arg_2.x, -38363i), vec3<u32>(56913u, u_input.c.x, arg_3.b.x) ^ vec3<u32>(arg_3.b.x, 0u, 78129u), arg_3.e), ~max(arg_3.b.x, 0u)), abs(vec2<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.x, u_input.c.x, u_input.a.x), vec3<u32>(arg_3.b.x, 4294967295u, 2362u))))), firstLeadingBit(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, arg_2.x, u_input.b.x), arg_3.c) | vec4<i32>(-20699i, -70657i, -2147483647i, -2147483647i))), vec2<bool>(any(!vec4<bool>(false, true, arg_3.d.x, false)), select(!arg_0 != (arg_3.a.x > arg_3.e.x), arg_3.a.x < _wgslsmith_f_op_f32(3115f * 442f), true)), vec2<f32>(-1484f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(arg_3.e.x + arg_3.e.x))))));
    var var_1 = 1698u;
    var var_2 = countOneBits(vec3<u32>(arg_3.b.x, ~var_0.b.x ^ ~arg_3.b.x, arg_3.b.x << (1u % 32u))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c.x), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, var_0.b.x, 0u), ~vec3<u32>(u_input.c.x, u_input.c.x, arg_3.b.x)));
    var var_3 = Struct_3(countOneBits(~(~vec3<i32>(-1i, 1i, u_input.b.x) & countOneBits(arg_3.c.ywz))), i32(-1i) * -1i, arg_3, vec2<bool>(false, false));
    let var_4 = Struct_3(_wgslsmith_div_vec3_i32((_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, 0i, var_0.c.x), vec3<i32>(var_3.b, -2147483647i, -12528i), arg_3.c.zyz) << (~vec3<u32>(0u, 12201u, 1708u) % vec3<u32>(32u))) & vec3<i32>(1i, _wgslsmith_mod_i32(var_0.c.x, 4118i), firstTrailingBit(var_3.c.c.x)), var_3.c.c.wwz), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_0.c.x >> (4294967295u % 32u), arg_2.x), firstTrailingBit(var_0.c.x) | u_input.b.x, 2147483647i, var_0.c.x), u_input.b), Struct_1(var_0.e, abs(_wgslsmith_add_vec2_u32(abs(vec2<u32>(9539u, 4294967295u)), vec2<u32>(30377u, 31051u) << (var_0.b % vec2<u32>(32u)))), vec4<i32>(-1i) * -var_3.c.c, vec2<bool>(all(!vec4<bool>(false, arg_1, arg_3.d.x, arg_1)), true), vec2<f32>(var_0.a.x, arg_3.a.x)), vec2<bool>(true, true));
    return Struct_2(vec2<bool>(arg_3.d.x, !arg_0), _wgslsmith_mult_u32(firstTrailingBit(1u & var_2.x) | 0u, _wgslsmith_mod_u32(4294967295u, 19053u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1323f, _wgslsmith_f_op_f32(floor(var_0.a.x))) * var_3.c.e), countOneBits((var_2.yz ^ u_input.c) & (vec2<u32>(1u, 1u) >> (vec2<u32>(var_0.b.x, 34526u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(arg_3.c, vec4<i32>(arg_3.c.x, 4002i, 4071i, 10222i)), vec4<i32>(var_0.c.x, u_input.b.x, var_4.b, -48591i), ~(-vec4<i32>(0i, 2147483647i, 4848i, 1i))), !select(!arg_3.d, var_4.d, var_3.c.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(373f, -1140f))), _wgslsmith_f_op_f32(floor(var_3.c.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.a.x, var_0.e.x)) - vec2<f32>(_wgslsmith_f_op_f32(1355f * -1000f), _wgslsmith_f_op_f32(var_0.a.x + -1369f))), vec2<u32>(1u, var_0.b.x), _wgslsmith_sub_vec4_i32(-arg_3.c, vec4<i32>(-1690i, -2147483647i, var_3.c.c.x, 0i) << (~vec4<u32>(u_input.c.x, var_3.c.b.x, 9071u, 50015u) % vec4<u32>(32u))), !select(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_3.d.x, false)), select(vec2<bool>(var_4.c.d.x, arg_1), vec2<bool>(false, arg_3.d.x), var_4.d), vec2<bool>(arg_1, false)), arg_3.a));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = var_0.b;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.e.x), var_0.c.e.x), 526f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.e.x - -639f), _wgslsmith_f_op_f32(min(-686f, 1543f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.d.e.x)))))));
    global0 = any(select(vec3<bool>(all(select(vec4<bool>(true, var_2.d.d.x, false, arg_2.c.d.x), vec4<bool>(var_0.d.d.x, true, var_2.d.d.x, false), vec4<bool>(false, false, true, true))), arg_2.c.d.x, func_1(true, true, min(u_input.b.xyy, var_2.c.c.xwx), arg_2.d).d.d.x), !select(vec3<bool>(var_2.a.x, true, true), !vec3<bool>(false, arg_2.a.x, true), vec3<bool>(true, true, var_2.c.d.x)), !vec3<bool>(true, arg_1.x, true)));
    return arg_2.d;
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_u32(~u_input.a, u_input.c);
    global0 = true;
    let var_1 = Struct_2(!arg_2.d, var_0, arg_2.c, Struct_1(_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 537f) + arg_1))), ~vec2<u32>(4294967295u, u_input.c.x) & vec2<u32>(1u, 4294967295u), reverseBits(-(~vec4<i32>(0i, arg_2.a.x, 67476i, arg_3.x))), vec2<bool>(reverseBits(u_input.c.x) == ~u_input.c.x, ~0u >= firstTrailingBit(4670u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, 766f))));
    let var_2 = _wgslsmith_sub_vec2_u32(reverseBits(~reverseBits(_wgslsmith_div_vec2_u32(arg_2.c.b, var_1.c.b))), vec2<u32>(arg_2.c.b.x, arg_2.c.b.x) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, arg_2.c.b.x), abs(vec2<u32>(1u, 1u))), ~var_1.d.b));
    var var_3 = _wgslsmith_clamp_vec4_i32(min(arg_2.c.c, vec4<i32>(arg_3.x, (2147483647i & arg_0) >> (arg_2.c.b.x % 32u), arg_2.a.x, _wgslsmith_sub_i32(16425i, ~arg_3.x))), countOneBits(select(-vec4<i32>(arg_0, 1i, 0i, -33923i) ^ firstTrailingBit(vec4<i32>(arg_0, -10550i, -1i, 3336i)), u_input.b, false)), vec4<i32>(-7821i, arg_3.x, _wgslsmith_div_i32(23586i, _wgslsmith_add_i32(arg_2.b, var_1.d.c.x)) & (_wgslsmith_add_i32(arg_0, arg_0) ^ arg_0), -1i));
    return func_1(true, true, countOneBits(var_1.d.c.yxy) | abs(_wgslsmith_mod_vec3_i32(abs(arg_2.c.c.xzz), firstTrailingBit(vec3<i32>(22548i, -7243i, -107189i)))), func_1(any(select(!vec3<bool>(var_1.c.d.x, false, arg_2.c.d.x), select(vec3<bool>(arg_2.c.d.x, true, false), vec3<bool>(arg_2.c.d.x, false, false), vec3<bool>(arg_2.d.x, var_1.d.d.x, false)), !vec3<bool>(false, arg_2.c.d.x, true))), var_3.x > 0i, var_3.zwz, func_4(_wgslsmith_mod_u32(arg_2.c.b.x << (1u % 32u), func_1(arg_2.d.x, var_1.a.x, var_3.zzx, Struct_1(arg_1, var_2, vec4<i32>(var_3.x, arg_0, u_input.b.x, u_input.b.x), arg_2.c.d, arg_1)).b), !(!arg_2.d), func_1(var_1.a.x, select(var_1.c.d.x, true, true), ~var_1.c.c.xxw, func_4(52601u, arg_2.c.d, var_1)))).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = u_input.a.x > u_input.c.x;
    var_0 = ~(~(~(u_input.a.x >> (_wgslsmith_add_u32(u_input.c.x, 4294967295u) % 32u))));
    global0 = true;
    let var_2 = vec4<i32>(-((u_input.b.x << (max(u_input.c.x, 1u) % 32u)) ^ -u_input.b.x), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(u_input.b.x), 0i), i32(-1i) * -4344i), 0i);
    var_0 = ~u_input.c.x;
    let var_3 = true;
    let var_4 = func_5(~(min(_wgslsmith_clamp_i32(11140i, var_2.x, -28751i), i32(-1i) * -1i) | -(~(-1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f - _wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1445f, 425f))))), Struct_3(u_input.b.zxz, reverseBits(-(var_2.x << (u_input.c.x % 32u))), func_4(4294967295u, vec2<bool>(true, all(vec4<bool>(var_3, false, false, var_3))), func_1(var_2.x == var_2.x, true, ~var_2.zwx, Struct_1(vec2<f32>(1315f, -1523f), u_input.c, var_2, vec2<bool>(false, var_3), vec2<f32>(1152f, 304f)))), vec2<bool>(func_1(true, all(vec2<bool>(var_3, true)), vec3<i32>(var_2.x, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.c.x, 50278u, 10762u) % vec3<u32>(32u)), func_4(u_input.a.x, vec2<bool>(var_3, true), Struct_2(vec2<bool>(true, true), u_input.a.x, Struct_1(vec2<f32>(-951f, -407f), vec2<u32>(65588u, 0u), u_input.b, vec2<bool>(false, true), vec2<f32>(1378f, -1367f)), Struct_1(vec2<f32>(1614f, -358f), vec2<u32>(4294967295u, u_input.a.x), u_input.b, vec2<bool>(var_3, var_3), vec2<f32>(1089f, 496f))))).d.d.x, false)), firstTrailingBit(abs(var_2.ww & _wgslsmith_add_vec2_i32(var_2.zw, vec2<i32>(1i, -39827i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(func_5(var_4.c.c.x, var_4.d.e, Struct_3(u_input.b.ywz, var_2.x, var_4.d, vec2<bool>(var_3, true)), vec2<i32>(0i, u_input.b.x)).c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(-13639i, var_4.d.c.x, 2147483647i)), -2347i), min(max(u_input.b.yzw, vec3<i32>(var_4.c.c.x, var_4.c.c.x, 40716i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -9795i, var_2.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x)))), _wgslsmith_add_vec3_i32(var_4.d.c.yyw, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.yzz, var_2.zxw), var_2.ywz))), func_5(_wgslsmith_mod_i32(-firstTrailingBit(-2147483647i), -firstLeadingBit(-27627i)), var_4.c.e, Struct_3(vec3<i32>(~var_4.c.c.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(3884i, var_2.x), vec2<i32>(-1i, var_4.c.c.x))), abs(i32(-1i) * -11627i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-781f, -966f)), ~vec2<u32>(11369u, var_4.d.b.x), vec4<i32>(var_4.c.c.x, -8329i, var_4.c.c.x, 10230i), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(trunc(var_4.d.a))), vec2<bool>(var_3, var_4.c.a.x == var_4.c.e.x)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b.x, 46116i), var_4.c.c.wz, func_3().wz)).c.c.wwz, ~min(var_4.d.b.x, min(func_1(var_3, var_4.a.x, vec3<i32>(var_2.x, u_input.b.x, var_2.x), Struct_1(var_4.d.a, vec2<u32>(1u, 33516u), vec4<i32>(var_2.x, -10716i, -1i, 0i), var_4.c.d, var_4.d.a)).c.b.x, ~var_4.b)));
}

