struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32>;

var<private> global2: u32;

var<private> global3: array<u32, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global3 = array<u32, 3>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f - _wgslsmith_div_f32(662f, 144f)));
    var var_1 = abs(u_input.a);
    var var_2 = Struct_3(Struct_2(global0.x), arg_0, arg_0);
    var_2 = Struct_3(var_2.a, var_2.c, var_2.c);
    return firstLeadingBit(countOneBits(vec4<u32>(~(u_input.a | arg_0.a), u_input.a, ~global3[_wgslsmith_index_u32(arg_0.a, 3u)], 29279u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec2<bool>(true, (~firstTrailingBit(4294967295u) & ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 3u)], 3u)] >> (global1.x % 32u)) << (1u % 32u))) != global1.x);
    let var_1 = -17698i;
    var var_2 = !var_0.x;
    var var_3 = Struct_3(Struct_2(-_wgslsmith_div_i32(1i >> (global1.x % 32u), 1690i)), Struct_1(u_input.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, global1.x, global1.x, u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 85794u, global1.x, global3[_wgslsmith_index_u32(0u, 3u)])) & firstLeadingBit(func_3(Struct_1(0u, vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(23940u, 3u)], u_input.a, u_input.a), vec4<i32>(arg_0.x, 32741i, -1i, 2147483647i), 69360u))), ~select(-vec4<i32>(0i, arg_2, arg_2, arg_2), vec4<i32>(arg_2, 17112i, 37593i, arg_0.x) >> (vec4<u32>(72532u, 1u, u_input.a, global1.x) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false)), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 3u)], func_3(Struct_1(1u, vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<i32>(arg_2, 3009i, arg_0.x, global0.x), 4294967295u)).x << (38112u % 32u))), Struct_1(abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 3u)], u_input.a), 0u)), abs(firstTrailingBit(vec4<u32>(0u, 1u, 0u, u_input.a)) ^ firstTrailingBit(vec4<u32>(global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], global1.x, global1.x))), _wgslsmith_div_vec4_i32(vec4<i32>(22288i, global0.x, _wgslsmith_mod_i32(1i, 19751i), _wgslsmith_mod_i32(2147483647i, 6855i)), (vec4<i32>(arg_2, 7144i, global0.x, 2147483647i) ^ vec4<i32>(arg_0.x, 1i, arg_0.x, 55256i)) << (~vec4<u32>(global1.x, u_input.a, u_input.a, global1.x) % vec4<u32>(32u))), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 3u)], ~4294967295u)));
    return Struct_1(1u ^ firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a, 3u)]), var_3.b.b, var_3.b.c, 2539u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1121f))));
    var var_1 = arg_2.a;
    let var_2 = vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - -1192f), var_0);
    let var_3 = var_2.zy;
    global3 = array<u32, 3>();
    return !select(select(vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, false, true, true)), true, select(true, false, true)), vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(true, false, true, any(vec2<bool>(false, true)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), true));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    let var_0 = arg_1.a;
    let var_1 = select(select(func_4(~(~1u), func_2(global0.yyz >> (vec3<u32>(global1.x, 1u, global3[_wgslsmith_index_u32(1u, 3u)]) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1000f, -105f, 356f)), _wgslsmith_mod_i32(14853i, var_0)), Struct_3(arg_1, Struct_1(4294967295u, vec4<u32>(global3[_wgslsmith_index_u32(global1.x, 3u)], global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 3u)], 3u)], global1.x), vec4<i32>(-29193i, global0.x, -8049i, global0.x), global1.x), Struct_1(1u, vec4<u32>(u_input.a, 4294967295u, 4294967295u, 53837u), vec4<i32>(var_0, var_0, 10055i, -27744i), global3[_wgslsmith_index_u32(47612u, 3u)]))), vec4<bool>(arg_0, arg_0, !arg_0, any(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, arg_0), true))), func_4(_wgslsmith_sub_u32(4294967295u, 4294967295u), Struct_1(~66198u, vec4<u32>(13852u, u_input.a, global3[_wgslsmith_index_u32(0u, 3u)], 1u) & vec4<u32>(global1.x, global1.x, 26247u, 0u), vec4<i32>(-2147483647i, var_0, -1i, 2147483647i), _wgslsmith_dot_vec2_u32(global1.yy, global1.xy)), Struct_3(Struct_2(0i), Struct_1(u_input.a, vec4<u32>(48259u, global1.x, u_input.a, u_input.a), vec4<i32>(arg_1.a, var_0, global0.x, global0.x), global1.x), func_2(global0.yzz, vec4<f32>(-1470f, arg_2.x, 195f, arg_2.x), global0.x))).x), !func_4(_wgslsmith_mod_u32(130811u, global1.x), func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a, var_0, -48010i), global0.zww), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 869f, -283f, arg_2.x) * vec4<f32>(arg_2.x, 419f, -1857f, -607f)), select(63281i, 9712i, arg_0)), Struct_3(Struct_2(var_0), func_2(vec3<i32>(var_0, arg_1.a, 0i), vec4<f32>(260f, arg_2.x, -2263f, 615f), 0i), Struct_1(global1.x, vec4<u32>(1u, 0u, 46930u, 0u), vec4<i32>(arg_1.a, global0.x, 0i, 31308i), 28537u))), vec4<bool>(true, !(abs(global0.x) > countOneBits(-16819i)), arg_0, select(true, !arg_0, arg_0)));
    let var_2 = _wgslsmith_mult_u32(0u & func_3(func_2(reverseBits(vec3<i32>(-20898i, 53635i, var_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1771f, 1326f, 418f, 1226f))), ~2147483647i)).x, firstLeadingBit(~_wgslsmith_mod_u32(_wgslsmith_add_u32(global1.x, u_input.a), 17342u)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), -1272f)))));
    let var_4 = Struct_3(Struct_2(-3491i), func_2(-vec3<i32>(max(-52484i, arg_1.a), i32(-1i) * -58870i, -81092i), vec4<f32>(284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1224f)) - -1000f), -777f, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_2.x * 606f))), -27630i), Struct_1(25101u, ~(~firstTrailingBit(vec4<u32>(1u, 19295u, var_2, global1.x))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_0, var_0, global0.x, 0i)), -vec4<i32>(-7579i, global0.x, -26594i, 2147483647i) << (select(vec4<u32>(0u, 1u, 0u, 53971u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 3u)], 6874u, var_2), var_1) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(75931u, 3u)], u_input.a, 4294967295u), vec3<u32>(0u, u_input.a, global1.x)), abs(vec3<u32>(3108u, 4294967295u, var_2)))));
    return var_4.c.d;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-651f, -1029f, 822f, arg_0.x), vec4<f32>(-393f, arg_0.x, 245f, 127f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, -279f, -805f, 1628f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2768f, 916f, -1577f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, -1000f, 1166f, arg_0.x))))), false)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(3241f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-593f, arg_0.x, 238f, arg_0.x), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(748f, arg_0.x, 3017f, arg_0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(-903f, -1254f, 149f, 1000f), vec4<f32>(-1000f, arg_0.x, -1000f, 1129f)))))));
    var var_1 = Struct_2(global0.x);
    var var_2 = vec2<i32>(min(abs(-global0.x) << ((~arg_1 | 14202u) % 32u), var_1.a), var_1.a);
    var var_3 = func_2(global0.yzz, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -679f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + _wgslsmith_f_op_f32(-arg_0.x)))), -1009f, arg_0.x, -113f), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(9647i, global0.x), _wgslsmith_clamp_i32(31074i, i32(-1i) * -73568i, var_2.x))).b.ywx;
    let var_4 = func_2(vec3<i32>(-69472i, 3210i, reverseBits(min(global0.x | 0i, global0.x & -11059i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1114f * -1914f), var_0.x, all(vec3<bool>(true, false, true))))), var_0.x, _wgslsmith_f_op_f32(-290f - 1661f), _wgslsmith_f_op_f32(-1548f * _wgslsmith_f_op_f32(f32(-1f) * -723f))), 44681i);
    return Struct_2(_wgslsmith_dot_vec3_i32(var_4.c.yyy, abs(vec3<i32>(abs(-6882i), _wgslsmith_add_i32(1i, -40573i), _wgslsmith_dot_vec4_i32(var_4.c, var_4.c)))));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1691f, -838f), vec3<f32>(-243f, -312f, -1042f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(277f, -276f, 184f) * vec3<f32>(1037f, 1000f, -958f)), vec3<bool>(false, false, false))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, abs(70961u)), 3u)]).a), Struct_1(global1.x, firstTrailingBit(~vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), countOneBits(vec4<i32>(_wgslsmith_add_i32(3909i, arg_0), arg_1.a, min(1i, -2147483647i), ~(-2147483647i))), 1u), func_2(_wgslsmith_mult_vec3_i32(global0.xww, _wgslsmith_clamp_vec3_i32(-global0.yyw, -global0.wyy, vec3<i32>(-2147483647i, global0.x, -12381i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(109f, 2383f, -2119f, 684f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-327f, -980f, -807f, -339f)))))), 14906i));
    let var_1 = abs(global1.x);
    var var_2 = !(!vec2<bool>(true, (0i | arg_0) == ~(-25102i)));
    var var_3 = ~var_0.b.d;
    global3 = array<u32, 3>();
    return Struct_1(firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, global3[_wgslsmith_index_u32(1u, 3u)], global1.x), 1u)), select(firstTrailingBit(vec4<u32>(~9828u, global3[_wgslsmith_index_u32(var_0.b.d, 3u)], abs(global1.x), 2234u)), ~select(~var_0.c.b, var_0.c.b, any(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), vec4<bool>(false, true, !(!var_2.x), var_2.x | true)), -var_0.c.c, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1u;
    var var_0 = func_6(_wgslsmith_clamp_i32(global0.x, global0.x, -2147483647i), func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(592f))), _wgslsmith_f_op_f32(sign(-794f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1397f, -1278f))), select(~15060u, _wgslsmith_div_u32(1u, func_1(false, Struct_2(11316i), vec2<f32>(822f, 1436f))), true)), u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(2158f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2056f * -458f), -1215f)), _wgslsmith_f_op_f32(exp2(1f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-390f, 1388f, 352f), vec3<f32>(-186f, -1554f, 1034f), true))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(243f, -436f, 467f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, 641f, -784f)), all(vec4<bool>(false, false, true, true))))))));
    var var_2 = select(func_4(var_0.b.x, Struct_1(var_0.d, ~(~vec4<u32>(0u, global3[_wgslsmith_index_u32(global1.x, 3u)], 22959u, 4294967295u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(55010i, global0.x, -2147483647i, global0.x), vec4<i32>(-40097i, 8740i, 6508i, -2147483647i)), 1u), Struct_3(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(627f, var_1.x, 353f) + vec3<f32>(var_1.x, 405f, -812f)), u_input.a), Struct_1(4294967295u, vec4<u32>(67741u, u_input.a, 5978u, 4294967295u), var_0.c, global1.x), func_6(~0i, Struct_2(global0.x), 31706u))).yz, !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), var_1.x != -585f), func_4(~var_0.b.x, Struct_1(u_input.a, vec4<u32>(0u, 4294967295u, 4294967295u, var_0.b.x), var_0.c, global1.x), Struct_3(Struct_2(global0.x), Struct_1(u_input.a, var_0.b, var_0.c, 0u), Struct_1(var_0.a, vec4<u32>(0u, var_0.a, var_0.b.x, 1609u), vec4<i32>(global0.x, global0.x, -66741i, global0.x), 56612u))).ww, vec2<bool>(false, any(vec3<bool>(true, false, true)))), !vec2<bool>(all(func_4(global1.x, Struct_1(4294967295u, vec4<u32>(142651u, 6295u, u_input.a, 5338u), var_0.c, 1u), Struct_3(Struct_2(global0.x), Struct_1(1u, var_0.b, vec4<i32>(var_0.c.x, 17859i, 0i, var_0.c.x), 50297u), Struct_1(12151u, vec4<u32>(4294967295u, 1u, 51609u, var_0.b.x), var_0.c, var_0.a)))), true));
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 253f, var_1.x)))))), ~1u);
    let var_4 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(reverseBits(var_0.c) & (vec4<i32>(0i, global0.x, var_0.c.x, var_3.a) << (vec4<u32>(1u, 4294967295u, var_0.b.x, 20988u) % vec4<u32>(32u))), (var_0.c | vec4<i32>(0i, var_0.c.x, 0i, global0.x)) | var_0.c)), func_2(var_0.c.wyy, vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x), _wgslsmith_f_op_f32(-217f + _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_sub_i32(21638i, var_0.c.x)), Struct_1(global1.x, vec4<u32>(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(var_0.a, 3u)], 4294967295u), 3579u, global3[_wgslsmith_index_u32(u_input.a, 3u)], 21638u), countOneBits(vec4<i32>(~global0.x, abs(-25948i), 0i, 0i)), u_input.a));
    let var_5 = i32(-1i) * -25429i;
    let var_6 = vec3<bool>(true, var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_0.b.xyz, _wgslsmith_sub_vec3_u32(vec3<u32>(var_4.c.b.x, u_input.a, global3[_wgslsmith_index_u32(~0u, 3u)]), _wgslsmith_clamp_vec3_u32(~var_0.b.yyz, vec3<u32>(27486u, var_4.c.d, 1u) >> (var_0.b.zzw % vec3<u32>(32u)), reverseBits(vec3<u32>(global1.x, global3[_wgslsmith_index_u32(global1.x, 3u)], var_4.b.b.x)))), var_0.b.yww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - var_1.x), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * var_1.x)))))));
}

