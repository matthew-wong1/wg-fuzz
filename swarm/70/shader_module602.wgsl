struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32>;

var<private> global2: Struct_2 = Struct_2(-765f, vec3<bool>(true, true, true), vec4<i32>(-29337i, 31831i, 2147483647i, -1i));

var<private> global3: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_5(vec3<bool>(false, -1i == u_input.d, global2.b.x), global1.x, global2.a, Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, -620f)))), vec3<bool>(false, global2.b.x, (global2.b.x || true) && global2.b.x), vec4<i32>(-10231i, _wgslsmith_sub_i32(~4469i, _wgslsmith_dot_vec3_i32(global2.c.yzz, vec3<i32>(global1.x, global2.c.x, global2.c.x))), ~u_input.d, global2.c.x)), Struct_2(_wgslsmith_f_op_f32(round(2160f)), vec3<bool>(true, true, true), global2.c ^ vec4<i32>(~global2.c.x, _wgslsmith_add_i32(u_input.d, 0i), 0i, _wgslsmith_sub_i32(global1.x, global1.x))));
    global2 = var_0.e;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1413f, -112f))) + vec2<f32>(620f, -1507f)), vec2<f32>(-370f, global2.a), select(vec2<bool>(var_0.d.b.x, global2.b.x), select(vec2<bool>(true, global2.b.x), vec2<bool>(global2.b.x, global2.b.x), global2.b.xz), vec2<bool>(true, true)))))));
    global1 = vec2<i32>(-1i, global1.x);
    let var_2 = vec3<bool>(true, var_0.a.x, !all(!select(var_0.e.b.zx, vec2<bool>(false, global2.b.x), global2.b.xy)));
    return !(-(i32(-1i) * -50296i) < min(_wgslsmith_sub_i32(1i, global2.c.x), 1i)) && var_0.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_4 {
    global1 = firstTrailingBit(abs(abs(~reverseBits(global2.c.yy))));
    var var_0 = ~_wgslsmith_sub_vec2_u32(~(~min(vec2<u32>(8070u, arg_1), vec2<u32>(19448u, u_input.e))), ~vec2<u32>(34205u, 1u) >> (firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(u_input.e, 4294967295u))) % vec2<u32>(32u)));
    let var_1 = Struct_5(!vec3<bool>(true, select(true, any(global2.b.xy), global2.b.x), true), 4360i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a))), Struct_2(arg_3, select(select(global2.b, global2.b, true), global2.b, !global2.b.x), global2.c), Struct_2(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3 + -314f)))), select(vec3<bool>(u_input.e < 3283u, global2.b.x || global2.b.x, !global2.b.x), !select(global2.b, global2.b, global2.b.x), vec3<bool>(all(vec4<bool>(global2.b.x, false, false, global2.b.x)), global2.b.x, global2.b.x)), ~global2.c));
    return Struct_4(4294967295u, vec2<bool>(func_3(), true), var_1.e);
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, arg_0.c.a, _wgslsmith_f_op_f32(round(arg_0.c.a)), _wgslsmith_f_op_f32(global2.a + 1731f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.a, global2.a, global2.a), vec4<f32>(arg_0.c.a, global2.a, 575f, -654f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -1000f, func_2(-vec4<i32>(2147483647i, 30781i, 1i, 24004i), ~u_input.b, -10405i, -688f).c.a, _wgslsmith_f_op_f32(round(-787f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, 935f, -172f, global2.a))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.a), -277f, _wgslsmith_f_op_f32(step(global2.a, -1783f)), _wgslsmith_f_op_f32(global2.a - 2306f)))));
    let var_1 = -12684i;
    let var_2 = arg_0.c.c;
    global0 = var_0.x;
    global1 = firstTrailingBit(global2.c.xz);
    return Struct_5(global2.b, arg_0.c.c.x, -1414f, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.a), 1082f)), select(!global2.b, select(vec3<bool>(global2.b.x, false, true), select(arg_0.c.b, vec3<bool>(global2.b.x, true, true), true), arg_0.a < arg_0.a), firstLeadingBit(1i) > arg_0.c.c.x), vec4<i32>(-2147483647i, global2.c.x, min(global2.c.x, u_input.d & 5938i), ~(-2147483647i))), arg_0.c);
}

fn func_5(arg_0: Struct_5, arg_1: f32) -> Struct_5 {
    let var_0 = Struct_3(all(!vec3<bool>(!global2.b.x, all(vec2<bool>(global2.b.x, arg_0.a.x)), false)));
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_add_vec3_u32(abs(countOneBits(~vec3<u32>(u_input.a, 0u, u_input.e))), vec3<u32>(countOneBits(u_input.c), ~reverseBits(u_input.a ^ 1u), _wgslsmith_clamp_u32(~countOneBits(u_input.c), 1u, u_input.c)));
    let var_3 = arg_0.c;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1355f);
    return func_4(Struct_4(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.x, u_input.b << (0u % 32u)), _wgslsmith_sub_u32(1u, var_2.x)), !global2.b.yz, func_2(arg_0.e.c, var_2.x, max(_wgslsmith_mod_i32(2147483647i, u_input.d), _wgslsmith_mod_i32(global1.x, u_input.d)), arg_1).c));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    var var_0 = func_5(func_4(func_2(vec4<i32>(-global2.c.x, global1.x, global2.c.x, 1i), 1u, _wgslsmith_add_i32(global2.c.x | 32912i, 55582i), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-492f - 112f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(689f)), _wgslsmith_f_op_f32(-258f - 243f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(round(global2.a))))) + -501f);
    let var_2 = func_2(firstTrailingBit(~firstTrailingBit(~vec4<i32>(global1.x, global1.x, global2.c.x, arg_1.c.x))), arg_0, min(firstLeadingBit(_wgslsmith_mod_i32(56885i, -2147483647i)), -16119i), arg_1.a).c.b.x;
    let var_3 = Struct_5(func_5(Struct_5(var_0.d.b, ~(var_0.b ^ u_input.d), var_0.c, Struct_2(global2.a, vec3<bool>(true, false, false), -vec4<i32>(global2.c.x, -1i, 0i, var_0.d.c.x)), Struct_2(_wgslsmith_f_op_f32(ceil(196f)), var_0.a, var_0.e.c >> (vec4<u32>(arg_0, u_input.e, u_input.a, arg_0) % vec4<u32>(32u)))), -1509f).a, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-768f, -1138f)) - _wgslsmith_f_op_f32(-arg_2))) + -1631f), arg_1, arg_1);
    let var_4 = Struct_4(firstLeadingBit(0u) & ~_wgslsmith_mod_u32(~arg_0, ~arg_0), arg_1.b.zy, func_2(-arg_1.c ^ ~reverseBits(vec4<i32>(arg_1.c.x, 8890i, u_input.d, global2.c.x)), ~_wgslsmith_mult_u32(countOneBits(38344u), 1u), firstTrailingBit(firstTrailingBit(~(-1i))), global2.a).c);
    return Struct_4(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_0, 65999u, var_4.a, 64452u), vec4<u32>(u_input.b, var_4.a, 4294967295u, 0u), global2.b.x | false) | ~_wgslsmith_add_vec4_u32(vec4<u32>(73691u, 4294967295u, 0u, 0u), vec4<u32>(15674u, 0u, var_4.a, arg_0)), select(vec4<u32>(u_input.c, 31366u >> (u_input.c % 32u), ~arg_0, u_input.c & u_input.a), ~vec4<u32>(arg_0, 1u, u_input.e, 4294967295u) << (vec4<u32>(50931u, var_4.a, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<bool>(select(true, arg_1.b.x, global2.b.x), false, false, true))), func_4(func_2(var_0.d.c, max(~39229u, 2153u), var_4.c.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.a))))).e.b.zz, var_3.d);
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_4) -> i32 {
    var var_0 = arg_3.c.b;
    var var_1 = -global2.c.x;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-538f + global2.a), arg_3.c.a, arg_1.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global2.a)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a, 642f, global2.a), vec3<f32>(976f, global2.a, 487f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.a, global2.a, -811f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(531f, global2.a, -1319f))))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, -1000f, 618f), vec3<f32>(arg_3.c.a, global2.a, -251f), arg_1.a)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1319f, -343f, var_2.x) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a, var_2.x, arg_3.c.a)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -666f, var_2.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, arg_3.c.a, arg_3.c.a) + vec3<f32>(var_2.x, -1534f, arg_3.c.a))), vec3<f32>(-998f, func_4(Struct_4(4294967295u, global2.b.yx, Struct_2(arg_3.c.a, global2.b, global2.c))).c, _wgslsmith_f_op_f32(-var_2.x))))));
    return (i32(-1i) * -arg_2.x) | ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global1.x;
    global3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(~(-61510i), global2.c.x), ~(func_6(true, Struct_3(false), vec2<i32>(global1.x, u_input.d), func_1(4294967295u, Struct_2(global2.a, vec3<bool>(false, global2.b.x, true), global2.c), -1308f)) | 45460i));
    global3 = ~global2.c.x;
    let var_1 = _wgslsmith_clamp_vec3_i32(global2.c.zxx, firstTrailingBit(global2.c.zxw) & -global2.c.yyx, global2.c.zww);
    var var_2 = func_5(func_5(Struct_5(select(global2.b, !vec3<bool>(true, false, global2.b.x), !global2.b), _wgslsmith_div_i32(i32(-1i) * -1i, func_1(u_input.e, Struct_2(global2.a, vec3<bool>(true, true, false), global2.c), global2.a).c.c.x), _wgslsmith_f_op_f32(max(global2.a, 654f)), func_1(62677u, Struct_2(global2.a, global2.b, global2.c), _wgslsmith_f_op_f32(-global2.a)).c, Struct_2(_wgslsmith_f_op_f32(abs(global2.a)), global2.b, vec4<i32>(1i, global2.c.x, -22583i, u_input.d) << (vec4<u32>(u_input.b, u_input.e, u_input.e, 4294967295u) % vec4<u32>(32u)))), global2.a), _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(trunc(global2.a))));
    let var_3 = 4294967295u | u_input.c;
    var var_4 = firstLeadingBit(~0u);
    let var_5 = vec4<f32>(global2.a, 706f, global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a - 235f)))) * 257f));
    let x = u_input.a;
    s_output = StorageBuffer(-1738f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-911f, var_2.c)) - 120f)) - vec2<f32>(var_5.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c - -2285f))))), ~(~(vec4<u32>(0u, var_3, 1u, 78757u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_3, var_3, 6330u), vec4<u32>(0u, 0u, 4294967295u, var_3)) % vec4<u32>(32u)))));
}

