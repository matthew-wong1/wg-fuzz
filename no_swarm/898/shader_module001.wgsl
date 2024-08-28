struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(67621u, 47351u, 22627u, 83691u), vec4<u32>(0u, 39058u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 20732u), vec4<u32>(1u, 4294967295u, 10640u, 20992u), vec4<u32>(21545u, 4294967295u, 4850u, 8667u), vec4<u32>(19570u, 4294967295u, 31978u, 0u), vec4<u32>(6054u, 0u, 1u, 37532u), vec4<u32>(42357u, 56288u, 17674u, 0u), vec4<u32>(12014u, 1u, 0u, 1u), vec4<u32>(0u, 9616u, 92099u, 40091u), vec4<u32>(63944u, 51087u, 34361u, 1u), vec4<u32>(0u, 1u, 4294967295u, 8234u), vec4<u32>(1u, 0u, 0u, 44995u), vec4<u32>(13780u, 0u, 1u, 78512u), vec4<u32>(4294967295u, 20580u, 858u, 0u), vec4<u32>(1u, 12601u, 1u, 49052u), vec4<u32>(15016u, 49623u, 1u, 1u), vec4<u32>(22903u, 0u, 37333u, 4294967295u), vec4<u32>(19482u, 81237u, 33228u, 4294967295u), vec4<u32>(42087u, 35391u, 2620u, 0u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    global1 = array<vec4<u32>, 21>();
    global1 = array<vec4<u32>, 21>();
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f + 351f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1062f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -633f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global1 = array<vec4<u32>, 21>();
    global1 = array<vec4<u32>, 21>();
    global0 = -abs(min(~(-1i), arg_0.x) ^ 2147483647i);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(978f - 1563f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(2321f)), -907f)), -1740f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(min(308f, -1630f))))));
    var var_1 = abs(firstTrailingBit(_wgslsmith_mod_u32(reverseBits(~u_input.a), 1u)));
    return any(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, all(vec2<bool>(true, false))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !(u_input.b.x < 40303u)), vec3<bool>(all(vec2<bool>(true, true)), true, true && any(vec4<bool>(false, true, false, false)))));
}

fn func_3() -> u32 {
    var var_0 = min(abs(_wgslsmith_dot_vec2_u32(u_input.b.wy, reverseBits(vec2<u32>(63764u, u_input.d.x)))) >> (~(u_input.a << (1u % 32u)) % 32u), 4294967295u);
    var_0 = abs(abs(abs(_wgslsmith_sub_u32(firstTrailingBit(u_input.c), reverseBits(26827u)))));
    global1 = array<vec4<u32>, 21>();
    global0 = -1i;
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i << (0u % 32u), 1i, 14452i, _wgslsmith_add_i32(37540i, -1i)) & (select(vec4<i32>(-2147483647i, -2147483647i, -14594i, -2147483647i), vec4<i32>(-21894i, 2147483647i, -10816i, -1i), vec4<bool>(false, false, true, true)) & vec4<i32>(2147483647i, 0i, 1i, -3392i)), vec4<i32>(_wgslsmith_add_i32(reverseBits(-1i), -7993i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -991i, 57285i), vec3<i32>(-30819i, 19447i, 0i), true), vec3<i32>(-3706i, 2147483647i, 2147483647i)), firstTrailingBit(_wgslsmith_div_i32(-27486i, 2147483647i)), -18426i)) << (~27468u % 32u);
    return u_input.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(floor(arg_2.a))))))), vec3<bool>(all(vec4<bool>(true, any(arg_2.b.zx), true, true)), -558f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.x)) + _wgslsmith_div_f32(456f, -203f)), true), arg_1.c << (~vec2<u32>(~arg_1.c.x, ~4294967295u) % vec2<u32>(32u)));
    let var_2 = true;
    let var_3 = 23602u;
    let var_4 = var_1.a.zy;
    return any(arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(26372i, 9484i), vec2<i32>(-32087i, -30890i)), ~vec2<i32>(-2147483647i, 25136i))) ^ ~(~firstTrailingBit(-1i)));
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(57262u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(vec2<i32>(-22360i, 1i))), vec2<u32>(4294967295u, ~func_3())), Struct_1(vec3<f32>(1f, 1f, 1f), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), true), u_input.b.yy ^ _wgslsmith_mod_vec2_u32(vec2<u32>(108836u, u_input.c), select(u_input.d.xx, vec2<u32>(u_input.a, 79178u), false))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, true), true), abs(u_input.d.yx)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1936f, 1433f, 816f), vec3<f32>(300f, 788f, -1172f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1409f, -1188f, 956f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-709f, -1226f, 632f)))))), select(vec3<bool>(true, false, var_0 || true), vec3<bool>(true, all(vec3<bool>(var_0, var_0, var_0)), !any(vec3<bool>(var_0, true, false))), true), u_input.b.zx);
    var var_2 = var_1.a.zz;
    let var_3 = var_1.b.x;
    global0 = -2610i;
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(4294967295u, u_input.b.x, 45413u, 4294967295u)), u_input.b) >> (_wgslsmith_clamp_vec4_u32(select(~u_input.d, vec4<u32>(1u, var_1.c.x, var_1.c.x, 0u), vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x)), u_input.d, global1[_wgslsmith_index_u32(50714u, 21u)]) % vec4<u32>(32u)), countOneBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(global1[_wgslsmith_index_u32(var_1.c.x, 21u)]), ~u_input.d) & _wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.x, 7110u, var_1.c.x, 0u), vec4<u32>(u_input.b.x, 0u, u_input.d.x, u_input.b.x) >> (global1[_wgslsmith_index_u32(4294967295u, 21u)] % vec4<u32>(32u)))));
    var_2 = var_1.a.xx;
    var var_5 = var_1.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 513f))), -326f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-438f, var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zy))))), -vec3<i32>(1i, 1i, 1i) & vec3<i32>(firstTrailingBit(~0i), ~(-8746i), ~(1i >> (var_1.c.x % 32u))));
}

