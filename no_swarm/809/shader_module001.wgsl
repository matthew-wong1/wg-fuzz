struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<bool, 11> = array<bool, 11>(true, false, false, true, true, false, true, true, true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: f32) -> vec4<bool> {
    var var_0 = !(!(!(-1i >= abs(u_input.a.x))));
    var_0 = any(!vec3<bool>(false, global3[_wgslsmith_index_u32(global1.a.x, 11u)], all(vec3<bool>(global1.b.x, false, false)) && any(vec4<bool>(global1.c, global3[_wgslsmith_index_u32(arg_1.x, 11u)], global1.c, true))));
    var var_1 = true;
    global0 = array<vec3<u32>, 6>();
    var var_2 = Struct_3(vec3<bool>(global1.b.x, any(!vec2<bool>(global1.b.x, global3[_wgslsmith_index_u32(arg_1.x, 11u)])), any(!(!vec2<bool>(global1.b.x, global3[_wgslsmith_index_u32(arg_1.x, 11u)])))), 19361u, -vec2<i32>(i32(-1i) * -1i, 55409i & arg_0), arg_0, _wgslsmith_mult_vec2_u32(~(~abs(arg_1)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(5766u, 59855u)), vec2<u32>(global1.a.x | 60638u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(33835u, 6u)], global0[_wgslsmith_index_u32(arg_1.x, 6u)])))));
    return !(!(!vec4<bool>(true, all(vec3<bool>(false, var_2.a.x, global1.c)), global1.b.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2366u, global1.a.x, global1.a.x, 71131u), vec4<u32>(52378u, 1u, 0u, 0u)), 11u)])));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global0 = array<vec3<u32>, 6>();
    var var_0 = reverseBits(4294967295u) & global1.a.x;
    var var_1 = any(select(!vec4<bool>(true, !global1.c, any(vec4<bool>(true, false, global1.c, false)), all(vec2<bool>(global1.c, global3[_wgslsmith_index_u32(global1.a.x, 11u)]))), select(!vec4<bool>(global1.b.x, true, global3[_wgslsmith_index_u32(global1.a.x, 11u)], global3[_wgslsmith_index_u32(global1.a.x, 11u)]), func_3(-1i, _wgslsmith_sub_vec2_u32(global1.a.wz, global1.a.zx), _wgslsmith_f_op_f32(abs(168f))), vec4<bool>(global1.b.x || global3[_wgslsmith_index_u32(1u, 11u)], true, false && global1.c, true)), true));
    let var_2 = true;
    global1 = Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(31822u, 4294967295u, global1.a.x, global1.a.x) << (vec4<u32>(55152u, global1.a.x, global1.a.x, global1.a.x) % vec4<u32>(32u)), ~vec4<u32>(global1.a.x, 0u, 32524u, 0u)), ~vec4<u32>(0u, 0u, 0u, 16513u), global1.a), global1.b, !global1.b.x, -1357f);
    return vec4<u32>(_wgslsmith_mod_u32(global1.a.x, 1u) << (~(~(~0u)) % 32u), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(20427u, 76712u, global1.a.x, global1.a.x), vec4<u32>(0u, 1u, 0u, 0u)))), 71974u, ~(_wgslsmith_dot_vec2_u32(~global1.a.yx, abs(vec2<u32>(4294967295u, 45686u))) << (~_wgslsmith_mod_u32(4294967295u, global1.a.x) % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = -firstTrailingBit(-u_input.b.x);
    let var_1 = global2[_wgslsmith_index_u32(select(16549u << (arg_3.x % 32u), ~global1.a.x, !global3[_wgslsmith_index_u32(~arg_0 >> (4070u % 32u), 11u)]), 2u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.d)), _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -637f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(900f, 1182f, arg_2.b)))) * _wgslsmith_f_op_f32(min(-1674f, _wgslsmith_f_op_f32(1137f + 1415f)))) * 993f));
    let var_3 = u_input.a;
    global3 = array<bool, 11>();
    return Struct_1(arg_2.c.a, vec2<bool>(_wgslsmith_f_op_f32(abs(arg_2.a)) < _wgslsmith_f_op_f32(arg_1.d + arg_2.a), any(select(!vec3<bool>(arg_1.b.x, false, global1.b.x), vec3<bool>(arg_2.c.b.x, arg_1.b.x, true), arg_0 <= 1u))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(578f))))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    global1 = func_4(abs(arg_2.b >> (_wgslsmith_dot_vec4_u32(~global1.a, func_2(global1.d)) % 32u)), Struct_1(~vec4<u32>(global1.a.x, arg_2.e.x, 4294967295u, _wgslsmith_clamp_u32(global1.a.x, arg_2.b, global1.a.x)), !(!(!vec2<bool>(false, arg_2.a.x))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-773f)) - -448f)))), global2[_wgslsmith_index_u32(~87851u, 2u)], select(min(firstTrailingBit(~arg_2.e), vec2<u32>(global1.a.x, arg_2.b ^ 0u)), global1.a.xz, !select(arg_2.a.yx, vec2<bool>(true, global3[_wgslsmith_index_u32(global1.a.x, 11u)]), select(global1.b, vec2<bool>(arg_0, false), arg_0))));
    let var_0 = Struct_3(select(!select(select(arg_2.a, vec3<bool>(arg_2.a.x, global1.b.x, true), arg_2.a), arg_2.a, true), func_3(36699i, abs(global1.a.yz) << (~arg_2.e % vec2<u32>(32u)), -1029f).xww, arg_2.a), min(abs(4294967295u), arg_2.b), arg_2.c, 48974i, arg_2.e);
    global3 = array<bool, 11>();
    var var_1 = global0[_wgslsmith_index_u32(arg_2.e.x, 6u)];
    var var_2 = arg_2;
    return func_4(~var_1.x, Struct_1(select(global1.a, vec4<u32>(arg_2.e.x, 4294967295u, var_1.x, arg_2.e.x), false) & vec4<u32>(var_1.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 5581u), var_0.e), ~19025u), func_3(-1i, abs(reverseBits(global1.a.xy)), _wgslsmith_f_op_f32(-global1.d)).yy, false, global1.d), global2[_wgslsmith_index_u32(select(select(var_1.x, var_2.e.x, global3[_wgslsmith_index_u32(arg_2.e.x, 11u)]), 0u, any(func_3(var_2.c.x & arg_2.c.x, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b, var_0.e.x), vec2<u32>(42569u, global1.a.x)), 2262f).ywy)), 2u)], vec2<u32>(1u, 0u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<f32> {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 37504u, 19883u), vec3<u32>(arg_0.x, 32491u, arg_1.a.x) ^ arg_0.ywy), func_1(func_1(true, vec4<f32>(arg_1.d, arg_1.d, global1.d, global1.d), Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a.x, 11u)], global3[_wgslsmith_index_u32(arg_1.a.x, 11u)], global3[_wgslsmith_index_u32(108237u, 11u)]), 32206u, u_input.a.zx, -43232i, vec2<u32>(1u, 107718u))).c, vec4<f32>(arg_1.d, 789f, 1620f, arg_1.d), Struct_3(vec3<bool>(arg_1.b.x, global3[_wgslsmith_index_u32(arg_1.a.x, 11u)], global1.c), 1u, vec2<i32>(2147483647i, u_input.a.x), u_input.a.x, vec2<u32>(arg_1.a.x, 4294967295u))), Struct_2(func_4(arg_1.a.x, arg_1, global2[_wgslsmith_index_u32(global1.a.x, 2u)], arg_1.a.xx).d, false, Struct_1(vec4<u32>(0u, arg_0.x, 84864u, 36068u), global1.b, true, arg_1.d)), global1.a.wx).d + -411f));
    var_0 = -821f;
    var var_1 = reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 83946u, 14148u & global1.a.x, ~arg_1.a.x), ~vec4<u32>(4294967295u, global1.a.x, arg_0.x, 2927u)), _wgslsmith_div_u32(min(1u, global1.a.x), ~_wgslsmith_sub_u32(27098u, global1.a.x))));
    var var_2 = Struct_2(arg_1.d, (u_input.a.x > 41162i) & global3[_wgslsmith_index_u32(global1.a.x << (max(global1.a.x, ~arg_1.a.x) % 32u), 11u)], arg_1);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1182f, _wgslsmith_div_f32(1064f, _wgslsmith_f_op_f32(f32(-1f) * -1850f)), _wgslsmith_f_op_f32(-340f + -1710f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, global1.d, global1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, arg_1.d, 1000f)), false)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.d, global1.d, -427f) + vec3<f32>(global1.d, 1000f, var_2.c.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, -1043f, var_2.c.d))))))), !select(vec3<bool>(!arg_1.b.x, global1.b.x, true), func_3(countOneBits(arg_2.x), abs(arg_0.zz), _wgslsmith_f_op_f32(min(arg_1.d, 616f))).yww, var_2.b)));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = ~abs(countOneBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 73291u), vec4<u32>(42508u, global1.a.x, global1.a.x, 70021u)))));
    let var_1 = global1.d != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) + 1f))) + -291f);
    let var_2 = ~global1.a.x;
    global3 = array<bool, 11>();
    let var_3 = func_1(!var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, arg_0.x, -676f, arg_0.x) + vec4<f32>(global1.d, -1000f, arg_0.x, -583f)) + vec4<f32>(global1.d, 121f, 505f, global1.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(889f, global1.d, global1.d, arg_0.x))))), Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(~69164u), 11u)], all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 11u)], true, global3[_wgslsmith_index_u32(global1.a.x, 11u)], global3[_wgslsmith_index_u32(28251u, 11u)])) != false, func_4(~global1.a.x, Struct_1(global1.a, vec2<bool>(true, arg_2), false, -564f), global2[_wgslsmith_index_u32(var_2, 2u)], _wgslsmith_mult_vec2_u32(vec2<u32>(48127u, var_2), var_0.xw)).b.x), global1.a.x, ~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)), _wgslsmith_dot_vec3_i32(max(-vec3<i32>(-40621i, -25938i, -28182i), ~vec3<i32>(u_input.b.x, arg_3, arg_3)), ~_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-69052i, 0i, 0i))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global1.a.zy, global1.a.zw) >> (~var_0.xy % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(global1.a, global1.a), ~10258u)))).d;
    return Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, _wgslsmith_dot_vec4_u32(global1.a, global1.a), func_1(global1.c, vec4<f32>(arg_0.x, arg_0.x, -296f, 1000f), Struct_3(vec3<bool>(true, true, true), global1.a.x, u_input.a.xx, u_input.b.x, vec2<u32>(20809u, var_0.x))).a.x, global1.a.x << (global1.a.x % 32u)), global1.a), vec4<u32>(~45978u, _wgslsmith_div_u32(min(global1.a.x, var_0.x), _wgslsmith_clamp_u32(65605u, 4294967295u, global1.a.x)), 1u, _wgslsmith_dot_vec3_u32(~global1.a.yyy, _wgslsmith_mod_vec3_u32(var_0.wyx, vec3<u32>(67639u, var_2, var_0.x))))), func_3(abs(abs(min(arg_3, u_input.a.x))), var_0.zx, _wgslsmith_f_op_f32(f32(-1f) * -206f)).wy, !(!arg_2), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_f_op_vec3_f32(func_5(firstLeadingBit(~vec4<u32>(global1.a.x, 46547u, global1.a.x, 1u)), func_1(all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 11u)], global1.b.x, global3[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d, -454f, -1000f, -643f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-218f, global1.d, 1072f, 1962f), vec4<f32>(-1000f, global1.d, -1466f, -235f), global1.c)), true)), Struct_3(vec3<bool>(false, false, global1.b.x), _wgslsmith_mod_u32(0u, 4294967295u), vec2<i32>(u_input.a.x, 1i) ^ vec2<i32>(-2750i, u_input.a.x), ~u_input.b.x, vec2<u32>(113351u, global1.a.x) | vec2<u32>(global1.a.x, 64185u))), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.b.x, 2147483647i) | vec4<i32>(-22358i, u_input.b.x, -36927i, 7593i), -vec4<i32>(-1i, -1i, 0i, -1i)))), func_3(~(select(u_input.b.x, 1i, true) & reverseBits(2147483647i)), vec2<u32>(_wgslsmith_mult_u32(8890u, global1.a.x) | 31862u, global1.a.x), global1.d).xz, global3[_wgslsmith_index_u32(global1.a.x, 11u)] || true, ~1i);
    global2 = array<Struct_2, 2>();
    global2 = array<Struct_2, 2>();
    let var_0 = ~u_input.a;
    global3 = array<bool, 11>();
    let var_1 = Struct_2(global1.d, any(global1.b), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1832u, 105279u, global1.a.x), global1.a << (global1.a % vec4<u32>(32u))), global1.a), global1.b, false, 1378f));
    global3 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, var_1.a, var_1.c.d) + vec3<f32>(2239f, var_1.a, global1.d)) + vec3<f32>(-1551f, var_1.a, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, 379f, var_1.a)))));
}

