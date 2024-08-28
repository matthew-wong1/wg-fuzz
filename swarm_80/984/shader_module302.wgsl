struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-16903i, -16185i, -1i, i32(-2147483648), 17360i, 0i, -35524i, 2102i, 46446i, i32(-2147483648), 0i, -1i, -56487i, 1i, 26528i, -1i, 49337i, -1i, 14918i, 1i, 56379i, 50432i, 0i, 5911i, -1i, -5851i);

var<private> global1: array<Struct_2, 32>;

var<private> global2: vec2<i32>;

var<private> global3: array<u32, 4>;

var<private> global4: vec4<u32> = vec4<u32>(56131u, 4294967295u, 0u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    global2 = -abs(-vec2<i32>(3528i, ~global2.x));
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, ~(-firstTrailingBit(global2.x))), ~33712i, ~(-global2.x), -47120i);
    var var_1 = global4.wyw << (global4.wzx % vec3<u32>(32u));
    global2 = -u_input.b;
    let var_2 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32((vec4<i32>(-2221i, -70369i, global0[_wgslsmith_index_u32(10693u, 26u)], 0i) | vec4<i32>(1i, global0[_wgslsmith_index_u32(35624u, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)], global2.x)) | ~vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4736u, 26u)], global2.x, global0[_wgslsmith_index_u32(u_input.a, 26u)]), -vec4<i32>(0i, u_input.b.x, 20816i, global2.x) ^ vec4<i32>(global2.x, var_0.x, 0i, global2.x)), var_0.x), global1[_wgslsmith_index_u32(~(~(~var_1.x)), 32u)], Struct_1(~(~_wgslsmith_mod_u32(global4.x, global3[_wgslsmith_index_u32(68893u, 4u)])), 71837u), ~firstLeadingBit(-(~(-12629i))));
    return 209f;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec3<bool> {
    return vec3<bool>(true, false, 36349u == abs(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), 1u, ~arg_0)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    var var_0 = vec3<bool>(true, false, true);
    var var_1 = ~global4.x;
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -107f) <= _wgslsmith_f_op_f32(func_2());
    return any(select(!(!select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, true))), vec4<bool>(u_input.a != ~1u, ~global4.x < global3[_wgslsmith_index_u32(u_input.a, 4u)], any(vec2<bool>(var_0.x, var_0.x)) || !var_0.x, 5247i == -global2.x), vec4<bool>(false, ~global3[_wgslsmith_index_u32(arg_1.e.x, 4u)] != 0u, var_0.x, any(func_3(1u, arg_0.xy, var_0.xz)))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_mod_u32(0u, u_input.a)), u_input.a), ~u_input.a);
    var var_1 = Struct_3(_wgslsmith_clamp_i32(~(-1i), global0[_wgslsmith_index_u32(global4.x, 26u)], _wgslsmith_div_i32(-2147483647i, -global0[_wgslsmith_index_u32(1u, 26u)])) & -abs(1i), Struct_2(Struct_1(2074u, _wgslsmith_mult_u32(abs(127470u), global3[_wgslsmith_index_u32(0u, 4u)] >> (12026u % 32u))), vec4<u32>(global3[_wgslsmith_index_u32(~max(4294967295u, u_input.a), 4u)], ~global3[_wgslsmith_index_u32(2616u, 4u)] << (~global4.x % 32u), ~global3[_wgslsmith_index_u32(min(1u, var_0.a), 4u)], abs(4294967295u << (global3[_wgslsmith_index_u32(13043u, 4u)] % 32u))), abs(vec4<i32>(i32(-1i) * -14015i, ~global2.x, u_input.b.x | u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, global2.x, u_input.b.x), vec4<i32>(u_input.b.x, 35395i, global0[_wgslsmith_index_u32(u_input.a, 26u)], -1i)))), Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~firstTrailingBit(46498u), 4u)], 4u)], global4.x), ~(~(~vec4<u32>(var_0.b, 2184u, var_0.a, 2185u)))), Struct_1(0u, global4.x), global2.x);
    var var_2 = Struct_2(var_1.b.d, ~var_1.b.e, var_1.b.c, Struct_1(firstLeadingBit(4294967295u), ~_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(22795u, 35344u))), abs(var_1.b.b));
    return var_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: bool) -> f32 {
    global1 = array<Struct_2, 32>();
    let var_0 = Struct_2(arg_0, vec4<u32>(1u, global4.x, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(6399u, arg_2.b.b.x), global4.x | arg_2.c.e.x), u_input.a), arg_2.b.c, func_4(true, select(!select(vec2<bool>(true, true), vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_3, arg_3)), func_3(44937u, vec2<f32>(arg_2.a, arg_2.d), vec2<bool>(false, true)).zz, arg_3), vec2<bool>(true, arg_3)), func_3(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(max(arg_2.d, arg_2.a)), _wgslsmith_f_op_f32(-arg_2.a)), vec2<bool>(arg_3, true)).zz, arg_2.a), ~arg_2.b.b);
    global4 = var_0.b;
    let var_1 = Struct_4(-782f, arg_2.c, global1[_wgslsmith_index_u32(29664u, 32u)], -1235f);
    global0 = array<i32, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f + arg_2.d) - _wgslsmith_f_op_f32(-var_1.d)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 784f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.a, -370f)), arg_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(true, vec2<bool>(func_1(vec3<f32>(-776f, -601f, -1000f), Struct_2(Struct_1(global4.x, global4.x), vec4<u32>(0u, u_input.a, 0u, 4294967295u), vec4<i32>(-42916i, global0[_wgslsmith_index_u32(3002u, 26u)], u_input.b.x, global2.x), Struct_1(u_input.a, 298u), vec4<u32>(global3[_wgslsmith_index_u32(global4.x, 4u)], global4.x, u_input.a, 0u))), func_1(vec3<f32>(-827f, -572f, -1000f), Struct_2(Struct_1(64793u, global3[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(u_input.a, u_input.a, 4519u, 11753u), vec4<i32>(-46800i, 0i, 1i, 40672i), Struct_1(1u, global4.x), vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 4u)], 4u)], u_input.a)))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), true), _wgslsmith_f_op_f32(floor(-322f))), ~(-vec4<i32>(2147483647i, u_input.b.x, 10625i, global2.x)) >> (vec4<u32>(0u, u_input.a >> (0u % 32u), 4294967295u, reverseBits(global4.x)) % vec4<u32>(32u)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1104f))), global1[_wgslsmith_index_u32(global4.x, 32u)], Struct_2(Struct_1(global3[_wgslsmith_index_u32(48397u, 4u)], global4.x), _wgslsmith_mult_vec4_u32(vec4<u32>(56859u, u_input.a, global3[_wgslsmith_index_u32(global4.x, 4u)], 11195u), vec4<u32>(global3[_wgslsmith_index_u32(1u, 4u)], u_input.a, global3[_wgslsmith_index_u32(global4.x, 4u)], global4.x)), ~vec4<i32>(1i, -1i, global0[_wgslsmith_index_u32(u_input.a, 26u)], global2.x), func_4(false, vec2<bool>(true, false), vec2<bool>(false, false), 1000f), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, 48257u, 86360u, 19133u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83158u, 4u)], 4u)], 202u, u_input.a, global4.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u))), -1227f), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))) * -1047f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-197f))))));
    var var_2 = vec3<bool>(all(!func_3(1u, vec2<f32>(1280f, -977f), vec2<bool>(true, false)).yz) && any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec3<bool>(true, true, false)))), true, !all(vec3<bool>(true, all(vec2<bool>(true, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(func_2())), firstTrailingBit(global2.x), -(~vec4<i32>(global0[_wgslsmith_index_u32(29434u, 26u)], u_input.b.x, 2147483647i, global2.x)) ^ -vec4<i32>(43662i, _wgslsmith_sub_i32(-49329i, -1i), ~0i, global2.x), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.a, u_input.a, 1u, 67042u)), 0u, global3[_wgslsmith_index_u32(abs(u_input.a), 4u)]), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-683f)))));
}

