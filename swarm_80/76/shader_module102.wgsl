struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(26367u, 4496u, 12714u), vec4<u32>(49529u, 0u, 4294967295u, 4294967295u), vec4<f32>(1221f, -1085f, 387f, 1774f), -317f, -1289f);

var<private> global3: vec3<u32> = vec3<u32>(0u, 1u, 1u);

var<private> global4: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<i32> {
    global0 = Struct_3(vec4<i32>(arg_0.b.b.x, abs(arg_2.x >> (global3.x % 32u)), 2147483647i, abs(_wgslsmith_mult_i32(arg_2.x, -global0.b.b.x))), Struct_2(Struct_1(vec3<u32>(arg_0.b.a.b.x << (4294967295u % 32u), max(arg_3.b.x, 0u), firstLeadingBit(arg_3.a.x)), ~vec4<u32>(global2.b.x, global2.a.x, global3.x, 11997u), vec4<f32>(_wgslsmith_div_f32(-269f, 200f), _wgslsmith_f_op_f32(global2.e * arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(exp2(global0.b.a.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1067f)))), -783f), global0.b.b), _wgslsmith_clamp_vec3_i32(-min(~arg_2, firstLeadingBit(vec3<i32>(-42113i, -32996i, arg_2.x))), vec3<i32>(-select(global0.b.b.x, -26522i, global1.x), select(-2147483647i, -7528i, all(arg_0.d.xz)), -1i), arg_2));
    global2 = arg_0.c;
    global4 = ~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b.b.x, 0i, -13396i), _wgslsmith_add_vec3_i32(max(-vec3<i32>(u_input.b.x, -37799i, global0.a.x), vec3<i32>(u_input.b.x, -39635i, u_input.b.x)), reverseBits(arg_2)));
    var var_0 = select(arg_0.d.x, any(arg_0.d), select(any(select(select(vec2<bool>(arg_0.d.x, true), global1.wz, arg_0.d.ww), global1.wz, select(vec2<bool>(global1.x, arg_0.d.x), vec2<bool>(false, arg_0.d.x), arg_0.d.x))), arg_0.d.x, ~54836u < arg_3.a.x));
    var_0 = true;
    return vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -2147483647i >> (0u % 32u)), arg_2.x), _wgslsmith_div_i32(min(global0.b.b.x, arg_2.x), min(2147483647i, -48975i)) & reverseBits(-arg_2.x));
}

fn func_2() -> vec4<i32> {
    let var_0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(u_input.b.x, 46715i) ^ global0.c.xz, vec2<bool>(global1.x, global1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), func_3(Struct_4(global0.b.a.c.zw, global0.b, global0.b.a, vec4<bool>(global1.x, true, global1.x, true), global0.b.a.b), global0.b.a.c.yxw, global0.c, global0.b.a))), -1i, 1i, countOneBits(-19214i));
    let var_1 = vec2<f32>(global0.b.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1413f))));
    global3 = countOneBits(global0.b.a.a) >> (firstTrailingBit(~firstTrailingBit(~vec3<u32>(global2.a.x, global0.b.a.b.x, u_input.e))) % vec3<u32>(32u));
    let var_2 = ~(~reverseBits(~vec2<u32>(global2.b.x, 42549u)));
    let var_3 = Struct_3(firstTrailingBit(vec4<i32>(var_0.x, _wgslsmith_add_i32(var_0.x << (70737u % 32u), min(global0.c.x, 6467i)), global0.b.b.x, _wgslsmith_mod_i32(5700i, 2147483647i) << ((global3.x << (4294967295u % 32u)) % 32u))), Struct_2(global0.b.a, func_3(Struct_4(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(var_1.x, var_1.x), false)), Struct_2(Struct_1(global2.b.wxw, global0.b.a.b, vec4<f32>(global0.b.a.e, -464f, global2.e, 462f), 365f, -147f), global0.a.yw), global0.b.a, vec4<bool>(false, false, global1.x, global1.x), global2.b << (global0.b.a.b % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.a.e, 307f, global2.c.x)))), var_0.wzz, global0.b.a)), vec3<i32>(max(2147483647i, -8059i), firstLeadingBit(14431i), abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, var_0.x, 33089i), vec3<i32>(0i, 0i, 0i)))));
    return ~global0.a;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    global4 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-arg_3.c.x, ~_wgslsmith_add_i32(2147483647i, -3748i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -2147483647i, 2147483647i), vec3<i32>(global0.b.b.x, arg_1, global0.a.x))), _wgslsmith_dot_vec4_i32(func_2(), arg_3.a)), -arg_0.b.b.x));
    let var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(326f))), 803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1267f))), -660f) - arg_3.b.a.c);
    let var_2 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec3_i32(select(arg_3.c, vec3<i32>(arg_2.b.x, 2147483647i, -16047i), true), global0.a.zzw), abs(-1i)), -firstTrailingBit(-arg_3.c.yx), !vec2<bool>(var_1.x <= -558f, 33215u <= global2.b.x)), vec2<i32>(-(~u_input.a >> (0u % 32u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(arg_2.b.x), 1i), min(arg_0.b.b.x, _wgslsmith_dot_vec3_i32(arg_3.c, vec3<i32>(arg_0.b.b.x, arg_2.b.x, arg_2.b.x))))));
    global3 = _wgslsmith_mult_vec3_u32(global0.b.a.b.wwx, min(firstLeadingBit(global0.b.a.a), _wgslsmith_div_vec3_u32(global0.b.a.a, vec3<u32>(4294967295u, u_input.c, arg_0.b.a.b.x) << (_wgslsmith_add_vec3_u32(global2.b.ywz, vec3<u32>(global2.b.x, 28542u, global3.x)) % vec3<u32>(32u)))));
    return !global1.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_4(global2.c.xx, Struct_2(global0.b.a, _wgslsmith_mult_vec2_i32(-(~global0.a.ww), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.b.b.x), -global0.c.xx))), global0.b.a, select(select(!select(vec4<bool>(false, arg_1, global1.x, false), vec4<bool>(global1.x, arg_1, false, arg_1), arg_1), select(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, arg_1, arg_1, false)), !vec4<bool>(arg_1, global1.x, true, true), select(vec4<bool>(global1.x, true, false, arg_1), vec4<bool>(true, true, false, global1.x), arg_1)), all(vec2<bool>(arg_1, false))), !vec4<bool>(false, all(vec3<bool>(false, true, false)), global1.x, true), any(vec4<bool>(!arg_1, true, !global1.x, true))), vec4<u32>(abs(global3.x), _wgslsmith_mod_u32(global3.x, ~_wgslsmith_clamp_u32(global2.b.x, 57225u, 43406u)), 1u, 1u));
    let var_1 = Struct_3(_wgslsmith_sub_vec4_i32((global0.a | (vec4<i32>(u_input.a, u_input.a, 1i, u_input.b.x) | vec4<i32>(u_input.a, 0i, global0.c.x, 5039i))) << ((~vec4<u32>(global3.x, global0.b.a.a.x, 9710u, 0u) >> ((global2.b ^ vec4<u32>(global3.x, global0.b.a.a.x, global0.b.a.a.x, 52203u)) % vec4<u32>(32u))) % vec4<u32>(32u)), max(min(reverseBits(global0.a), firstTrailingBit(global0.a)), global0.a)), Struct_2(Struct_1(vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.e, 4294967295u, 4294967295u), var_0.b.a.a.x), firstTrailingBit(select(vec4<u32>(19937u, 9892u, global2.b.x, global3.x), vec4<u32>(1u, var_0.e.x, 4294967295u, 0u), arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1565f, -518f, 900f, global0.b.a.e)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(global0.b.a.d))), vec2<i32>(firstLeadingBit(var_0.b.b.x), global0.c.x) | _wgslsmith_mult_vec2_i32(var_0.b.b, ~vec2<i32>(41147i, 2147483647i))), ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.b.b.x, u_input.a), ~var_0.b.b.x), i32(-1i) * -global0.b.b.x, u_input.b.x));
    global3 = _wgslsmith_sub_vec3_u32(~global0.b.a.a, _wgslsmith_clamp_vec3_u32(~(~global0.b.a.b.xyy), ~(~select(vec3<u32>(4294967295u, 1u, u_input.d), vec3<u32>(4294967295u, var_0.e.x, var_0.b.a.b.x), vec3<bool>(true, true, false))), ~vec3<u32>(var_1.b.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, var_1.b.a.a.x, u_input.c), var_1.b.a.b), abs(1u))));
    var var_2 = abs(max(~(global2.a.x >> (global2.b.x % 32u)), 4294967295u));
    let var_3 = Struct_2(Struct_1(vec3<u32>(reverseBits(reverseBits(global3.x)), ~(global0.b.a.b.x << (u_input.d % 32u)), ~(1u >> (global3.x % 32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(99095u, global3.x, u_input.e, global0.b.a.a.x), max(var_0.e, var_0.b.a.b)), vec4<u32>(var_0.b.a.b.x, min(global2.a.x, 12111u), u_input.c >> (global0.b.a.a.x % 32u), 4294967295u), ~global2.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-508f, global0.b.a.c.x, _wgslsmith_f_op_f32(var_0.a.x + var_1.b.a.c.x), _wgslsmith_f_op_f32(ceil(1138f))))), _wgslsmith_f_op_f32(step(arg_2.x, 943f)), _wgslsmith_f_op_f32(trunc(584f))), ~var_0.b.b);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.e + var_0.b.a.d))) - _wgslsmith_f_op_f32(f32(-1f) * -756f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.a;
    var var_0 = _wgslsmith_mod_i32(countOneBits(reverseBits(global0.b.b.x)) | global0.b.b.x, abs(global0.c.x));
    let var_1 = global0.b.a;
    let var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(global0.b.a.b.www, vec3<u32>(~global0.b.a.a.x, _wgslsmith_add_u32(global0.b.a.b.x, 103668u) & ~global2.b.x, 1u)), ~global0.b.a.b, global0.b.a.c, _wgslsmith_f_op_f32(-311f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.a.e)) * -1135f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.a.e))), 650f));
    var var_4 = 0i;
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-795f - global2.e), _wgslsmith_f_op_f32(f32(-1f) * -414f)));
    var var_6 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + -627f)), func_1(Struct_4(var_3.c.ww, global0.b, Struct_1(global2.b.wwx, var_3.b, vec4<f32>(-384f, global0.b.a.c.x, -611f, var_3.e), 978f, 1000f), vec4<bool>(global1.x, global1.x, global1.x, true), var_3.b), u_input.a, Struct_2(Struct_1(var_3.b.xxy, global0.b.a.b, vec4<f32>(591f, global2.d, -831f, 257f), global2.c.x, -1940f), vec2<i32>(u_input.b.x, u_input.a)), Struct_3(vec4<i32>(global0.c.x, global0.c.x, u_input.a, u_input.a), Struct_2(global0.b.a, vec2<i32>(0i, 2147483647i)), global0.a.yyx)) & !global1.x, var_3.c.xyw)), 526f), global2.c.xy, vec2<bool>(global1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-select(_wgslsmith_sub_i32(-1i, -50638i), -1i, false), abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, 1i, -41764i), i32(-1i) * -8106i)), global0.c.x, ~(-39985i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1506f, 1330f, global2.d, global2.d), var_3.c), _wgslsmith_f_op_vec4_f32(exp2(global2.c)), false)))), 245f, vec2<i32>(2147483647i, global0.b.b.x));
}

