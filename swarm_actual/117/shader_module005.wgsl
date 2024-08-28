struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_3;

var<private> global2: array<u32, 20>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    global1 = Struct_3(global1.a, global1.b, global1.c);
    var var_0 = ~vec2<i32>(23719i, u_input.c);
    var var_1 = vec2<u32>(1u, u_input.d) & vec2<u32>(~(~global1.c.x), min(4294967295u, _wgslsmith_div_u32(firstTrailingBit(1u), 22341u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1080f, -305f, 583f), vec3<f32>(-590f, 587f, -1416f))))), vec3<f32>(1f, 1f, 1f)))));
    global2 = array<u32, 20>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1991f, _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x), _wgslsmith_f_op_f32(-726f * var_2.a.x)), vec3<f32>(var_2.a.x, 199f, var_2.a.x)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_2(abs(1u) >> ((~(~20992u) ^ ~(~arg_3.x)) % 32u), max(global1.a.zzy, global1.c.xxx), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3())))), select(arg_3.zz, arg_3.xx, arg_0));
    var var_1 = Struct_3(global1.c, true, global1.c);
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -215f);
    var var_4 = Struct_2(_wgslsmith_mult_u32(u_input.d, _wgslsmith_mod_u32(1u, u_input.d)), vec3<u32>(arg_1, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global2[_wgslsmith_index_u32(42139u, 20u)], u_input.a, 4294967295u, global1.c.x)), vec4<u32>(20934u, _wgslsmith_clamp_u32(0u, 55138u, 19500u), _wgslsmith_add_u32(arg_3.x, global1.a.x), 1u)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, u_input.d, var_1.c.x) ^ arg_3, vec3<u32>(var_1.c.x, 10139u, var_1.c.x)))), Struct_1(var_0.c.a), _wgslsmith_sub_vec2_u32(~arg_3.yx >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.a), arg_3.zy) << (countOneBits(var_1.c.wx) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3.yy | abs(~arg_3.xy)));
    return Struct_5(var_4.c.a.x, var_4.c.a.x, Struct_4(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c.x, 34379u, 0u), global1.a) & 0u, vec3<u32>(~var_4.b.x, _wgslsmith_dot_vec2_u32(global1.c.zy, global1.a.zx), arg_3.x), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.c.a + vec3<f32>(-2042f, -792f, 470f))), arg_3.zz), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1652f, var_2.a.x, var_3, 453f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, 1677f, 194f, arg_2) - vec4<f32>(var_4.c.a.x, var_0.c.a.x, 1000f, var_3))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_2.a.x, 1242f, var_4.c.a.x)))))), !(!vec4<bool>(false, false, arg_0.x, arg_0.x))), var_4.c);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool, arg_3: vec2<f32>) -> Struct_5 {
    global1 = Struct_3(abs(~(global1.a >> (~global1.c % vec4<u32>(32u)))), any(arg_0.c.c.yzz), global1.c);
    let var_0 = func_2(select(arg_1.c.xx, !select(arg_1.c.wz, select(vec2<bool>(global1.b, true), vec2<bool>(false, arg_2), vec2<bool>(arg_2, false)), func_2(arg_1.c.yw, u_input.a, arg_3.x, vec3<u32>(100577u, arg_0.c.a.d.x, 633u)).c.c.wx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.d.a.x, 689f))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -209f)))), 52671u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f * 1050f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1122f), _wgslsmith_f_op_f32(arg_0.d.a.x - arg_1.b.x))))), countOneBits(~(~vec3<u32>(global1.c.x, 1u, arg_1.a.d.x)))).c;
    global2 = array<u32, 20>();
    var var_1 = vec4<i32>(28730i, ~(-(-u_input.c & u_input.b)), u_input.c ^ countOneBits(~(-1i)), 0i);
    let var_2 = Struct_3(~global1.a, arg_1.c.x | (~(~4294967295u) < _wgslsmith_add_u32(var_0.a.b.x, ~arg_0.c.a.d.x)), abs(firstLeadingBit((global1.c | global1.a) & (vec4<u32>(20969u, 1u, arg_0.c.a.b.x, var_0.a.a) ^ vec4<u32>(global1.a.x, 4294967295u, 4294967295u, 0u)))));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1347f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.x * arg_3.x))))), _wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(ceil(351f))), arg_1, Struct_1(var_0.a.c.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.b), u_input.c, (~u_input.b | ~u_input.b) | select(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-48382i, -1i)), u_input.c << (4294967295u % 32u), arg_2.a.x > 1587f)), 42379i, ~(~firstTrailingBit(max(-15100i, 5662i))));
    return vec3<f32>(arg_2.a.x, -1000f, _wgslsmith_f_op_f32(-arg_2.a.x));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_5(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -828f))), func_2(select(func_4(Struct_5(1445f, arg_1.a.x, Struct_4(Struct_2(global2[_wgslsmith_index_u32(25034u, 20u)], global1.a.wxy, arg_1, vec2<u32>(global1.c.x, global1.c.x)), vec4<f32>(-655f, 619f, -295f, arg_1.a.x), vec4<bool>(false, true, global0.x, arg_2.x)), Struct_1(vec3<f32>(1237f, arg_1.a.x, arg_0.x))), Struct_4(Struct_2(global1.c.x, global1.c.zxx, Struct_1(vec3<f32>(1567f, arg_1.a.x, 1519f)), global1.c.zy), vec4<f32>(arg_0.x, 709f, 1169f, 1284f), vec4<bool>(false, false, true, false)), arg_2.x, vec2<f32>(arg_1.a.x, arg_0.x)).c.c.zx, select(vec2<bool>(global1.b, true), global0.yw, func_2(arg_2, 14299u, -267f, vec3<u32>(global1.c.x, u_input.d, 0u)).c.c.zw), func_4(func_2(vec2<bool>(true, false), 1285u, -684f, vec3<u32>(1u, u_input.a, global1.c.x)), func_4(Struct_5(-477f, arg_0.x, Struct_4(Struct_2(4294967295u, global1.c.zzx, Struct_1(arg_1.a), global1.a.wz), vec4<f32>(arg_0.x, arg_1.a.x, arg_0.x, arg_0.x), vec4<bool>(global1.b, global1.b, true, global0.x)), arg_1), Struct_4(Struct_2(1u, global1.c.xyw, arg_1, global1.a.wy), vec4<f32>(arg_0.x, arg_1.a.x, -115f, 884f), vec4<bool>(true, arg_2.x, true, false)), false, arg_1.a.xy).c, arg_1.a.x <= -1535f, _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-1230f, -176f))).c.c.xz), global2[_wgslsmith_index_u32(global1.a.x, 20u)], _wgslsmith_f_op_f32(round(arg_1.a.x)), ~global1.c.yxw).c, Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-404f)), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x) * arg_1.a.x))));
    global1 = Struct_3(~global1.a, arg_2.x, global1.c);
    var var_1 = arg_2.x;
    global1 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(33765u, ~var_0.c.a.b.x), global1.c.x, global2[_wgslsmith_index_u32(abs(~1u), 20u)], abs(var_0.c.a.d.x)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~1u), 3033u, select(u_input.d ^ var_0.c.a.a, global1.a.x, true), _wgslsmith_dot_vec2_u32(var_0.c.a.d, countOneBits(global1.c.ww)))), true, global1.c);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b << (~global1.c.x % 32u), u_input.b) >> (~var_0.c.a.d.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.c), abs(u_input.c), 1i, _wgslsmith_div_i32(0i, select(u_input.b, u_input.b, true))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c, 16360i, u_input.b, u_input.b), ~vec4<i32>(u_input.c, -8752i, u_input.b, u_input.c)), countOneBits(vec4<i32>(u_input.c, 26264i, u_input.b, 1i)))));
    return Struct_3(vec4<u32>(select(u_input.e, var_0.c.a.a, !(!arg_2.x)), 0u, var_0.c.a.b.x, func_2(func_2(!var_0.c.c.yx, firstTrailingBit(9360u), _wgslsmith_f_op_f32(step(1591f, 442f)), _wgslsmith_clamp_vec3_u32(global1.a.ywy, vec3<u32>(0u, var_0.c.a.b.x, 75795u), var_0.c.a.b)).c.c.wy, global2[_wgslsmith_index_u32(21082u, 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(select(-518f, arg_1.a.x, global1.b))), vec3<u32>(4294967295u & global1.c.x, 22191u, abs(1u))).c.a.a), true, global1.c);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = vec4<u32>(35959u, 8883u, u_input.a, _wgslsmith_add_u32(45737u, _wgslsmith_add_u32(_wgslsmith_div_u32(~0u, min(1u, 1u)), abs(global1.c.x))));
    let var_1 = func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -883f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 1000f), -1472f))), 1f), Struct_1(_wgslsmith_f_op_vec3_f32(func_5(Struct_3(vec4<u32>(0u, 4204u, global2[_wgslsmith_index_u32(var_0.x, 20u)], 1u), !global1.b, global1.a), func_4(func_2(vec2<bool>(false, false), global1.a.x, -1000f, vec3<u32>(0u, var_0.x, 4294967295u)), func_2(vec2<bool>(false, false), global2[_wgslsmith_index_u32(arg_0.x, 20u)], 1280f, var_0.zwx).c, global1.b, func_2(vec2<bool>(global1.b, global1.b), u_input.a, -216f, arg_0).c.b.zx), func_4(func_2(global0.xw, 0u, 636f, var_0.wwx), Struct_4(Struct_2(arg_0.x, arg_0, Struct_1(vec3<f32>(-1136f, -771f, -334f)), global1.c.yw), vec4<f32>(1156f, -2534f, 292f, -1000f), vec4<bool>(global1.b, true, true, global1.b)), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, 948f))).d))), global0.yy);
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(u_input.c, u_input.b, u_input.c), vec3<i32>(u_input.b, -24016i, -2147483647i)), ~(-vec3<i32>(39070i, 0i, u_input.b))), _wgslsmith_mod_i32(-17805i >> (global1.a.x % 32u), countOneBits(u_input.c)), -2147483647i & u_input.b), vec3<i32>(~(firstLeadingBit(-2147483647i) >> (global2[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 20u)] % 32u)), (_wgslsmith_mod_i32(u_input.b, -3784i) | _wgslsmith_add_i32(u_input.c, 4799i)) & u_input.c, -2147483647i), vec3<i32>(0i, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -1i, u_input.c, u_input.c)), vec4<i32>(u_input.c, 15050i, u_input.c, u_input.c)), -2147483647i));
    var_0 = var_1.a;
    var var_3 = func_2(func_2(!vec2<bool>(func_4(Struct_5(-490f, 427f, Struct_4(Struct_2(12192u, var_0.wwy, Struct_1(vec3<f32>(-748f, -463f, 752f)), var_1.c.wx), vec4<f32>(-1846f, 223f, 1000f, 440f), vec4<bool>(true, var_1.b, global0.x, false)), Struct_1(vec3<f32>(-570f, -1536f, 1650f))), Struct_4(Struct_2(4294967295u, global1.c.wwy, Struct_1(vec3<f32>(1165f, -876f, 343f)), vec2<u32>(665u, 1u)), vec4<f32>(-1083f, -1451f, 1912f, -1000f), vec4<bool>(false, var_1.b, global1.b, false)), false, vec2<f32>(944f, 1000f)).c.c.x, false), _wgslsmith_add_u32(~select(4294967295u, 4294967295u, false), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(0u, 34118u))), _wgslsmith_f_op_f32(floor(-1209f)), _wgslsmith_add_vec3_u32(vec3<u32>(~29138u, 5816u, min(966u, 34175u)), ~(vec3<u32>(11368u, var_1.c.x, var_0.x) & vec3<u32>(4294967295u, global1.c.x, var_0.x)))).c.c.zy, firstLeadingBit(40172u), 1831f, ~(~(~firstLeadingBit(vec3<u32>(4294967295u, 8809u, u_input.a))))).c.a.c;
    return Struct_2(select(min(1u, 0u), 12607u, true), arg_0, func_2(vec2<bool>(true, !global1.b), var_0.x, 1f, ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0.wyy, vec3<u32>(4294967295u, u_input.a, 11315u)), ~var_1.c.yww)).d, var_1.c.zy);
}

fn func_7(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = vec4<f32>(-105f, 710f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(253f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_3.c.a.x)))))), _wgslsmith_f_op_f32(sign(1000f)));
    global0 = vec4<bool>(false, true, any(vec4<bool>(global0.x, global1.b, true && global0.x, any(vec3<bool>(global1.b, global1.b, arg_1.x)))), any(global0.zww));
    var_0 = vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(arg_3.c.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - -1745f)), var_0.x);
    var var_1 = func_4(Struct_5(_wgslsmith_f_op_f32(-func_4(func_2(vec2<bool>(false, arg_1.x), u_input.d, var_0.x, vec3<u32>(1u, u_input.a, global1.a.x)), func_2(vec2<bool>(global1.b, global1.b), arg_0, var_0.x, global1.c.xyx).c, false, func_2(vec2<bool>(true, global0.x), u_input.a, -585f, vec3<u32>(0u, 40478u, u_input.a)).c.b.zw).c.b.x), -924f, Struct_4(arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(211f, arg_3.c.a.x, arg_3.c.a.x, -1036f))) * vec4<f32>(arg_3.c.a.x, arg_3.c.a.x, -1287f, 1072f)), !select(vec4<bool>(global0.x, arg_1.x, true, global0.x), vec4<bool>(true, true, false, global0.x), true)), func_1(~vec3<u32>(arg_0, arg_0, 0u) >> (vec3<u32>(global1.a.x, arg_3.a, 4294967295u) % vec3<u32>(32u))).c), func_4(func_2(func_2(vec2<bool>(global0.x, global1.b), 24268u, var_0.x, vec3<u32>(arg_3.d.x, arg_0, arg_0)).c.c.zz, firstLeadingBit(6785u), 1250f, vec3<u32>(arg_0, ~arg_3.a, 1u)), func_4(func_4(func_4(Struct_5(1055f, 779f, Struct_4(arg_3, vec4<f32>(arg_2.a.x, var_0.x, arg_2.a.x, 1364f), vec4<bool>(false, false, true, global0.x)), Struct_1(vec3<f32>(arg_3.c.a.x, 378f, arg_3.c.a.x))), Struct_4(arg_3, vec4<f32>(-1816f, 152f, var_0.x, arg_3.c.a.x), vec4<bool>(global0.x, arg_1.x, arg_1.x, global0.x)), arg_1.x, vec2<f32>(127f, var_0.x)), Struct_4(Struct_2(23206u, vec3<u32>(26056u, 1u, 0u), Struct_1(vec3<f32>(-1008f, -912f, var_0.x)), vec2<u32>(arg_3.b.x, global2[_wgslsmith_index_u32(0u, 20u)])), vec4<f32>(-1566f, -1010f, -253f, 1934f), vec4<bool>(global0.x, true, global1.b, false)), true, vec2<f32>(var_0.x, -632f)), func_2(vec2<bool>(false, true), ~global2[_wgslsmith_index_u32(1u, 20u)], 1000f, vec3<u32>(arg_0, 33680u, 17722u)).c, (4294967295u | u_input.e) <= arg_3.d.x, vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -1128f), _wgslsmith_f_op_f32(min(-677f, var_0.x)))).c, ((u_input.c << (3054u % 32u)) & u_input.b) >= u_input.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.zy + vec2<f32>(-819f, 1282f))), _wgslsmith_f_op_vec2_f32(arg_2.a.yy * _wgslsmith_f_op_vec2_f32(step(arg_3.c.a.zx, vec2<f32>(var_0.x, -186f)))))).c, _wgslsmith_clamp_i32(-2147483647i, reverseBits(u_input.b), u_input.c & u_input.c) >= 40150i, func_4(Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(select(-103f, -450f, global0.x)), func_2(func_2(arg_1, arg_3.a, -1784f, vec3<u32>(global1.c.x, 4294967295u, global1.c.x)).c.c.ww, ~arg_3.b.x, var_0.x, ~vec3<u32>(arg_0, 0u, global2[_wgslsmith_index_u32(arg_0, 20u)])).c, arg_2), func_4(func_4(Struct_5(var_0.x, arg_3.c.a.x, Struct_4(Struct_2(u_input.e, vec3<u32>(3447u, 29912u, 65424u), arg_2, vec2<u32>(arg_0, arg_3.b.x)), vec4<f32>(546f, -304f, 1000f, arg_2.a.x), vec4<bool>(false, false, global1.b, true)), Struct_1(vec3<f32>(arg_2.a.x, 879f, arg_3.c.a.x))), func_2(vec2<bool>(arg_1.x, false), 4294967295u, -1000f, vec3<u32>(1u, arg_0, arg_0)).c, u_input.c <= 45696i, arg_2.a.zy), func_2(!global0.zy, arg_0, -573f, _wgslsmith_clamp_vec3_u32(arg_3.b, vec3<u32>(global2[_wgslsmith_index_u32(4960u, 20u)], 36119u, arg_0), arg_3.b)).c, true, arg_2.a.zx).c, false, func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 44574u), reverseBits(vec3<u32>(0u, 45692u, global2[_wgslsmith_index_u32(59861u, 20u)])))).c.a.yy).c.b.ww).c;
    let var_2 = true;
    return _wgslsmith_f_op_f32(-arg_3.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-273f, -1000f) - -929f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(1u, global0.zx, Struct_1(vec3<f32>(-1182f, -712f, -1723f)), func_1(~vec3<u32>(global1.c.x, 38941u, 4294967295u)))), _wgslsmith_f_op_f32(trunc(-275f))), func_2(!global0.xw, global2[_wgslsmith_index_u32(26441u | global2[_wgslsmith_index_u32(global1.a.x, 20u)], 20u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1906f)))), global1.c.xwz).c, func_1(global1.a.xyy | global1.a.xxx).c);
    var var_1 = global1.c.x <= global2[_wgslsmith_index_u32(44830u, 20u)];
    var var_2 = _wgslsmith_clamp_vec2_u32(var_0.c.a.b.yz, abs(select(vec2<u32>(var_0.c.a.d.x, global1.c.x), global1.c.xw, false && global0.x)) >> ((~global1.a.yy >> (firstLeadingBit(global1.c.xy) % vec2<u32>(32u))) % vec2<u32>(32u)), global1.c.zw & vec2<u32>(global2[_wgslsmith_index_u32(~func_6(var_0.d.a.zz, Struct_1(vec3<f32>(-489f, -151f, 1445f)), var_0.c.c.yx).c.x, 20u)], abs(_wgslsmith_add_u32(54383u, global1.c.x))));
    let var_3 = Struct_1(vec3<f32>(var_0.d.a.x, -368f, _wgslsmith_f_op_f32(-var_0.d.a.x)));
    var var_4 = vec4<f32>(var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(func_6(vec2<f32>(var_0.d.a.x, var_3.a.x), var_0.d, var_0.c.c.wx), Struct_5(-463f, var_3.a.x, Struct_4(Struct_2(u_input.e, var_0.c.a.b, var_3, var_0.c.a.d), vec4<f32>(var_3.a.x, 472f, var_0.b, var_3.a.x), vec4<bool>(var_0.c.c.x, true, global1.b, true)), var_3), var_0.d)).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -897f) - var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * _wgslsmith_f_op_f32(func_7(1u, vec2<bool>(global0.x, var_0.c.c.x), var_0.c.a.c, var_0.c.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a.x)) - 1096f))), var_3.a.x);
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    var var_5 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 20u)] >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(51865u, global1.c.x)), vec2<u32>(0u, max(1u, 67534u))) % 32u), abs(~vec3<u32>(0u, ~u_input.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 20u)] & 42927u)), var_3, vec2<u32>(abs(_wgslsmith_div_u32(var_2.x, 37607u) << (abs(0u) % 32u)), ~_wgslsmith_mod_u32(~0u, abs(4397u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(countOneBits(min(vec2<i32>(0i, u_input.b), countOneBits(vec2<i32>(u_input.b, 56041i)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.c, 1i), ~abs(vec2<i32>(-1i, 1i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1224i, u_input.c), vec2<i32>(u_input.c, -16444i)))), 2147483647i, vec3<u32>(14672u, global1.a.x, min(21345u, (var_0.c.a.b.x ^ 1u) & (1101u | global1.c.x))));
}

