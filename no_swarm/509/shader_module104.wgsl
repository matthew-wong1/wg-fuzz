struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(14018u, 67563u, 4294967295u), vec3<u32>(0u, 10404u, 4294967295u), vec3<u32>(23427u, 0u, 3973u), vec3<u32>(64845u, 43996u, 39136u), vec3<u32>(47642u, 25819u, 0u), vec3<u32>(3737u, 0u, 1u), vec3<u32>(55796u, 65512u, 4294967295u), vec3<u32>(69011u, 16353u, 1u), vec3<u32>(1u, 26838u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(55065u, 2925u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = !(arg_0 > _wgslsmith_dot_vec2_u32(u_input.a.ww & vec2<u32>(20304u, u_input.a.x), ~u_input.a.xz)) | any(!vec2<bool>(any(vec3<bool>(true, true, false)), true));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(288f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-997f + -291f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) * _wgslsmith_f_op_f32(abs(-860f))) + 271f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -207f))), 541f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) + 830f), -451f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, 442f, 370f, 1111f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, 1000f, -1001f, 1631f))), vec4<f32>(199f, _wgslsmith_f_op_f32(-1000f + 1215f), 1000f, _wgslsmith_f_op_f32(step(-591f, -683f))))))));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1000f, 1114f, 1000f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -145f, var_1.x, 3302f))))))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(12000u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~(~39571u), ~(~u_input.a.x)), _wgslsmith_mult_u32(arg_0, max(4294967295u, 0u)) << (((arg_0 << (12430u % 32u)) ^ arg_0) % 32u)), 21u)], Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), firstTrailingBit(u_input.a.xz)) & u_input.a.wz, ~(~vec2<i32>(-2147483647i, -2147483647i)), 0u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x), true)))), var_1.x));
    var var_3 = !(2147483647i >= var_2.a.b.x);
    return ~1u;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a.x;
    var_0 = 1u;
    var_0 = _wgslsmith_mult_u32(1u, reverseBits(1u) & ~(40761u << ((u_input.a.x << (u_input.a.x % 32u)) % 32u)));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), -max(_wgslsmith_sub_vec2_i32(vec2<i32>(6336i, 17808i), vec2<i32>(-46683i, 1i)), firstLeadingBit(vec2<i32>(2147483647i, 0i))), func_3(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 59141u), 0u)), -1232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(abs(577f))) * _wgslsmith_f_op_f32(f32(-1f) * -755f))), Struct_1(~(vec2<u32>(35939u, u_input.a.x) & (u_input.a.wx & vec2<u32>(4294967295u, u_input.a.x))), firstTrailingBit(vec2<i32>(min(1664i, 2147483647i), -4487i)), countOneBits(_wgslsmith_add_u32(reverseBits(20195u), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(427f, 358f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1918f + -548f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_1, 21>();
    var var_0 = arg_2.a;
    var var_1 = 1u;
    return Struct_2(func_2().c, func_2().c, Struct_1(~_wgslsmith_div_vec2_u32(min(vec2<u32>(arg_1.b.a.x, 1u), arg_2.c.a), vec2<u32>(arg_1.b.a.x, arg_2.b.c)), _wgslsmith_div_vec2_i32(arg_0.a.b, arg_2.b.b), ~(~var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(745f)) * _wgslsmith_f_op_f32(arg_1.a.d * var_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global1 = array<vec3<u32>, 12>();
    var var_0 = ~arg_1.c.b;
    let var_1 = func_2().b;
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return Struct_1(_wgslsmith_sub_vec2_u32(countOneBits(~arg_1.a.a), abs(u_input.a.yy)) << (vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(26647u, arg_0.a.a.x)), ~(~u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.b.x) >> (arg_0.c.a % vec2<u32>(32u)), countOneBits(arg_1.c.b)), arg_1.b.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(513f))))), _wgslsmith_f_op_f32(f32(-1f) * -2382f));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_5(func_4(func_2(), Struct_2(func_2().b, arg_0, global0[_wgslsmith_index_u32(1u, 21u)]), func_2(), vec2<f32>(-2283f, -494f)), Struct_2(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a.x, firstLeadingBit(u_input.a.x))), 21u)], Struct_1(vec2<u32>(41675u, arg_0.c), ~(~arg_0.b), _wgslsmith_mod_u32(arg_0.c, ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.e, arg_0.d), arg_0.e))), func_2().a));
    let var_1 = 214f;
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global1 = array<vec3<u32>, 12>();
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.b.x < 2147483647i, true, true), vec4<bool>(true, true, true, true)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    var var_0 = select(vec4<i32>(firstTrailingBit(0i), _wgslsmith_mod_i32(max(0i, 0i), _wgslsmith_sub_i32(arg_1.b.b.x, arg_2.c.b.x)) | func_4(arg_1, func_4(Struct_2(arg_2.b, global0[_wgslsmith_index_u32(arg_1.c.a.x, 21u)], arg_1.a), Struct_2(global0[_wgslsmith_index_u32(66436u, 21u)], Struct_1(arg_2.c.a, vec2<i32>(-2147483647i, arg_2.b.b.x), u_input.a.x, arg_2.b.d, arg_1.c.e), arg_2.a), arg_1, vec2<f32>(arg_1.a.e, -287f)), func_4(Struct_2(Struct_1(arg_1.c.a, arg_2.a.b, 1u, -1000f, 879f), global0[_wgslsmith_index_u32(46275u, 21u)], Struct_1(arg_1.a.a, vec2<i32>(-253i, 5402i), arg_1.b.a.x, arg_1.b.d, -1530f)), arg_1, Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), arg_2.a.b, 1u, -285f, arg_1.c.d), Struct_1(arg_1.b.a, vec2<i32>(arg_2.a.b.x, arg_2.a.b.x), u_input.a.x, arg_2.c.d, arg_2.c.e), Struct_1(vec2<u32>(0u, arg_1.a.c), arg_1.c.b, arg_2.c.a.x, arg_1.b.d, arg_2.a.e)), vec2<f32>(arg_1.c.d, arg_1.a.d)), vec2<f32>(-336f, arg_1.a.e)).b.b.x, _wgslsmith_div_i32(0i, 12603i), select(arg_1.b.b.x, func_2().c.b.x, !any(vec2<bool>(arg_0.x, false)))), vec4<i32>(min(func_5(func_4(Struct_2(arg_2.b, Struct_1(arg_2.b.a, arg_2.a.b, u_input.a.x, -187f, -163f), Struct_1(arg_2.b.a, arg_2.a.b, u_input.a.x, -559f, 187f)), arg_1, Struct_2(arg_1.a, arg_2.b, global0[_wgslsmith_index_u32(46329u, 21u)]), vec2<f32>(502f, arg_1.c.e)), arg_2).b.x, arg_2.b.b.x), _wgslsmith_mod_i32(arg_2.a.b.x, -36535i), arg_1.b.b.x, arg_2.a.b.x), arg_0.x);
    global1 = array<vec3<u32>, 12>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(vec4<bool>(true, true, true, true), func_1(Struct_1(vec2<u32>(0u, u_input.a.x), -vec2<i32>(-66371i, -2147483647i), 26835u, _wgslsmith_div_f32(2035f, -134f), -1006f)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))))), Struct_2(global0[_wgslsmith_index_u32((u_input.a.x >> (4294967295u % 32u)) ^ firstTrailingBit(max(4294967295u, u_input.a.x)), 21u)], global0[_wgslsmith_index_u32(~0u, 21u)], Struct_1(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(87217u, u_input.a.x)), reverseBits(u_input.a.yx), _wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.zx)), vec2<i32>(0i << (u_input.a.x % 32u), -40907i << (u_input.a.x % 32u)), u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(f32(-1f) * -429f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) + _wgslsmith_f_op_f32(sign(986f))))), func_2());
    global1 = array<vec3<u32>, 12>();
    let var_1 = vec4<u32>(min(_wgslsmith_dot_vec2_u32(~firstTrailingBit(var_0.a), var_0.a), u_input.a.x), (var_0.a.x | select(func_3(u_input.a.x), ~u_input.a.x, true)) | var_0.a.x, var_0.a.x, ~func_3(1u));
    let var_2 = !select(vec4<bool>(true, any(func_1(Struct_1(vec2<u32>(var_0.a.x, u_input.a.x), var_0.b, 4294967295u, var_0.d, var_0.d)).xyy), var_0.b.x > func_2().c.b.x, !any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, false, true), all(func_1(func_2().a).yw));
    let var_3 = global0[_wgslsmith_index_u32(~1u, 21u)];
    var var_4 = func_5(Struct_2(Struct_1(vec2<u32>(var_0.a.x, var_1.x), var_0.b, var_3.a.x, var_3.d, func_5(Struct_2(global0[_wgslsmith_index_u32(var_0.c, 21u)], Struct_1(vec2<u32>(var_0.a.x, 93447u), vec2<i32>(var_3.b.x, 0i), var_3.c, -1456f, var_3.d), global0[_wgslsmith_index_u32(27415u, 21u)]), func_4(Struct_2(Struct_1(var_0.a, vec2<i32>(var_3.b.x, var_3.b.x), 40367u, var_3.e, -135f), Struct_1(var_3.a, vec2<i32>(54761i, 1i), 4294967295u, var_0.e, 1000f), global0[_wgslsmith_index_u32(var_1.x, 21u)]), Struct_2(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(34534u, 21u)], Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(-1i, var_0.b.x), 4294967295u, -119f, -1668f)), Struct_2(global0[_wgslsmith_index_u32(33342u, 21u)], Struct_1(vec2<u32>(var_1.x, u_input.a.x), var_3.b, 0u, -1073f, var_3.e), Struct_1(var_0.a, var_3.b, var_1.x, var_3.d, var_3.d)), vec2<f32>(var_3.e, var_3.e))).e), Struct_1(firstLeadingBit(~u_input.a.yx), vec2<i32>(~3796i, 9450i), u_input.a.x, 378f, _wgslsmith_f_op_f32(-1000f - -509f)), global0[_wgslsmith_index_u32(~1u, 21u)]), func_4(Struct_2(func_6(!var_2, Struct_2(global0[_wgslsmith_index_u32(0u, 21u)], Struct_1(var_3.a, var_0.b, 28033u, 254f, -1986f), Struct_1(vec2<u32>(4153u, 47301u), var_0.b, 0u, -569f, var_0.e)), func_2()), global0[_wgslsmith_index_u32(func_6(select(var_2, vec4<bool>(true, var_2.x, true, true), true), func_2(), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(vec2<u32>(var_3.a.x, var_3.a.x), vec2<i32>(var_0.b.x, -50621i), var_1.x, 1531f, -162f), global0[_wgslsmith_index_u32(u_input.a.x, 21u)])).c, 21u)], func_6(select(vec4<bool>(true, false, false, true), vec4<bool>(var_2.x, true, var_2.x, var_2.x), false), func_2(), Struct_2(Struct_1(vec2<u32>(var_1.x, u_input.a.x), vec2<i32>(var_3.b.x, var_0.b.x), u_input.a.x, 1360f, -1181f), Struct_1(vec2<u32>(var_0.c, 554u), vec2<i32>(var_0.b.x, var_0.b.x), var_3.c, var_0.e, var_0.d), global0[_wgslsmith_index_u32(46833u, 21u)]))), Struct_2(global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 21u)], func_4(Struct_2(Struct_1(vec2<u32>(var_0.a.x, var_1.x), var_3.b, 21910u, var_0.e, var_0.d), global0[_wgslsmith_index_u32(20534u, 21u)], Struct_1(vec2<u32>(var_1.x, 425u), var_0.b, var_0.c, var_3.e, -297f)), func_2(), func_2(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, 1000f))).b, global0[_wgslsmith_index_u32(1u, 21u)]), Struct_2(Struct_1(~u_input.a.xw, vec2<i32>(0i, var_0.b.x), func_2().b.c, 615f, -107f), global0[_wgslsmith_index_u32(45868u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.xwz, global1[_wgslsmith_index_u32(var_0.c, 12u)])), 21u)]), vec2<f32>(var_0.e, func_6(func_1(Struct_1(vec2<u32>(u_input.a.x, 96314u), vec2<i32>(38598i, 69740i), var_0.c, var_0.e, var_0.e)), Struct_2(global0[_wgslsmith_index_u32(var_1.x, 21u)], Struct_1(vec2<u32>(61350u, var_3.a.x), var_0.b, var_3.a.x, var_0.e, 1700f), Struct_1(var_1.xw, vec2<i32>(-2147483647i, -2147483647i), var_3.c, var_0.d, var_0.e)), Struct_2(Struct_1(var_1.zz, var_0.b, u_input.a.x, -449f, var_0.e), global0[_wgslsmith_index_u32(1u, 21u)], Struct_1(var_0.a, vec2<i32>(2147483647i, var_3.b.x), var_1.x, -1297f, -705f))).d)));
    let var_5 = -func_6(!(!vec4<bool>(var_2.x, var_2.x, false, true)), func_2(), Struct_2(func_6(vec4<bool>(true, true, true, var_2.x), func_2(), Struct_2(Struct_1(vec2<u32>(u_input.a.x, 26909u), vec2<i32>(0i, 0i), var_1.x, var_0.d, 851f), global0[_wgslsmith_index_u32(29361u, 21u)], global0[_wgslsmith_index_u32(var_1.x, 21u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(var_4.a, vec2<u32>(var_4.c, var_4.a.x)), ~vec2<u32>(22344u, 5661u)), 21u)], Struct_1(~var_1.zy, vec2<i32>(var_3.b.x, var_0.b.x), 0u, var_4.d, _wgslsmith_f_op_f32(490f + var_4.d)))).b.x;
    var_4 = func_5(Struct_2(Struct_1(reverseBits(var_1.yw), var_0.b, var_3.a.x, _wgslsmith_f_op_f32(308f + _wgslsmith_f_op_f32(sign(var_4.e))), _wgslsmith_f_op_f32(f32(-1f) * -706f)), global0[_wgslsmith_index_u32(func_2().a.c ^ ~var_4.c, 21u)], global0[_wgslsmith_index_u32(select(~firstTrailingBit(75960u), ~var_4.c & ~var_1.x, false), 21u)]), func_2());
    let var_6 = Struct_1(vec2<u32>(select(~(~var_1.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.c, 4294967295u, 4294967295u, 27157u), var_1), firstTrailingBit(var_1)), true), countOneBits(abs(var_0.a.x))), _wgslsmith_div_vec2_i32(~abs(var_0.b), ~min(vec2<i32>(-27657i, var_0.b.x) ^ vec2<i32>(1i, var_4.b.x), var_0.b)), _wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(1u, u_input.a.x, var_0.c, 4294967295u))), min(var_1, ~vec4<u32>(17855u, 1u, 4294967295u, u_input.a.x))) >> (~(~(~28233u)) % 32u), var_4.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-391f - 584f), -1342f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~var_3.c, 0u)), _wgslsmith_clamp_vec4_i32(-firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, var_6.b.x, var_5), vec4<i32>(var_0.b.x, var_6.b.x, 75675i, var_4.b.x), vec4<i32>(-1i, -21022i, 22551i, var_6.b.x))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_6.b.x, -2147483647i, var_5, -1i) ^ vec4<i32>(var_4.b.x, -72927i, 1768i, var_6.b.x), vec4<i32>(var_3.b.x, var_5, -2147483647i, 5459i) | vec4<i32>(var_6.b.x, -13386i, var_6.b.x, var_6.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_6.b.x, -2147483647i, var_6.b.x, 20366i) & vec4<i32>(41786i, var_5, 47793i, 21705i), vec4<i32>(-2147483647i, var_0.b.x, var_6.b.x, var_0.b.x))), ~vec4<i32>(-1i, var_6.b.x, var_3.b.x, var_5) | (-vec4<i32>(var_3.b.x, 2147483647i, var_4.b.x, var_6.b.x) ^ vec4<i32>(-33694i, var_6.b.x, 83072i, var_5))), -var_4.b, u_input.a, -(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_4.b.x, var_5, var_6.b.x, var_0.b.x), -vec4<i32>(var_0.b.x, var_6.b.x, var_0.b.x, var_3.b.x), max(vec4<i32>(var_5, var_0.b.x, var_0.b.x, var_4.b.x), vec4<i32>(var_0.b.x, var_5, 1i, 2147483647i))) | -(vec4<i32>(-1i, 2147483647i, var_6.b.x, -2147483647i) >> (vec4<u32>(u_input.a.x, var_6.a.x, 0u, var_6.c) % vec4<u32>(32u)))));
}

