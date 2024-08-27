struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec4<f32> = vec4<f32>(-342f, 1264f, 605f, -505f);

var<private> global2: array<vec2<u32>, 26>;

var<private> global3: Struct_1;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1008f, global1.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -702f) * vec4<f32>(global1.x, global1.x, -1264f, -843f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, 224f, global1.x, 546f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -149f), 1f)));
    var var_0 = vec4<bool>(all(select(vec3<bool>(all(vec4<bool>(global4.x, global4.x, arg_0, arg_0)), arg_0, select(global4.x, false, true)), vec3<bool>(all(global3.d), -143f >= global1.x, arg_0), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, global4.x, global4.x), vec3<bool>(arg_0, global3.b, global4.x)))), !(any(!vec3<bool>(true, global4.x, true)) | global4.x), global3.b && arg_0, arg_0);
    var var_1 = select(select(vec4<bool>(false, !(arg_0 & arg_0), true, any(var_0.wxw)), vec4<bool>(arg_0, global3.d.x, true, true), false), vec4<bool>(true, var_0.x, false, any(select(!vec4<bool>(var_0.x, global3.d.x, arg_0, arg_0), !vec4<bool>(global4.x, false, global3.b, false), arg_0))), global3.d.x);
    let var_2 = abs(vec3<i32>(0i, global3.c.x, ~(~(-2147483647i | u_input.b.x))));
    var var_3 = _wgslsmith_clamp_u32(0u, ~21126u, ~(~global3.e));
    return var_0.zxz;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> f32 {
    global2 = array<vec2<u32>, 26>();
    var var_0 = min(~43974u, _wgslsmith_dot_vec3_u32(~select(_wgslsmith_div_vec3_u32(u_input.d.zzy, vec3<u32>(u_input.a, 4294967295u, 25484u)), vec3<u32>(51878u, global3.e, global3.e), func_3(arg_1.x)), u_input.c << (abs(vec3<u32>(global3.e, 53390u, 4294967295u)) % vec3<u32>(32u))));
    let var_1 = global1.x;
    let var_2 = select(global3.c.x, -22647i, global3.b);
    global2 = array<vec2<u32>, 26>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -467f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_2(!(!global3.d), vec3<bool>(global3.d.x, !global4.x, true)));
    global3 = Struct_1(~firstLeadingBit(~global3.a >> (1u % 32u)), any(!(!(!vec3<bool>(global3.b, global3.b, true)))), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.c.x, _wgslsmith_mod_i32(-2147483647i, u_input.e), firstTrailingBit(2147483647i), -64251i), -(~vec4<i32>(arg_0.x, global3.c.x, arg_0.x, arg_0.x))) | -vec4<i32>(1i, -arg_0.x, arg_0.x, max(48030i, -1i)), !global3.d, ~1u);
    var var_1 = global1.x;
    var_1 = 559f;
    let var_2 = Struct_3(_wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(0u, 4294967295u) & global2[_wgslsmith_index_u32(46220u, 26u)])), firstLeadingBit(~abs(vec2<u32>(45696u, 35745u))), vec2<u32>(min(~u_input.a, global3.e >> (0u % 32u)), 0u)), vec3<bool>(!(-539f != _wgslsmith_div_f32(global1.x, global1.x)), !select(true, global3.b && global4.x, false), true & (select(global4.x, false, false) != false)), Struct_1(global3.e, select(true, global3.b, true), global3.c, func_3(true).xy, ~0u));
    return Struct_2(vec2<u32>(u_input.a, ~reverseBits(var_2.c.a)), var_2.c, _wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(579f - global1.x)), vec4<bool>(~u_input.e >= 1i, var_2.c.d.x, false, false), select(!global3.d, var_2.c.d, var_2.c.d));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = select(select(!(!arg_0.d), select(select(vec4<bool>(true, arg_2.b, false, true), arg_0.d, false), arg_0.d, !select(arg_0.d, arg_0.d, true)), all(!func_3(global3.d.x))), func_1(arg_0.b.c.wyx & -vec3<i32>(11317i, -1i, u_input.b.x), 7010u).d, !(!vec4<bool>(true, global3.b, all(vec2<bool>(global4.x, false)), arg_2.b)));
    global0 = array<Struct_1, 11>();
    var var_1 = global1.zxw;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 333f, -548f, arg_0.c) - vec4<f32>(1975f, -1191f, 1102f, 1737f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, global1.x, 184f, 661f) - vec4<f32>(var_1.x, 341f, var_1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c, var_1.x, 637f, global1.x), vec4<f32>(1000f, arg_0.c, var_1.x, 2090f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1937f, -577f, var_1.x, -925f) * vec4<f32>(global1.x, global1.x, 371f, 2949f))))))));
    let var_2 = var_1.x;
    return Struct_1(~u_input.c.x, ~(-2147483647i) < _wgslsmith_sub_i32(~(~arg_3), ~arg_3), -vec4<i32>(2147483647i, global3.c.x ^ 2147483647i, ~u_input.b.x, arg_2.c.x | reverseBits(arg_2.c.x)), select(!select(vec2<bool>(true, var_0.x), !vec2<bool>(arg_2.d.x, global4.x), arg_0.b.d), vec2<bool>(!(!global3.d.x), !(arg_2.c.x < -2147483647i)), global3.d), u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_4 {
    global0 = array<Struct_1, 11>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(529f))), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2123f - global1.x))))), _wgslsmith_div_f32(100f, global1.x));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, global1.x))), global1.x));
    global3 = Struct_1(arg_0.e, true, select(-vec4<i32>(arg_1.x, u_input.b.x, global3.c.x, global3.c.x), select(vec4<i32>(-1i) * -vec4<i32>(38288i, 0i, u_input.b.x, arg_0.c.x), func_4(func_1(arg_2.c.zwy, u_input.a), _wgslsmith_div_i32(arg_1.x, 11397i), Struct_1(27371u, false, vec4<i32>(-1i, -1i, global3.c.x, 1801i), vec2<bool>(true, true), u_input.a), _wgslsmith_clamp_i32(5931i, arg_1.x, -42754i)).c, !arg_0.d.x && (global1.x < global1.x)), vec4<bool>(max(global3.c.x, 2147483647i) < ~arg_1.x, any(vec4<bool>(true, global4.x, true, true)), global1.x < 278f, false)), arg_0.d, 0u);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1153f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, 1677f, global1.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(global1.x, global1.x)), 553f))) + vec4<f32>(-2823f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)) + -1000f), _wgslsmith_f_op_f32(sign(-469f)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(exp2(global1.x))))))));
    return Struct_4(vec3<u32>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(41565u, 0u) | u_input.c.zz), ~(~global2[_wgslsmith_index_u32(arg_0.a, 26u)])), 4294967295u, ~func_4(func_1(vec3<i32>(arg_2.c.x, arg_1.x, -6718i), 0u), 0i << (u_input.d.x % 32u), func_4(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(global3.e, false, arg_0.c, vec2<bool>(global4.x, true), 1u), global1.x, vec4<bool>(true, arg_2.d.x, global3.b, true), arg_0.d), 2147483647i, Struct_1(139058u, global4.x, vec4<i32>(2147483647i, arg_1.x, arg_2.c.x, -55674i), global3.d, 0u), 2147483647i), 27969i).e), func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.b.xz, vec2<i32>(1i, 1i)), ~(u_input.e << (29057u % 32u)), -33655i), u_input.a).d);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = false;
    let var_1 = Struct_4(vec3<u32>(_wgslsmith_clamp_u32(~0u, u_input.c.x | countOneBits(global3.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 20054u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(83349u, arg_0.a.x, 4294967295u), vec3<u32>(u_input.d.x, 48013u, global3.a) >> (vec3<u32>(arg_0.a.x, 26981u, 50285u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(select(u_input.c, arg_0.a, false), arg_0.a)), ~46802u | (arg_0.a.x ^ 15510u)), arg_0.b);
    global2 = array<vec2<u32>, 26>();
    var var_2 = false;
    global2 = array<vec2<u32>, 26>();
    return func_1(vec3<i32>(1i, abs(func_1(vec3<i32>(5452i, 89801i, global3.c.x), _wgslsmith_clamp_u32(u_input.c.x, 28007u, 1u)).b.c.x), _wgslsmith_mod_i32(~select(arg_2.x, 1i, arg_0.b.x), (i32(-1i) * -2147483647i) << ((var_1.a.x & 70445u) % 32u))), func_5(func_4(Struct_2(u_input.d.wx | var_1.a.zx, global0[_wgslsmith_index_u32(~1u, 11u)], _wgslsmith_div_f32(-972f, -141f), arg_0.b, vec2<bool>(var_1.b.x, global4.x)), 14776i, Struct_1(arg_0.a.x, true, vec4<i32>(-22585i, u_input.b.x, u_input.e, u_input.b.x) & arg_2, vec2<bool>(arg_0.b.x, true), func_4(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(u_input.c.x, false, global3.c, global3.d, var_1.a.x), arg_1.x, vec4<bool>(false, var_1.b.x, global4.x, false), arg_0.b.yy), -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 11u)], 1i).e), -16339i), vec3<i32>(func_4(Struct_2(vec2<u32>(arg_0.a.x, 1880u), Struct_1(var_1.a.x, global3.d.x, vec4<i32>(arg_2.x, u_input.b.x, u_input.e, 40728i), vec2<bool>(global4.x, global3.b), 4294967295u), global1.x, arg_0.b, arg_0.b.zy), u_input.b.x, global0[_wgslsmith_index_u32(func_4(Struct_2(vec2<u32>(57203u, 19332u), Struct_1(global3.a, false, vec4<i32>(-29277i, arg_2.x, 24692i, arg_2.x), arg_0.b.xy, 4294967295u), -1724f, vec4<bool>(var_1.b.x, global3.b, arg_0.b.x, global3.b), vec2<bool>(true, var_1.b.x)), 5778i, Struct_1(global3.a, global3.b, vec4<i32>(40216i, u_input.e, 0i, global3.c.x), vec2<bool>(global3.b, false), 48907u), -1i).e, 11u)], abs(70562i)).c.x, 0i, 0i), global0[_wgslsmith_index_u32(func_4(func_1(abs(u_input.b), ~14847u), ~func_4(Struct_2(vec2<u32>(arg_0.a.x, var_1.a.x), global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], 1223f, vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), global3.d), global3.c.x, global0[_wgslsmith_index_u32(63193u, 11u)], u_input.b.x).c.x, func_1(~arg_2.zwx, _wgslsmith_mod_u32(global3.a, u_input.a)).b, -7803i).a, 11u)]).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    let var_1 = func_6(func_5(global0[_wgslsmith_index_u32(65012u, 11u)], ~_wgslsmith_mod_vec3_i32(global3.c.xwy, u_input.b) | vec3<i32>(-u_input.e, global3.c.x, -1i), func_4(func_1(_wgslsmith_clamp_vec3_i32(global3.c.yyw, global3.c.xzx, vec3<i32>(9585i, -4493i, -2147483647i)), u_input.c.x), firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global3.c.x, 1i, u_input.b.x))), global0[_wgslsmith_index_u32(firstTrailingBit(70430u), 11u)], firstTrailingBit(global3.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, -797f, _wgslsmith_f_op_f32(847f * 1162f), _wgslsmith_f_op_f32(round(global1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(380f))), -913f, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)))), max(~(~global3.c) & global3.c, vec4<i32>(-(~52323i), global3.c.x, ~global3.c.x | -25555i, -38865i)));
    let var_2 = _wgslsmith_mult_vec4_i32(var_1.b.c, -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_1.b.c, var_1.b.c), ~vec4<i32>(4258i, var_1.b.c.x, 2147483647i, global3.c.x)), vec4<i32>(var_1.b.c.x & var_1.b.c.x, 0i, abs(u_input.b.x), _wgslsmith_add_i32(-2147483647i, 0i))));
    global0 = array<Struct_1, 11>();
    var var_3 = !(!global4.x);
    var var_4 = func_1(var_2.zxy, func_5(func_4(func_6(func_5(var_1.b, vec3<i32>(var_1.b.c.x, 14349i, 0i), Struct_1(0u, global3.b, vec4<i32>(global3.c.x, 15687i, var_1.b.c.x, -33963i), var_1.e, 52118u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, global1.x, global1.x, 795f))), select(var_2, vec4<i32>(-1i, global3.c.x, 2147483647i, u_input.e), vec4<bool>(true, false, global4.x, var_1.e.x))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, global3.c.x, -2147483647i), var_1.b.c)), var_1.b, -(i32(-1i) * -47989i)), ~(-var_1.b.c.zyy), Struct_1(_wgslsmith_mod_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(4294967295u, 2300u, 1u)), func_5(func_1(var_2.zzx, 0u).b, ~var_1.b.c.zww, Struct_1(u_input.a, var_1.b.b, global3.c, vec2<bool>(global4.x, global3.b), 17704u)).b.x, countOneBits(vec4<i32>(-85718i, -3780i, 9941i, var_2.x)), func_3(true).zz, var_1.a.x)).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(4389u, var_4.b.e, countOneBits(~0u), u_input.d.x)), var_1.c, u_input.d, -12074i);
}

