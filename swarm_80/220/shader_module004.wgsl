struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true));

var<private> global1: array<i32, 7> = array<i32, 7>(1i, -41878i, 1i, -21610i, -28625i, 2147483647i, -3100i);

var<private> global2: vec2<f32> = vec2<f32>(-2468f, -234f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec3<f32>(-183f, -1609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - global2.x)))));
    let var_1 = Struct_1(firstLeadingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(53851i, -2147483647i, u_input.b, u_input.a), u_input.e), -u_input.e));
    var var_2 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(~u_input.e.xz) << (~firstLeadingBit(~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), ~firstLeadingBit(-max(u_input.e.zw, vec2<i32>(global1[_wgslsmith_index_u32(var_1.a, 7u)], u_input.b))), u_input.e.wy);
    var var_3 = Struct_3(Struct_1(firstLeadingBit(var_1.a), 1i), select(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, false));
    let var_4 = !(!any(vec4<bool>(true, select(true, true, false), true, var_3.b)));
    return vec2<bool>(true, all(vec4<bool>(false, false, true, _wgslsmith_mult_i32(var_3.a.b, 2147483647i) >= _wgslsmith_add_i32(-1i, 79430i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_4 {
    global0 = array<vec4<bool>, 30>();
    var var_0 = Struct_1(~u_input.c, u_input.b);
    var var_1 = vec3<bool>(true, all(select(!func_3(), vec2<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 30u)]), any(vec2<bool>(true, true))), false)), false);
    global1 = array<i32, 7>();
    global2 = vec2<f32>(global2.x, -738f);
    return Struct_4(u_input.e.ywy, select(~max(_wgslsmith_mod_i32(-2147483647i, u_input.b), global1[_wgslsmith_index_u32(countOneBits(0u), 7u)]), firstLeadingBit(abs(global1[_wgslsmith_index_u32(arg_0.x >> (arg_0.x % 32u), 7u)])), var_1.x), Struct_2(vec3<bool>(all(!vec3<bool>(var_1.x, var_1.x, var_1.x)), true | !var_1.x, true), Struct_1(_wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(arg_0.x, 53897u, 56910u, arg_0.x)), _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), var_0.b, var_0.b)), abs(u_input.e.yzw), var_0.b, _wgslsmith_f_op_f32(513f * _wgslsmith_f_op_f32(-152f - _wgslsmith_f_op_f32(global2.x + -252f)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_5 {
    var var_0 = arg_0.c.a.x;
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.e, arg_0.c.e) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(962f, arg_0.c.e)))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.c.e, global2.x))), vec2<f32>(arg_0.c.e, global2.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.e)), _wgslsmith_f_op_f32(max(370f, 2460f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1371f, global2.x)))))));
    global0 = array<vec4<bool>, 30>();
    let var_1 = u_input.e.ww;
    let var_2 = vec4<i32>(~(~countOneBits(-2147483647i)), ~max(firstTrailingBit(u_input.b), ~u_input.b), -46591i, ~arg_1.a.x) << (~(~(vec4<u32>(4294967295u, u_input.c, arg_0.c.b.a, 1u) >> (vec4<u32>(u_input.c, arg_0.c.b.a, 41921u, u_input.c) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return Struct_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.e, 395f, global2.x, func_2(~vec4<u32>(0u, 76790u, u_input.c, 23450u), vec2<f32>(arg_1.c.e, 866f)).c.e), vec4<f32>(arg_0.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-871f - 682f)), 787f, arg_1.c.e), true)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = func_2(firstLeadingBit(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_3.a.a, 4294967295u, arg_3.a.a), vec4<u32>(arg_3.a.a, u_input.c, arg_3.a.a, 4294967295u), vec4<u32>(arg_3.a.a, arg_1.c.b.a, 1u, arg_3.a.a)))), arg_0.a.yx).c.a.x;
    var var_1 = func_2(vec4<u32>(min(abs(_wgslsmith_mult_u32(u_input.c, arg_3.a.a)), 73298u), _wgslsmith_div_u32(arg_3.a.a, ~_wgslsmith_add_u32(0u, arg_1.c.b.a)), 1u, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1366f - 827f))), _wgslsmith_f_op_f32(f32(-1f) * -497f))).c;
    var_1 = func_2(vec4<u32>(4294967295u, 47187u, arg_1.c.b.a ^ _wgslsmith_div_u32(u_input.c << (48401u % 32u), 1u), _wgslsmith_add_u32(1u, 0u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-836f, 1461f))))), arg_1.c.e)).c;
    var var_2 = reverseBits(arg_3.a.a);
    global0 = array<vec4<bool>, 30>();
    return func_2(~(((vec4<u32>(28812u, 93608u, 36381u, 4294967295u) << (vec4<u32>(35187u, 4294967295u, 131303u, u_input.c) % vec4<u32>(32u))) ^ (vec4<u32>(1u, arg_1.c.b.a, arg_1.c.b.a, 4294967295u) >> (vec4<u32>(4294967295u, u_input.c, u_input.c, 63659u) % vec4<u32>(32u)))) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.a, 35399u, 55312u, 69114u), vec4<u32>(16414u, 43352u, u_input.c, arg_3.a.a))), vec2<f32>(arg_1.c.e, -459f));
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4) -> Struct_5 {
    global1 = array<i32, 7>();
    var var_0 = -(~(-u_input.e.yyz));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.e, -1134f), vec2<f32>(global2.x, -131f), arg_2.c.a.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(327f, -1220f), vec2<f32>(global2.x, global2.x), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, arg_1) + vec2<f32>(-813f, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), -603f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(429f, arg_1) - vec2<f32>(arg_1, -226f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, global2.x), vec2<f32>(global2.x, -198f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.c.e, arg_1))), !arg_2.c.a.x)), arg_0.xx)) - vec2<f32>(arg_2.c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 687f) + global2.x))));
    global0 = array<vec4<bool>, 30>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -804f)) - vec2<f32>(-875f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(558f - arg_1), -2114f))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, 1044f, 512f, -101f)))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(832f, 1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(abs(global2.x))))))));
    var var_0 = func_6(!(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(-global2.x)), func_5(func_4(func_2(~vec4<u32>(62490u, 0u, u_input.c, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(688f, global2.x) - vec2<f32>(-216f, -109f))), Struct_4(~u_input.e.wxx, ~global1[_wgslsmith_index_u32(29013u, 7u)], Struct_2(vec3<bool>(arg_0, false, true), Struct_1(u_input.c, -92141i), u_input.e.wzz, u_input.a, -442f))), Struct_4(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 56048u)), vec2<f32>(global2.x, global2.x)).a, 1i, func_2(min(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(1u, 46464u, 0u, u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-659f, -1000f) * vec2<f32>(global2.x, global2.x))).c), ~(-(u_input.e.zz >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)))), Struct_3(func_2(vec4<u32>(4294967295u, u_input.c, 5150u, 48752u), vec2<f32>(453f, global2.x)).c.b, !(arg_0 | arg_0))));
    var var_1 = false;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(781f + _wgslsmith_f_op_f32(-var_0.a.x))) - -252f));
    global0 = array<vec4<bool>, 30>();
    return Struct_1(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(38022u, 4294967295u, reverseBits(func_5(Struct_5(var_0.a), func_5(Struct_5(vec4<f32>(var_0.a.x, 922f, 538f, global2.x)), Struct_4(u_input.e.xwz, -2147483647i, Struct_2(vec3<bool>(arg_0, false, arg_0), Struct_1(0u, -6960i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 7u)], global1[_wgslsmith_index_u32(u_input.c, 7u)], global1[_wgslsmith_index_u32(6297u, 7u)]), -1i, -1548f)), u_input.e.yz, Struct_3(Struct_1(68792u, u_input.d), true)), vec2<i32>(u_input.e.x, 1i), Struct_3(Struct_1(65700u, -1i), true)).c.b.a)), 7u)]);
}

fn func_7(arg_0: Struct_3) -> Struct_2 {
    global1 = array<i32, 7>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = array<i32, 7>();
    let var_0 = true;
    global0 = array<vec4<bool>, 30>();
    return func_2(vec4<u32>(~u_input.c, ~(~_wgslsmith_add_u32(4918u, u_input.c)), arg_0.a.a, 69891u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(128f, global2.x))) - vec2<f32>(global2.x, global2.x))), vec2<f32>(1000f, 955f)))).c;
}

fn func_8(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = -82357i;
    let var_1 = u_input.c;
    let var_2 = arg_0;
    var_0 = arg_0.d;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.e)), var_2.e);
    return StorageBuffer(var_2.b.a, -21956i << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.a, 1u, u_input.c, 0u), vec4<u32>(arg_0.b.a, var_2.b.a, u_input.c, u_input.c)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.a, var_1, var_1, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 12681u), vec4<u32>(12820u, var_2.b.a, var_1, u_input.c)), countOneBits(vec4<u32>(arg_0.b.a, 20236u, arg_0.b.a, var_1) << (vec4<u32>(var_1, 36399u, 1u, 96014u) % vec4<u32>(32u)))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 30>();
    let var_0 = all(!select(!select(vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(0u, 30u)], vec4<bool>(true, true, false, false)), vec4<bool>(true, global2.x >= -1000f, true, true), !select(true, true, true)));
    var var_1 = var_0;
    var var_2 = ~(select((u_input.b | global1[_wgslsmith_index_u32(54268u, 7u)]) >> (23397u % 32u), 0i, var_0) >> (max(4294967295u << (u_input.c % 32u), abs(u_input.c)) % 32u));
    let x = u_input.a;
    s_output = func_8(func_7(Struct_3(func_1(true), any(!global0[_wgslsmith_index_u32(u_input.c, 30u)]))));
}

