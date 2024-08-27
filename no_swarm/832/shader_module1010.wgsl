struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: u32, arg_3: u32) -> vec3<i32> {
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.xy))), _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2623i, u_input.d, u_input.d) & vec4<i32>(27874i, u_input.d, -5527i, 26345i), vec4<i32>(_wgslsmith_sub_i32(u_input.d, 0i), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(u_input.d, 9464i), u_input.e.x))), u_input.e, 1838f, Struct_1(arg_1.yy, arg_3, vec4<i32>(u_input.e.x, 1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.e.x, -21708i, 21635i), -u_input.e.x), _wgslsmith_add_i32(firstTrailingBit(u_input.d), abs(u_input.d)))));
    let var_1 = select(!vec2<bool>(false, arg_1.x != _wgslsmith_f_op_f32(2564f + 167f)), select(vec2<bool>(select(var_0.b.x != u_input.d, all(vec4<bool>(false, true, false, false)), true), any(vec3<bool>(true, true, true))), vec2<bool>(select(true, true, false), true != (arg_3 <= 4294967295u)), true), true);
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(32853u, 26420u, 36390u, arg_3) << ((u_input.a ^ ~vec4<u32>(arg_0, arg_3, var_0.a.b, arg_2)) % vec4<u32>(32u)), ~(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(74576u, 35340u, arg_0, 5953u), vec4<u32>(arg_3, arg_0, 4294967295u, 0u)))), u_input.a, ~min(vec4<u32>(1u, _wgslsmith_clamp_u32(u_input.c, var_0.d.b, 1u), 28129u, arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(19834u, 69652u, arg_0, u_input.a.x), min(vec4<u32>(arg_3, 4294967295u, 22358u, arg_3), u_input.a))));
    return var_0.b.xzx;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-1i) * -u_input.e.zzy), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, -1i, -3224i), u_input.e.xyx)) ^ u_input.e.xxw), (func_3(~arg_0.x, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 830f, -1043f), var_0.x, ~0u) ^ vec3<i32>(0i, select(u_input.e.x, u_input.e.x, true), func_3(u_input.b.x, vec3<f32>(-709f, global0[_wgslsmith_index_u32(103725u, 17u)], global0[_wgslsmith_index_u32(arg_0.x, 17u)]), 4294967295u, u_input.a.x).x)) & ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.e.xy, vec2<i32>(-2147483647i, arg_1.x)), arg_1.x, -10812i << (0u % 32u)));
    global1 = 24680i;
    var_0 = u_input.a.xwy;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(6699u, 17u)], -2942f)))))));
    return Struct_4(vec3<i32>(~(arg_1.x | u_input.e.x), firstLeadingBit(~firstTrailingBit(-1i)), ~u_input.e.x));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = !all(vec4<bool>(~u_input.c > ~21789u, true, any(select(arg_2.xy, arg_2.yz, arg_2.x)), true));
    global0 = array<f32, 17>();
    return func_2(arg_3.yzz, vec2<i32>(arg_0.d.d.c.x, _wgslsmith_add_i32(arg_0.b.x, ~u_input.d)));
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = firstLeadingBit(abs(u_input.d) ^ -2147483647i);
    let var_1 = u_input.e.xw;
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], 400f), vec2<f32>(2318f, -106f)), 4294967295u, ~_wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(var_0, var_1.x, u_input.e.x, 23907i))), -_wgslsmith_sub_vec4_i32(u_input.e, u_input.e) | u_input.e, _wgslsmith_f_op_f32(f32(-1f) * -1082f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(369f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)] * -782f)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.c), vec4<u32>(u_input.a.x, 62748u, 111056u, u_input.b.x) ^ u_input.a), ~firstLeadingBit(vec4<i32>(u_input.d, var_1.x, 0i, u_input.d)))), _wgslsmith_add_vec3_i32(~firstLeadingBit(arg_0.a), arg_0.a), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 693f) * vec2<f32>(-1718f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)])))), vec2<f32>(_wgslsmith_f_op_f32(-190f + -1361f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9904u, 17u)] - global0[_wgslsmith_index_u32(u_input.b.x, 17u)]))), 24846u, _wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.x, 20717i, -43076i, arg_0.a.x) | vec4<i32>(0i, var_0, arg_0.a.x, arg_0.a.x), select(vec4<i32>(44197i, -1i, -3783i, 22172i), -u_input.e, any(vec3<bool>(false, false, true))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 487f)))), u_input.b.x, vec4<i32>(-var_0, _wgslsmith_add_i32(23263i, -62125i), func_2(vec3<u32>(0u, 28434u, 0u), vec2<i32>(arg_0.a.x, 24812i)).a.x, _wgslsmith_mult_i32(arg_0.a.x, -1i))), _wgslsmith_clamp_vec4_i32(u_input.e << (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-u_input.e, vec4<i32>(1i, 50971i, -19103i, -2147483647i)), u_input.e), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)]), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1842f, global0[_wgslsmith_index_u32(u_input.c, 17u)])) * vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 1191f)), ~38498u, vec4<i32>(u_input.e.x, ~u_input.d, -var_1.x, 2147483647i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1126f, 427f), vec2<f32>(-2012f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], -317f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 17u)], -119f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]))))), countOneBits(_wgslsmith_mod_u32(~10581u, ~50878u)), -u_input.e));
    global0 = array<f32, 17>();
    var var_3 = var_2.c;
    return ((-var_2.a.a.c.x >> (var_2.e.b % 32u)) >= (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_2.d.b, vec4<i32>(11690i, -1i, var_2.e.c.x, var_2.a.b.x)), ~arg_0.a.x) ^ func_2(select(u_input.b, vec3<u32>(var_3.b, 65160u, var_2.d.a.b), true), vec2<i32>(u_input.e.x, 1i)).a.x)) && all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), select(true, false, true)), !all(vec3<bool>(true, false, true))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_i32((firstLeadingBit(u_input.d) & arg_0) ^ arg_2.x, abs(i32(-1i) * -min(arg_2.x, arg_0)));
    global1 = 32410i;
    global0 = array<f32, 17>();
    global1 = var_0;
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], 999f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(0u, 17u)], -680f)))), 0u, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.e, u_input.e, u_input.e), ~vec4<i32>(-1i, u_input.d, -1i, -77028i))), _wgslsmith_mod_vec4_i32(u_input.e, u_input.e) << (vec4<u32>(0u, ~44938u, ~1u, u_input.c) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(~u_input.a, vec4<u32>(30556u, 1u, u_input.a.x, u_input.a.x), select(arg_1, arg_1, false)), reverseBits(firstTrailingBit(vec4<u32>(0u, 24396u, u_input.b.x, 4294967295u)))), 17u)], Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1893f, -288f) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], 628f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]))), ~firstTrailingBit(1u), vec4<i32>(var_0, _wgslsmith_clamp_i32(1453i, arg_0, -4690i), abs(arg_2.x), ~2147483647i))), u_input.e.yzx, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1857u, 17u)], 1000f) * vec2<f32>(-1022f, global0[_wgslsmith_index_u32(u_input.c, 17u)])))), 4294967295u, vec4<i32>(-(u_input.d ^ 1i), var_0 >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(u_input.e.wx, -vec2<i32>(5877i, 34406i)), ~_wgslsmith_add_i32(var_0, u_input.e.x))), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(67512u, 17u)] + global0[_wgslsmith_index_u32(0u, 17u)])), ~(~15839u), u_input.e), vec4<i32>(-arg_0, ~1i, 1i, arg_2.x) ^ u_input.e, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27300u, 17u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4554u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(50077u, 17u)]))), firstLeadingBit(0u), firstLeadingBit(~u_input.e))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), global0[_wgslsmith_index_u32(select(14654u, 105665u, arg_1), 17u)]) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]))))), u_input.a.x, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, arg_2.x, arg_2.x, arg_2.x), u_input.e), vec4<i32>(-1i, var_0, 16121i, 1i)), _wgslsmith_mult_vec4_i32(reverseBits(u_input.e), vec4<i32>(1i, var_0, -62711i, 1i)))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-951f + 1000f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, var_1.e.b), vec2<u32>(20729u, u_input.a.x)), vec2<u32>(79594u, u_input.a.x) >> (vec2<u32>(u_input.a.x, var_1.a.d.b) % vec2<u32>(32u))), 17u)])), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.d, ~var_1.a.b.x), _wgslsmith_add_i32(u_input.d, var_0) ^ (-2147483647i << (u_input.b.x % 32u))), -(~_wgslsmith_mult_i32(0i, -48535i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_add_i32(select(u_input.d, reverseBits(u_input.d), false), 2147483647i), all(vec2<bool>(true, true)) || (all(vec4<bool>(true, true, true, true)) && (u_input.b.x <= 4294967295u)), select(~(~(vec2<i32>(-2147483647i, u_input.d) << (u_input.b.xy % vec2<u32>(32u)))), u_input.e.yy, func_4(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(62858u, 17u)], 2021f), 37122u, u_input.e), vec4<i32>(2147483647i, u_input.d, 60646i, u_input.e.x), global0[_wgslsmith_index_u32(u_input.c, 17u)], Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(119713u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), u_input.b.x, vec4<i32>(-9945i, u_input.e.x, u_input.e.x, 2147483647i))), u_input.e.zxz, Struct_1(vec2<f32>(903f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), u_input.b.x, vec4<i32>(u_input.d, u_input.e.x, u_input.d, u_input.e.x)), Struct_2(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(55184u, 17u)], global0[_wgslsmith_index_u32(2767u, 17u)]), 4294967295u, vec4<i32>(0i, 22811i, 1i, 1i)), u_input.e, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], Struct_1(vec2<f32>(368f, global0[_wgslsmith_index_u32(51510u, 17u)]), u_input.a.x, vec4<i32>(u_input.e.x, -11324i, u_input.d, 2147483647i))), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(44691u, 17u)]), 4294967295u, vec4<i32>(u_input.e.x, 1i, -30662i, u_input.d))), true, vec3<bool>(true, false, false), vec4<u32>(1u, 0u, 26721u, 33956u)))));
}

