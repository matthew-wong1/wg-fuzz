struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3.a;
    let var_1 = select(vec3<i32>(-u_input.a.x ^ 1i, _wgslsmith_sub_i32(-arg_2.x, select(21035i, arg_2.x, false)), 0i), reverseBits(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(arg_3.a.b.x, 0i, -2147483647i)), vec3<i32>(2042i, var_0.c, 13327i))), global1.zxx) | _wgslsmith_add_vec3_i32(min(vec3<i32>(-1i) * -vec3<i32>(-1i, arg_3.a.c, 1i), ~(-vec3<i32>(u_input.a.x, u_input.b.x, 1i))), _wgslsmith_mod_vec3_i32(countOneBits(select(arg_0, u_input.b.wzw, false)), -var_0.b));
    let var_2 = arg_1;
    var var_3 = ~_wgslsmith_clamp_vec3_i32(u_input.a, firstTrailingBit(var_0.b >> (vec3<u32>(var_0.e, u_input.c.x, arg_3.a.e) % vec3<u32>(32u))), arg_3.a.b);
    var var_4 = any(vec3<bool>(true, any(vec2<bool>(any(vec4<bool>(false, global1.x, true, false)), global1.x)), all(global1.wz)));
    return vec4<bool>(global1.x, true, all(vec3<bool>(true, 120f == _wgslsmith_f_op_f32(-arg_3.a.d.x), true)), select(!select(false, true, all(global1.zyx)), global1.x, any(vec2<bool>(any(global1.zxw), global1.x | global1.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = u_input.c.x;
    global1 = select(!(!select(vec4<bool>(true, global1.x, arg_0.x, global1.x), !vec4<bool>(arg_0.x, arg_0.x, false, false), u_input.c.x != u_input.c.x)), !vec4<bool>(firstLeadingBit(u_input.c.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 60434u)), !(arg_1 < arg_1), false, true), !(!(!func_3(vec3<i32>(u_input.b.x, -8740i, -1i), u_input.b.x, u_input.b.wy, Struct_2(Struct_1(vec3<f32>(arg_1, -1047f, 753f), u_input.a, u_input.a.x, vec4<f32>(1000f, -1800f, -406f, arg_1), 1u))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(131f, -860f, arg_1))) + vec3<f32>(_wgslsmith_f_op_f32(1000f - -1082f), 947f, _wgslsmith_f_op_f32(arg_1 * -297f))), u_input.a, firstLeadingBit(-6892i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, -2142f, arg_1))), vec4<f32>(arg_1, 674f, arg_1, -183f)))), _wgslsmith_add_u32(~4294967295u, 45633u) << (select(4294967295u, u_input.c.x, arg_0.x) % 32u)));
    global1 = vec4<bool>(!global1.x, false | func_3(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_1.a.b.x, var_1.a.b.x), vec3<i32>(var_1.a.b.x, var_1.a.b.x, u_input.b.x), vec3<i32>(0i, var_1.a.c, var_1.a.c)), u_input.a), -2147483647i, vec2<i32>(max(var_1.a.c, 50684i), ~u_input.b.x), Struct_2(var_1.a)).x, true, true);
    let var_2 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(var_1.a.a.x + -1251f), var_1.a.a.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1392f, 1072f, 183f), var_1.a.d.yxz))))), countOneBits(vec3<i32>(32946i >> (u_input.c.x % 32u), ~2147483647i, ~3451i)), countOneBits(~(-1i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, var_1.a.a.x, -458f))), var_1.a.d)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.e, 86968u), vec2<u32>(1u, 101211u)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> vec2<f32> {
    global1 = vec4<bool>(false, true, (firstLeadingBit(_wgslsmith_mod_i32(arg_0.a.b.x, arg_2.x)) != firstLeadingBit(-arg_2.x)) != true, arg_3 || select(any(select(vec4<bool>(global1.x, arg_3, global1.x, global1.x), vec4<bool>(global1.x, arg_3, true, true), vec4<bool>(arg_3, global1.x, false, false))), true, !(global1.x && global1.x)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1891f) - arg_1);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.yx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, -596f))) * vec2<f32>(-2245f, arg_0.a.a.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.d.zz)));
    let var_2 = firstLeadingBit(countOneBits(_wgslsmith_clamp_i32(arg_0.a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-17467i, -32927i, -2147483647i), arg_2.yzx), i32(-1i) * -1519i))) ^ arg_2.x;
    return _wgslsmith_f_op_vec2_f32(min(arg_0.a.d.wx, _wgslsmith_f_op_vec2_f32(sign(arg_0.a.a.xx))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = global1.x;
    var var_1 = global1.wwy;
    let var_2 = Struct_1(vec3<f32>(-1484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -704f)))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(func_2(global1.xww, -990f).a.b & ~arg_0.ywy, vec3<i32>(u_input.a.x, u_input.a.x, arg_0.x) & ~u_input.b.wyw, ~vec3<i32>(arg_0.x, -1i, arg_3.a.b.x)), _wgslsmith_mult_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(2567i, -1i, 1i))), ~vec3<i32>(u_input.a.x, 0i, u_input.b.x))), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2.x)))), 1112f, _wgslsmith_f_op_f32(arg_2.x - -502f), arg_2.x), 94239u);
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = -_wgslsmith_add_vec4_i32(u_input.b, ~reverseBits(vec4<i32>(-18584i, -2935i, 61610i, u_input.a.x) | u_input.b));
    global0 = array<vec2<u32>, 14>();
    let var_1 = ~(~firstTrailingBit(~vec2<u32>(u_input.c.x, u_input.c.x)));
    let var_2 = ~(~((~vec4<u32>(u_input.c.x, 28710u, 18348u, var_1.x) ^ ~vec4<u32>(58706u, 0u, 8442u, 62735u)) & vec4<u32>(~1u, var_1.x, reverseBits(var_1.x), var_1.x)));
    let var_3 = 4294967295u;
    return func_5(max(_wgslsmith_sub_vec4_i32(-firstLeadingBit(u_input.b), u_input.b), -(~(~var_0))), _wgslsmith_mult_vec4_u32(var_2, vec4<u32>(u_input.c.x, 0u, ~_wgslsmith_add_u32(var_2.x, 0u), var_3)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.yy * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(1320f + 164f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec3<bool>(global1.x, global1.x, global1.x), -746f), arg_0, vec4<i32>(u_input.a.x, -1i, u_input.b.x, 2147483647i), !global1.x)), func_2(global1.xwx, arg_1.x).a.a.zy))), func_2(!select(!vec3<bool>(global1.x, global1.x, false), select(global1.ywz, vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, false)), vec3<bool>(false, global1.x, global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0))))))));
}

fn func_6(arg_0: Struct_2) -> f32 {
    global0 = array<vec2<u32>, 14>();
    global1 = vec4<bool>(true, global1.x, !(-1i < _wgslsmith_mult_i32(arg_0.a.c, u_input.b.x)), false);
    let var_0 = 301f;
    let var_1 = abs(30926i);
    var var_2 = func_1(_wgslsmith_f_op_f32(400f + 269f), vec3<f32>(arg_0.a.d.x, var_0, _wgslsmith_f_op_f32(arg_0.a.d.x * arg_0.a.d.x))).a;
    return -1677f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(false, any(vec4<bool>(true, true, !any(global1.xxx), false)), all(select(!select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, global1.x, global1.x, false)), !select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, true, global1.x, global1.x), false), true)), global1.x);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -110f);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(259f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) - _wgslsmith_f_op_f32(-272f + 928f)))), _wgslsmith_f_op_f32(step(-654f, _wgslsmith_f_op_f32(max(-774f, _wgslsmith_f_op_f32(min(-372f, 679f)))))))));
    var_0 = var_1.x;
    var_0 = _wgslsmith_f_op_f32(func_6(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1817f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -898f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~reverseBits(~vec4<u32>(u_input.c.x, 16837u, 1u, 22249u))), _wgslsmith_clamp_i32(-42359i, -13802i, -_wgslsmith_sub_i32(-1i, ~u_input.b.x)), global0[_wgslsmith_index_u32(u_input.c.x, 14u)] | ~reverseBits(~u_input.c), firstLeadingBit(_wgslsmith_clamp_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(853u, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 11982u), vec3<u32>(6508u, 1u, 1u)), vec3<u32>(1u, u_input.c.x, u_input.c.x) & vec3<u32>(1u, u_input.c.x, 1884u), true), firstTrailingBit(vec3<u32>(0u, u_input.c.x, 15015u)) ^ vec3<u32>(u_input.c.x, u_input.c.x, 30334u), countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c.x, 1u, ~_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 4294967295u), max(41922u, u_input.c.x) & ~u_input.c.x), vec4<u32>(4294967295u, firstLeadingBit(0u), 5875u, ~u_input.c.x) | firstLeadingBit(reverseBits(vec4<u32>(4017u, u_input.c.x, u_input.c.x, u_input.c.x)))));
}

