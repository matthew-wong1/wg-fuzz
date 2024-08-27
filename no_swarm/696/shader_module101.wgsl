struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: i32;

var<private> global2: u32 = 3682u;

var<private> global3: vec3<i32> = vec3<i32>(1i, -39744i, -21050i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global0 = array<i32, 26>();
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    var var_2 = Struct_2(arg_0.a, select(!select(select(arg_1.e.e, vec2<bool>(true, arg_1.e.e.x), arg_0.e), select(vec2<bool>(arg_1.e.e.x, true), arg_1.e.e, arg_0.e.x), arg_1.e.e), select(!(!arg_1.e.b), !vec2<bool>(arg_0.e.x, false), arg_1.e.e), select(select(select(arg_1.e.e, vec2<bool>(false, true), false), arg_1.e.b, arg_0.b), vec2<bool>(arg_1.e.b.x, any(vec3<bool>(arg_1.e.b.x, arg_0.b.x, arg_0.e.x))), arg_1.e.b)), ~0u, arg_1.c.zx, !vec2<bool>(arg_1.e.b.x, !any(arg_0.e)));
    let var_3 = _wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(83704u, 26u)]);
    return select(1i, 7918i, all(select(!(!vec4<bool>(var_2.b.x, false, true, arg_0.b.x)), select(vec4<bool>(true, var_2.b.x, true, false), !vec4<bool>(false, true, arg_0.e.x, true), select(vec4<bool>(arg_0.e.x, false, arg_0.e.x, false), vec4<bool>(var_2.b.x, true, arg_1.e.b.x, arg_0.e.x), true)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, 1301f, arg_1.e.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1889f, arg_1.a.x, -449f, -985f))))));
    var var_1 = !select(select(select(!vec4<bool>(arg_1.e.e.x, arg_1.e.e.x, false, arg_1.e.e.x), vec4<bool>(true, arg_1.e.e.x, arg_1.e.e.x, false), !vec4<bool>(arg_1.e.b.x, true, arg_1.e.e.x, arg_1.e.b.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(arg_1.e.b.x, true, arg_1.e.e.x, false), true), false), !select(select(vec4<bool>(arg_1.e.b.x, arg_1.e.e.x, false, arg_1.e.b.x), vec4<bool>(true, arg_1.e.e.x, arg_1.e.b.x, true), true), !vec4<bool>(true, false, true, arg_1.e.e.x), select(vec4<bool>(true, false, arg_1.e.e.x, arg_1.e.e.x), vec4<bool>(true, arg_1.e.b.x, arg_1.e.b.x, arg_1.e.e.x), false)), true);
    let var_2 = 0u;
    let var_3 = (vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(-50744i, 2147483647i), arg_1.c.x)) | global3.xz;
    var var_4 = _wgslsmith_div_i32(0i, countOneBits(_wgslsmith_sub_i32(var_3.x, -14250i >> (arg_1.e.c % 32u))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(333f + _wgslsmith_f_op_f32(-216f - arg_1.e.a)))), -2319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + 1000f))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1159f, 852f, arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1327f) + _wgslsmith_f_op_f32(-1000f * 660f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -538f) + vec2<f32>(-556f, arg_1.x)))), vec2<bool>(arg_0.b.x, any(select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x), false))))), arg_2, u_input.d, 4323i, arg_0);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec3<u32>(var_0.e.c << (32014u % 32u), min(0u, ~0u), ~6945u)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 423f)))), Struct_1(~arg_2.a ^ ~var_1.a), ~var_0.c, min(func_3(Struct_2(arg_0.a, arg_0.b, 4294967295u, vec2<i32>(global3.x, 0i), vec2<bool>(arg_0.e.x, true)), Struct_3(var_0.a, arg_2, u_input.d, var_0.c.x, Struct_2(-923f, vec2<bool>(false, true), var_1.a.x, vec2<i32>(var_0.c.x, -1i), var_0.e.b))) ^ -global0[_wgslsmith_index_u32(46950u, 26u)], firstTrailingBit(-var_0.e.d.x)), var_0.e)));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, arg_0.a) + vec2<f32>(arg_0.a, 983f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -724f))) * vec2<f32>(var_0.e.a, var_0.e.a)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-554f)), arg_1.x))), Struct_1(vec3<u32>(1u & _wgslsmith_add_u32(var_0.b.a.x, var_1.a.x), ~(~49169u), ~(~4294967295u))), firstLeadingBit(vec4<i32>(-1i, -(~var_0.d), global0[_wgslsmith_index_u32(0u, 26u)], 0i)), 1i, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + arg_1.x)), var_3.x), !select(vec2<bool>(arg_0.b.x, true), arg_0.e, 584f >= arg_1.x), 1u, (_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.x, -50830i), vec2<i32>(arg_0.d.x, u_input.a.x)) >> (~var_1.a.zy % vec2<u32>(32u))) >> (vec2<u32>(arg_2.a.x, ~1u) % vec2<u32>(32u)), arg_0.e));
    return _wgslsmith_sub_u32(261u, ~u_input.c);
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    let var_0 = Struct_1(vec3<u32>(u_input.c | max(func_2(Struct_2(420f, vec2<bool>(arg_1, true), u_input.c, vec2<i32>(-7092i, -1i), vec2<bool>(false, arg_1)), arg_3.yx, Struct_1(vec3<u32>(64610u, 29281u, u_input.c))), ~173u), abs(_wgslsmith_sub_u32(1282u, u_input.c)), min(u_input.c, firstTrailingBit(~4294967295u))));
    global0 = array<i32, 26>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(arg_3.x - arg_3.x)) - -221f), vec2<bool>(!(!arg_1), _wgslsmith_f_op_f32(arg_3.x + 566f) != _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_dot_vec2_u32(firstLeadingBit(abs(var_0.a.xx | vec2<u32>(var_0.a.x, 2333u))), vec2<u32>(1u, firstTrailingBit(arg_2))), vec2<i32>(global3.x, -25260i), vec2<bool>(any(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))), !(false && !arg_1)));
    global1 = -(~var_1.d.x);
    global3 = vec3<i32>(1i, -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 5582i, u_input.a.x), ~arg_0), -u_input.d.yzx), _wgslsmith_mult_i32(_wgslsmith_mult_i32(17144i, -5845i), func_3(Struct_2(-739f, vec2<bool>(var_1.b.x, var_1.b.x), ~1u, ~vec2<i32>(var_1.d.x, arg_0.x), vec2<bool>(arg_1, true)), Struct_3(arg_3.yx, var_0, vec4<i32>(-30346i, global0[_wgslsmith_index_u32(4294967295u, 26u)], 0i, 1i) ^ vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(1u, 26u)], -2147483647i, -4722i), 1i, Struct_2(arg_3.x, vec2<bool>(arg_1, var_1.e.x), u_input.c, vec2<i32>(2147483647i, global3.x), vec2<bool>(true, true))))));
    return _wgslsmith_add_i32(-(~firstLeadingBit(func_3(Struct_2(arg_3.x, vec2<bool>(false, var_1.b.x), u_input.c, u_input.d.yw, vec2<bool>(false, var_1.e.x)), Struct_3(arg_3.zy, var_0, u_input.d, -37026i, Struct_2(971f, vec2<bool>(arg_1, arg_1), arg_2, vec2<i32>(u_input.a.x, 1i), var_1.e))))), u_input.a.x >> ((reverseBits(~u_input.c) ^ abs(35028u)) % 32u));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    let var_0 = vec4<i32>(global3.x, ~arg_0.x, -abs(11021i), func_5(reverseBits(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(96830u, 26u)], -18804i, 0i)) & (arg_0 >> (vec3<u32>(1u, 10975u, u_input.c) % vec3<u32>(32u)))), true, _wgslsmith_mult_u32(func_2(Struct_2(1161f, vec2<bool>(true, false), 4294967295u, global3.zz, vec2<bool>(false, true)), vec2<f32>(933f, 1731f), Struct_1(vec3<u32>(u_input.c, 4294967295u, u_input.c))), firstLeadingBit(~u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1346f, 474f, -888f), vec3<f32>(-1211f, -2399f, -1118f)), vec3<f32>(1f, 1f, 1f))))));
    var var_1 = Struct_2(875f, select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(select(false, false, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(false, true)), u_input.c, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_0.wzw, vec3<i32>(-11858i, u_input.a.x, 62667i)), ~var_0.x, firstLeadingBit(var_0.x)) | -45944i, arg_1), select(vec2<bool>(any(vec3<bool>(true, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), !select(true, true, false)));
    global0 = array<i32, 26>();
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-894f, -674f))) * 154f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) - -759f)), Struct_1(_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(u_input.c, 1u, 19957u)), max(vec3<u32>(u_input.c, var_1.c, 1u), vec3<u32>(u_input.c, 1u, u_input.c)), min(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, u_input.c, var_1.c)) << (~vec3<u32>(1u, 59744u, 0u) % vec3<u32>(32u)))), vec4<i32>(global3.x, ~global0[_wgslsmith_index_u32(var_1.c, 26u)], -1i, ~(~1i)), firstTrailingBit(2147483647i), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a - var_1.a))) * _wgslsmith_f_op_f32(-var_1.a)), select(vec2<bool>(any(vec4<bool>(true, var_1.e.x, var_1.b.x, var_1.e.x)), true), select(select(var_1.b, vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, var_1.b.x), vec2<bool>(var_1.b.x, var_1.e.x), vec2<bool>(false, var_1.e.x)), !var_1.e.x), false), 4294967295u, select(firstLeadingBit(var_1.d), var_1.d, any(vec2<bool>(true, var_1.e.x))), vec2<bool>(all(vec2<bool>(true, var_1.e.x)), true)));
    let var_3 = var_2.b;
    return ~var_3.a.x;
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    let var_0 = Struct_3(vec2<f32>(-135f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.a, _wgslsmith_div_f32(1049f, 726f))))), Struct_1(vec3<u32>(arg_2.c, ~0u, arg_2.c)), _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.d), u_input.d)), u_input.d | _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, arg_2.d.x, 37946i, 1i), u_input.d), ~vec4<i32>(-48i, 1i, global3.x, u_input.b))), countOneBits(global3.x), Struct_2(arg_2.a, !select(!arg_2.b, !arg_2.b, vec2<bool>(arg_0, true)), arg_2.c | arg_2.c, -(vec2<i32>(8722i, u_input.a.x) >> (vec2<u32>(75510u, 4294967295u) % vec2<u32>(32u))), select(vec2<bool>(arg_3 && arg_2.b.x, arg_0), select(arg_1.zx, vec2<bool>(arg_3, arg_1.x), true), arg_2.b.x)));
    let var_1 = Struct_1(var_0.b.a);
    var var_2 = ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(36216u, 49270u, abs(25948u), var_1.a.x), vec4<u32>(1u, ~1u, 23524u, 30627u)));
    global2 = abs(max(4294967295u, u_input.c));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.e.a)), select(vec2<bool>(true, true), !(!(!arg_2.e)), vec2<bool>(any(arg_1.wyy), any(vec3<bool>(false, false, arg_1.x)))), ~firstTrailingBit(~var_2.x), ~(-min(arg_2.d, vec2<i32>(arg_2.d.x, 2147483647i))), select(vec2<bool>(true, !any(vec2<bool>(true, arg_3))), !(!select(vec2<bool>(arg_2.b.x, var_0.e.b.x), arg_2.b, vec2<bool>(false, false))), arg_1.xw));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(869f, var_3.a, _wgslsmith_f_op_f32(230f - var_3.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1065f, var_3.a, 258f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.e.a, var_3.a, 1109f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_clamp_vec3_i32(u_input.a, max(-u_input.d.www, max(-u_input.d.zwx, vec3<i32>(-1i, global3.x, 0i))), -reverseBits(u_input.a)) ^ ~vec3<i32>(_wgslsmith_sub_i32(-4332i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.c, 26u)], -17219i)), _wgslsmith_add_i32(~global3.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.c, 26u)], 33969i)), u_input.a.x | _wgslsmith_clamp_i32(u_input.b, 18729i, 1i));
    global2 = u_input.c;
    global2 = 0u;
    var var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_6(all(vec3<bool>(true, true, true)), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 382f))), vec2<bool>(true, true), func_1(u_input.d.zwx, max(-1i, global0[_wgslsmith_index_u32(u_input.c, 26u)])), reverseBits(global3.zy), vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, 302f, -1583f, 1844f))) * vec4<f32>(_wgslsmith_f_op_vec3_f32(func_6(false, vec4<bool>(true, true, true, true), Struct_2(1000f, vec2<bool>(false, true), 49724u, u_input.a.yz, vec2<bool>(true, true)), true)).x, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec3<u32>(1u, 1u, 16860u)), Struct_3(vec2<f32>(-895f, 1765f), Struct_1(vec3<u32>(u_input.c, 0u, u_input.c)), vec4<i32>(2147483647i, 2147483647i, 23211i, u_input.b), global0[_wgslsmith_index_u32(0u, 26u)], Struct_2(288f, vec2<bool>(true, false), u_input.c, u_input.d.xz, vec2<bool>(false, false))))).x, -600f, -320f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2383f)), _wgslsmith_f_op_f32(step(-1391f, _wgslsmith_f_op_f32(select(151f, 1204f, true)))), -1593f, _wgslsmith_f_op_f32(f32(-1f) * -181f))), ~(~36316u));
}

