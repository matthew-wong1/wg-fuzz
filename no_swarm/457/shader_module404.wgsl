struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: vec4<f32> = vec4<f32>(-1000f, 954f, -456f, -1232f);

var<private> global2: array<Struct_1, 26>;

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> bool {
    var var_0 = Struct_1(arg_0.zxy, vec3<i32>(-2147483647i >> (min(select(0u, 12274u, false), 0u) % 32u), min(-2147483647i, 0i), 1i), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~global3.x << (~arg_1 % 32u), select(~4294967295u, arg_1 & arg_1, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, arg_1 & global3.x, _wgslsmith_mod_u32(40305u, global3.x)), global3.zyx)), 27u)], !vec2<bool>(true & (global1.x < arg_0.x), true), 740f);
    global3 = ~_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(0u, arg_1, arg_1, global3.x)) & vec4<u32>(global3.x, arg_1, ~arg_1, global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, global3.x, arg_1, 9199u) >> (countOneBits(vec4<u32>(31878u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), 4294967295u, ~64461u, _wgslsmith_div_u32(global3.x, u_input.a.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_0.zyy, global0[_wgslsmith_index_u32(~u_input.a.x | u_input.a.x, 27u)]))), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) * _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(global3.x, 27u)]))))), !var_0.d, arg_0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1450f, 626f)) - _wgslsmith_f_op_f32(f32(-1f) * -496f)), _wgslsmith_f_op_f32(abs(110f)))), reverseBits(var_0.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -1803f, 443f) - _wgslsmith_div_vec3_f32(arg_0.wxz, global0[_wgslsmith_index_u32(38415u, 27u)]))))), vec2<bool>(any(vec3<bool>(true | var_0.d.x, var_0.d.x, true)), !var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * arg_0.x));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1422f, var_1.e, _wgslsmith_f_op_f32(select(arg_0.x, var_1.e, var_0.d.x)), _wgslsmith_f_op_f32(-var_1.a.x)))));
    return true;
}

fn func_4(arg_0: bool) -> u32 {
    var var_0 = vec4<u32>(13444u, firstTrailingBit(~countOneBits(global3.x)) << (_wgslsmith_mult_u32(4294967295u, reverseBits(max(global3.x, 19436u))) % 32u), global3.x, max(7667u, ~0u));
    let var_1 = vec4<bool>(true, !all(vec3<bool>(false, arg_0, arg_0 | arg_0)), arg_0, true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(2689u, 27u)], vec3<f32>(569f, global1.x, global1.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1229f, 1727f, 1000f))), vec3<f32>(466f, -2770f, -1168f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(255f, -720f, global1.x) * vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), vec3<bool>(true, true, true))))), vec3<i32>(firstTrailingBit(-1i), _wgslsmith_sub_i32(-35540i << (_wgslsmith_dot_vec3_u32(var_0.www, global3.wwy) % 32u), abs(max(0i, 21150i))), _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(max(-76273i, -2147483647i), ~(-11403i)))), vec3<f32>(714f, _wgslsmith_f_op_f32(trunc(global1.x)), 1682f), var_1.xx, global1.x);
    var var_3 = var_2;
    let var_4 = var_2;
    return u_input.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(79253u, 26u)];
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) - _wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(-652f * global1.x), 1072f >= arg_0.e))) < global1.x);
    global3 = ~_wgslsmith_sub_vec4_u32(~abs(reverseBits(vec4<u32>(61535u, 1u, 47687u, u_input.a.x))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global3.x, global3.x, global3.x), vec4<u32>(64804u, global3.x, 0u, global3.x)), vec4<u32>(_wgslsmith_mod_u32(0u, global3.x), ~global3.x, global3.x, ~u_input.a.x)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(max(u_input.a.x, ~global3.x), global3.x, 4294967295u, global3.x), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, global3.x, global3.x), u_input.a.x, ~0u, u_input.a.x >> (4294967295u % 32u)), select(~vec4<u32>(u_input.a.x, global3.x, global3.x, global3.x), abs(vec4<u32>(50591u, global3.x, u_input.a.x, 77570u)), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 53073u, 18763u, global3.x)), vec4<u32>(global3.x, 4294967295u, 19080u, 4294967295u) << (vec4<u32>(global3.x, u_input.a.x, 4294967295u, global3.x) % vec4<u32>(32u))), vec4<u32>(33507u, 61993u, u_input.a.x & u_input.a.x, ~224u))), vec4<u32>(0u, countOneBits(~global3.x) | ~abs(u_input.a.x), global3.x ^ ~u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global3 = func_5(global2[_wgslsmith_index_u32(func_4(func_3(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, global1.x, _wgslsmith_f_op_f32(global1.x + 1525f)), 103559u ^ _wgslsmith_sub_u32(global3.x, 0u))), 26u)], vec3<i32>(61i, _wgslsmith_mult_i32(min(select(20147i, -2147483647i, true), ~(-48889i)), (-2147483647i >> (u_input.a.x % 32u)) | _wgslsmith_clamp_i32(-11518i, -1i, 1i)), 0i));
    var var_0 = select(vec2<bool>(true, true), select(vec2<bool>(any(vec4<bool>(true, false, false, false)) & any(vec4<bool>(false, false, true, false)), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec2<bool>(select(all(vec2<bool>(true, true)), false, true), !all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(337f != global1.x, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * global0[_wgslsmith_index_u32(1u, 27u)]), vec3<f32>(680f, global1.x, global1.x), vec3<bool>(false, var_0.x, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, global1.x, global1.x)))), reverseBits(reverseBits(~vec3<i32>(-15751i, 2147483647i, -8399i))) << (_wgslsmith_mult_vec3_u32(~reverseBits(global3.wwx), global3.yxy << (~arg_0 % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 27u)])), !select(select(vec2<bool>(var_0.x, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x))), !vec2<bool>(var_0.x, var_0.x), any(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1728f));
    global2 = array<Struct_1, 26>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.x)));
    return var_1.b.x;
}

fn func_1() -> vec3<u32> {
    global3 = abs(max(abs(vec4<u32>(reverseBits(19165u), global3.x, 4294967295u, global3.x)), vec4<u32>(countOneBits(~u_input.a.x), ~_wgslsmith_add_u32(4294967295u, global3.x), u_input.a.x, _wgslsmith_mod_u32(1u, min(40781u, 1u)))));
    let var_0 = abs(vec2<i32>(func_2(global3.zzz >> (vec3<u32>(1u, global3.x, global3.x) % vec3<u32>(32u))), firstTrailingBit(abs(select(2147483647i, 43403i, true)))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), -844f, -831f, _wgslsmith_f_op_f32(sign(-1000f)))) - vec4<f32>(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), -568f)), -227f, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, global1.x, global1.x, 2529f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, global1.x, -167f), vec4<f32>(global1.x, -2590f, global1.x, global1.x))), vec4<f32>(global1.x, global1.x, -967f, 404f)))))));
    var var_1 = global2[_wgslsmith_index_u32(1u << (max(global3.x, func_4(true)) % 32u), 26u)];
    var var_2 = u_input.a.x;
    return global3.wxy;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_1.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -1136f, global1.x, arg_0.x)), vec4<f32>(arg_1.a.x, arg_1.e, 798f, arg_2.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -417f, -595f, 220f))), !select(vec4<bool>(var_0, true, true, arg_2.d.x), vec4<bool>(arg_2.d.x, true, var_0, true), arg_2.d.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.x, 1000f, arg_0.x, -475f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 651f, arg_2.a.x, arg_1.a.x)))))));
    let var_2 = arg_1.b.x;
    global3 = ~(vec4<u32>((global3.x >> (0u % 32u)) ^ ~5220u, 35768u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 15762u, global3.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 772u))), firstTrailingBit(_wgslsmith_add_u32(6179u, u_input.a.x))) << (~firstLeadingBit(~vec4<u32>(global3.x, 1u, 32751u, u_input.a.x)) % vec4<u32>(32u)));
    global2 = array<Struct_1, 26>();
    return func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, var_1.x, global1.x))) * global0[_wgslsmith_index_u32(~global3.x, 27u)]), arg_1.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.zwz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, arg_2.e) - vec3<f32>(global1.x, -1442f, global1.x))))), !vec2<bool>(var_0, arg_2.d.x), _wgslsmith_f_op_f32(-1882f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - arg_1.e)))), vec3<i32>(1i, -28107i >> (~_wgslsmith_dot_vec2_u32(global3.zw, vec2<u32>(u_input.a.x, 0u)) % 32u), arg_1.b.x)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(30702u, 26u)];
    global3 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x ^ 90328u, _wgslsmith_mult_u32(1u, 4294967295u)), 5420u), abs(func_6(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2393f, 1211f, -166f) - var_0.c), vec3<i32>(0i, -20717i, 2147483647i), global1.yww, !vec2<bool>(false, var_0.d.x), -387f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1(), min(vec3<u32>(global3.x, 4280u, 66654u), vec3<u32>(26238u, global3.x, 1u))), 26u)])), abs(u_input.a.x) >> (~4294967295u % 32u), countOneBits(select(_wgslsmith_mod_u32(67478u, 4294967295u), firstLeadingBit(40960u), var_0.d.x) | ~(~u_input.a.x)));
    var var_1 = _wgslsmith_mult_u32(54727u, _wgslsmith_sub_u32(u_input.a.x, 14018u));
    let var_2 = vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(9715i, var_0.b.x), var_0.b.x & var_0.b.x, i32(-1i) * -1i), max(~var_0.b, -vec3<i32>(var_0.b.x, 51305i, 2147483647i))) == 0i, var_0.e < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)))), any(select(vec4<bool>(all(var_0.d), !var_0.d.x, !var_0.d.x, !var_0.d.x), vec4<bool>(true, true, false, var_0.d.x != true), false)), var_0.d.x);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~func_1()), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, 17345u, global3.x), global3.wxy, func_1()), select(vec3<u32>(1u, func_1().x, u_input.a.x), ~global3.yyw, select(!var_2.yyz, !vec3<bool>(var_0.d.x, var_0.d.x, false), true || var_0.d.x)), false)), 26u)];
    let var_4 = var_3.d;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zy);
}

