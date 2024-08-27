struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(291f, 625f, -104f), vec3<f32>(-389f, -1000f, 1000f), vec3<f32>(-826f, -1272f, -528f), vec3<f32>(-148f, -254f, -1742f), vec3<f32>(575f, 1000f, 1435f));

var<private> global1: f32 = 1000f;

var<private> global2: array<u32, 5>;

var<private> global3: array<f32, 22> = array<f32, 22>(247f, -1430f, -3074f, -310f, -921f, 423f, 251f, 1647f, -253f, -1588f, 1178f, 1267f, 549f, 517f, -145f, 785f, -1958f, 1540f, -705f, -840f, -442f, -520f);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 22u)]), 724f, -157f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21472u, 5u)], 5u)], 5u)], 5u)], 22u)], arg_0, arg_0))), vec4<bool>(true, true, all(arg_1.xz), all(arg_1.xz)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-357f)), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1410f, 1664f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f - 508f)), global3[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(26019u, 5u)], 32590u), 5u)]), 22u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, -903f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16061u, 5u)], 22u)], -955f) + vec4<f32>(arg_0, arg_0, arg_0, 1000f)), vec4<f32>(arg_0, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39825u, 5u)], 22u)], arg_0, arg_0))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1532f);
    global0 = array<vec3<f32>, 5>();
    var var_2 = Struct_1(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(50032u, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), vec2<u32>(0u, 0u)) | ~7802u, ~0u), _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(select(1u, 4294967295u, false), 5u)], 12142u), vec2<u32>(~global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global2[_wgslsmith_index_u32(0u, 5u)]), 5u)])), arg_1.x));
    global0 = array<vec3<f32>, 5>();
    return 18436u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> u32 {
    global4 = ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(27750u, arg_1.x), arg_0, arg_3 | true) & arg_2.c.b.a, arg_1);
    let var_0 = !vec4<bool>(false, false, all(vec4<bool>(!arg_2.b, arg_2.b, false, arg_2.b)), arg_3 || arg_2.b);
    global1 = -110f;
    var var_1 = ~select(arg_2.a.a.x | (~arg_0.x | arg_1.x), arg_0.x, u_input.a.x != u_input.a.x);
    let var_2 = arg_1.x;
    return ~(~4294967295u);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_1 {
    global4 = func_4(~arg_0.d.b.a, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(4294967295u, 1u, arg_1.x, arg_1.x)) & 1u, 12341u), func_3(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(0u, 5u)]), 22u)])), !select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(true, true, arg_0.b), true))), arg_0, select(arg_0.b, true, true));
    let var_0 = max(global2[_wgslsmith_index_u32(~(~firstLeadingBit(arg_0.d.b.a.x)), 5u)], global2[_wgslsmith_index_u32(30695u, 5u)]) != _wgslsmith_mod_u32(max(_wgslsmith_mult_u32(~arg_1.x, abs(1u)), 1u), func_4(arg_0.d.c.a, vec2<u32>(func_3(-1000f, vec3<bool>(arg_0.b, arg_0.b, false)), arg_0.a.a.x), Struct_3(Struct_1(arg_0.c.c.a), false, arg_0.d, arg_0.c), true));
    var var_1 = ~(vec2<u32>(func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.d.c.a.x, 77517u), vec2<u32>(129759u, global2[_wgslsmith_index_u32(228u, 5u)])), ~vec2<u32>(arg_1.x, 0u), arg_0, var_0), ~4294967295u) | arg_1.zw);
    let var_2 = true;
    global3 = array<f32, 22>();
    return arg_0.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = ~countOneBits(arg_1.a.x);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(~((arg_1.a | vec2<u32>(30032u, arg_2.x)) << (max(arg_2.zx, arg_2.xw) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0), arg_2.wy)));
    var var_2 = !select(vec2<bool>(all(vec2<bool>(true, true)), u_input.a.x <= u_input.a.x), vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)));
    var var_3 = ((_wgslsmith_dot_vec4_i32(-u_input.a, u_input.a) > u_input.a.x) | var_2.x) & (_wgslsmith_mod_i32(abs(u_input.a.x), _wgslsmith_div_i32(abs(-20593i), select(1i, u_input.a.x, true))) >= ~1i);
    global0 = array<vec3<f32>, 5>();
    return _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.wwy, -_wgslsmith_clamp_vec3_i32(u_input.a.ywz, vec3<i32>(u_input.a.x, -15865i, u_input.a.x), u_input.a.xxy)), vec3<i32>(-1i) * -u_input.a.zxy);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec3_i32(~(-u_input.a.xzw | countOneBits(vec3<i32>(u_input.a.x, 0i, 32934i))), ~(~vec3<i32>(-13667i, ~u_input.a.x, u_input.a.x)));
    let var_1 = Struct_3(Struct_1(~vec2<u32>(~arg_0.x, 1u)), true, Struct_2(func_5(-418f, func_2(Struct_3(Struct_1(arg_0.zx), false, Struct_2(vec3<i32>(1i, 78517i, u_input.a.x), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(arg_0.x, 5u)], 1u)), Struct_1(arg_0.xz)), Struct_2(vec3<i32>(var_0.x, 0i, -1260i), Struct_1(arg_0.zz), Struct_1(arg_0.zy))), ~vec4<u32>(global2[_wgslsmith_index_u32(arg_0.x, 5u)], arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 5u)], 5u)], 4294967295u)), ~vec4<u32>(47391u, arg_0.x, global2[_wgslsmith_index_u32(10624u, 5u)], arg_0.x)), func_2(Struct_3(Struct_1(arg_0.xx), arg_3 | arg_3, Struct_2(vec3<i32>(u_input.a.x, 1i, -34772i), Struct_1(arg_0.xy), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(arg_0.x, 5u)]))), Struct_2(vec3<i32>(var_0.x, 39169i, -34055i), Struct_1(arg_0.zz), Struct_1(vec2<u32>(20378u, global2[_wgslsmith_index_u32(1u, 5u)])))), vec4<u32>(arg_0.x, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12967u, 5u)], 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 5u)], 5u)]), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.x), 4294967295u)), func_2(Struct_3(func_2(Struct_3(Struct_1(arg_0.zz), arg_3, Struct_2(vec3<i32>(u_input.a.x, 1i, u_input.a.x), Struct_1(vec2<u32>(12946u, 36812u)), Struct_1(arg_0.yz)), Struct_2(vec3<i32>(0i, var_0.x, -43648i), Struct_1(vec2<u32>(70799u, 31636u)), Struct_1(vec2<u32>(10478u, arg_0.x)))), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u)), any(vec3<bool>(arg_3, true, false)), Struct_2(vec3<i32>(-1i, u_input.a.x, 2147483647i), Struct_1(arg_0.yx), Struct_1(vec2<u32>(0u, 38579u))), Struct_2(u_input.a.ywy, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 5u)], 5u)], 0u)), Struct_1(vec2<u32>(23994u, arg_0.x)))), ~vec4<u32>(global2[_wgslsmith_index_u32(9202u, 5u)], 1u, 17121u, 0u))), Struct_2(u_input.a.wxw, func_2(Struct_3(func_2(Struct_3(Struct_1(arg_0.xy), arg_3, Struct_2(vec3<i32>(2147483647i, var_0.x, -2147483647i), Struct_1(arg_0.yy), Struct_1(vec2<u32>(20357u, 0u))), Struct_2(u_input.a.yzy, Struct_1(arg_0.yz), Struct_1(vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 5u)])))), vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(41573u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)])), true, Struct_2(u_input.a.wwx, Struct_1(arg_0.zy), Struct_1(vec2<u32>(902u, global2[_wgslsmith_index_u32(arg_0.x, 5u)]))), Struct_2(vec3<i32>(u_input.a.x, 9294i, 1i), Struct_1(arg_0.xy), Struct_1(arg_0.xz))), min(firstTrailingBit(vec4<u32>(53895u, 39788u, 19517u, arg_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 10347u, global2[_wgslsmith_index_u32(1u, 5u)], 99793u), vec4<u32>(arg_0.x, 27637u, global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(arg_0.x, 5u)])))), Struct_1(vec2<u32>(0u, 0u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.c.c.a.x, 22u)]))), -565f, -842f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.d.b.a.x, 5u)], 22u)]) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)) - _wgslsmith_f_op_f32(-arg_2)), 943f, -1904f, _wgslsmith_f_op_f32(300f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(463f, global3[_wgslsmith_index_u32(25641u, 22u)]), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 22u)])))))));
    let var_3 = arg_3;
    let var_4 = func_2(var_1, ~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 9361u, 1u, global2[_wgslsmith_index_u32(32760u, 5u)]) | vec4<u32>(global2[_wgslsmith_index_u32(var_1.a.a.x, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.a.x, 5u)], 5u)], 4627u, 1u), vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], 0u, var_1.c.b.a.x) ^ vec4<u32>(46894u, arg_0.x, 1u, 7896u)) & _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 16791u, global2[_wgslsmith_index_u32(var_1.a.a.x, 5u)], 1u), abs(vec4<u32>(arg_0.x, 25460u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 5u)], 5u)])))));
    return var_1.d;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4) -> f32 {
    var var_0 = arg_1.a;
    var var_1 = Struct_3(arg_0.c, all(!select(!vec2<bool>(var_0.b, arg_1.a.b), select(vec2<bool>(true, true), vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(arg_1.a.b, var_0.b)), true)), var_0.d, Struct_2(var_0.d.a, Struct_1(arg_0.c.a), Struct_1(arg_0.b.a)));
    var var_2 = any(select(select(select(select(vec3<bool>(false, arg_1.a.b, arg_1.a.b), vec3<bool>(var_1.b, var_0.b, var_0.b), vec3<bool>(var_1.b, var_0.b, true)), select(vec3<bool>(true, arg_1.a.b, true), vec3<bool>(false, true, false), false), !arg_1.a.b), vec3<bool>(var_0.b, true & var_1.b, true), all(vec3<bool>(false, true, true))), select(vec3<bool>(arg_1.a.b, select(false, var_1.b, arg_1.a.b), 0u <= global2[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(!var_1.b, true, false || var_0.b), !vec3<bool>(var_1.b, false, arg_1.a.b)), !(!(!vec3<bool>(arg_1.a.b, var_1.b, var_0.b)))));
    let var_3 = !select(!vec4<bool>(arg_1.b >= arg_1.b, any(vec4<bool>(arg_1.a.b, var_1.b, var_1.b, false)), true, true), !vec4<bool>(var_1.b, arg_1.a.b, var_1.b == true, var_0.b), var_0.b);
    var_1 = arg_1.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(func_3(arg_1.b, var_3.yxx), global2[_wgslsmith_index_u32(1u, 5u)] ^ arg_1.a.a.a.x, 1u), 22u)])), global3[_wgslsmith_index_u32(arg_0.c.a.x, 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41611u;
    global2 = array<u32, 5>();
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-660f)) + _wgslsmith_f_op_f32(func_6(func_1(vec3<u32>(global2[_wgslsmith_index_u32(var_0, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 5u)], 5u)], var_0), vec2<f32>(589f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52920u, 5u)], 5u)], 22u)]), -782f, false), Struct_4(Struct_3(Struct_1(vec2<u32>(1u, var_0)), true, Struct_2(u_input.a.xzw, Struct_1(vec2<u32>(0u, global2[_wgslsmith_index_u32(0u, 5u)])), Struct_1(vec2<u32>(82074u, 17696u))), Struct_2(vec3<i32>(1i, u_input.a.x, -69i), Struct_1(vec2<u32>(var_0, 10961u)), Struct_1(vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 5u)])))), global3[_wgslsmith_index_u32(438u, 22u)], vec2<i32>(-4327i, u_input.a.x))))))), 561f));
    global3 = array<f32, 22>();
    global4 = _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(func_4(~(~vec2<u32>(var_0, 4294967295u)), vec2<u32>(1u, 1u), Struct_3(func_2(Struct_3(Struct_1(vec2<u32>(0u, var_0)), true, Struct_2(u_input.a.wwy, Struct_1(vec2<u32>(4294967295u, var_0)), Struct_1(vec2<u32>(var_0, global2[_wgslsmith_index_u32(var_0, 5u)]))), Struct_2(u_input.a.yyw, Struct_1(vec2<u32>(1u, global2[_wgslsmith_index_u32(var_0, 5u)])), Struct_1(vec2<u32>(2588u, 0u)))), vec4<u32>(1634u, 56320u, 51594u, 51979u)), global3[_wgslsmith_index_u32(4294967295u, 22u)] > global3[_wgslsmith_index_u32(4294967295u, 22u)], func_1(vec3<u32>(13426u, 10627u, global2[_wgslsmith_index_u32(var_0, 5u)]), vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41024u, 5u)], 22u)], -291f), 497f, true), Struct_2(u_input.a.wyz, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 5u)], 5u)], 41651u)), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(63256u, 5u)], 43287u)))), all(vec3<bool>(true, true, true)) || all(vec3<bool>(true, true, true))), 121932u));
    global4 = ~21818u;
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(33989u, 18219u, 1u, 1u), vec4<u32>(87955u, global2[_wgslsmith_index_u32(6692u, 5u)], 4294967295u, 14037u)), ~vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(0u, 5u)], 4294967295u), vec4<bool>(false, false, true, true))), firstTrailingBit(min(vec4<u32>(var_0, 1u, 4294967295u, var_0), vec4<u32>(global2[_wgslsmith_index_u32(24266u, 5u)], 1u, var_0, 17892u))) | _wgslsmith_div_vec4_u32(vec4<u32>(63849u, var_0, var_0, 4294967295u) << (vec4<u32>(4294967295u, 1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(126265u, 5u)], 5u)]) % vec4<u32>(32u)), ~vec4<u32>(var_0, var_0, 1u, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2445f, -1000f), vec2<f32>(194f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 22u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(592f, global3[_wgslsmith_index_u32(var_0, 22u)]))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3[_wgslsmith_index_u32(var_0, 22u)], global3[_wgslsmith_index_u32(var_0, 22u)])))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0, 22u)], 757f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1177f, global3[_wgslsmith_index_u32(70683u, 22u)]))))), vec2<bool>(true, all(vec2<bool>(true, false)))))), ~_wgslsmith_div_i32(u_input.a.x, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f + global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], 1265u), vec2<u32>(global2[_wgslsmith_index_u32(0u, 5u)], 0u)), global2[_wgslsmith_index_u32(var_0, 5u)]), 22u)])));
}

