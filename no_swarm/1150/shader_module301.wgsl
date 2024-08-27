struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(70550u, 4294967295u);

var<private> global1: vec4<u32> = vec4<u32>(64704u, 78558u, 29451u, 16343u);

var<private> global2: array<i32, 5> = array<i32, 5>(-42777i, -26635i, 1i, 14511i, 38090i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = vec2<u32>(reverseBits(20578u), u_input.a.x);
    let var_0 = ~vec2<u32>(~global0.x, abs(_wgslsmith_sub_u32(1u << (global1.x % 32u), ~global1.x)));
    global2 = array<i32, 5>();
    let var_1 = vec4<i32>(-1i, -21192i, -firstLeadingBit(~(-1i)), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 5u)], -1i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], -1i), abs(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 5u)], -2147483647i, global2[_wgslsmith_index_u32(48937u, 5u)]))), vec4<i32>(-firstTrailingBit(global2[_wgslsmith_index_u32(50568u, 5u)]), -reverseBits(global2[_wgslsmith_index_u32(4294967295u, 5u)]), min(0i, _wgslsmith_sub_i32(-10535i, global2[_wgslsmith_index_u32(23234u, 5u)])), -_wgslsmith_mult_i32(48091i, global2[_wgslsmith_index_u32(4294967295u, 5u)]))));
    global1 = abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(37294u, 7013u, 4294967295u, var_0.x), vec4<u32>(0u, 4294967295u, 5676u, global0.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 45300u, 0u, global0.x), vec4<u32>(global0.x, global1.x, 74895u, u_input.a.x), vec4<u32>(global0.x, 11850u, global0.x, 1729u)), firstTrailingBit(max(vec4<u32>(1u, u_input.a.x, 4294967295u, 46853u), vec4<u32>(u_input.a.x, global1.x, 16130u, 0u)))), firstLeadingBit(max(vec4<u32>(4294967295u, 76171u, 1u, 35478u), vec4<u32>(4294967295u, 4294967295u, 68012u, 12292u))) & abs(vec4<u32>(3500u, u_input.a.x, 60615u, 9852u) >> (vec4<u32>(global0.x, 68572u, global0.x, 22283u) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(4294967295u, 1u, abs(u_input.a.x), global1.x))));
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<i32>) -> vec2<f32> {
    global0 = vec2<u32>(4294967295u, u_input.a.x);
    global1 = vec4<u32>(firstLeadingBit(abs(1u) & global0.x), ~(_wgslsmith_add_u32(4294967295u, 0u) | ~(global1.x ^ global1.x)), ~4294967295u, abs(global1.x));
    let var_0 = vec3<f32>(arg_2, 1f, arg_2);
    global1 = ~(~(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global0.x, 49936u, 0u, 0u)), vec4<u32>(27813u, 0u, 50322u, u_input.a.x))));
    var var_1 = global1.x;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1308f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1451f, -705f) * vec2<f32>(arg_2, var_0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1779f, _wgslsmith_f_op_f32(sign(-1024f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(var_0.x, -466f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(390f, arg_2) + var_0.yz) - var_0.xz), var_0.yy, vec2<bool>(true, true))))), vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true))))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(global2[_wgslsmith_index_u32(func_3(), 5u)], vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(global1.x, 5u)], _wgslsmith_mod_i32(3578i, -10731i)), abs(arg_0.x)), -3204i, arg_0.x, -arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(1530f * _wgslsmith_f_op_f32(f32(-1f) * -1316f))))), -(-min(vec4<i32>(1i, -33373i, 1i, -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 5u)], 18606i, -31863i, 41067i)) ^ vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_0.x, ~arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1815f), _wgslsmith_f_op_f32(ceil(var_0.x))))))));
    let var_2 = Struct_1(!vec3<bool>(!any(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(var_0.x * -312f) < 345f, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), min(vec4<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, 72782i, arg_0.x), vec4<i32>(-2147483647i, 94i, 21582i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec4<i32>(global2[_wgslsmith_index_u32(81382u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], 63857i, -1i) | vec4<i32>(-4316i, -1i, global2[_wgslsmith_index_u32(global0.x, 5u)], arg_0.x)), select(20128i, -1i, true) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, 2147483647i, -28103i), vec4<i32>(1i, arg_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], -31641i)), arg_0.x), ~select(-vec4<i32>(18007i, arg_0.x, arg_0.x, -1i), ~vec4<i32>(global2[_wgslsmith_index_u32(4818u, 5u)], 30593i, 2147483647i, 1i), var_0.x > var_1)), arg_0);
    var var_3 = Struct_1(vec3<bool>(!((arg_0.x >= -1i) == false), !(any(vec3<bool>(true, false, true)) || true), false), -var_2.b, -var_2.b.wx);
    var_3 = Struct_1(!select(select(vec3<bool>(var_2.a.x, true, var_2.a.x), !vec3<bool>(true, var_2.a.x, false), false), var_2.a, var_3.a.x), vec4<i32>(-_wgslsmith_div_i32(arg_0.x, 48385i), ~global2[_wgslsmith_index_u32(1u, 5u)] << (0u % 32u), ~(~var_3.c.x), 2147483647i) | _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-1256i, arg_0.x, -7939i, var_3.c.x)), abs(vec4<i32>(0i, arg_0.x, 1i, var_3.b.x))), vec2<i32>(var_3.c.x, global2[_wgslsmith_index_u32(1u >> (firstLeadingBit(1u ^ global1.x) % 32u), 5u)]));
    return global1.ww;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(18907u, u_input.a.x, _wgslsmith_sub_u32(45441u, u_input.a.x)), global1.wyx);
    global0 = var_0.xx >> (_wgslsmith_clamp_vec2_u32(var_0.yx, ((u_input.a >> (var_0.zy % vec2<u32>(32u))) << ((vec2<u32>(global1.x, arg_1) | vec2<u32>(3690u, global0.x)) % vec2<u32>(32u))) >> (~func_2(arg_0.yw) % vec2<u32>(32u)), vec2<u32>(1u, 1u) << (~vec2<u32>(arg_1, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = arg_0.yyy;
    var var_2 = 7234u;
    var var_3 = vec4<i32>(abs(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, arg_1)), 5u)]) | var_1.x, _wgslsmith_sub_i32(max(abs(var_1.x) & countOneBits(var_1.x), 0i), i32(-1i) * -12897i), -(_wgslsmith_sub_i32(max(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 5u)]), arg_0.x) & ~arg_0.x), global2[_wgslsmith_index_u32(arg_1, 5u)]);
    return abs(var_3.xxy);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_3 {
    global0 = min(global1.yw, _wgslsmith_sub_vec2_u32(abs(_wgslsmith_add_vec2_u32(~global1.zx, ~u_input.a)), global1.yy));
    var var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1.xz, ~global1.xx), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 9625u), global1.wx)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.a, global1.yw), vec2<u32>(abs(global0.x), 17821u))), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(20448u, u_input.a.x), 5u)] > firstTrailingBit(global2[_wgslsmith_index_u32(global1.x, 5u)]), !all(vec4<bool>(true, true, true, false)), false), -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(global0.x, 5u)], arg_1.x, global2[_wgslsmith_index_u32(17076u, 5u)]), _wgslsmith_add_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_1.x, 46633i), vec4<i32>(arg_1.x, arg_1.x, -102187i, 0i))), vec2<i32>(~(global2[_wgslsmith_index_u32(27789u, 5u)] << (global1.x % 32u)), countOneBits(i32(-1i) * -24377i))), vec2<u32>(47408u, global0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 43637u, 89413u, u_input.a.x), vec4<u32>(global0.x, u_input.a.x, 0u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(77765u, u_input.a.x, global0.x, 4294967295u)))), ~(abs(vec4<u32>(951u, global0.x, u_input.a.x, 0u)) ^ ~vec4<u32>(global0.x, 79060u, 1u, global1.x))), true);
    var_0 = Struct_2(~abs(~(u_input.a.x << (63804u % 32u))), Struct_1(vec3<bool>(var_0.b.b.x < arg_1.x, any(select(vec4<bool>(true, true, var_0.e, true), vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.e), var_0.e)), !var_0.e), abs(var_0.b.b >> (vec4<u32>(u_input.a.x, 1u, 0u, 12262u) % vec4<u32>(32u))), vec2<i32>(firstLeadingBit(global2[_wgslsmith_index_u32(0u, 5u)]), arg_1.x << (100141u % 32u))), select(abs(var_0.c), vec2<u32>(~_wgslsmith_sub_u32(0u, global1.x), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(90414u, 26791u), u_input.a))), var_0.b.a.x), 117378u, true);
    var var_1 = arg_1.x;
    global0 = u_input.a;
    return Struct_3(-abs(-1i), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -305f;
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1452f)), _wgslsmith_div_f32(var_0, 422f))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 1i, global2[_wgslsmith_index_u32(0u, 5u)]), vec3<i32>(global2[_wgslsmith_index_u32(68293u, 5u)], global2[_wgslsmith_index_u32(global1.x, 5u)], -15616i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 22015i), vec3<i32>(29489i, global2[_wgslsmith_index_u32(58648u, 5u)], 41457i))), vec3<i32>(~0i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 5u)], _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 0i))), ~(func_1(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], -6954i, 1i), 1u) >> (vec3<u32>(3079u, 6761u, 0u) % vec3<u32>(32u))), max(_wgslsmith_mult_vec3_i32(vec3<i32>(15308i, -1i, -2147483647i), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], -22861i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 36029i, global2[_wgslsmith_index_u32(14135u, 5u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 1i, 11066i))) >> (~(~global1.yyz) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1151f - 723f), var_0, var_0)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, var_0, var_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(-871f, -892f, var_0), vec3<f32>(var_0, -1138f, var_0)))))));
    global2 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(var_1.a, -5676i, any(func_5(var_0, var_1.b.b.xzx, vec3<f32>(var_0, 189f, var_0)).b.a)), 4142i, -32213i, 1i), ~12635u);
}

