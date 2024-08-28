struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 3> = array<u32, 3>(4294967295u, 62603u, 4294967295u);

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<bool> {
    global1 = array<u32, 3>();
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-34282i, -67284i, global0.x, -1i), vec4<i32>(arg_0.x, global0.x, -9289i, 2147483647i)), _wgslsmith_add_i32(global0.x, _wgslsmith_mult_i32(-41812i, u_input.b)), -2147483647i) ^ ~(-(~vec4<i32>(9486i, global0.x, u_input.b, arg_0.x))), _wgslsmith_sub_vec4_i32(firstLeadingBit(arg_0), arg_0));
    var var_0 = Struct_1(~vec2<u32>(1u, u_input.a.x), select(vec3<bool>((i32(-1i) * -513i) < ~arg_0.x, any(select(arg_1.a.b, vec3<bool>(true, true, true), arg_1.a.b)), !arg_1.a.b.x & arg_1.a.b.x), vec3<bool>(arg_1.a.b.x, reverseBits(u_input.b) > reverseBits(global0.x), any(arg_1.b.b.yy)), all(vec4<bool>(false, false, arg_1.a.b.x, arg_1.b.b.x)) && false), ~max(_wgslsmith_sub_u32(arg_1.b.d, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], u_input.a.x, 5932u, 0u), vec4<u32>(u_input.a.x, 18678u, 31191u, 46110u))), select(~arg_1.a.d, ~global1[_wgslsmith_index_u32(arg_1.a.c, 3u)], !arg_1.a.b.x)), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1024f, 393f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(841f, 1134f, 2062f)), all(vec4<bool>(arg_1.a.b.x, false, false, true))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1811f, -220f, -920f), vec3<f32>(-452f, -106f, -1383f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, -622f, -418f) + vec3<f32>(176f, 1333f, 553f))), var_0.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1398f)) - 1525f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(248f, -1546f, 130f), vec3<f32>(1000f, -1338f, -583f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, -1000f, 1430f)))))));
    var var_2 = Struct_1(vec2<u32>(4294967295u, select(global1[_wgslsmith_index_u32(~0u, 3u)] << (~var_0.a.x % 32u), u_input.a.x, var_0.b.x)), !(!select(!vec3<bool>(false, var_0.b.x, false), vec3<bool>(arg_1.a.b.x, var_0.b.x, true), !vec3<bool>(true, false, arg_1.a.b.x))), min(u_input.a.x, ~(~arg_1.b.c | global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(40513u, 0u), 3u)])), _wgslsmith_sub_u32(select(~_wgslsmith_dot_vec2_u32(u_input.a.xx, arg_1.a.a), firstLeadingBit(min(arg_1.a.d, var_0.d)), var_0.b.x), _wgslsmith_clamp_u32(arg_1.b.a.x, ~_wgslsmith_mod_u32(0u, 20513u), 28187u)));
    return select(vec4<bool>(true, var_0.b.x, var_2.b.x || any(select(var_2.b, var_0.b, vec3<bool>(arg_1.b.b.x, false, arg_1.a.b.x))), all(!vec2<bool>(var_0.b.x, false))), vec4<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(arg_1.b.b.x, false, var_2.b.x), false), var_0.b)), !var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))) >= _wgslsmith_f_op_f32(f32(-1f) * -1577f), -global0.x < reverseBits(_wgslsmith_div_i32(global0.x, -20332i))), select(vec4<bool>(var_2.b.x, all(vec4<bool>(var_0.b.x, false, arg_1.a.b.x, false)), var_2.b.x, all(vec4<bool>(var_2.b.x, false, false, true))), vec4<bool>(arg_1.a.b.x, !(!var_0.b.x), true, any(!vec4<bool>(false, arg_1.b.b.x, var_2.b.x, var_0.b.x))), !select(!vec4<bool>(false, false, var_0.b.x, false), select(vec4<bool>(arg_1.a.b.x, false, arg_1.b.b.x, arg_1.b.b.x), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> bool {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(i32(-1i) * -global0.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.x >> (0u % 32u), global0.x), _wgslsmith_sub_i32(u_input.b, select(u_input.b, 2147483647i, true)))), vec2<i32>(-2147483647i, arg_0));
    let var_0 = _wgslsmith_sub_vec3_i32((global0.yww & global0.wyx) ^ vec3<i32>(_wgslsmith_div_i32(23084i, global0.x), arg_0, 33934i), global0.yzz ^ (-vec3<i32>(-2147483647i, 19467i, arg_0) & ~min(global0.yzy, vec3<i32>(arg_0, global0.x, 54174i))));
    global0 = ~_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, global0.x, var_0.x, var_0.x), ~vec4<i32>(-60031i, 16177i, u_input.b, -2147483647i)), countOneBits(select(min(vec4<i32>(2147483647i, -11422i, -1i, 0i), vec4<i32>(-53532i, arg_0, u_input.b, u_input.b)), vec4<i32>(-54374i, 2147483647i, u_input.b, -1i) & vec4<i32>(u_input.b, global0.x, 20488i, var_0.x), true)));
    let var_1 = !select(!func_3(vec4<i32>(2147483647i, -2147483647i, var_0.x, 1i), Struct_2(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(15177u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)]), vec3<bool>(false, false, false), u_input.a.x, u_input.a.x), Struct_1(arg_1.zx, vec3<bool>(false, true, true), arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), vec4<bool>(~arg_1.x > ~arg_1.x, all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true)), true), true);
    global0 = min(countOneBits(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.b, 0i, -1i)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(-2147483647i, 2147483647i, u_input.b, arg_0)), abs(vec4<i32>(arg_0, 48258i, -23866i, -2113i) << (u_input.a % vec4<u32>(32u))))) >> (firstLeadingBit(vec4<u32>((9300u ^ global1[_wgslsmith_index_u32(24871u, 3u)]) << (21139u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(40230u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a.x, 4294967295u), u_input.a), 3u)], 3u)], _wgslsmith_sub_u32(arg_1.x, _wgslsmith_mod_u32(arg_1.x, u_input.a.x)), ~1u >> (~global1[_wgslsmith_index_u32(arg_1.x, 3u)] % 32u))) % vec4<u32>(32u));
    return all(var_1.xx);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3;
    let var_1 = vec2<u32>(~var_0.a.a.x, arg_3.b.d);
    var var_2 = Struct_2(var_0.a, Struct_1(firstLeadingBit((vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(var_0.a.d, 0u) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 29848u), u_input.a.ww)), select(func_3(vec4<i32>(1i, 58490i, 4171i, -2147483647i) | vec4<i32>(u_input.b, global0.x, 37500i, global0.x), Struct_2(Struct_1(arg_3.b.a, vec3<bool>(false, true, arg_2), var_1.x, 24254u), var_0.a)).zyz, arg_3.a.b, !vec3<bool>(arg_3.b.b.x, var_0.b.b.x, true)), global1[_wgslsmith_index_u32(34204u, 3u)], firstLeadingBit(var_1.x)));
    global1 = array<u32, 3>();
    var var_3 = !vec3<bool>(!arg_1, !arg_3.a.b.x, arg_3.a.b.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f * -170f) + 214f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1785f, -1000f)) - -1214f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-712f)), _wgslsmith_div_f32(1425f, -409f))))))));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_1(u_input.a.zw, vec3<bool>(true, _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, false, true), func_2(-2147483647i, vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23185u, 3u)], 3u)], u_input.a.x, 0u)), true, Struct_2(Struct_1(vec2<u32>(85120u, 4294967295u), vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(8995u, 3u)], 1u), Struct_1(u_input.a.zy, vec3<bool>(true, true, true), 50859u, global1[_wgslsmith_index_u32(1u, 3u)])))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -270f), _wgslsmith_f_op_f32(1571f - -605f))), false), 0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a >> (u_input.a % vec4<u32>(32u))) & (~u_input.a | ~u_input.a), vec4<u32>(~abs(4294967295u), _wgslsmith_div_u32(u_input.a.x, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)]), abs(_wgslsmith_dot_vec3_u32(u_input.a.yxw, vec3<u32>(37708u, global1[_wgslsmith_index_u32(10204u, 3u)], 9287u))), u_input.a.x)));
    let var_1 = Struct_2(Struct_1(u_input.a.yx << ((vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)]) | vec2<u32>(0u, var_0.c)) % vec2<u32>(32u)), select(select(!var_0.b, var_0.b, vec3<bool>(false, var_0.b.x, true)), vec3<bool>(!var_0.b.x, false, all(vec2<bool>(var_0.b.x, var_0.b.x))), select(vec3<bool>(false, true, var_0.b.x), !vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(false, var_0.b.x, var_0.b.x))), ~(~select(global1[_wgslsmith_index_u32(71934u, 3u)], u_input.a.x, var_0.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(48763u, 39298u, 4294967295u)), ~_wgslsmith_clamp_vec3_u32(u_input.a.ywy, vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.a.wxy)), 3u)]), Struct_1((~var_0.a << ((vec2<u32>(global1[_wgslsmith_index_u32(var_0.c, 3u)], 0u) >> (vec2<u32>(global1[_wgslsmith_index_u32(var_0.c, 3u)], u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(abs(vec2<u32>(112698u, global1[_wgslsmith_index_u32(var_0.a.x, 3u)])), ~u_input.a.xx), func_3(abs(~vec4<i32>(u_input.b, u_input.b, global0.x, 0i)), Struct_2(Struct_1(var_0.a, var_0.b, 4294967295u, 4294967295u), Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(16505u, 3u)], u_input.a.x), var_0.b, global1[_wgslsmith_index_u32(0u, 3u)], var_0.a.x))).xxw, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yz, _wgslsmith_div_vec2_u32(var_0.a, u_input.a.wz)), firstLeadingBit(~vec2<u32>(u_input.a.x, 0u))), ~select(global1[_wgslsmith_index_u32(10017u, 3u)], 5551u, var_0.b.x) >> (global1[_wgslsmith_index_u32(1u, 3u)] % 32u)));
    global0 = ~abs(-(~vec4<i32>(global0.x, -2147483647i, u_input.b, 27562i)) << (u_input.a % vec4<u32>(32u)));
    var var_2 = var_0.b.yz;
    return _wgslsmith_clamp_vec2_u32(~var_0.a, vec2<u32>(~6616u, _wgslsmith_div_u32(u_input.a.x, 1u)), _wgslsmith_mult_vec2_u32(~var_1.a.a, vec2<u32>(var_0.d, u_input.a.x)) | u_input.a.yz) >> (~(~firstTrailingBit(var_0.a)) % vec2<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: bool) -> StorageBuffer {
    var var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(func_1(global0.x), arg_1), !select(vec3<bool>(arg_2, arg_2, arg_2), !vec3<bool>(arg_2, false, arg_2), false), select(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.wz, var_0.zw), vec2<u32>(56218u, 4294967295u)), ~firstLeadingBit(0u), all(vec2<bool>(false, arg_2)) || true), _wgslsmith_mult_u32(var_0.x, min(select(74444u, u_input.a.x, true), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)]))), Struct_1(select(~(~var_0.zw), _wgslsmith_div_vec2_u32(abs(arg_1), _wgslsmith_sub_vec2_u32(arg_1, u_input.a.xy)), all(func_3(vec4<i32>(-21988i, global0.x, global0.x, global0.x), Struct_2(Struct_1(vec2<u32>(var_0.x, 72936u), vec3<bool>(false, arg_2, arg_2), u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(arg_1.x, u_input.a.x), vec3<bool>(arg_2, false, false), var_0.x, 1u))))), select(!(!vec3<bool>(arg_2, true, false)), func_3(vec4<i32>(2147483647i, 1i, u_input.b, global0.x), Struct_2(Struct_1(vec2<u32>(0u, arg_1.x), vec3<bool>(arg_2, arg_2, false), global1[_wgslsmith_index_u32(61177u, 3u)], 9851u), Struct_1(vec2<u32>(33534u, global1[_wgslsmith_index_u32(arg_1.x, 3u)]), vec3<bool>(arg_2, true, arg_2), 46348u, u_input.a.x))).wxz, vec3<bool>(u_input.b > global0.x, false, any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)))), ~_wgslsmith_mod_u32(countOneBits(21379u), 16302u), 0u));
    var var_2 = select(var_1.a.b.yy, select(var_1.b.b.yz, !(!var_1.a.b.yx), all(!var_1.b.b)), all(var_1.a.b.xy));
    var_2 = vec2<bool>(!(!arg_2), func_3(countOneBits(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, global0.x, 16239i), vec4<i32>(global0.x, global0.x, -8984i, -2449i), vec4<i32>(4039i, -2147483647i, 0i, 1i)))), var_1).x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-842f, 1691f) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1025f, arg_0)))));
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1031f, -514f)))), var_0.zz, _wgslsmith_clamp_vec3_i32(-(~global0.wzx), -global0.xzx, global0.zxw), -39414i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -786f);
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(259f)) + _wgslsmith_f_op_f32(-1000f - -1699f)))) >= -513f, _wgslsmith_sub_u32(4294967295u, ~firstTrailingBit(4294967295u)) < (_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), ~global1[_wgslsmith_index_u32(u_input.a.x, 3u)]) ^ 1u));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec2_u32(u_input.a.yw, ~func_1(firstLeadingBit(global0.x))), false);
}

