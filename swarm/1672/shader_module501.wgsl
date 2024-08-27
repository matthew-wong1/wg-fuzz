struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: array<u32, 17> = array<u32, 17>(767u, 4294967295u, 1u, 1u, 4294967295u, 6813u, 45639u, 4294967295u, 0u, 1783u, 35753u, 4294967295u, 0u, 42547u, 10406u, 4294967295u, 9714u);

var<private> global2: Struct_1 = Struct_1(-1i, vec2<u32>(0u, 1u), -36157i, vec2<f32>(403f, 1078f), false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<f32> {
    global2 = Struct_1(~17918i, global2.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i << (u_input.b % 32u), 13656i, 2147483647i), 4207i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(arg_3, vec2<f32>(-427f, arg_2.d.x))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.d.x, arg_2.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(208f + 382f))))), arg_2.e);
    var var_0 = -6116i;
    let var_1 = select(~0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.b.x, _wgslsmith_div_u32(4294967295u, u_input.a ^ 43819u), ~global2.b.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.b.x, 17u)], 17u)], arg_2.b.x, global2.b.x))), 91287u), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, -1447f, -956f, global2.d.x) - vec4<f32>(441f, arg_3.x, -242f, arg_3.x)))) * vec4<f32>(-326f, _wgslsmith_f_op_f32(arg_3.x - -1114f), -1732f, 212f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(arg_3.x, 501f, false)), -694f, _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(-1618f + arg_3.x)))), all(select(!vec4<bool>(true, false, true, arg_2.e), vec4<bool>(arg_2.e, global2.e, true, false), 8425u >= var_1))))));
    let var_3 = arg_2;
    return var_2.zz;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global2.c, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(21049u, u_input.b)), ~global2.b, vec2<u32>(_wgslsmith_mod_u32(~1u, u_input.a >> (4127u % 32u)), ~u_input.a)), global2.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)) * _wgslsmith_f_op_f32(-1010f - global2.d.x)), global2.d.x), 4294967295u > global2.b.x);
    global0 = array<vec4<i32>, 5>();
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~abs(~u_input.d), u_input.c.yyx), var_0.b, var_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(!select(vec3<bool>(global2.e, global2.e, false), vec3<bool>(false, var_0.e, global2.e), vec3<bool>(true, global2.e, global2.e)), u_input.c, Struct_1(countOneBits(77304i), _wgslsmith_mod_vec2_u32(global2.b, vec2<u32>(49133u, 1u)), ~u_input.d.x, vec2<f32>(152f, var_0.d.x), all(vec2<bool>(var_0.e, global2.e))), vec2<f32>(-889f, _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.d.x, 641f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(759f, 1077f) * var_0.d)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -800f) - vec2<f32>(2364f, var_0.d.x)), var_0.d, 0u >= u_input.b)))), firstTrailingBit(min(global2.a, 46452i)) >= countOneBits(-42381i));
    var var_2 = vec4<bool>(select(var_1.d.x <= var_1.d.x, !select(var_1.e, var_0.e, var_0.e), all(vec3<bool>(global2.e, var_0.e, true))) | var_1.e, !var_0.e, true, !any(select(vec2<bool>(false, global2.e), !vec2<bool>(var_0.e, var_1.e), !vec2<bool>(global2.e, true))));
    let var_3 = Struct_1(~var_0.a, _wgslsmith_mult_vec2_u32(~((vec2<u32>(u_input.b, var_1.b.x) >> (var_0.b % vec2<u32>(32u))) << (vec2<u32>(u_input.a, var_0.b.x) % vec2<u32>(32u))), select(_wgslsmith_mult_vec2_u32(vec2<u32>(5636u, 48892u), _wgslsmith_mult_vec2_u32(vec2<u32>(94185u, 58226u), vec2<u32>(u_input.a, 0u))), ~var_1.b, select(select(vec2<bool>(false, true), vec2<bool>(false, var_1.e), global2.e), var_2.zz, select(var_2.yy, vec2<bool>(var_2.x, false), false)))), firstLeadingBit(-1i), var_1.d, true);
    return Struct_1(~u_input.d.x, firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(select(u_input.a, countOneBits(global1[_wgslsmith_index_u32(17780u, 17u)]), !var_3.e), 17u)], 1921u)), -17864i, _wgslsmith_f_op_vec2_f32(step(var_3.d, var_1.d)), var_3.e | false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    global1 = array<u32, 17>();
    var var_0 = arg_3;
    global2 = arg_1;
    var var_1 = Struct_1(0i, firstLeadingBit(vec2<u32>(global2.b.x, ~_wgslsmith_clamp_u32(4294967295u, 36923u, u_input.b))), ~2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.d))), !global2.e);
    var_1 = func_2();
    return Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.zw, _wgslsmith_sub_vec2_i32(u_input.d.yz, u_input.c.wy)), arg_0.b, ~(_wgslsmith_clamp_i32(arg_1.a, var_1.c ^ global2.c, 1i) << (9839u % 32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-788f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, var_1.e, arg_1.e), vec4<i32>(56557i, u_input.d.x, arg_3, 21714i), Struct_1(0i, arg_0.b, -32728i, vec2<f32>(arg_2, var_1.d.x), true), arg_0.d)).x))) + global2.d), false);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(~10856i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-76198i, global2.a << (0u % 32u), -2147483647i), ~(u_input.d >> (vec3<u32>(arg_0, 92541u, global1[_wgslsmith_index_u32(1u, 17u)]) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a, arg_0, global2.b.x)), vec3<u32>(global1[_wgslsmith_index_u32(arg_0, 17u)], 4294967295u, u_input.a)) % vec3<u32>(32u))));
    global2 = func_4(func_2(), Struct_1(~_wgslsmith_sub_i32(-2147483647i, min(u_input.c.x, -3699i)), _wgslsmith_sub_vec2_u32(func_2().b, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(32842u, u_input.b), global2.b), ~vec2<u32>(u_input.a, 52923u), min(vec2<u32>(arg_0, 56773u), vec2<u32>(1u, 0u)))), _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(u_input.d.x, ~(-2147483647i), 1i, -global2.c)), global2.d, global2.e), 720f, ~(-2147483647i));
    let var_1 = func_4(func_2(), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -311f), -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0, i32(-1i) * -2147483647i, 1i), min(u_input.c.x, -1i) & -1i));
    global0 = array<vec4<i32>, 5>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -629f);
    return Struct_1(_wgslsmith_mult_i32(u_input.c.x, -(~(~2147483647i))), ~(~vec2<u32>(46488u, global2.b.x)) << (select(vec2<u32>(global2.b.x, 84689u), firstLeadingBit(vec2<u32>(arg_0, 43019u)), false) % vec2<u32>(32u)), _wgslsmith_clamp_i32(~26940i, var_1.c, _wgslsmith_dot_vec3_i32(u_input.d, ~reverseBits(vec3<i32>(28546i, -2147483647i, var_0)))), vec2<f32>(-1296f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.d.x)))), func_4(func_2(), var_1, var_1.d.x, -(reverseBits(var_1.a) << (min(0u, arg_0) % 32u))).e);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0;
    global1 = array<u32, 17>();
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, arg_1.x, global2.d.x, var_0.d.x), vec4<f32>(var_0.d.x, var_0.d.x, arg_0.d.x, var_0.d.x), select(vec4<bool>(true, true, var_0.e, var_1.e), vec4<bool>(var_1.e, var_1.e, true, global2.e), global2.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global2.d.x, 112f, var_0.d.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, -741f, global2.d.x, arg_1.x), vec4<f32>(global2.d.x, global2.d.x, -1137f, -1687f), vec4<bool>(global2.e, true, true, true))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1358f, -832f, -441f, var_1.d.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -288f), vec4<f32>(var_0.d.x, arg_0.d.x, global2.d.x, var_0.d.x))))))));
    let var_3 = func_4(arg_0, Struct_1(i32(-1i) * -_wgslsmith_add_i32(global2.c, var_1.a), abs(vec2<u32>(global1[_wgslsmith_index_u32(16059u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)])) >> (arg_0.b % vec2<u32>(32u)), 1i, func_4(func_4(func_1(46757u), func_2(), _wgslsmith_f_op_f32(global2.d.x - 626f), 15394i), Struct_1(~arg_3, arg_0.b, countOneBits(u_input.d.x), vec2<f32>(-1000f, 823f), true), _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(false, arg_0.e, false), vec4<i32>(arg_0.a, -1i, -21467i, 1i), var_0, _wgslsmith_f_op_vec2_f32(var_0.d + var_2.zz))).x, ~(~(-5100i))).d, true), _wgslsmith_f_op_f32(-285f * 288f), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, -1i), vec2<i32>(var_1.c, 1i)) | _wgslsmith_mod_i32(21780i, var_0.c), u_input.d.x) | var_1.a);
    return func_1(20045u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.wxx, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.zzy, vec3<i32>(arg_0.a, u_input.c.x, u_input.d.x)) << (vec3<u32>(global1[_wgslsmith_index_u32(21800u, 17u)], arg_1.b.x, 36620u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(arg_0.c, arg_0.c), 1i, u_input.d.x), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global2.a, arg_1.c), vec3<i32>(1i, arg_1.c, -14620i), u_input.c.wxy), u_input.c.yyz, true))), vec3<i32>(countOneBits(-(i32(-1i) * -2147483647i)), 57407i, arg_1.a & (arg_1.a | (1i ^ global2.c))));
    var var_1 = !(!(!(!(!vec4<bool>(global2.e, true, arg_1.e, true)))));
    let var_2 = arg_1;
    global0 = array<vec4<i32>, 5>();
    let var_3 = _wgslsmith_add_i32(global2.c, abs(var_2.c));
    return _wgslsmith_sub_i32(u_input.c.x, 5549i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41067u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-global2.d);
    let var_2 = Struct_1(select(func_6(func_5(func_1(global1[_wgslsmith_index_u32(global2.b.x, 17u)]), vec2<f32>(var_1.x, var_1.x), global2.b.x, global2.a), func_2()), ~u_input.d.x, !all(!vec4<bool>(true, true, global2.e, global2.e))), ~vec2<u32>(~_wgslsmith_sub_u32(u_input.b, var_0), ~(var_0 >> (0u % 32u))), _wgslsmith_clamp_i32(u_input.c.x, func_2().a, u_input.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.d, vec2<f32>(-663f, 1352f))))), func_4(Struct_1(2147483647i, ~func_1(20095u).b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, 39068i, 0i), vec3<i32>(u_input.d.x, u_input.c.x, 0i)), u_input.c.wyw), _wgslsmith_div_vec2_f32(vec2<f32>(global2.d.x, global2.d.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-317f, global2.d.x)))), false), func_2(), 147f, max(1i, _wgslsmith_div_i32(global2.c, u_input.d.x))).e);
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_div_i32(var_2.c, -30614i) >> (func_4(var_2, Struct_1(global2.a, global2.b, global2.a, vec2<f32>(global2.d.x, var_2.d.x), var_2.e), var_2.d.x, -2147483647i).b.x % 32u)) << (4294967295u % 32u)) >> (abs(var_2.b.x) % 32u), min(~abs(vec3<u32>(var_2.b.x, var_0, 0u)), vec3<u32>(u_input.b, global2.b.x & global1[_wgslsmith_index_u32(var_2.b.x, 17u)], var_2.b.x)) >> (~vec3<u32>(~var_0, func_1(0u).b.x, 1u) % vec3<u32>(32u)), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(27245u, 17u)]), vec4<u32>(16433u, 20984u, var_0, var_2.b.x)))), vec4<i32>(min(1i << (_wgslsmith_mult_u32(var_2.b.x, var_2.b.x) % 32u), abs(_wgslsmith_mod_i32(var_2.a, 5569i))), -1i, abs(-_wgslsmith_dot_vec4_i32(u_input.c, global0[_wgslsmith_index_u32(var_0, 5u)])), 9647i));
}

