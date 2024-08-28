struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: vec4<u32>;

var<private> global3: array<f32, 20>;

var<private> global4: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec2<f32>(1186f, -877f)), Struct_5(vec2<f32>(894f, 391f)), Struct_5(vec2<f32>(499f, 908f)), Struct_5(vec2<f32>(-309f, 104f)), Struct_5(vec2<f32>(-1956f, -1886f)), Struct_5(vec2<f32>(-470f, 1171f)), Struct_5(vec2<f32>(-594f, 1734f)), Struct_5(vec2<f32>(-410f, -526f)), Struct_5(vec2<f32>(-801f, 404f)), Struct_5(vec2<f32>(786f, -216f)), Struct_5(vec2<f32>(1663f, -184f)), Struct_5(vec2<f32>(239f, 548f)), Struct_5(vec2<f32>(-939f, -1584f)), Struct_5(vec2<f32>(411f, -1000f)), Struct_5(vec2<f32>(962f, 1834f)), Struct_5(vec2<f32>(1917f, -295f)), Struct_5(vec2<f32>(-1249f, 308f)), Struct_5(vec2<f32>(679f, 388f)), Struct_5(vec2<f32>(-852f, -1959f)), Struct_5(vec2<f32>(512f, -2011f)), Struct_5(vec2<f32>(176f, -620f)), Struct_5(vec2<f32>(-541f, -920f)), Struct_5(vec2<f32>(275f, 1446f)), Struct_5(vec2<f32>(-1000f, 869f)), Struct_5(vec2<f32>(-267f, 1000f)), Struct_5(vec2<f32>(-975f, 983f)), Struct_5(vec2<f32>(1081f, 430f)), Struct_5(vec2<f32>(-215f, 655f)), Struct_5(vec2<f32>(-638f, 585f)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = abs(-87775i);
    global0 = Struct_1(!(!(global0.b < -1072f)), 1000f, arg_0, !select(vec3<bool>(!global0.a, any(global0.d.xz), false), !select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, true, global0.d.x), false), (false || global0.a) & false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1093f, 1000f)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, 53u), _wgslsmith_mod_u32(global2.x >> (u_input.b.x % 32u), 4294967295u >> (1u % 32u))), 20u)], _wgslsmith_f_op_f32(-2276f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) + _wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = global4[_wgslsmith_index_u32(~17228u, 29u)];
    global3 = array<f32, 20>();
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1053f, arg_0.x), arg_0.xx)));
    return ~(-_wgslsmith_dot_vec3_i32(min(u_input.d.wwz, vec3<i32>(var_0, 62088i, var_0)), vec3<i32>(8242i, u_input.d.x, var_0)) & ~(~u_input.e));
}

fn func_3() -> u32 {
    global3 = array<f32, 20>();
    global4 = array<Struct_5, 29>();
    let var_0 = vec2<u32>(~abs(u_input.b.x), u_input.b.x);
    let var_1 = !select(vec4<bool>(true, true, true, true), !(!vec4<bool>(global0.d.x, global0.a, false, global0.a)), true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(global0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1888f * 585f) * _wgslsmith_f_op_f32(-global0.e.x)))) < global3[_wgslsmith_index_u32(1u, 20u)], -1164f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1520f, 1691f, -1442f) + global0.e.wzx)))))), vec3<bool>(false, true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.yx), vec2<bool>(global0.d.x, false), global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1326f, global0.b, global0.c.x, -1801f) + vec4<f32>(-334f, -208f, -677f, -1575f)) + _wgslsmith_f_op_vec4_f32(-global0.e))))));
    return var_0.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~global2.x | func_3(), 45893u, 4294967295u), vec3<u32>(_wgslsmith_dot_vec2_u32(select(u_input.b.yw, vec2<u32>(global2.x, global2.x), global0.d.xy), global2.yx), global2.x << (23676u % 32u), 1u));
    let var_1 = Struct_2(Struct_1(!all(select(vec4<bool>(global0.a, true, global0.d.x, false), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false), true)), -609f, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(var_0.x, 20u)])))), _wgslsmith_f_op_f32(124f - 1023f)), !(!select(global0.d, vec3<bool>(true, true, false), vec3<bool>(global0.d.x, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.e.x))), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(arg_2, 20u)])), -1664f, _wgslsmith_f_op_f32(abs(-830f)))), firstTrailingBit(u_input.d.xwz), ~vec2<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 1u))), Struct_1(!global0.d.x, _wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) * _wgslsmith_f_op_f32(trunc(717f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !(!(!global0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-208f, -694f), -3679f, _wgslsmith_f_op_f32(2532f - global3[_wgslsmith_index_u32(3939u, 20u)]), 801f))), global0.d.yy);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(max(var_1.d.e.xxx, _wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(var_1.a.e.wxx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(66019u, 20u)], -2684f, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-1225f, var_1.a.b), _wgslsmith_f_op_f32(floor(var_1.d.c.x)), -284f, global3[_wgslsmith_index_u32(~4294967295u, 20u)]))))));
    var var_3 = select(var_1.b.x, 1i, true);
    global1 = var_0.x | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~max(global2.xww, u_input.b.xzw), select(u_input.b.zwy, u_input.b.zww, any(vec3<bool>(true, true, false)))), min(1u, countOneBits(arg_2)) >> (32485u % 32u));
    return Struct_1(all(vec2<bool>(global0.d.x, !(global0.a && var_1.e.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * var_1.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d.c + global0.e.ywz)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, _wgslsmith_f_op_f32(f32(-1f) * -731f), var_1.a.e.x) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-1233f + 584f), _wgslsmith_f_op_f32(f32(-1f) * -695f)))), vec3<bool>(select(true, false, firstLeadingBit(arg_2) > ~45374u), true & all(select(vec4<bool>(global0.d.x, global0.a, false, var_1.e.x), vec4<bool>(global0.a, global0.d.x, true, false), vec4<bool>(var_1.d.d.x, false, var_1.a.a, false))), 1049f < var_1.a.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.b, vec4<f32>(global3[_wgslsmith_index_u32(99836u, 20u)], -269f, -839f, var_1.d.b)) + vec4<f32>(-979f, -840f, global3[_wgslsmith_index_u32(4294967295u, 20u)], 795f))) + vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_f32(var_1.d.e.x + var_1.a.c.x), _wgslsmith_f_op_f32(-global0.c.x), -1065f)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_2(func_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.e.x)), global3[_wgslsmith_index_u32(1u, 20u)]), -vec2<i32>(~(-1i), func_2(global0.c)), ~func_3()), abs(~vec3<i32>(func_2(vec3<f32>(-108f, -923f, -768f)), u_input.e, 0i)), u_input.b.zx, Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~33917u, 20u)], 776f)) - global3[_wgslsmith_index_u32(_wgslsmith_add_u32(31555u, u_input.b.x), 20u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.xzw) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, 1000f, 702f))) * vec3<f32>(global0.b, 1f, 964f)), select(func_4(vec2<f32>(global0.b, 359f), reverseBits(vec2<i32>(u_input.c, u_input.c)), 1u).d, select(select(vec3<bool>(global0.d.x, false, true), global0.d, true), !global0.d, all(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.a))), true), global0.e), select(global0.d.zy, vec2<bool>(true & (global0.a || true), global0.a), !select(vec2<bool>(false, global0.a), global0.d.yy, !global0.d.yx)));
    global2 = vec4<u32>(global2.x, _wgslsmith_mod_u32(u_input.b.x, 1446u), 0u << (_wgslsmith_div_u32(func_3(), ~(~var_0.c.x)) % 32u), _wgslsmith_mult_u32(0u, 1u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~select(u_input.b.x, 30156u, false), 20u)])) - 159f), global0.e.x, 600f);
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(~(vec4<i32>(56378i, u_input.d.x, u_input.a, u_input.e) ^ vec4<i32>(var_0.b.x, u_input.a, 0i, u_input.e)), firstLeadingBit(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(u_input.e, -42677i, var_0.b.x, 2147483647i)))) << (abs(u_input.b) % vec4<u32>(32u)));
    let var_3 = 695f;
    return Struct_4(vec3<f32>(663f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1122f - var_0.d.b), _wgslsmith_f_op_f32(global0.c.x - global0.b))))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x >> (var_0.c.x % 32u), 4294967295u, global2.x) | 0u, 20u)]), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-709f, global3[_wgslsmith_index_u32(var_0.c.x, 20u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(max(-1492f, _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1548f, var_1.x, global0.d.x)), 242f, global0.b, -994f))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(true, _wgslsmith_div_f32(arg_1.a.x, arg_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)) * global0.c.x), _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * global3[_wgslsmith_index_u32(u_input.b.x, 20u)])))), !(!select(vec3<bool>(false, global0.d.x, true), vec3<bool>(true, global0.a, false), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1208f, 679f, -1000f, -886f) - arg_1.b)));
    global4 = array<Struct_5, 29>();
    global2 = vec4<u32>(arg_2.x, firstLeadingBit(u_input.b.x), abs(1u), _wgslsmith_dot_vec3_u32(firstLeadingBit(global2.wxw), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2.x, 4294967295u, 0u)), select(vec3<u32>(11375u, 11046u, 41781u), vec3<u32>(global2.x, 0u, 4294967295u), false)), max(u_input.b.x, 1u))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.c.zx)) + vec2<f32>(-1049f, 704f)))))));
    global3 = array<f32, 20>();
    return Struct_1(global0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), 507f)), arg_0.a, select(!vec3<bool>(true, var_0.a, true), var_0.d, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1403f, _wgslsmith_f_op_f32(global0.c.x * -422f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(295f * -552f))), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.b.x, 20u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.xz;
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2111f, 1000f, 811f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 1159f, global3[_wgslsmith_index_u32(var_0.x, 20u)])))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.e.yzz)))), global0.e);
    var var_2 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))) * vec2<f32>(800f, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.xy - global0.c.xy))), _wgslsmith_f_op_vec2_f32(-var_1.b.xz)));
    let var_3 = func_5(func_1(), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.e.wzy + _wgslsmith_f_op_vec3_f32(sign(global0.c))) - _wgslsmith_f_op_vec3_f32(max(var_1.b.wwy, vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], -270f, 1726f)))), vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 20u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(global2.x, 20u)], -222f, false)), func_4(global0.e.zw, u_input.d.zx, 1u).e.x)), func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-496f, -327f), global0.c.zx)), select(u_input.d.yz, vec2<i32>(u_input.a, u_input.c), vec2<bool>(global0.d.x, global0.a)), var_0.x).e.x, var_1.a.x)), vec3<u32>(0u, var_0.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, 20065u, u_input.b.x)), _wgslsmith_mult_vec3_u32(global2.wxx, u_input.b.zxz ^ vec3<u32>(var_0.x, u_input.b.x, u_input.b.x)))), vec4<u32>(global2.x, ~max(u_input.b.x, 99289u) << (4294967295u % 32u), var_0.x, ~max(u_input.b.x, global2.x)));
    var var_4 = 1204f;
    let var_5 = all(!var_3.d.xx);
    var var_6 = -u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x & ~firstLeadingBit(7215u), 20u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(var_3.c.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.yw) * var_2.a))), var_3.c.xy));
}

