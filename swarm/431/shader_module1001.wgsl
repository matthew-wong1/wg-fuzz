struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1226f, 286f, -226f, -680f), vec4<f32>(-382f, -1400f, -580f, -263f), vec4<f32>(1000f, 626f, -175f, 882f), vec4<f32>(-649f, -1335f, -497f, -1000f), vec4<f32>(-194f, -242f, -1050f, 1000f), vec4<f32>(-336f, 1365f, 460f, 859f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.d, 0i, 2147483647i, u_input.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d, 1i, 2147483647i, u_input.d.x), vec4<i32>(arg_0.d, arg_0.d, u_input.b, arg_0.d), vec4<i32>(arg_0.d, global0.a.x, -22056i, -2147483647i)))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -38285i, arg_0.d), ~vec3<i32>(global0.a.x, arg_0.d, arg_0.d)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1716f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(round(1760f))), 886f), arg_0);
    global0 = Struct_4(firstLeadingBit(~abs(u_input.d)) & global0.a);
    global1 = array<vec3<bool>, 20>();
    let var_1 = Struct_2(0i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(773f, var_0.b.x)) - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), var_0.c.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1129f - arg_0.a) + _wgslsmith_f_op_f32(trunc(-1735f))) - _wgslsmith_f_op_f32(-arg_0.a)), vec3<u32>(~firstTrailingBit(arg_1.x), arg_0.b.x, 4294967295u), u_input.a.x, _wgslsmith_mult_i32(-1i, reverseBits(_wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(global0.a.x, global0.a.x))))));
    global0 = Struct_4(~global0.a);
    return -508f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_1 {
    global0 = arg_2;
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-978f)))), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(804f, 874f)), _wgslsmith_f_op_f32(f32(-1f) * -525f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1313f, _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(func_3(Struct_1(-1649f, u_input.a, u_input.a.x, u_input.c), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f + -1000f)), var_0.x, arg_0, vec4<bool>((0u | firstTrailingBit(0u)) == ~u_input.a.x, true, !all(global1[_wgslsmith_index_u32(~u_input.a.x, 20u)]), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * -2163f))) - var_0.x), vec3<u32>(u_input.a.x, select(min(u_input.a.x, 4294967295u), u_input.a.x, true), 1u), u_input.a.x, global0.a.x));
    return var_1.e;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = Struct_4(firstTrailingBit(~global0.a));
    global1 = array<vec3<bool>, 20>();
    global1 = array<vec3<bool>, 20>();
    let var_1 = Struct_3(-694f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_sub_vec4_i32(vec4<i32>(~var_0.a.x, _wgslsmith_div_i32(u_input.d.x, arg_0.c.d >> (arg_0.c.c % 32u)), 10329i, -3018i & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 85941i, 22152i), vec3<i32>(global0.a.x, 67201i, arg_0.c.d))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(25673i, arg_0.c.d, -2147483647i, arg_0.a) ^ vec4<i32>(arg_0.a, 12958i, 1i, -24690i), vec4<i32>(var_0.a.x, 2147483647i, arg_0.a, global0.a.x)), vec4<i32>(33052i, _wgslsmith_dot_vec2_i32(var_0.a, global0.a), global0.a.x, ~(-92i)))), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), !(arg_0.c.a >= arg_0.c.a))), arg_0.c);
    var var_2 = true;
    return Struct_4(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a >> (var_1.e.b.xx % vec2<u32>(32u)), ~var_1.c.wx), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.c.xw, var_0.a & var_1.c.xz), _wgslsmith_mult_i32(-global0.a.x, select(var_1.e.d, 1674i, var_1.d.x)))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = func_4(Struct_2(_wgslsmith_dot_vec3_i32(arg_0.xyw, arg_0.zzz), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -986f))), 1343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-187f - 1745f))), func_2(vec4<i32>(22386i, arg_0.x, global0.a.x, u_input.d.x) | firstTrailingBit(vec4<i32>(u_input.d.x, arg_0.x, arg_0.x, -2858i)), global2[_wgslsmith_index_u32(u_input.a.x, 6u)], Struct_4(~u_input.d))));
    var var_0 = vec3<i32>(-2147483647i, arg_0.x, -27838i);
    var_0 = countOneBits(select(arg_0.www << (min(u_input.a, abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)), select(arg_0.www, _wgslsmith_mod_vec3_i32(vec3<i32>(18650i, -5689i, -1i), vec3<i32>(u_input.b, var_0.x, arg_0.x)), true), vec3<bool>(-34838i <= _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -1i, arg_0.x, 15697i), arg_0), !all(global1[_wgslsmith_index_u32(47739u, 20u)]), !any(vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-454f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1271f)) + -102f) * _wgslsmith_f_op_f32(ceil(1f))));
    let var_2 = var_0.x;
    return global0.a.x;
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> Struct_3 {
    let var_0 = func_2((~(-vec4<i32>(global0.a.x, -1i, 6968i, 0i)) >> (~min(vec4<u32>(1u, u_input.a.x, 1u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) & select(vec4<i32>(global0.a.x, firstLeadingBit(arg_0), 2147483647i, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, u_input.b, 9480i), vec4<i32>(-2147483647i, global0.a.x, -36541i, 35843i)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(835f * -1000f))), _wgslsmith_f_op_f32(min(-102f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -853f))))), 1f, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f + 206f))))), Struct_4(max(vec2<i32>(min(arg_0, global0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, -3924i), vec3<i32>(arg_0, -2147483647i, -1563i))), u_input.d)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xwx + vec3<f32>(3352f, 143f, arg_2)) - vec3<f32>(arg_2, _wgslsmith_f_op_f32(exp2(arg_1.x)), -1887f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.xyy))), !select(vec3<bool>(false, false, true), select(global1[_wgslsmith_index_u32(var_0.c, 20u)], vec3<bool>(true, false, true), true), true))));
    let var_2 = Struct_4(_wgslsmith_add_vec2_i32(-vec2<i32>(38041i, _wgslsmith_mod_i32(global0.a.x, -2147483647i)), min(u_input.d, _wgslsmith_add_vec2_i32(global0.a, -vec2<i32>(global0.a.x, 0i)))));
    global2 = array<vec4<f32>, 6>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1505f) * _wgslsmith_f_op_vec2_f32(exp2(var_1.xz))))))));
    return Struct_3(452f, -715f, -_wgslsmith_sub_vec4_i32(~min(vec4<i32>(-18519i, global0.a.x, -1i, -2147483647i), vec4<i32>(2147483647i, -1i, 3938i, global0.a.x)), vec4<i32>(var_2.a.x, var_0.d | -47486i, i32(-1i) * -18611i, 1i)), select(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, !(var_0.b.x >= var_0.c), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec4<bool>(false, true, true, false))), !any(vec2<bool>(true, true))), func_2(firstLeadingBit(max(vec4<i32>(-10878i, arg_0, 19084i, u_input.c), vec4<i32>(-1i, var_0.d, arg_0, -8718i)) ^ firstLeadingBit(vec4<i32>(1i, 2147483647i, var_0.d, var_0.d))), vec4<f32>(1202f, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-675f - var_0.a)), -324f), Struct_4(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global0.a.x), vec2<i32>(global0.a.x, -49403i), var_2.a))));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<u32>) -> i32 {
    global1 = array<vec3<bool>, 20>();
    global0 = func_4(Struct_2(0i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-531f, 520f, _wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, true))))), func_5(1i, vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(914f, -429f)), _wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, arg_1.e.b, arg_1.e.b.x, arg_1.c.x), arg_2))), arg_1.e.a).e));
    var var_0 = func_4(Struct_2(reverseBits(-1i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(max(-821f, arg_1.a)), _wgslsmith_f_op_f32(arg_1.b + arg_1.e.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.e.a, arg_1.b, arg_1.b))))), arg_1.e));
    var var_1 = any(!vec2<bool>(arg_0.x, true));
    var var_2 = func_5(~countOneBits(2147483647i), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(1384f, arg_1.b))), arg_1.a, -953f, arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-539f)), _wgslsmith_f_op_f32(-372f + arg_1.b)))));
    return ~func_2(arg_1.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.e.a), _wgslsmith_f_op_f32(sign(arg_1.e.a))), var_2.e.a, -220f, _wgslsmith_f_op_f32(trunc(-933f))), Struct_4(-(vec2<i32>(var_2.c.x, 0i) ^ var_2.c.wz))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(vec4<bool>(true, true, true, true), func_5(func_1(-vec4<i32>(4747i, u_input.c, -1i, 9701i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-265f, 660f, -1135f, -1190f), global2[_wgslsmith_index_u32(u_input.a.x, 6u)]) - global2[_wgslsmith_index_u32(~29199u, 6u)]), func_2(firstTrailingBit(vec4<i32>(-13135i, 11938i, u_input.d.x, -14948i)), vec4<f32>(1042f, 251f, -324f, 1240f), Struct_4(u_input.d)).a), ~firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 42645u, 4436u) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 13263u) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(701f - 168f), 457f) + _wgslsmith_f_op_f32(858f + _wgslsmith_f_op_f32(floor(1000f)))), 1f, 738f), Struct_1(749f, vec3<u32>(_wgslsmith_div_u32(10060u, _wgslsmith_div_u32(u_input.a.x, 1u)), u_input.a.x, func_2(~vec4<i32>(u_input.c, 1i, global0.a.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), func_4(Struct_2(2147483647i, vec3<f32>(1000f, 348f, 1545f), Struct_1(-320f, u_input.a, 19398u, global0.a.x)))).c), 72375u, ~_wgslsmith_mod_i32(68031i & u_input.d.x, u_input.d.x)));
    let var_1 = true;
    let var_2 = func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_0.c.d & (i32(-1i) * -1i), -u_input.d.x, global0.a.x ^ var_0.c.d, -22438i), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0.a.x, u_input.b, var_0.c.d), 15974i, u_input.d.x, _wgslsmith_mult_i32(1i, 0i)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-56838i, 1i, var_0.c.d, var_0.a), vec4<i32>(var_0.a, u_input.d.x, var_0.a, var_0.c.d)), -vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, -12362i)))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(702f + _wgslsmith_f_op_f32(f32(-1f) * -630f)))), -324f, 717f), func_4(Struct_2(10651i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.a, 529f, var_0.b.x), var_0.b, global1[_wgslsmith_index_u32(22212u, 20u)]))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(var_0.c.c, u_input.a.x, u_input.a.x)), firstTrailingBit(43307u), _wgslsmith_sub_i32(33988i, 2147483647i)))));
    var_0 = Struct_2(i32(-1i) * -2147483647i, var_0.b, Struct_1(var_0.c.a, max(~vec3<u32>(4294967295u, 27393u, 47076u), vec3<u32>(_wgslsmith_mod_u32(var_0.c.c, 60502u), 1u, 1u)), ~(~_wgslsmith_div_u32(var_0.c.b.x, u_input.a.x)), select(firstTrailingBit(-49042i), _wgslsmith_add_i32(~(-23762i), min(u_input.d.x, 2147483647i)), var_1 & select(var_1, false, var_1))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(820f)) * _wgslsmith_f_op_f32(abs(226f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b.x, var_0.c.a), -867f)), func_2(min(select(vec4<i32>(34155i, global0.a.x, global0.a.x, 2147483647i), vec4<i32>(-32163i, u_input.b, -2295i, var_0.a), vec4<bool>(var_1, var_1, var_1, false)), ~vec4<i32>(-22570i, -33496i, -2147483647i, 46733i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(60242u, 6u)])) * global2[_wgslsmith_index_u32(var_2.b.x, 6u)]), func_4(Struct_2(u_input.d.x, vec3<f32>(var_2.a, var_2.a, 2215f), var_0.c))).a), max(select(reverseBits(vec4<i32>(var_2.d, -67944i, -2147483647i, -1i)), -vec4<i32>(var_2.d, global0.a.x, var_0.c.d, var_0.c.d), all(vec2<bool>(var_1, false))) ^ (vec4<i32>(-1i) * -vec4<i32>(var_2.d, u_input.d.x, u_input.c, -2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, global0.a.x, 2147483647i, 2147483647i), vec4<i32>(var_2.d, -1i, var_0.c.d, 1i), vec4<bool>(var_1, true, false, true)), -vec4<i32>(var_2.d, -2147483647i, -2147483647i, u_input.b)), vec4<i32>(1i, i32(-1i) * -48911i, -var_0.a, reverseBits(var_0.a)))), !vec4<bool>(true, var_1, true, -2147483647i == func_1(vec4<i32>(-1i, 26110i, u_input.c, var_2.d))), func_5(min(_wgslsmith_dot_vec3_i32(vec3<i32>(12025i, var_0.a, var_2.d), vec3<i32>(u_input.c, -8011i, 1i)) << (4294967295u % 32u), var_2.d), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(min(var_0.c.c, 2636u), 6u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a)))).e);
    global0 = Struct_4(vec2<i32>(-((-2147483647i << (var_3.e.b.x % 32u)) & var_3.e.d), _wgslsmith_mult_i32(u_input.c, ~4153i)));
    let var_4 = (false & (true | var_3.d.x)) || select(false, select(var_3.d.x, false, select(false, any(vec4<bool>(var_3.d.x, var_3.d.x, var_1, var_3.d.x)), !var_1)), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(countOneBits(select(vec3<i32>(0i, var_2.d, global0.a.x), vec3<i32>(var_2.d, 23312i, u_input.c), vec3<bool>(true, false, false))))), firstTrailingBit(_wgslsmith_mult_vec3_u32(func_5(-28902i, global2[_wgslsmith_index_u32(var_2.c, 6u)], -686f).e.b, ~var_2.b) >> (var_3.e.b % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_2.c, 38377u, countOneBits(u_input.a.x)), reverseBits(var_0.c.b)), var_0.c.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(func_2(var_3.c, global2[_wgslsmith_index_u32(10874u, 6u)], Struct_4(u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.c, var_0.c.c, 1u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 26239u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(643f)))), var_2.a, _wgslsmith_f_op_f32(-2458f + -216f))));
}

