struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(523f, 297f, -1851f, 576f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x), abs(-(~u_input.c) ^ vec3<i32>(abs(51729i), u_input.b.x, 12822i)));
    let var_2 = Struct_2(select(select(vec4<bool>(var_0.a.b.x, true, arg_1, select(arg_1, arg_0.a.b.x, var_0.a.b.x)), select(!vec4<bool>(false, arg_1, arg_0.a.a, arg_1), vec4<bool>(false, arg_0.a.a, false, true), vec4<bool>(true, true, true, arg_0.a.b.x)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, arg_1, true), vec4<bool>(false, false, false, arg_1), vec4<bool>(true, var_0.a.a, false, var_0.a.a)), select(vec4<bool>(false, arg_0.a.a, false, false), vec4<bool>(arg_1, var_0.a.a, arg_1, true), vec4<bool>(arg_1, var_0.a.a, true, var_0.a.b.x)))), vec4<bool>(false && all(vec2<bool>(arg_0.a.a, arg_0.a.a)), var_0.a.b.x, var_0.a.b.x, true), any(!select(vec2<bool>(true, arg_1), arg_0.a.b.yy, false))), countOneBits(~_wgslsmith_clamp_i32(3124i, -2147483647i, var_1.x)) > 71594i, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, _wgslsmith_mod_u32(61221u, _wgslsmith_mod_u32(4294967295u, 29873u)), ~1u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.d.x, 15496u, arg_0.b, 4490u), vec4<u32>(u_input.d.x, arg_0.b, arg_0.b, 1u)) | abs(vec4<u32>(11930u, 72867u, arg_0.b, u_input.d.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.b, var_0.b, var_0.b), vec4<u32>(65041u, var_0.b, 44096u, arg_0.b))))));
    var_0 = Struct_3(var_0.a, ~firstLeadingBit(~reverseBits(24397u)));
    global0 = array<f32, 4>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(countOneBits(~16038u), 4u)])))) <= _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~max(u_input.d.x, u_input.d.x), 0u, ~13801u), 4u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(arg_0.b, arg_0.b), 4u)])))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4) -> vec2<i32> {
    global0 = array<f32, 4>();
    let var_0 = Struct_4(Struct_2(select(select(arg_2.e, vec4<bool>(arg_2.d.a.x, arg_1, arg_2.d.b, true), func_3(Struct_3(Struct_1(arg_2.e.x, arg_2.b.a.wyz), arg_2.b.c), arg_2.b.b)), arg_2.b.a, vec4<bool>(arg_2.a.a.x, false, !arg_1, !arg_1)), true, 270u), Struct_2(!arg_2.c, true, 0u), select(arg_2.e, vec4<bool>(arg_1, abs(u_input.b.x) < (arg_0.x << (u_input.d.x % 32u)), false, false), vec4<bool>(func_3(Struct_3(Struct_1(true, vec3<bool>(arg_1, arg_2.e.x, true)), 0u), true), any(!vec2<bool>(arg_2.a.a.x, arg_1)), arg_2.d.a.x, any(arg_2.d.a.zw))), Struct_2(select(select(arg_2.b.a, !arg_2.a.a, arg_2.e), select(arg_2.b.a, !arg_2.a.a, arg_2.c.x), !arg_2.a.a.x), true, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), select(select(vec4<bool>(true, true, func_3(Struct_3(Struct_1(arg_1, vec3<bool>(true, true, false)), 100633u), arg_1), global0[_wgslsmith_index_u32(1u, 4u)] == 117f), !arg_2.d.a, vec4<bool>(false, true, arg_1, all(vec2<bool>(true, true)))), vec4<bool>(all(!vec3<bool>(false, arg_1, arg_1)), !arg_1 == all(arg_2.d.a.wxw), arg_2.a.b, arg_1 && false), true));
    var var_1 = ~max(~vec4<u32>(var_0.b.c | var_0.a.c, arg_2.b.c, ~8798u, var_0.d.c), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(28727u, arg_2.b.c, var_0.d.c, var_0.d.c)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_0.d.c, 25189u, var_0.b.c, u_input.d.x)), vec4<u32>(41210u, 42978u, u_input.d.x, u_input.d.x), reverseBits(vec4<u32>(arg_2.a.c, 13127u, 4356u, 92u)))));
    let var_2 = ~firstLeadingBit(u_input.b.wzx);
    global0 = array<f32, 4>();
    return -reverseBits(vec2<i32>(abs(-u_input.a), -arg_0.x));
}

fn func_2() -> Struct_3 {
    var var_0 = true;
    var_0 = true;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -9452i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.b.x), 1i), func_4(u_input.b.yxx, func_3(Struct_3(Struct_1(true, vec3<bool>(false, false, false)), 148u), false), Struct_4(Struct_2(vec4<bool>(true, false, true, true), false, 4294967295u), Struct_2(vec4<bool>(false, false, true, true), true, u_input.d.x), vec4<bool>(true, true, false, true), Struct_2(vec4<bool>(false, false, false, true), false, u_input.d.x), vec4<bool>(false, false, false, true)))), u_input.a), vec3<i32>(40119i, select(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(0i, u_input.a, -38571i, u_input.a)), -select(-14176i, u_input.c.x, true), ~u_input.c.x != select(40437i, u_input.c.x, true)), -2147483647i ^ u_input.c.x));
    var var_3 = firstTrailingBit(min(vec3<i32>(countOneBits(2147483647i), -u_input.a, u_input.c.x) << (u_input.d % vec3<u32>(32u)), u_input.c));
    return Struct_3(Struct_1(firstTrailingBit(u_input.d.x) < 0u, !vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(~98594u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(50406u, u_input.d.x, u_input.d.x, 16058u), vec4<u32>(33930u, u_input.d.x, 1u, u_input.d.x))) << (vec3<u32>(~4294967295u, firstTrailingBit(0u), ~4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 51898u, u_input.d.x), vec3<u32>(0u, u_input.d.x, 104220u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u), u_input.d)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.xx), ~14000u))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = abs(-2147483647i);
    var var_2 = 24973u;
    let var_3 = global0[_wgslsmith_index_u32((~(~3744u) << (_wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(u_input.d, u_input.d))) % 32u)) >> (u_input.d.x % 32u), 4u)];
    let var_4 = u_input.d;
    return Struct_2(select(select(vec4<bool>(arg_0, var_0.a.a, false, true), !(!vec4<bool>(false, true, arg_0, false)), false), vec4<bool>(-6314i <= u_input.c.x, true, var_0.a.a, !func_3(Struct_3(Struct_1(false, vec3<bool>(false, arg_0, true)), var_0.b), false)), u_input.a >= u_input.b.x), true, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~82134u, 6475u, var_4.x, var_4.x), abs(~vec4<u32>(75190u, var_4.x, 18127u, var_0.b))), ~(~max(1u, 0u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    global0 = array<f32, 4>();
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_sub_u32(u_input.d.x, ~0u);
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-(~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 0i, u_input.a), vec3<i32>(u_input.a, 7368i, u_input.a)), u_input.b.zyy)));
    let var_1 = Struct_3(func_5(func_1(false | (u_input.d.x != u_input.d.x)), Struct_3(Struct_1(func_2().a.b.x, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), _wgslsmith_mod_u32(func_1(true).c, abs(u_input.d.x))), 0u), u_input.d.x);
    let var_2 = func_5(func_1(all(func_1(any(var_1.a.b.xy)).a.wz)), func_2(), ~31267u);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(1000f * -1170f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(24562u, var_1.b, u_input.d.x, 43225u) & vec4<u32>(var_1.b, 0u, 4294967295u, 0u)), reverseBits(vec4<u32>(var_1.b, 35352u, u_input.d.x, u_input.d.x))), 4u)] * global0[_wgslsmith_index_u32(69396u, 4u)]), _wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 4u)])) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(462f - global0[_wgslsmith_index_u32(u_input.d.x, 4u)]))))));
    var var_4 = var_1;
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1308f), global0[_wgslsmith_index_u32(81060u, 4u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f + 479f) - _wgslsmith_f_op_f32(select(var_3.x, 607f, var_1.a.a)))) * 1887f), _wgslsmith_f_op_f32(min(187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d.x, 4u)]) * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_4.b, reverseBits(64768u)), 4u)]))));
    let var_5 = vec3<i32>(i32(-1i) * -8364i, -(-25916i << (~var_1.b % 32u)), -1i);
    var var_6 = global0[_wgslsmith_index_u32(var_4.b | 0u, 4u)];
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) * var_3.x), 109f, 1151f, -1151f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, 118f, var_3.x, global0[_wgslsmith_index_u32(u_input.d.x, 4u)])) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -183f)))), vec3<f32>(_wgslsmith_f_op_f32(-735f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)])), -1794f, _wgslsmith_f_op_f32(trunc(-561f))));
}

