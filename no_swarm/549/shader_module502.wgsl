struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(1680i, 1i, -346i, -1i, 23696i, 0i, 1i, 2147483647i, 14807i, 0i, 2349i, 20248i, 67173i, i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648), -62747i, -1i, i32(-2147483648), i32(-2147483648), -43545i, 49326i, 0i, -34883i, 23984i, 2147483647i, i32(-2147483648), 0i, 1i, 2147483647i, -12644i);

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<f32>, 27>;

var<private> global4: Struct_3 = Struct_3(1i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = select(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, true, true)), (-17359i > (_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(16333i, 2102i, global4.a, u_input.a.x)) | global0[_wgslsmith_index_u32(75427u, 32u)])) & !((1i >> (0u % 32u)) == ~u_input.b.x));
    let var_1 = ~(~select(_wgslsmith_mod_u32(1u, ~26162u), 1u, true || var_0.x));
    global4 = Struct_3(_wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_add_i32(reverseBits(2147483647i), _wgslsmith_sub_i32(global4.a, u_input.b.x)), _wgslsmith_add_i32(~2147483647i, firstLeadingBit(u_input.a.x))), countOneBits(~(-1i))));
    let var_2 = global2.x;
    let var_3 = select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, any(vec4<bool>(any(var_0.zzx), true, var_0.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))))), !select(select(!vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), any(vec3<bool>(var_0.x, true, var_0.x))), vec2<bool>(var_0.x, true), false && var_0.x));
    return select(28585u, ~var_1, var_3.x);
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_3(min(2147483647i, 2147483647i));
    global4 = Struct_3(_wgslsmith_clamp_i32(~global4.a, countOneBits(var_0.a), -_wgslsmith_clamp_i32(arg_0, u_input.a.x, var_0.a)) >> (func_3() % 32u));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.x, 2455f))))), 2170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(860f)) * global2.x) * _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(global2.x - -1000f)))), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 32u)] >> (1u % 32u), reverseBits(-43818i)), ~vec4<u32>(1u, 1u, 1u, 1u), true, ~_wgslsmith_mult_vec3_i32(u_input.b.wwx, countOneBits(vec3<i32>(global4.a, 1i, global0[_wgslsmith_index_u32(5244u, 32u)]))));
    return global1[_wgslsmith_index_u32(select(var_1.c.x, ~(~(firstTrailingBit(22828u) ^ 11199u)), true), 1u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(1i, u_input.c);
    global2 = global3[_wgslsmith_index_u32(func_2(reverseBits(countOneBits(arg_3.b.x))).c.x, 27u)];
    var var_1 = Struct_3(-(~(-31229i) ^ (-32593i >> ((0u << (arg_1.c.x % 32u)) % 32u))));
    let var_2 = ~(_wgslsmith_mod_i32(~0i, -31020i) & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_3.b.x), countOneBits(u_input.a))) < _wgslsmith_sub_i32(arg_3.b.x, 0i << (arg_1.c.x % 32u));
    var_0 = ~(~global4.a);
    return Struct_3(_wgslsmith_sub_i32(arg_3.b.x, i32(-1i) * -(~1i)));
}

fn func_1() -> u32 {
    global4 = func_4(vec4<bool>((_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(38084u, 32u)]) < global0[_wgslsmith_index_u32(1u, 32u)]) != false, true, true, all(vec2<bool>(true, true))), func_2(reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.a), -u_input.a))), true, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)])))), u_input.b.zzy));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(47353u, 27u)] * global3[_wgslsmith_index_u32(1u, 27u)]) * _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(4294967295u, 27u)]))))) * _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(1u, 27u)]));
    var var_0 = _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(reverseBits(~(-4638i)), global4.a, 63164i, select(-max(-33271i, global4.a), -29720i, select(true, true, true))));
    global4 = Struct_3(53956i);
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u >> (1u % 32u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(19142u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(76744u, 1u), vec2<u32>(51791u, 1u))), 23399u), ~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(11987u, 4294967295u, 544u, 42421u), any(vec4<bool>(true, true, false, false)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(0u, 39281u, 80544u, 62773u), vec4<u32>(1u, 49269u, 4294967295u, 71272u), vec4<bool>(true, true, false, true)))), 1u)];
    return countOneBits(var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(-1i, ~global4.a), ~(-35810i));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x + global2.x))), -1908f), global2.x, global2.x), ~vec3<i32>(global0[_wgslsmith_index_u32(func_1(), 32u)], 34345i, -global0[_wgslsmith_index_u32(43246u, 32u)]), vec4<u32>(~func_2(-1i).c.x, ~_wgslsmith_clamp_u32(~19416u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(33417u, 4294967295u, 0u), vec3<u32>(1396u, 17015u, 4294967295u))), ~1u, ~(~(~1u))), true, -u_input.b.zyx ^ vec3<i32>(countOneBits(~0i), _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(-1i, 6853i)) >> (~4294967295u % 32u), var_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    global0 = array<i32, 32>();
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-858f, -1664f, 147f, global2.x)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + global2.x)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_div_f32(var_1.a.x, -214f)))));
    global4 = func_4(vec4<bool>(((5655u << (var_1.c.x % 32u)) <= _wgslsmith_mult_u32(var_1.c.x, 1u)) | false, global4.a > -(~u_input.c), !(!select(var_1.d, var_1.d, var_1.d)), false), func_2(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 32u)], 2147483647i, var_1.b.x), u_input.b.wyy)) | func_2(~0i).e.x), all(select(select(!vec4<bool>(var_1.d, true, var_1.d, true), vec4<bool>(var_1.d, false, var_1.d, var_1.d), vec4<bool>(false, var_1.d, var_1.d, var_1.d)), !(!vec4<bool>(false, var_1.d, var_1.d, false)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(var_1.d, var_1.d, var_1.d, true), vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), vec4<bool>(true, false, true, var_1.d)), vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(4294967295u, 27u)]), abs(max(~u_input.b.wzz, vec3<i32>(1i, 82569i, var_1.e.x)))));
    global1 = array<Struct_2, 1>();
    var var_4 = vec3<bool>(!(!(!all(vec4<bool>(false, var_1.d, var_1.d, true)))), func_2(firstLeadingBit(global4.a)).d, false);
    let var_5 = firstLeadingBit(var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~var_5, _wgslsmith_dot_vec3_u32(vec3<u32>(81597u, 50539u, var_1.c.x) | var_1.c.yzz, var_1.c.zzx)) >> (78645u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), global2.x, global2.x)));
}

