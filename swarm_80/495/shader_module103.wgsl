struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    return _wgslsmith_add_i32(arg_0.b.x, i32(-1i) * -2147483647i);
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec3<f32> {
    global0 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f - arg_3.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1235f)), _wgslsmith_f_op_f32(max(arg_3.b.x, _wgslsmith_div_f32(arg_3.b.x, 727f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_3.b.x - _wgslsmith_div_f32(450f, 1344f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, arg_3.b.x)), 260f)))));
    let var_1 = reverseBits(arg_3.c.zw);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.b.x, -1688f), arg_3.b.zw));
    global0 = array<Struct_2, 19>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_3.b.wwy, arg_3.b.xzz)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = u_input.d.xw;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_5(vec3<i32>(func_3(Struct_5(u_input.c.zxx, var_0), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false), 32318u), var_0.x | u_input.c.x, var_0.x), ~_wgslsmith_mod_vec2_i32(u_input.c.xx, vec2<i32>(-21638i, 2147483647i))), _wgslsmith_mod_u32(max(~arg_1, 4294967295u), _wgslsmith_mod_u32(min(1u, 9979u), _wgslsmith_add_u32(1u, arg_2))), !(!vec3<bool>(arg_0.x, arg_0.x, false)), Struct_3(~u_input.b & _wgslsmith_sub_u32(4294967295u, 21458u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-130f, -626f, 546f, 1148f), vec4<f32>(940f, -1030f, -190f, 1406f)))), ~vec4<u32>(4294967295u, arg_2, arg_2, 0u) ^ ~vec4<u32>(4294967295u, arg_2, 0u, 71851u), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, arg_2, arg_1, u_input.b), ~vec4<u32>(0u, 79273u, 1u, arg_1)))))));
    global0 = array<Struct_2, 19>();
    var var_2 = select(select(vec3<bool>(true, true || arg_0.x, false), vec3<bool>(-1739f >= _wgslsmith_f_op_f32(var_1.x + var_1.x), arg_0.x, true), arg_0.x), select(select(select(!vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, true), !vec3<bool>(arg_0.x, false, true)), !vec3<bool>(arg_0.x, false, true), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), false)), vec3<bool>(any(!vec4<bool>(false, arg_0.x, true, arg_0.x)), any(arg_0) || arg_0.x, false), vec3<bool>(true, true, !arg_0.x)), vec3<bool>(all(vec2<bool>(arg_0.x, false)), true, select(arg_0.x, true, !arg_0.x & true)));
    let var_3 = select(vec3<bool>(arg_0.x, all(select(select(vec3<bool>(false, false, var_2.x), vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false)), vec3<bool>(arg_0.x, false, true), true)), all(select(vec4<bool>(arg_0.x, false, arg_0.x, false), select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, arg_0.x)), !vec4<bool>(var_2.x, arg_0.x, var_2.x, false)))), !(!(!vec3<bool>(arg_0.x, arg_0.x, true))), vec3<bool>(false, true, true));
    return global0[_wgslsmith_index_u32(~arg_2, 19u)];
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = Struct_3(~1538u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1028f, 1225f, 583f) * vec4<f32>(2416f, 1120f, -450f, -1000f)) + vec4<f32>(-524f, 534f, 1105f, -623f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(737f, 644f, 113f, -1000f) + vec4<f32>(-703f, -671f, 462f, 1376f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1645f, 1084f, -805f, -369f)), arg_2.c.b.b)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -418f))), 728f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2289f, 280f) - _wgslsmith_f_op_f32(1323f + -261f)), -145f), vec4<bool>(true, arg_0, 0u <= (arg_3.x & 4294967295u), false))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(59229u, 4294967295u, arg_3.x, 20075u)), vec4<u32>(4294967295u, arg_2.b.x, _wgslsmith_dot_vec3_u32(arg_3, ~vec3<u32>(4294967295u, 92343u, 37920u)), arg_2.b.x)), _wgslsmith_add_vec4_u32(select(~vec4<u32>(4294967295u, 4294967295u, 39380u, arg_2.b.x), vec4<u32>(u_input.e, ~70268u, ~arg_3.x, ~4294967295u), vec4<bool>(all(arg_2.c.b.b.yw), arg_0, arg_0 | arg_2.c.b.b.x, arg_2.a.b.b.x || false)), ~abs(vec4<u32>(arg_3.x, 4294967295u, 107684u, arg_2.b.x)) >> ((~vec4<u32>(arg_3.x, arg_3.x, 1u, 4294967295u) >> (abs(vec4<u32>(arg_2.b.x, 8250u, 65359u, 4921u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = func_2(func_2(select(!select(vec2<bool>(true, false), arg_2.c.b.b.zx, vec2<bool>(arg_0, false)), arg_2.c.b.b.yz, (-2147483647i & u_input.d.x) < ~(-3077i)), ~_wgslsmith_clamp_u32(0u << (arg_2.b.x % 32u), abs(arg_2.b.x), ~arg_3.x), abs(countOneBits(0u)) & arg_2.b.x).b.b.yx, u_input.b, ~countOneBits(1u));
    let var_2 = true;
    var var_3 = arg_2;
    global0 = array<Struct_2, 19>();
    return countOneBits(~(~(~(~vec2<u32>(arg_3.x, var_0.c.x)))));
}

fn func_6(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = ~abs(~1u) << (countOneBits(~_wgslsmith_sub_u32(33275u, u_input.e)) % 32u);
    global0 = array<Struct_2, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 1820f, arg_0, arg_0))))))));
    var var_2 = Struct_5(max(u_input.c.xwz, vec3<i32>(_wgslsmith_sub_i32(max(u_input.c.x, 0i), -10842i), -_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.c.x)), abs(~u_input.d.wx));
    var var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(func_2(vec2<bool>(true, true), u_input.b, 58363u).b.a, ~vec4<i32>(24149i, u_input.d.x, -17532i, var_2.a.x), _wgslsmith_mod_vec4_i32(u_input.d, abs(vec4<i32>(1i, 50010i, -2147483647i, var_2.b.x)))), ~abs(select(vec4<i32>(1i, var_2.a.x, 9936i, u_input.c.x), vec4<i32>(var_2.b.x, 2147483647i, 19612i, u_input.d.x), all(vec4<bool>(true, true, false, false)))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.d << (~vec4<u32>(39642u, 97320u, var_0, var_0) % vec4<u32>(32u)), -vec4<i32>(u_input.a, -1i, var_2.a.x, u_input.d.x)), _wgslsmith_div_vec4_i32(max(abs(vec4<i32>(-1i, -1i, -10383i, -2147483647i)), select(vec4<i32>(u_input.c.x, -27159i, 37609i, var_2.a.x), vec4<i32>(2147483647i, -2147483647i, var_2.a.x, var_2.a.x), false)), -vec4<i32>(u_input.c.x, 1i, u_input.c.x, -1i) << (~vec4<u32>(arg_1.x, 1u, u_input.b, var_0) % vec4<u32>(32u)))));
    return func_2(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(func_2(vec2<bool>(false, true), u_input.b, 0u).b.b.yw, vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(max(arg_1.x, 65975u) < abs(u_input.e), true)), arg_1.x, 43702u).b;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(u_input.c.xyw, func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1027f, -559f), 1f, true)))), func_5(true, ~_wgslsmith_sub_vec3_i32(u_input.d.xzw, vec3<i32>(u_input.c.x, 17955i, -44721i)), Struct_4(global0[_wgslsmith_index_u32(98020u, 19u)], ~vec3<u32>(81085u, u_input.b, u_input.e), func_2(vec2<bool>(false, arg_0), 4294967295u, u_input.b), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)), ~vec3<u32>(u_input.e, 4294967295u, u_input.b) >> ((vec3<u32>(41306u, 89758u, u_input.b) >> (vec3<u32>(u_input.e, 32712u, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(~u_input.e, 19u)], _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, ~4294967295u, abs(u_input.b)), select(vec3<u32>(u_input.e, u_input.e ^ u_input.e, u_input.e), vec3<u32>(18260u, u_input.e << (19002u % 32u), 43315u), select(true, arg_0, arg_0))), Struct_2(select(select(u_input.d.wxw, var_1.b.c, !var_1.b.b.xww), ~(vec3<i32>(2147483647i, var_1.a.x, 2147483647i) ^ vec3<i32>(-2147483647i, u_input.a, var_1.b.c.x)), vec3<bool>(arg_0 && var_1.b.b.x, arg_0, arg_0)), func_6(1000f, ~vec2<u32>(u_input.b, u_input.e))), vec3<i32>(_wgslsmith_sub_i32(22956i, ~u_input.c.x), ~func_2(vec2<bool>(arg_0, arg_0), 0u, 1u).b.c.x, -2147483647i) & -select(var_1.a, firstLeadingBit(u_input.c.wyz), !var_1.b.b.xxz));
    var_0 = ~abs(min(4294967295u, firstLeadingBit(~u_input.b)));
    global0 = array<Struct_2, 19>();
    return var_2.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(190f, 1000f)) + -1411f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f * 382f)))));
    var var_1 = func_1(!(!all(vec2<bool>(false, false)) | true));
    global0 = array<Struct_2, 19>();
    var var_2 = 69571u;
    let var_3 = !func_6(-1639f, vec2<u32>(~(~39343u), u_input.e)).b.xx;
    var_1 = func_3(Struct_5(vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), min(min(-11005i, 0i), 17816i), func_3(Struct_5(u_input.c.wxy, u_input.c.xz), !vec3<bool>(var_3.x, var_3.x, false), func_2(vec2<bool>(var_3.x, var_3.x), 88881u, u_input.b).b.b, 16222u)), u_input.d.zx), func_2(select(vec2<bool>(var_3.x, -18847i <= u_input.a), vec2<bool>(true, true), var_3), 61829u, ~(~_wgslsmith_clamp_u32(25726u, 0u, u_input.b))).b.b.wyy, vec4<bool>(true, func_6(_wgslsmith_f_op_f32(890f * var_0.x), firstLeadingBit(~vec2<u32>(4294967295u, u_input.e))).b.x, any(vec2<bool>(select(true, true, var_3.x), var_3.x)), true), firstLeadingBit(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(50255u, 25672u, u_input.e, 50452u), vec4<u32>(15004u, 0u, 1100u, 103251u)), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.e)))));
    var var_4 = ~vec4<u32>(abs(u_input.e) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, 30975u), vec3<u32>(u_input.b, u_input.b, 0u)), u_input.b, countOneBits(reverseBits(~u_input.b)), 1u);
    let var_5 = 987f;
    let var_6 = _wgslsmith_mod_i32(func_2(func_6(_wgslsmith_f_op_f32(step(-334f, 1721f)), vec2<u32>(var_4.x, _wgslsmith_mod_u32(var_4.x, 18357u))).b.yy, var_4.x, u_input.e).a.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u | abs(firstTrailingBit(var_4.x) >> (4294967295u % 32u)), 2147483647i, max(select(reverseBits(vec4<u32>(29792u, var_4.x, 4294967295u, u_input.b) << (vec4<u32>(1u, 0u, var_4.x, 51576u) % vec4<u32>(32u))), ~max(vec4<u32>(36774u, u_input.b, u_input.e, u_input.b), vec4<u32>(var_4.x, 72961u, 9812u, var_4.x)), var_3.x), ~(abs(vec4<u32>(113280u, 43094u, 0u, u_input.b)) >> (~vec4<u32>(var_4.x, 1u, u_input.e, 13401u) % vec4<u32>(32u)))), abs(max(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.xw, vec2<i32>(-2147483647i, 0i)), vec2<i32>(u_input.a, var_6)), -vec2<i32>(19939i, u_input.a))));
}

