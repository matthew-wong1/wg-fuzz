struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

var<private> global1: i32 = 5675i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    global0 = array<vec4<f32>, 5>();
    let var_0 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(38325u, arg_0.a.a.x), vec2<u32>(arg_0.a.a.x, arg_0.a.a.x)), vec2<u32>(arg_0.a.a.x, ~arg_0.a.a.x))), _wgslsmith_dot_vec2_u32(~arg_0.a.a, _wgslsmith_mult_vec2_u32(~(arg_0.a.a >> (vec2<u32>(1u, arg_0.b.x) % vec2<u32>(32u))), ~vec2<u32>(4294967295u, 70957u))), arg_0.b.x, 4294967295u);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.c.x, arg_0.a.b, 41009i) & -vec3<i32>(1i, u_input.b, u_input.a.x), vec3<i32>(i32(-1i) * -21951i, -arg_0.a.b, -arg_0.a.b)), u_input.c));
    return select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), false), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> f32 {
    global1 = 0i << ((~17593u & _wgslsmith_dot_vec2_u32(vec2<u32>(12283u, arg_2.c) ^ reverseBits(vec2<u32>(112244u, arg_2.c)), ~vec2<u32>(arg_2.c, arg_2.c))) % 32u);
    let var_0 = _wgslsmith_div_u32(abs(arg_2.c) ^ ~arg_2.c, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), select(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec4<u32>(52354u, 44709u, arg_2.c, arg_2.c), true), ~vec4<u32>(0u, 0u, 172u, arg_2.c)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.c, arg_2.c, 16466u) & vec4<u32>(35750u, arg_2.c, arg_2.c, arg_2.c), ~vec4<u32>(12148u, arg_2.c, arg_2.c, 57057u))));
    global1 = ~arg_1;
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, arg_2.c, 0u) << ((select(vec3<u32>(arg_2.c, 18212u, arg_2.c), vec3<u32>(var_0, var_0, 50374u), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) ^ select(vec3<u32>(arg_2.c, var_0, var_0), vec3<u32>(arg_2.c, 29397u, var_0), vec3<bool>(true, false, arg_0.x))) % vec3<u32>(32u)), ~vec3<u32>(arg_2.c, ~arg_2.c, 1u)), ~firstTrailingBit(vec3<u32>(arg_2.c, arg_2.c, 0u)));
    global1 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + 574f))));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_4(Struct_3(arg_2.zy, u_input.c.x), vec4<u32>(_wgslsmith_mod_u32(~arg_2.x >> (~arg_2.x % 32u), _wgslsmith_mod_u32(~arg_2.x, min(arg_2.x, 38219u))), arg_2.x, _wgslsmith_div_u32(26416u << (_wgslsmith_sub_u32(arg_2.x, 4570u) % 32u), 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(max(8122u, 7700u), countOneBits(15100u)), vec2<u32>(~arg_2.x, _wgslsmith_mult_u32(63522u, 649u)))));
    let var_1 = _wgslsmith_add_vec2_i32(abs(-_wgslsmith_mult_vec2_i32(u_input.a, select(vec2<i32>(u_input.b, -6506i), u_input.c.zy, vec2<bool>(false, true)))), _wgslsmith_div_vec2_i32(u_input.c.yz, vec2<i32>(u_input.a.x, 1i)));
    global1 = (_wgslsmith_clamp_i32(-25892i, -1040i, _wgslsmith_clamp_i32(var_1.x, -var_1.x, firstLeadingBit(1i))) >> (max(var_0.a.a.x, 26660u) % 32u)) >> (var_0.a.a.x % 32u);
    let var_2 = Struct_4(var_0.a, _wgslsmith_mult_vec4_u32(~var_0.b, ~var_0.b));
    var_0 = var_2;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(exp2(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(371f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), -490f, _wgslsmith_f_op_f32(floor(-1233f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_4(Struct_3(~vec2<u32>(1u, 1u), arg_0.x), _wgslsmith_add_vec4_u32(~(~vec4<u32>(50851u, 73481u, 21781u, 9281u)), vec4<u32>(1u, 1u, 1u, 1u)) >> (((~vec4<u32>(0u, 74186u, 36895u, 70492u) | select(vec4<u32>(20575u, 21162u, 49986u, 18741u), vec4<u32>(10952u, 20127u, 23476u, 6124u), vec4<bool>(true, true, false, false))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(57088u, 1u, 1u, 39100u), select(vec4<u32>(0u, 30191u, 82499u, 27105u), vec4<u32>(45534u, 47191u, 0u, 1u), vec4<bool>(true, false, false, true))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(var_0.a.a.x, 5u)];
    global1 = arg_0.x ^ _wgslsmith_mod_i32(firstLeadingBit(-_wgslsmith_clamp_i32(var_0.a.b, arg_0.x, var_0.a.b)), -2147483647i >> (var_0.b.x % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-226f - -749f), vec2<f32>(_wgslsmith_f_op_f32(func_4(func_3(Struct_4(var_0.a, vec4<u32>(var_0.b.x, 1u, var_0.b.x, 16852u))), select(u_input.b, -2147483647i, false), Struct_2(-136f, vec4<i32>(2147483647i, u_input.b, arg_0.x, 2682i), 1u, u_input.c.yx))), -572f), abs(~var_0.b.wwy))));
    let var_3 = Struct_4(Struct_3(var_0.a.a, reverseBits(abs(u_input.a.x))), firstLeadingBit(~(vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_0.b.x, 31097u) >> (vec4<u32>(0u, var_0.b.x, 13027u, var_0.a.a.x) % vec4<u32>(32u)))));
    return firstTrailingBit(abs(var_3.b.ywy));
}

fn func_6(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_mod_vec2_u32(select(arg_0.zx, vec2<u32>(arg_0.x, 4992u), false), arg_0.xy) >> (vec2<u32>(arg_0.x, func_2(vec2<i32>(12914i, -1i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(632f, 1416f), vec2<f32>(-1920f, -1000f)))).x) % vec2<u32>(32u)), ~countOneBits(_wgslsmith_mult_i32(~u_input.a.x, ~u_input.b)));
    global0 = array<vec4<f32>, 5>();
    global1 = firstLeadingBit(var_0.b);
    let var_1 = reverseBits(~(~var_0.a.x & 1u) | countOneBits(arg_0.x & var_0.a.x));
    global1 = (-2147483647i ^ u_input.c.x) << (_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(arg_0.x & _wgslsmith_mult_u32(0u, 46408u), reverseBits(~arg_0.x))) % 32u);
    return Struct_1(reverseBits(min(reverseBits(vec3<i32>(16643i, var_0.b, var_0.b)), u_input.c)));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_4 {
    var var_0 = ~(select(reverseBits(~vec4<i32>(u_input.b, u_input.b, 41453i, 5758i)), vec4<i32>(reverseBits(arg_0.a.x), ~(-24588i), ~(-1i), arg_1), true) ^ select(vec4<i32>(u_input.a.x, arg_1, 58931i, arg_1) >> (reverseBits(vec4<u32>(0u, 33079u, 52082u, 19907u)) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, 2147483647i, 1i, -1i), !vec4<bool>(arg_3, false, arg_3, arg_3)));
    global0 = array<vec4<f32>, 5>();
    let var_1 = countOneBits(1i);
    global0 = array<vec4<f32>, 5>();
    let var_2 = Struct_2(_wgslsmith_div_f32(arg_2, arg_2), ~vec4<i32>(~30400i, var_1, 1i, reverseBits(2147483647i)) << (vec4<u32>(21585u, ~min(0u, 72045u), 1u, ~(~4294967295u)) % vec4<u32>(32u)), _wgslsmith_mod_u32(1u, select(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(93573u, 2050u)), 4294967295u, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x >> (countOneBits(13516u) % 32u), -10715i | arg_0.a.x), ~(~(vec2<i32>(-12793i, arg_0.a.x) ^ arg_0.a.yz))));
    return Struct_4(Struct_3(~(~vec2<u32>(var_2.c, var_2.c)), _wgslsmith_div_i32(~(-var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, var_2.d.x, 1i, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_1, var_2.d.x, -10351i)))), select(~select(~vec4<u32>(var_2.c, 40742u, var_2.c, 20653u), _wgslsmith_sub_vec4_u32(vec4<u32>(9287u, 0u, var_2.c, var_2.c), vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c)), select(vec4<bool>(true, false, arg_3, false), vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(true, false, true, true))), ~(~select(vec4<u32>(var_2.c, var_2.c, 51127u, 38208u), vec4<u32>(61130u, var_2.c, var_2.c, 31710u), vec4<bool>(true, false, arg_3, true))), true));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_7(func_6(func_2(u_input.c.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(446f, -1215f) - vec2<f32>(763f, -914f))))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, abs(~vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x))), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i) & u_input.c, u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(1200f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1407f)))), !all(vec3<bool>(true, true, true)));
    var var_1 = !select(!vec4<bool>(true, true, true, select(true, false, true)), !vec4<bool>(false, all(vec2<bool>(false, false)), any(vec2<bool>(false, false)), true), select(vec4<bool>(var_0.a.a.x > 4294967295u, -1i > var_0.a.b, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), firstLeadingBit(var_0.a.b) > var_0.a.b));
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~(~var_0.b.xz), max(var_0.a.a, func_2(vec2<i32>(34233i, -78564i), vec2<f32>(-189f, -138f)).yx)) | countOneBits(abs(var_0.a.a) ^ ~var_0.b.zx), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~57404u, var_0.b.x), ~(vec2<u32>(41526u, var_0.a.a.x) ^ var_0.b.yz)));
    let var_3 = func_7(Struct_1(vec3<i32>(reverseBits(-45014i), var_0.a.b, u_input.a.x)), -countOneBits(var_0.a.b | ~(-2147483647i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1107f) * _wgslsmith_f_op_f32(547f + 1972f)))))), ~(~_wgslsmith_add_u32(83738u, var_0.a.a.x)) < var_0.b.x).a;
    let var_4 = Struct_1(-firstTrailingBit(func_6(var_0.b.yzx).a) & _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, u_input.c) ^ vec3<i32>(u_input.a.x, -1i, var_0.a.b), _wgslsmith_add_vec3_i32(vec3<i32>(17110i, 0i, var_0.a.b), vec3<i32>(var_3.b, 13156i, var_3.b))));
    return ~(~var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 5>();
    let var_0 = Struct_3(vec2<u32>(1u, 1u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 30328i ^ u_input.c.x), -_wgslsmith_mult_i32(-1i, 25902i), -1i, -35272i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(23308i, 0i), u_input.a)), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.a.x)), _wgslsmith_mult_i32(-23669i, _wgslsmith_mult_i32(u_input.c.x, -24394i)), -57790i)));
    let var_1 = Struct_4(var_0, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 3009u, var_0.a.x) & vec4<u32>(var_0.a.x, 0u, var_0.a.x, 4294967295u), firstTrailingBit(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 151168u))), abs(~vec4<u32>(var_0.a.x, 6985u, var_0.a.x, 1u))) & func_1());
    let var_2 = vec3<f32>(1f, 1f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.a.b), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, countOneBits(var_0.b), firstLeadingBit(var_1.a.b)), (vec4<i32>(var_1.a.b, u_input.c.x, 0i, 16706i) & vec4<i32>(2147483647i, -38830i, var_1.a.b, -2147483647i)) & firstTrailingBit(vec4<i32>(var_1.a.b, u_input.a.x, var_1.a.b, var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_2.x), firstTrailingBit(4294967295u));
}

