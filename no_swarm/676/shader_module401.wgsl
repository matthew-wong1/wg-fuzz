struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(551f, 875f, 1972f, -1317f, -2416f, 1163f, -634f, 602f, 585f, -123f, -530f, 1530f, 1217f, 184f, 1116f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<f32>) -> i32 {
    global0 = array<f32, 15>();
    let var_0 = Struct_4(arg_1.d.x, !((arg_0.x ^ 4294967295u) == ~arg_1.c), !(!vec4<bool>(false, false, false, arg_1.b.c.x > arg_1.a.a)));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(9599i, abs(~arg_1.b.c.x)), u_input.d.x), select(-1i & abs(u_input.d.x), ~_wgslsmith_mod_i32(arg_1.a.a, 2147483647i), true) >> ((select(arg_0.x, u_input.c ^ 25345u, arg_1.c != u_input.c) | u_input.c) % 32u));
    let var_2 = all(arg_2.c.wy);
    global0 = array<f32, 15>();
    return min(arg_1.a.a, arg_1.b.a.d);
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = vec3<i32>(-abs(_wgslsmith_mult_i32(firstLeadingBit(u_input.d.x), _wgslsmith_sub_i32(u_input.b.x, -11839i))), ~max(i32(-1i) * -36525i, abs(abs(-27951i))), func_3(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15392u, u_input.c, 119460u), vec3<u32>(u_input.c, u_input.c, u_input.c)) << (select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(arg_0, u_input.c, u_input.c), false) % vec3<u32>(32u)), ~reverseBits(vec3<u32>(arg_0, u_input.c, 0u))), Struct_5(Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1467f, global0[_wgslsmith_index_u32(arg_0, 15u)], -198f, global0[_wgslsmith_index_u32(0u, 15u)])), vec2<bool>(true, true)), Struct_3(Struct_2(u_input.c, Struct_1(-27769i, vec4<f32>(global0[_wgslsmith_index_u32(1u, 15u)], -3557f, 1300f, global0[_wgslsmith_index_u32(arg_0, 15u)]), vec2<bool>(false, true)), Struct_1(u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(arg_0, 15u)], global0[_wgslsmith_index_u32(arg_0, 15u)]), vec2<bool>(true, true)), u_input.b.x), Struct_2(arg_0, Struct_1(u_input.d.x, vec4<f32>(global0[_wgslsmith_index_u32(1u, 15u)], 989f, global0[_wgslsmith_index_u32(25215u, 15u)], 1681f), vec2<bool>(true, false)), Struct_1(-29587i, vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], 436f, global0[_wgslsmith_index_u32(44760u, 15u)], global0[_wgslsmith_index_u32(320u, 15u)]), vec2<bool>(true, false)), u_input.b.x), -u_input.a.yww, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 27700u), vec2<u32>(u_input.c, 59040u))), min(~10227u, u_input.c ^ u_input.c), vec2<bool>(true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1372f, global0[_wgslsmith_index_u32(arg_0, 15u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(arg_0, 15u)]) + vec2<f32>(global0[_wgslsmith_index_u32(28138u, 15u)], global0[_wgslsmith_index_u32(53739u, 15u)])))), Struct_4(false, true, vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(732f + global0[_wgslsmith_index_u32(26807u, 15u)]), -531f)), 785f)));
    var var_1 = !select(vec4<bool>(true, true, any(vec2<bool>(true, false)), !all(vec3<bool>(false, false, true))), vec4<bool>(true || (var_0.x == u_input.b.x), abs(u_input.d.x) <= abs(u_input.a.x), 73759u < select(u_input.c, 0u, false), global0[_wgslsmith_index_u32(~1u, 15u)] != global0[_wgslsmith_index_u32(~arg_0, 15u)]), vec4<bool>(!select(false, false, true), all(vec2<bool>(false, false)), true, false));
    global0 = array<f32, 15>();
    return vec3<bool>(true, all(select(!(!vec3<bool>(var_1.x, true, var_1.x)), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.wwz)), (30724i | min(abs(2147483647i), var_0.x)) != _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.x, -2147483647i, 2147483647i, -25211i), u_input.a) << ((vec4<u32>(4294967295u, 0u, 1u, 23763u) >> (vec4<u32>(u_input.c, arg_0, 12562u, 39211u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-37651i, -2147483647i, -11269i, var_0.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, var_0.x), u_input.a), vec4<i32>(var_0.x, var_0.x, 4263i, 1i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_4(all(vec4<bool>(all(func_2(11005u)), any(func_2(70896u).zy), arg_1.b.c.c.x, false)), any(vec3<bool>(false, func_2(arg_1.d.x & 1094u).x, arg_2.c.x)), select(select(vec4<bool>(func_2(48892u).x, true, true, arg_2.c.x), !select(vec4<bool>(true, false, arg_1.b.b.c.x, false), vec4<bool>(false, arg_1.b.b.c.x, arg_1.a.b.c.x, arg_1.a.c.c.x), vec4<bool>(true, true, arg_2.c.x, false)), !vec4<bool>(arg_2.c.x, false, true, false)), select(vec4<bool>(true, arg_2.c.x, true, true), !select(vec4<bool>(true, arg_1.a.c.c.x, arg_2.c.x, arg_1.b.b.c.x), vec4<bool>(true, arg_1.a.b.c.x, arg_1.b.b.c.x, false), vec4<bool>(arg_2.c.x, arg_1.b.c.c.x, true, arg_2.c.x)), vec4<bool>(global0[_wgslsmith_index_u32(26867u, 15u)] <= arg_2.b.x, true, select(arg_2.c.x, arg_1.b.c.c.x, false), arg_2.c.x)), 16310u <= _wgslsmith_clamp_u32(u_input.c, ~0u, 31257u)));
    let var_1 = arg_2.b.ywy;
    let var_2 = arg_1;
    global0 = array<f32, 15>();
    var var_3 = Struct_5(arg_1.b.c, arg_1, _wgslsmith_dot_vec3_u32(arg_3.yww, ~arg_3.wxw), arg_1.b.c.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(871f, 385f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(357f, 218f))));
    return Struct_3(Struct_2(4294967295u, Struct_1(firstLeadingBit(1i) >> (~var_2.a.a % 32u), var_2.a.c.b, vec2<bool>(all(var_0.c), select(var_0.c.x, false, var_3.b.b.b.c.x))), Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(24851i, 5235i), var_2.a.d), _wgslsmith_f_op_vec4_f32(arg_2.b + _wgslsmith_f_op_vec4_f32(var_3.a.b - var_2.b.b.b)), arg_2.c), 9886i), Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(1021u, var_2.d.x), 45060u), ~_wgslsmith_clamp_u32(36003u, u_input.c, 3913u)), Struct_1(~(~u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 15u)] - global0[_wgslsmith_index_u32(u_input.c, 15u)]), _wgslsmith_f_op_f32(var_2.b.c.b.x + arg_2.b.x), _wgslsmith_f_op_f32(step(var_2.a.c.b.x, arg_2.b.x)), _wgslsmith_f_op_f32(243f + 2196f)), vec2<bool>(true, arg_2.c.x)), Struct_1(_wgslsmith_mod_i32(~526i, var_3.b.a.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(880f, var_1.x, -1324f, arg_1.a.c.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(235f, -533f, -699f, arg_1.a.b.b.x) - arg_2.b)), !var_2.a.c.c), _wgslsmith_dot_vec4_i32(~u_input.a, -vec4<i32>(2147483647i, var_3.b.c.x, u_input.a.x, arg_1.b.d)) << (~_wgslsmith_sub_u32(var_2.d.x, var_3.c) % 32u)), vec3<i32>(-arg_1.c.x, _wgslsmith_mod_i32(-abs(-55442i), var_2.a.d >> (4294967295u % 32u)), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_1.c.xz, vec2<i32>(arg_1.b.d, -49880i))), min(0i, -arg_1.b.b.a))), firstTrailingBit(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9727u, 1u, 1u), vec3<u32>(u_input.c, 4294967295u, 39832u)), arg_3.x >> (2901u % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> vec2<i32> {
    var var_0 = func_1(firstLeadingBit(~(-(vec4<i32>(0i, 1i, -1i, arg_0.b.d) & u_input.a))), Struct_3(Struct_2(1u, arg_0.a.c, arg_0.b.b, -arg_0.a.d), arg_0.b, reverseBits(-vec3<i32>(-1i, arg_0.b.d, arg_3.x)), ~(~(~arg_0.d))), Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(arg_0.b.b.a, arg_2, u_input.a.x, 56054i)), firstTrailingBit(u_input.a)), arg_0.b.b.b, !select(func_2(arg_0.a.a).zy, vec2<bool>(arg_0.b.c.c.x, true), 1i >= u_input.d.x)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(36942u, arg_1, u_input.c, 4294967295u), vec4<u32>(4294967295u, 104678u, u_input.c, arg_1), vec4<u32>(1u, arg_1, arg_0.b.a, u_input.c)) | abs(vec4<u32>(0u, 36410u, 50268u, 1u)), ~select(vec4<u32>(arg_0.a.a, u_input.c, 1u, u_input.c), vec4<u32>(12247u, 0u, 4294967295u, 0u), vec4<bool>(false, true, arg_0.b.b.c.x, false))))).b;
    var var_1 = arg_0.c.xz;
    global0 = array<f32, 15>();
    let var_2 = Struct_3(Struct_2(select(~_wgslsmith_sub_u32(arg_1, 44003u), _wgslsmith_clamp_u32(~6481u, arg_1 >> (1u % 32u), ~38613u), arg_0.a.b.c.x), var_0.b, func_1(u_input.a, arg_0, func_1(vec4<i32>(-1i, u_input.a.x, 37627i, arg_3.x), func_1(vec4<i32>(-3223i, 1i, arg_0.c.x, arg_0.a.c.a), Struct_3(Struct_2(var_0.a, arg_0.b.c, Struct_1(0i, arg_0.a.b.b, vec2<bool>(var_0.b.c.x, false)), 2147483647i), Struct_2(46001u, arg_0.b.b, var_0.b, var_0.d), vec3<i32>(0i, 1i, -5494i), vec2<u32>(58258u, 63635u)), var_0.c, vec4<u32>(7707u, 0u, 1u, 39737u)), Struct_1(52448i, var_0.c.b, arg_0.b.c.c), countOneBits(vec4<u32>(1u, 35487u, u_input.c, 0u))).a.c, vec4<u32>(~arg_1, ~u_input.c, ~arg_0.a.a, u_input.c)).b.b, -1i), func_1(_wgslsmith_mult_vec4_i32(u_input.a, select(firstTrailingBit(vec4<i32>(-8488i, var_1.x, -2147483647i, arg_3.x)), u_input.a, arg_0.b.c.c.x)), arg_0, func_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, var_1.x, -1i, var_1.x), countOneBits(vec4<i32>(1i, arg_3.x, -7886i, var_0.b.a))), arg_0, Struct_1(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1095f, global0[_wgslsmith_index_u32(30397u, 15u)], var_0.c.b.x, 815f) * var_0.b.b), !arg_0.a.c.c), select(firstTrailingBit(vec4<u32>(arg_1, arg_0.d.x, 0u, 25613u)), ~vec4<u32>(56964u, u_input.c, 18788u, 4294967295u), vec4<bool>(true, false, var_0.b.c.x, true))).b.c, vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(21872u, 4294967295u, arg_0.d.x), vec3<u32>(arg_0.d.x, 1421u, 1u)), ~vec3<u32>(2125u, arg_0.b.a, arg_0.a.a)), 0u, 67182u)).b, vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(59667i, arg_2), u_input.d.x, _wgslsmith_mod_i32(11098i, arg_3.x)), ~vec2<u32>(1u, 0u));
    global0 = array<f32, 15>();
    return abs(vec2<i32>(_wgslsmith_mod_i32(1i >> (var_2.b.a % 32u), _wgslsmith_mod_i32(u_input.a.x, 47185i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.a, var_2.d.x, 7495u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 11828u, 48750u), vec3<u32>(var_0.a, u_input.c, 1u))) % 32u), 26570i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = !(global0[_wgslsmith_index_u32(0u, 15u)] < global0[_wgslsmith_index_u32(select(u_input.c, abs(u_input.c), -1i > u_input.b.x) & ~abs(u_input.c), 15u)]);
    var var_1 = firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(35177i, 0i >> (0u % 32u)), vec2<i32>(-3800i, ~36245i)), _wgslsmith_mult_vec2_i32(func_4(func_1(u_input.a, Struct_3(Struct_2(1u, Struct_1(u_input.d.x, vec4<f32>(-397f, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(40088u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(var_0, false)), Struct_1(1i, vec4<f32>(2129f, 669f, -307f, global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(true, true)), 0i), Struct_2(u_input.c, Struct_1(u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(88070u, 15u)], -646f, -1372f, 1110f), vec2<bool>(true, var_0)), Struct_1(22071i, vec4<f32>(-1309f, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(75296u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(false, var_0)), -2147483647i), u_input.a.zyz, vec2<u32>(u_input.c, 72144u)), Struct_1(0i, vec4<f32>(global0[_wgslsmith_index_u32(7447u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(true, false)), vec4<u32>(u_input.c, u_input.c, u_input.c, 23851u)), 45989u, countOneBits(u_input.a.x), -vec3<i32>(u_input.d.x, u_input.d.x, -12865i)), -u_input.a.ww)));
    var_1 = vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(~select(u_input.b.zy, vec2<i32>(u_input.d.x, var_1.x), vec2<bool>(false, var_0)), ~vec2<i32>(-1i, var_1.x))), u_input.b.x);
    global0 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(205f);
}

