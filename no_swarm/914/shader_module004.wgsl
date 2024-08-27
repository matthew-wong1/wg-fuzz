struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: Struct_4;

var<private> global2: vec2<f32> = vec2<f32>(894f, 429f);

var<private> global3: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(2147483647i, 14470i, 1i), vec3<i32>(-662i, -15038i, 1i), vec3<i32>(2147483647i, i32(-2147483648), -15407i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-1i, -33162i, 1i), vec3<i32>(-3189i, -1i, -10791i), vec3<i32>(0i, -23668i, 1i), vec3<i32>(2147483647i, -2716i, -7410i), vec3<i32>(-1i, -26323i, 2147483647i), vec3<i32>(-1i, 43304i, 0i), vec3<i32>(-14875i, 2147483647i, -7163i), vec3<i32>(-28455i, 2147483647i, -22031i), vec3<i32>(i32(-2147483648), -40002i, 43681i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), ~u_input.e, select(vec3<bool>(any(arg_0.xz) || arg_0.x, ~91316u < arg_3, !arg_0.x), vec3<bool>(any(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), false)), any(arg_0.zx), all(vec2<bool>(false, arg_0.x))), true), vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x) >> (4294967295u % 32u), -_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(arg_3, 13u)], vec3<i32>(u_input.c.x, -1i, 4961i)), -u_input.e), ~select(~1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 390f >= global2.x), 0i));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-892f, -593f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, var_0.a)))) + vec2<f32>(_wgslsmith_f_op_f32(1000f - -571f), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-629f * global2.x)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(var_0.a - global1.a)))));
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(select(var_0.d.yy, u_input.c, vec2<bool>(arg_0.x, var_0.c.x)) << (~u_input.d % vec2<u32>(32u)), abs(var_0.d.yy)), vec2<i32>(abs(13785i), min(countOneBits(2147483647i), -1i)), -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), u_input.b.zz), vec2<i32>(var_0.b, 2147483647i))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -1261f))), false)), 1i, select(!(!(!arg_0)), select(vec3<bool>(true, arg_2.x == -582f, true), select(var_0.c, !arg_0, !vec3<bool>(var_0.c.x, false, arg_0.x)), select(arg_0, arg_0, false && var_0.c.x)), all(arg_0)), ~(firstLeadingBit(-vec3<i32>(u_input.b.x, var_1, -1i)) ^ _wgslsmith_add_vec3_i32(select(vec3<i32>(var_1, var_0.d.x, u_input.c.x), vec3<i32>(2147483647i, 2147483647i, 26580i), vec3<bool>(var_0.c.x, var_0.c.x, arg_0.x)), u_input.b.yzx)));
    let var_3 = false;
    return 2129f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = 16113u;
    global1 = Struct_4(_wgslsmith_f_op_f32(sign(-110f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1058f)))), _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_2.x, false, arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a), 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1215f) + vec2<f32>(global1.a, global2.x)) - _wgslsmith_f_op_vec2_f32(-arg_1))), arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), -1919f)), global1.a);
    var_0 = _wgslsmith_clamp_u32(max(2620u, 1u), u_input.a, u_input.d.x ^ reverseBits(0u)) << (u_input.d.x % 32u);
    var var_2 = Struct_5(Struct_1(global1.a, u_input.c.x, !vec3<bool>(true, u_input.c.x >= -2147483647i, true), _wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(reverseBits(arg_0.x), 13u)], vec3<i32>(-1i, u_input.e, u_input.b.x), ~vec3<i32>(-1i, u_input.b.x, 0i)) << ((~vec3<u32>(arg_0.x, u_input.a, arg_0.x) & ~vec3<u32>(9352u, 90244u, u_input.d.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, -2252f))), global1.a)), u_input.d ^ arg_0, Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, global1.a) * var_1.wy) + _wgslsmith_f_op_vec2_f32(exp2(arg_1))), var_1.yw)), Struct_2(vec4<u32>(arg_0.x, arg_0.x & 1u, reverseBits(1u), select(u_input.a, 30161u, false)), Struct_1(_wgslsmith_f_op_f32(-1184f + var_1.x), 16495i, !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), global3[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_f32(global2.x - global1.a), (16108i << (arg_0.x % 32u)) == u_input.e, Struct_1(_wgslsmith_f_op_f32(min(397f, var_1.x)), ~(-3771i), vec3<bool>(true, true, true), abs(vec3<i32>(-2147483647i, -2147483647i, u_input.e)))), Struct_1(_wgslsmith_div_f32(1594f, _wgslsmith_f_op_f32(floor(arg_1.x))), 0i, select(select(vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, false, arg_2.x)), !vec3<bool>(false, arg_2.x, arg_2.x), select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(true, true, arg_2.x), vec3<bool>(true, arg_2.x, arg_2.x))), vec3<i32>(-32092i, min(u_input.b.x, 0i), -u_input.c.x)), Struct_2(vec4<u32>(~39148u, 52604u, 0u, min(103621u, arg_0.x)), Struct_1(var_1.x, u_input.e, select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, true, true)), global3[_wgslsmith_index_u32(~6412u, 13u)]), -173f, any(!vec4<bool>(arg_2.x, arg_2.x, false, false)), Struct_1(arg_1.x, ~u_input.e, !vec3<bool>(true, arg_2.x, arg_2.x), ~vec3<i32>(u_input.b.x, u_input.e, u_input.c.x)))), ~4294967295u != ~(~arg_0.x));
    return arg_1.x;
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global1.a), vec2<f32>(global2.x, global2.x))) + vec2<f32>(964f, -415f)), vec2<bool>(any(vec4<bool>(true, false, true, false)), true))))));
    global0 = array<Struct_3, 28>();
    var var_1 = firstLeadingBit(~(_wgslsmith_clamp_vec2_u32(select(u_input.d, u_input.d, vec2<bool>(false, true)), vec2<u32>(3657u, u_input.a), ~u_input.d) | _wgslsmith_mult_vec2_u32(vec2<u32>(25824u, u_input.d.x), u_input.d)));
    var var_2 = Struct_2(~((firstTrailingBit(vec4<u32>(u_input.d.x, u_input.a, 1u, 6069u)) ^ ~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 4294967295u)) | max(_wgslsmith_mod_vec4_u32(vec4<u32>(6790u, 0u, u_input.d.x, 16212u), vec4<u32>(u_input.a, 1u, u_input.d.x, 4294967295u)), countOneBits(vec4<u32>(87952u, u_input.a, 28800u, 88764u)))), Struct_1(global1.a, u_input.c.x, vec3<bool>(true, !all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true))), vec3<i32>(u_input.c.x, max(-u_input.c.x, -44129i), min(max(u_input.e, 0i), firstLeadingBit(1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true), vec4<f32>(global1.a, 1165f, var_0.a, 1000f), vec2<f32>(global1.a, var_0.a), 1u)) + var_0.a))) + -1744f), any(vec3<bool>(1i > _wgslsmith_mod_i32(-23608i, u_input.c.x), true, all(vec3<bool>(true, true, true)))), Struct_1(global1.a, _wgslsmith_mod_i32(~(i32(-1i) * -15566i), u_input.c.x), select(vec3<bool>(true, true, select(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), _wgslsmith_dot_vec4_i32(vec4<i32>(-39963i, 2147483647i, u_input.b.x, 12202i), vec4<i32>(u_input.e, 2147483647i, 0i, u_input.c.x)) == -10420i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), u_input.b.wz), -23432i, 1i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.e, u_input.c.x) | vec3<i32>(28398i, -2147483647i, u_input.e), u_input.b.xyx)));
    let var_3 = -2147483647i;
    return select(select(var_2.e.c, var_2.b.c, select(select(!var_2.e.c, vec3<bool>(true, true, true), !var_2.b.c), select(!var_2.e.c, !vec3<bool>(var_2.e.c.x, false, true), var_2.d), var_2.b.c)), var_2.e.c, any(var_2.b.c.yy));
}

fn func_4(arg_0: vec3<bool>) -> Struct_5 {
    let var_0 = Struct_2(reverseBits(firstTrailingBit(~(vec4<u32>(52738u, u_input.a, u_input.a, 0u) ^ vec4<u32>(1u, 4294967295u, 0u, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - 2241f))), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 29960i, u_input.c.x), global3[_wgslsmith_index_u32(u_input.d.x, 13u)])), select(!arg_0, select(!arg_0, select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, true), arg_0.x), arg_0), _wgslsmith_f_op_f32(-global2.x) >= _wgslsmith_f_op_f32(select(global1.a, global1.a, arg_0.x))), u_input.b.zxx), _wgslsmith_f_op_f32(f32(-1f) * -1894f), arg_0.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global1.a) - global2.x) - _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_sub_i32(-u_input.b.x, -u_input.c.x)), func_1(), firstTrailingBit(global3[_wgslsmith_index_u32(u_input.d.x, 13u)]) << (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(1u, u_input.d.x)), _wgslsmith_mod_u32(u_input.d.x, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(66103u, u_input.a, 10238u), vec3<u32>(25295u, 28282u, u_input.a))) % vec3<u32>(32u))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(func_2(vec2<u32>(82665u, var_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, var_0.b.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.a, -221f) * vec2<f32>(-1498f, global2.x))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(958f, global1.a))))), select(arg_0.xz, !var_0.b.c.xx, all(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, var_0.b.c.x, true), vec3<bool>(false, true, true)))))));
    var var_2 = Struct_4(global2.x);
    var_2 = var_1;
    var_2 = var_1;
    return Struct_5(var_0.b, _wgslsmith_f_op_f32(func_2(var_0.a.wz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, -825f)))), vec2<bool>(_wgslsmith_f_op_f32(round(397f)) <= _wgslsmith_div_f32(-2040f, var_2.a), true))), _wgslsmith_mult_vec2_u32(var_0.a.yw, ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0.a.x), ~u_input.d)), global0[_wgslsmith_index_u32(0u, 28u)], !((abs(var_0.a.x) == var_0.a.x) || all(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-564f, -1384f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -940f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-123f, 353f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) - vec2<f32>(1539f, 1218f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.x * 266f), _wgslsmith_f_op_f32(-725f + global1.a)))));
    global0 = array<Struct_3, 28>();
    global1 = Struct_4(global1.a);
    var var_0 = -605f;
    let var_1 = func_4(!func_1());
    var_0 = -244f;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

