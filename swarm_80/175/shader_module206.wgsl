struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: vec2<f32> = vec2<f32>(-280f, -469f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec4<u32> {
    var var_0 = !global0.x;
    var var_1 = global1.x;
    global0 = !(!vec4<bool>(global0.x != global0.x, any(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, true))), global0.x, global0.x));
    var var_2 = true;
    let var_3 = global1.x;
    return _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(u_input.d), u_input.d, u_input.b, ~firstLeadingBit(select(u_input.d, 10243u, true))), ((~vec4<u32>(1u, 0u, 0u, u_input.d) | ~vec4<u32>(4294967295u, 0u, u_input.d, 16998u)) << ((vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b) | max(vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 30958u, 0u, 0u))) % vec4<u32>(32u))) & firstLeadingBit(vec4<u32>(~0u, u_input.d, 4294967295u, u_input.b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec4<i32> {
    global0 = !vec4<bool>(arg_1 == _wgslsmith_dot_vec3_i32(~u_input.a.yyw, vec3<i32>(1i, arg_1, 13312i) & u_input.a.yyw), any(!select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), global0.x)), !any(vec4<bool>(global0.x, true, global0.x, true)), true);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yz * _wgslsmith_f_op_vec2_f32(-arg_0.yz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(176f, global1.x)) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))) + 207f)));
    let var_0 = select(~(~func_1().yy), vec2<u32>(reverseBits(u_input.b), ~(~(u_input.d | u_input.b))), global0.x);
    var var_1 = Struct_2(Struct_1(u_input.a | ((u_input.a >> (vec4<u32>(u_input.d, var_0.x, 8919u, u_input.d) % vec4<u32>(32u))) & (vec4<i32>(21671i, -2175i, -12664i, -1i) >> (vec4<u32>(u_input.b, u_input.d, 4294967295u, u_input.b) % vec4<u32>(32u)))), firstTrailingBit(u_input.a.x), ~0i, 0i), Struct_1(~reverseBits(~vec4<i32>(arg_1, arg_1, u_input.c, arg_1)), u_input.a.x, 2147483647i, abs(u_input.c)), Struct_1(vec4<i32>(-33361i, u_input.a.x, _wgslsmith_sub_i32(-875i, arg_1), arg_1), max(abs(1i) >> (u_input.d % 32u), countOneBits(~2147483647i)), 49733i, max(~arg_1, abs(-1i)) >> (min(~var_0.x, 0u) % 32u)), arg_1 >= firstLeadingBit(-arg_1), ~1u);
    var var_2 = Struct_3(u_input.a, global0.zyz);
    return _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(firstTrailingBit(~var_2.a), vec4<i32>(-1i) * -var_1.a.a, min(vec4<i32>(arg_1, var_1.b.b, -31391i, 27930i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, -35360i, 0i), u_input.a))), vec4<i32>(1i << (abs(1u << (var_0.x % 32u)) % 32u), _wgslsmith_div_i32(34726i, ~_wgslsmith_div_i32(-52034i, u_input.a.x)), -11227i, _wgslsmith_div_i32(-arg_1 << (0u % 32u), -2147483647i)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-833f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-945f - global1.x)), _wgslsmith_f_op_f32(2714f * _wgslsmith_div_f32(global1.x, -368f))))));
    var var_1 = -1i;
    var var_2 = arg_2;
    let var_3 = Struct_2(Struct_1(u_input.a << (vec4<u32>(u_input.b, ~0u, u_input.b, u_input.b) % vec4<u32>(32u)), i32(-1i) * -37242i, 43036i, -33852i), Struct_1(arg_3.a, firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, -1i, arg_0, 1i), vec4<i32>(2147483647i, 2147483647i, 0i, -28183i)), reverseBits(vec4<i32>(u_input.a.x, -60553i, -42671i, arg_1.x)))), ~arg_2.a.x, countOneBits(_wgslsmith_mult_i32(abs(u_input.c), -65549i))), arg_3, arg_2.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(39651u, u_input.b), ~vec2<u32>(0u, 4294967295u), !arg_2.b.x), vec2<u32>(u_input.b ^ u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.d, u_input.b)))), firstLeadingBit(~(~0u))));
    let var_4 = vec2<u32>(var_3.e, ~max(_wgslsmith_clamp_u32(u_input.d, var_3.e, 75713u), var_3.e) << (4294967295u % 32u));
    return firstTrailingBit(var_4.x) << (var_4.x % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(-u_input.a.x, ~vec3<i32>(1i, u_input.c, reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.zw))), Struct_3(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, -153f), vec3<f32>(-207f, global1.x, -940f), true)), reverseBits(u_input.c)) >> (vec4<u32>(~4687u, 27707u, ~4294967295u, _wgslsmith_mod_u32(u_input.d, 4294967295u)) % vec4<u32>(32u)), global0.wzx), Struct_1(vec4<i32>(~_wgslsmith_mod_i32(u_input.c, -18545i), firstTrailingBit(firstLeadingBit(17588i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), u_input.c | u_input.a.x), reverseBits(~0i)), _wgslsmith_div_i32(u_input.c, ~(u_input.c << (u_input.d % 32u))), -(~(~u_input.c)), select(5987i, -u_input.a.x | func_3(vec3<f32>(360f, 997f, global1.x), 24303i).x, true)));
    global0 = select(select(select(select(!vec4<bool>(global0.x, true, global0.x, true), !vec4<bool>(global0.x, true, global0.x, false), !vec4<bool>(false, false, false, global0.x)), !(!vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, true, true))), !select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), all(vec4<bool>(false, true, global0.x, global0.x))), !(!vec4<bool>(global0.x, true, true, false))), vec4<bool>(all(vec4<bool>(any(vec3<bool>(global0.x, true, true)), false, true, true)), all(select(!global0.yxz, vec3<bool>(false, global0.x, true), true)), true, !(!(u_input.b <= 30962u))), !global0.x);
    var var_1 = Struct_4(Struct_3((select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), u_input.a, global0.x) << (countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.b)) % vec4<u32>(32u))) >> (~abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 42803u)) % vec4<u32>(32u)), global0.zxw));
    global0 = !(!select(select(!vec4<bool>(global0.x, var_1.a.b.x, false, var_1.a.b.x), vec4<bool>(false, true, global0.x, true), false), select(vec4<bool>(true, var_1.a.b.x, true, global0.x), vec4<bool>(false, global0.x, var_1.a.b.x, global0.x), true), select(!vec4<bool>(true, true, var_1.a.b.x, var_1.a.b.x), vec4<bool>(global0.x, global0.x, true, var_1.a.b.x), select(vec4<bool>(var_1.a.b.x, true, false, var_1.a.b.x), vec4<bool>(false, global0.x, var_1.a.b.x, var_1.a.b.x), vec4<bool>(false, global0.x, false, false)))));
    var var_2 = select(!select(vec3<bool>(all(vec4<bool>(var_1.a.b.x, global0.x, var_1.a.b.x, global0.x)), any(vec4<bool>(global0.x, var_1.a.b.x, global0.x, true)), false), select(vec3<bool>(true, global0.x, true), vec3<bool>(true, var_1.a.b.x, global0.x), select(var_1.a.b, var_1.a.b, global0.zyx)), global0.x), !vec3<bool>(any(vec2<bool>(false, true)), true, any(select(vec4<bool>(var_1.a.b.x, var_1.a.b.x, false, var_1.a.b.x), vec4<bool>(global0.x, global0.x, var_1.a.b.x, true), vec4<bool>(false, var_1.a.b.x, var_1.a.b.x, true)))), var_1.a.b);
    return Struct_1(u_input.a, -reverseBits(~func_3(vec3<f32>(1806f, global1.x, -108f), u_input.a.x).x), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), max(44357i, max(u_input.a.x, var_1.a.a.x))), ~6295i), var_1.a.a.x >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(any(global0.wyy), true, any(vec4<bool>(true, select(false, all(vec4<bool>(global0.x, global0.x, true, true)), !global0.x), all(!vec3<bool>(global0.x, true, false)), true)), !(!any(global0.zyx)));
    var var_0 = !any(global0.yz);
    global0 = select(select(!(!select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, false, false, global0.x), global0.x)), !(!(!vec4<bool>(global0.x, false, global0.x, global0.x))), !vec4<bool>(global0.x, global0.x && global0.x, global1.x < global1.x, true)), vec4<bool>(false, true, global0.x, true), !any(vec3<bool>(true && global0.x, global0.x, false)));
    var var_1 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x & ~u_input.c, -9064i, _wgslsmith_sub_i32(max(u_input.a.x, -1i), ~u_input.a.x), firstTrailingBit(u_input.c)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(1i, 0i, u_input.c, u_input.a.x)), u_input.a, u_input.a)), vec3<bool>(true, any(select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), false), vec3<bool>(true, true, true), vec3<bool>(false, global0.x, global0.x))), global0.x));
    let var_2 = vec3<bool>(true, -u_input.a.x > u_input.c, all(!global0.zx));
    var_1 = Struct_3(-(abs(u_input.a >> (vec4<u32>(4294967295u, u_input.d, 4294967295u, 55161u) % vec4<u32>(32u))) | u_input.a), vec3<bool>(!(!(!var_1.b.x)), all(!select(var_1.b, var_1.b, var_1.b.x)), var_1.b.x));
    let var_3 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 14114u, u_input.b << (1u % 32u), u_input.b), vec4<u32>(~u_input.d, 0u, u_input.b, ~u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 24364u), vec4<u32>(u_input.b, 0u, 1u, u_input.b)) ^ vec4<u32>(40604u, u_input.b, u_input.d, u_input.d)) | _wgslsmith_mod_vec4_u32(vec4<u32>(min(u_input.b & 4294967295u, u_input.b), u_input.b, ~firstTrailingBit(u_input.d), ~(~478u)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(70243u, u_input.b, u_input.d, 1u), vec4<u32>(u_input.b, u_input.d, u_input.d, u_input.b)) & func_1()));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(344f))) * _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(i32(-1i) * -29886i, _wgslsmith_dot_vec4_i32(var_4.a, u_input.a), func_3(vec3<f32>(-645f, global1.x, global1.x), -10263i).x, var_4.a.x)), u_input.a));
}

