struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(-17078i, -1i), vec3<i32>(-1i, 26672i, 41454i), vec3<f32>(1000f, -2948f, -623f), 4294967295u, vec2<u32>(33043u, 1u)), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<i32>(-29346i, -1i, -25279i), vec3<f32>(-320f, 187f, 1798f), 4294967295u, vec2<u32>(10947u, 1u)), Struct_1(vec2<i32>(43457i, 11421i), vec3<i32>(0i, -1142i, 47003i), vec3<f32>(2954f, 1061f, -2019f), 4294967295u, vec2<u32>(1u, 4294967295u)), Struct_1(vec2<i32>(-1i, 22312i), vec3<i32>(i32(-2147483648), -2876i, 1i), vec3<f32>(-903f, 831f, -876f), 0u, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<i32>(-46454i, 17929i), vec3<i32>(1i, 2147483647i, -66882i), vec3<f32>(610f, -305f, 613f), 4294967295u, vec2<u32>(1u, 32432u)));

var<private> global2: i32;

var<private> global3: array<f32, 8>;

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(-vec2<i32>(~(-1i), ~2147483647i), abs(~vec3<i32>(-16027i, u_input.d.x, arg_2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1666f - arg_2.c.x) - -133f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(-arg_2.c.x)), 114f), ~18251u | ~(global0.e.x << (4294967295u % 32u)), countOneBits(vec2<u32>(4294967295u, arg_2.e.x))), -12682i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, _wgslsmith_f_op_f32(select(-598f, arg_2.c.x, arg_0)), -448f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global0.d, 8u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global3[_wgslsmith_index_u32(42848u, 8u)], global0.c.x, 160f), vec4<f32>(-275f, arg_2.c.x, global0.c.x, 1115f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.c.x, 2052f), _wgslsmith_f_op_f32(-376f - global0.c.x), global0.c.x, 469f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.x, global0.c.x, -1721f, global3[_wgslsmith_index_u32(global0.e.x, 8u)]))) - vec4<f32>(-314f, global0.c.x, 323f, global0.c.x)))), arg_2);
    var var_1 = Struct_3(arg_2, Struct_1(vec2<i32>(-min(-2147483647i, u_input.d.x), arg_2.a.x), max(global0.b, u_input.d.zxz ^ global0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.c)) * _wgslsmith_f_op_vec3_f32(arg_2.c + global0.c)), 29170u, vec2<u32>(abs(arg_1), ~15083u & (global0.e.x ^ 73012u))), Struct_2(global1[_wgslsmith_index_u32(reverseBits(44493u), 5u)], ~var_0.b, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -993f), _wgslsmith_f_op_f32(670f * 1705f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)), 311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1309f)))), Struct_1(abs(vec2<i32>(-19542i, arg_2.b.x)), arg_2.b, global0.c, global0.e.x, vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(select(global0.c.zx, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(168f, -937f)), -1022f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.yy)))), arg_0)));
    global3 = array<f32, 8>();
    var var_2 = vec2<bool>(true, true && !arg_0);
    var var_3 = Struct_3(Struct_1(abs(_wgslsmith_mult_vec2_i32(var_1.a.b.zz << (u_input.a.xx % vec2<u32>(32u)), min(vec2<i32>(var_1.b.a.x, global0.b.x), vec2<i32>(2147483647i, u_input.c.x)))), vec3<i32>(~0i, firstTrailingBit(_wgslsmith_sub_i32(global0.a.x, global0.a.x)), firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c.x, -282f, -780f)))) + _wgslsmith_f_op_vec3_f32(min(var_0.a.c, vec3<f32>(var_1.c.a.c.x, global0.c.x, global0.c.x)))), ~(~(arg_2.e.x >> (arg_2.d % 32u))), abs(abs(~vec2<u32>(4294967295u, arg_2.d)))), Struct_1(reverseBits(global0.a), ~arg_2.b >> (u_input.a % vec3<u32>(32u)), global0.c, countOneBits(_wgslsmith_sub_u32(~u_input.b, u_input.b ^ 1u)), global0.e), var_1.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c.x, global0.c.x) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-142f, -413f), var_1.c.d.c.yx, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.c.x, global0.c.x)))), true)));
    return 11174u;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = vec2<u32>(29518u, _wgslsmith_clamp_u32(~reverseBits(u_input.a.x), _wgslsmith_add_u32(u_input.b, countOneBits(global0.e.x)), u_input.b));
    global2 = u_input.c.x;
    let var_1 = Struct_1(global0.b.zz, u_input.d.xwx, _wgslsmith_f_op_vec3_f32(-global0.c), func_3(any(vec3<bool>(u_input.c.x > -20750i, select(true, false, true), true)), global0.d, global1[_wgslsmith_index_u32(4736u, 5u)]), vec2<u32>(global0.d, ~(global0.d >> (u_input.a.x % 32u))) << (firstLeadingBit(var_0) % vec2<u32>(32u)));
    let var_2 = Struct_3(Struct_1(var_1.b.yx, countOneBits(var_1.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -279f, _wgslsmith_f_op_f32(sign(1257f))))), 24675u, ~min(vec2<u32>(var_1.d, var_0.x) & vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.d, var_0.x), vec2<u32>(17045u, var_0.x)))), Struct_1(firstTrailingBit(u_input.c >> (~var_1.e % vec2<u32>(32u))), u_input.d.xyx, global0.c, _wgslsmith_div_u32(~0u, var_1.e.x) ^ max(u_input.a.x, 1u), vec2<u32>(_wgslsmith_mult_u32(var_0.x, _wgslsmith_add_u32(u_input.b, global0.d)), var_0.x)), Struct_2(var_1, 2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 1071f), _wgslsmith_div_f32(-1085f, var_1.c.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 0u, 74506u), 8u)]), -472f), global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.b & 0u), 5u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.x, -1555f))) - vec2<f32>(1f, _wgslsmith_f_op_f32(abs(526f))))));
    global1 = array<Struct_1, 5>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(reverseBits(var_2.b.e.x) | _wgslsmith_clamp_u32(0u, var_1.e.x, var_0.x), 8u)], -215f, -1000f), _wgslsmith_f_op_vec3_f32(exp2(global0.c)))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.c.x, 1280f, arg_0.a.c.x, arg_0.a.c.x)))))));
    var var_1 = 2147483647i;
    global4 = true;
    global0 = Struct_1(vec2<i32>(arg_2, u_input.c.x), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, arg_0.b.b.x), ~global0.b.x, _wgslsmith_sub_i32(48365i, 2147483647i)), u_input.d.wwy)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-863f, 2020f)), -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-191f + global3[_wgslsmith_index_u32(4294967295u, 8u)]), 1218f))), _wgslsmith_f_op_vec3_f32(func_2(787f)))), 1u, firstLeadingBit(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(26720u, arg_0.a.d)), u_input.a.xz)));
    var var_2 = ~min(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_1, 21057u, 4294967295u)), ~vec3<u32>(arg_0.a.e.x, 0u, arg_1)), u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a)), vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(90970u, 4743u, 14246u, arg_1), vec4<u32>(0u, arg_1, global0.d, 40893u)), ~arg_0.a.e.x), ~1u));
    return Struct_1(vec2<i32>(-62544i, ~global0.a.x), u_input.d.xxx << (firstLeadingBit((u_input.a >> (u_input.a % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(23947u, var_2.x, global0.d)) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.wyx, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, _wgslsmith_clamp_vec2_u32(var_2.yy, vec2<u32>(1u, 1u), arg_0.c.d.e)), firstLeadingBit(~66177u), _wgslsmith_div_u32(abs(1u), firstTrailingBit(u_input.b)), ~u_input.b), vec4<u32>(63236u ^ ~global0.d, ~global0.e.x, _wgslsmith_mod_u32(abs(arg_0.b.d), 1u), global0.d)), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), u_input.d.xx)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.wzw, global0.b), ~u_input.d.xxx) ^ vec3<i32>(global0.a.x, countOneBits(u_input.d.x), min(12300i, 21875i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, global0.c.x, -606f), global0.c, false)), vec3<f32>(2450f, -327f, -148f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.c)))), u_input.a.x, global0.e), func_1(Struct_3(Struct_1(vec2<i32>(global0.a.x, -23929i), u_input.d.zxx, _wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_div_u32(u_input.a.x, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), global0.e)), global1[_wgslsmith_index_u32(~(~global0.e.x), 5u)], Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(39301u, global0.d), 5u)], -9451i & global0.a.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -864f, global0.c.x, global0.c.x))), global1[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(971u, 8u)], -1157f))), u_input.b, global0.a.x), Struct_2(func_1(Struct_3(Struct_1(u_input.c, global0.b, vec3<f32>(global0.c.x, global3[_wgslsmith_index_u32(u_input.b, 8u)], global0.c.x), 21917u, vec2<u32>(u_input.a.x, 54444u)), Struct_1(global0.a, u_input.d.zyy, global0.c, global0.d, global0.e), Struct_2(global1[_wgslsmith_index_u32(2769u, 5u)], 0i, vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], -1765f, global0.c.x, -900f), Struct_1(vec2<i32>(global0.b.x, -32688i), u_input.d.zwz, vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -1659f, global0.c.x), 66565u, vec2<u32>(1u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(global0.c.xz + vec2<f32>(-884f, 616f))), _wgslsmith_sub_u32(~u_input.b, ~51833u), _wgslsmith_div_i32(~2147483647i, global0.a.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.c.x, global0.a.x), vec3<i32>(u_input.c.x << (global0.d % 32u), _wgslsmith_mod_i32(u_input.c.x, -28757i), global0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global3[_wgslsmith_index_u32(1u, 8u)], -359f, global0.c.x) * vec4<f32>(global0.c.x, global3[_wgslsmith_index_u32(u_input.b, 8u)], global0.c.x, global0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(884f, global0.c.x, global3[_wgslsmith_index_u32(global0.d, 8u)], -1845f) - vec4<f32>(-1332f, global0.c.x, global3[_wgslsmith_index_u32(55469u, 8u)], global0.c.x)))), func_1(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.e.x, global0.e.x), 5u)], func_1(Struct_3(Struct_1(vec2<i32>(global0.b.x, 0i), global0.b, vec3<f32>(global0.c.x, global3[_wgslsmith_index_u32(13678u, 8u)], -1000f), global0.e.x, u_input.a.zy), global1[_wgslsmith_index_u32(u_input.a.x, 5u)], Struct_2(global1[_wgslsmith_index_u32(18190u, 5u)], -2147483647i, vec4<f32>(1996f, -1475f, -1055f, global3[_wgslsmith_index_u32(27843u, 8u)]), global1[_wgslsmith_index_u32(53974u, 5u)]), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], 401f)), 51748u, -1i), Struct_2(Struct_1(vec2<i32>(2147483647i, global0.b.x), vec3<i32>(u_input.d.x, 0i, -20563i), global0.c, u_input.a.x, vec2<u32>(global0.e.x, global0.d)), -1i, vec4<f32>(global0.c.x, 326f, global0.c.x, 2253f), global1[_wgslsmith_index_u32(global0.e.x, 5u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(45271u, 8u)], 1161f))), ~58080u, ~(global0.a.x >> (6562u % 32u)))), global0.c.yy);
    global4 = any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), false)) | any(vec3<bool>(all(vec2<bool>(true, true)), true, true));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(1u) & _wgslsmith_mod_u32(23937u, var_0.c.a.e.x), countOneBits(20872u)), _wgslsmith_div_vec2_u32(max(u_input.a.zz, vec2<u32>(~5221u, abs(8982u))), abs(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, var_0.b.e.x), vec2<u32>(1u, var_0.b.d)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.c.x)));
    var var_3 = var_0.c.d;
    var var_4 = vec3<i32>(global0.b.x, reverseBits(reverseBits(min(min(u_input.c.x, var_3.b.x), -2147483647i))), abs(var_0.a.a.x));
    var var_5 = _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(func_3(true, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 36592u, var_3.e.x, 1u), min(vec4<u32>(28115u, var_1.x, 34105u, var_3.e.x), vec4<u32>(var_1.x, var_0.a.e.x, var_1.x, 39784u))), Struct_1(u_input.c, ~vec3<i32>(global0.b.x, 5726i, -6946i), vec3<f32>(1017f, -1537f, -682f), 23742u, abs(global0.e))) << (_wgslsmith_div_u32(43534u, 4294967295u) % 32u), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(89369u, min(firstTrailingBit(~u_input.a.xx), abs(~min(vec2<u32>(70129u, 0u), var_0.a.e))), vec3<u32>(1u, min(0u, u_input.b ^ func_1(Struct_3(global1[_wgslsmith_index_u32(var_1.x, 5u)], Struct_1(vec2<i32>(1002i, 30713i), vec3<i32>(-2792i, var_0.b.a.x, var_0.a.b.x), var_0.c.a.c, 4294967295u, vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec2<i32>(27693i, var_3.a.x), vec3<i32>(var_3.b.x, 15103i, -1i), global0.c, 14282u, var_3.e), -13208i, var_0.c.c, Struct_1(vec2<i32>(var_3.a.x, global0.a.x), vec3<i32>(var_0.c.b, 11800i, var_3.a.x), global0.c, global0.d, var_0.a.e)), var_3.c.xx), 1u, var_4.x).e.x), _wgslsmith_sub_u32(abs(var_1.x), var_0.c.d.e.x)), var_0.c.d.b.x, var_0.d);
}

