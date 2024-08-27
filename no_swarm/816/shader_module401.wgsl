struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = vec2<i32>(1i, -48460i);
    let var_1 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, u_input.a & 17971u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(0u, global0.x))) & max(vec2<u32>(1u, 1u), vec2<u32>(~(~u_input.a), ~9732u));
    let var_2 = !vec4<bool>(true, !all(vec2<bool>(true, true)), arg_0.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1000f), false);
    var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32((abs(vec2<i32>(var_0.x, -47134i)) | ~vec2<i32>(1i, 2147483647i)) ^ ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, var_0.x), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 15241i), vec3<i32>(var_0.x, 7576i, var_0.x)), var_0.x)), var_0.x);
    var var_3 = arg_0.x;
    return vec3<i32>(countOneBits(_wgslsmith_div_i32(select(var_0.x, 32685i, false), ~(-14794i))), select(var_0.x, var_0.x << (_wgslsmith_mult_u32(1u, 26557u) % 32u), !(global0.x <= 56893u)), var_0.x) ^ (vec3<i32>(abs(-var_0.x), _wgslsmith_clamp_i32(-55322i, 49030i, -var_0.x), -var_0.x) << (~firstLeadingBit(~vec3<u32>(0u, u_input.a, 4294967295u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -984f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1, arg_1)), 1201f)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, arg_0.x, arg_2), func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(994f, -1000f, -1407f, arg_1))), vec4<f32>(arg_1, arg_1, 758f, arg_1)) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(-13367i, 1414i, arg_2), vec3<i32>(arg_2, -16930i, arg_2))), -arg_2, select(-vec2<i32>(arg_2, arg_0.x), select(_wgslsmith_add_vec2_i32(arg_0.zy, vec2<i32>(arg_2, -3491i)), arg_0.zy, vec2<bool>(true, false)), func_3(vec4<f32>(-515f, 926f, arg_1, arg_1), vec4<f32>(arg_1, -727f, -663f, -475f)).x > ~19249i) & (select(select(vec2<i32>(0i, arg_2), vec2<i32>(-2147483647i, 2147483647i), true), abs(vec2<i32>(4880i, -2147483647i)), vec2<bool>(true, true)) >> (countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(23899u, global0.x), vec2<u32>(u_input.a, 76420u))) % vec2<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(1u > _wgslsmith_dot_vec4_u32(vec4<u32>(5168u, u_input.a, 9931u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, u_input.a)), true, u_input.a <= _wgslsmith_mult_u32(0u, 77358u), !any(vec2<bool>(true, true))), select(true, any(vec4<bool>(true, true, true, false)), false) && false), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7945u, global0.x, u_input.a, global0.x), vec4<u32>(global0.x, global0.x, 1u, u_input.a)), vec4<u32>(29424u, 68684u, u_input.a, 49746u) & vec4<u32>(1u, u_input.a, 75973u, 1u)), firstLeadingBit(vec4<u32>(u_input.a, global0.x, global0.x, 28940u)) << (abs(vec4<u32>(u_input.a, 10031u, 33963u, 57609u)) % vec4<u32>(32u))), reverseBits(global0.x)));
    var var_2 = vec3<i32>(0i, arg_0.x, -77695i);
    let var_3 = Struct_4(u_input.a, firstTrailingBit(~countOneBits(vec4<i32>(-1i, -8876i, -16979i, 24432i) | vec4<i32>(var_1.b, arg_0.x, var_1.a, -54437i))));
    let var_4 = Struct_2(Struct_1(-(i32(-1i) * -1482i), -(~abs(arg_2)), _wgslsmith_clamp_vec2_i32(vec2<i32>(39233i, var_3.b.x), var_3.b.yw ^ var_1.c, vec2<i32>(var_1.c.x, 19992i) << (vec2<u32>(80630u, var_1.e) % vec2<u32>(32u))) & var_2.zx, !vec4<bool>(true, false, false, !var_1.d.x), firstTrailingBit(abs(74618u)) | 0u), Struct_1(24567i, firstTrailingBit(arg_2), ~var_3.b.zw, var_1.d, ~global0.x));
    return max(66559u, var_3.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_div_u32(1u, 31352u), firstLeadingBit(_wgslsmith_mult_vec4_i32(~(vec4<i32>(1i, arg_1.b, 9994i, arg_1.b) | vec4<i32>(arg_1.c.x, -5756i, 2147483647i, 2147483647i)), vec4<i32>(arg_1.c.x >> (global0.x % 32u), reverseBits(40736i), firstTrailingBit(arg_1.b), arg_1.a))));
    global0 = arg_0.zz;
    let var_1 = Struct_4(~0u, abs(~(-var_0.b)));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<i32>(~(~(~(~arg_2.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(-vec4<i32>(-28i, 2147483647i, arg_2.c.x, arg_2.b), abs(vec4<i32>(arg_2.b, 16899i, -2147483647i, 2147483647i)), arg_2.d), -vec4<i32>(-32410i, 5889i, 1i, 0i)), -vec4<i32>(arg_2.b, min(-75778i, arg_2.a), ~(-53061i), arg_2.a)));
    let var_1 = func_4(~_wgslsmith_div_vec3_u32(abs(reverseBits(vec3<u32>(46971u, u_input.a, 1u))), vec3<u32>(_wgslsmith_add_u32(3884u, 0u), 61260u, func_2(vec3<i32>(-49358i, arg_2.a, var_0.x), 836f, 23330i))), arg_2);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, 1u), ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 10327u)), vec2<u32>(var_1.e, 57371u)), select(~u_input.a, 1u, true) ^ 1u) ^ 98078u;
    var_0 = arg_2.c;
    return Struct_2(Struct_1(var_1.a, arg_2.b, -vec2<i32>(-1i, _wgslsmith_clamp_i32(var_1.b, arg_2.b, var_0.x)), var_1.d, var_1.e), var_1);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, countOneBits(1u)), 1u), 4294967295u, arg_0.a.e) ^ vec3<u32>(min(1u, func_1(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(abs(301f)), arg_0.b).b.e), _wgslsmith_dot_vec4_u32(select(max(vec4<u32>(22735u, arg_0.a.e, 44491u, 0u), vec4<u32>(u_input.a, 42088u, u_input.a, 0u)), min(vec4<u32>(1u, global0.x, 56858u, u_input.a), vec4<u32>(77841u, 1u, 18201u, 4294967295u)), any(vec3<bool>(false, arg_0.a.d.x, true))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1066u, 1u, u_input.a, arg_0.b.e), vec4<u32>(24913u, 4294967295u, 16704u, global0.x), vec4<bool>(false, true, arg_0.b.d.x, true)), ~vec4<u32>(4294967295u, 4294967295u, 43203u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 2359u, u_input.a, u_input.a), vec4<u32>(global0.x, arg_0.b.e, 31090u, 1u)))), arg_0.a.e);
    var_0 = vec3<u32>(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f * 440f)))), 684f, arg_0.a).b.e, ~_wgslsmith_sub_u32(reverseBits(countOneBits(var_0.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global0.x, var_0.x), vec3<u32>(42446u, global0.x, u_input.a))), 48388u);
    var_0 = countOneBits(max(vec3<u32>(~(~global0.x), 40175u, arg_0.b.e), reverseBits(vec3<u32>(4294967295u << (u_input.a % 32u), func_2(vec3<i32>(arg_0.a.c.x, arg_0.a.a, 0i), 366f, 16654i), u_input.a))));
    var var_1 = Struct_3(~(arg_0.b.e >> (~select(arg_0.a.e, var_0.x, arg_0.b.d.x) % 32u)), !vec4<bool>(false, all(vec2<bool>(false, arg_0.b.d.x)) & any(arg_0.a.d.wx), !(true || arg_0.b.d.x), all(!vec2<bool>(arg_0.b.d.x, true))), arg_0.b.d.x, countOneBits(arg_0.a.a | ~arg_0.a.a));
    var_1 = Struct_3(~arg_0.b.e, func_4(~vec3<u32>(1u, 1u, 1u), Struct_1(21250i, -1i, -arg_0.a.c, !func_4(vec3<u32>(u_input.a, 1u, 0u), arg_0.b).d, 51846u)).d, arg_0.b.d.x, var_1.d);
    return func_1(-461f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-376f)))))), Struct_1(2147483647i, (~arg_0.a.c.x & arg_0.b.c.x) << (firstLeadingBit(func_2(vec3<i32>(arg_0.b.a, 0i, -62554i), 130f, 1i)) % 32u), ~vec2<i32>(var_1.d << (arg_0.b.e % 32u), 2147483647i), var_1.b, abs(u_input.a)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = Struct_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(1u), ~4294967295u), vec2<u32>(u_input.a >> (7354u % 32u), arg_3.a)), vec4<i32>(~select(-arg_2.d, 26406i, arg_1.a.d.x), arg_2.d, ~(~(-arg_3.b.x)), arg_3.b.x));
    global0 = vec2<u32>(~(~func_5(arg_1).a.e), ~min(~4682u, arg_0.x));
    global0 = arg_0.xz;
    var var_1 = firstTrailingBit(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1636f, 936f, 1314f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-673f * -506f), _wgslsmith_div_f32(-369f, 1189f), _wgslsmith_f_op_f32(trunc(-273f)), _wgslsmith_f_op_f32(ceil(1096f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-320f, -554f, -336f, -2517f)))))).x);
    let var_2 = vec3<u32>(var_0.a, _wgslsmith_div_u32(1u << (0u % 32u), _wgslsmith_add_u32(1u, 16966u)), 1u);
    return ~(var_0.b.zxy >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1924u, arg_3.a) << (var_2 % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(28032u, 109497u, 1u), arg_0), var_2), abs(arg_0)) % vec3<u32>(32u)));
}

fn func_7(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    global0 = _wgslsmith_clamp_vec2_u32(~(~(~(~vec2<u32>(4294967295u, 31741u)))), vec2<u32>(49988u, ~(_wgslsmith_mult_u32(4294967295u, 0u) | ~u_input.a)), ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(31566u, 4294967295u), vec2<u32>(4294967295u, global0.x), vec2<u32>(u_input.a, global0.x) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)))));
    var var_0 = arg_1.x;
    global0 = reverseBits(vec2<u32>(select(~1u, global0.x, func_1(_wgslsmith_f_op_f32(-1000f - 1535f), _wgslsmith_f_op_f32(f32(-1f) * -2156f), Struct_1(arg_1.x, arg_1.x, vec2<i32>(-52270i, arg_1.x), vec4<bool>(false, false, true, false), 1u)).b.d.x), 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -842f, arg_0) - vec3<f32>(arg_0, -425f, 323f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -2157f))))) + vec3<f32>(-128f, 880f, _wgslsmith_f_op_f32(f32(-1f) * -914f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 435f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-209f, 1000f), -1116f)), 837f), vec3<f32>(1f, 1f, 1f))));
    var var_2 = Struct_2(Struct_1(countOneBits(7113i), 2147483647i, vec2<i32>(-1i, _wgslsmith_clamp_i32(func_6(vec3<u32>(0u, global0.x, u_input.a), Struct_2(Struct_1(-2147483647i, -9572i, vec2<i32>(-2147483647i, arg_1.x), vec4<bool>(false, false, false, false), global0.x), Struct_1(arg_1.x, arg_1.x, vec2<i32>(50021i, arg_1.x), vec4<bool>(false, true, false, false), global0.x)), Struct_3(u_input.a, vec4<bool>(false, false, false, true), true, arg_1.x), Struct_4(u_input.a, vec4<i32>(24383i, arg_1.x, arg_1.x, arg_1.x))).x, -6396i, arg_1.x | 1i)), !vec4<bool>(true, true, -2147483647i != arg_1.x, true), global0.x), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f + arg_0))), func_1(197f, 554f, Struct_1(0i, arg_1.x << (global0.x % 32u), arg_1.xz, vec4<bool>(true, false, false, false), ~global0.x)).a).b);
    return -(~(-firstLeadingBit(1i)) ^ reverseBits(_wgslsmith_mult_i32(arg_1.x, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 15263u), vec2<u32>(0u, 23990u)) != ~u_input.a));
    global0 = ~vec2<u32>(~20424u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 1u) ^ global0.x, u_input.a));
    let var_1 = Struct_1(1i, func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1278f)) + -1506f)), func_6(max(vec3<u32>(global0.x, 1u, global0.x), ~vec3<u32>(1u, 1u, 13033u)), func_5(func_1(491f, -1184f, Struct_1(-62985i, 6544i, vec2<i32>(-3802i, 19563i), vec4<bool>(false, false, false, false), 38565u))), Struct_3(0u ^ global0.x, vec4<bool>(true, false, true, false), all(vec2<bool>(true, false)), 13242i), Struct_4(35866u, min(vec4<i32>(-2147483647i, -36869i, -28907i, 55929i), vec4<i32>(-3571i, -1i, 38683i, 0i))))), vec2<i32>(_wgslsmith_mod_i32(~(-32796i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(-5931i, -1i, 58754i)))), ~_wgslsmith_sub_i32(-33758i, 1i >> (1u % 32u))), select(vec4<bool>(false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), true, true), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-708f)) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-444f + 1180f), -1000f), func_5(func_5(Struct_2(Struct_1(-7017i, -2147483647i, vec2<i32>(0i, -20966i), vec4<bool>(true, false, false, false), 1u), Struct_1(36387i, -27293i, vec2<i32>(-1i, 18547i), vec4<bool>(true, false, true, false), 51309u)))).b).a.d, vec4<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))), any(vec3<bool>(false, true, true)), false)), _wgslsmith_div_u32(~(_wgslsmith_add_u32(global0.x, 4294967295u) >> (4294967295u % 32u)), ~_wgslsmith_sub_u32(u_input.a & u_input.a, global0.x)));
    let var_2 = ~23076u;
    var var_3 = all(!select(func_5(func_5(Struct_2(Struct_1(-10643i, -34105i, var_1.c, var_1.d, var_2), Struct_1(-1i, var_1.b, vec2<i32>(-5079i, 0i), vec4<bool>(var_1.d.x, false, var_1.d.x, false), 1u)))).a.d.xyw, !var_1.d.xxw, false));
    var var_4 = -180f;
    global0 = vec2<u32>(u_input.a, 21561u);
    let var_5 = Struct_3(func_1(_wgslsmith_f_op_f32(861f - 1527f), _wgslsmith_div_f32(1000f, -460f), var_1).b.e, var_1.d, true, var_1.a);
    let var_6 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, var_1.e, global0.x) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(61359u, 1u, 1u), vec3<u32>(26658u, 0u, 4294967295u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(36495u, 79363u, var_1.e), vec3<u32>(1u, 9769u, global0.x)), vec3<u32>(var_5.a, 0u, 0u) ^ vec3<u32>(u_input.a, 1u, 0u), vec3<bool>(false, var_1.d.x, var_1.d.x))), abs(~firstLeadingBit(vec3<u32>(38189u, var_5.a, global0.x)))) & vec3<u32>(4294967295u, func_2(vec3<i32>(~1i, 1i, var_5.d), -104f, 2852i), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 31095u) << (vec2<u32>(u_input.a, global0.x) % vec2<u32>(32u)), max(vec2<u32>(var_5.a, 26626u), vec2<u32>(45442u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(456f + _wgslsmith_f_op_f32(max(-267f, _wgslsmith_f_op_f32(-219f * 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f + _wgslsmith_div_f32(2445f, -282f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(239f)))))), -1045f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(184f, -181f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f * -666f)), 622f)), vec2<u32>(~var_1.e, var_6.x));
}

