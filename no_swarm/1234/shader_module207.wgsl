struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    global1 = u_input.b;
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1963f, -606f)) * -762f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1623f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(f32(-1f) * -243f)) * -1305f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-952f, -336f, -1420f, -1017f), vec4<f32>(-478f, -231f, -1000f, 346f), vec4<bool>(false, false, true, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(360f, -101f, -1083f, -482f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1443f, -1068f, -1000f, 122f), vec4<f32>(1000f, 452f, 399f, -1126f)))))));
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(min(6072u, u_input.e.x)), 7u)];
    global1 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(max(u_input.c.zw, vec2<i32>(2147483647i, 1i)), vec2<i32>(-39232i, u_input.b) ^ u_input.c.yy) << ((u_input.e.xy & u_input.e.yz) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.c.x, -2147483647i), -2147483647i) ^ -vec2<i32>(u_input.c.x, -2147483647i)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~3756u, ~42129u, _wgslsmith_dot_vec3_u32(vec3<u32>(39013u, 6568u, 0u), vec3<u32>(u_input.d.x, u_input.d.x, 40060u))), vec3<u32>(~179u, ~u_input.e.x, countOneBits(u_input.d.x))), u_input.e.x, ~(39501u | ~u_input.d.x)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~u_input.d.wyy), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 0u, 49152u), vec3<u32>(u_input.e.x, u_input.d.x, 594u)), min(_wgslsmith_mod_vec3_u32(u_input.d.zwz, u_input.e.xxy), u_input.e.xwy)), ~vec3<u32>(firstLeadingBit(u_input.e.x), 4294967295u, ~12295u))), 7u)];
    return u_input.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    var var_0 = ~2147483647i;
    global1 = u_input.b;
    var var_1 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(abs(u_input.c << (vec4<u32>(u_input.e.x, 0u, u_input.d.x, u_input.e.x) % vec4<u32>(32u))), func_3()), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(~u_input.b, u_input.c.x, u_input.c.x, u_input.b), reverseBits(abs(vec4<i32>(-75739i, u_input.a, u_input.c.x, 1i)))), max(firstLeadingBit(vec4<i32>(-33938i, -407i, -62003i, -8087i)), abs(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c))), u_input.c));
    var var_2 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    global1 = _wgslsmith_dot_vec4_i32(select(~(vec4<i32>(104896i, u_input.b, -1i, u_input.c.x) | u_input.c) | -u_input.c, vec4<i32>(-u_input.a, min(-25800i, u_input.c.x), -2147483647i, 0i | u_input.b) ^ ~u_input.c, select(vec4<bool>(arg_0.a, false, true, arg_0.a), vec4<bool>(any(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), true), true)), u_input.c);
    var var_0 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(57537i, u_input.b), -1690i, ~u_input.a, 13229i) ^ ((vec4<i32>(-31646i, u_input.a, u_input.a, u_input.c.x) | vec4<i32>(1i, u_input.a, u_input.b, 1i)) << (u_input.d % vec4<u32>(32u))), ~vec4<i32>(~(-2147483647i), u_input.a, 1i, u_input.c.x << (4294967295u % 32u)));
    var_0 = -vec4<i32>(func_3().x, _wgslsmith_dot_vec4_i32(min(max(vec4<i32>(var_0.x, u_input.b, 47015i, u_input.c.x), u_input.c), vec4<i32>(u_input.a, 2147483647i, 321i, u_input.c.x)), u_input.c), u_input.a, _wgslsmith_mod_i32(var_0.x, u_input.b));
    var var_1 = vec2<u32>(reverseBits((52352u << (_wgslsmith_mod_u32(u_input.d.x, 93297u) % 32u)) & abs(_wgslsmith_mod_u32(4294967295u, 72891u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.e.x, 0u) & u_input.d, u_input.e));
    var var_2 = ~u_input.d.yxw;
    return vec3<i32>(-_wgslsmith_dot_vec4_i32(func_3(), select(min(u_input.c, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.x, u_input.a, u_input.b), vec4<i32>(-2147483647i, -1i, -1541i, u_input.c.x)), select(vec4<bool>(true, true, false, arg_0.a), vec4<bool>(false, true, false, arg_0.a), arg_0.a))), -_wgslsmith_clamp_i32(35240i, _wgslsmith_mult_i32(1442i, u_input.b) << (max(var_1.x, u_input.d.x) % 32u), var_0.x), u_input.c.x);
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(func_2(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f + -110f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.e.ww), select(u_input.d.x, u_input.e.x, true)), 7u)]), _wgslsmith_f_op_f32(f32(-1f) * -633f)) >> (u_input.e.xwy % vec3<u32>(32u));
    var var_1 = firstTrailingBit(countOneBits(countOneBits(15691u)));
    var_1 = firstLeadingBit(~reverseBits(~(~u_input.e.x)));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x), countOneBits(~u_input.e)) & min(~(~u_input.e.x), ~(~u_input.e.x)), _wgslsmith_dot_vec2_u32(u_input.e.zy | ~vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.yw & ~vec2<u32>(u_input.e.x, u_input.d.x)), u_input.d.x);
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-var_0.yx, u_input.c.wx), ~(~var_0.x >> (u_input.d.x % 32u)));
    return -select(_wgslsmith_clamp_vec2_i32(~var_0.yx, reverseBits(-vec2<i32>(-48599i, var_0.x)), firstTrailingBit(firstTrailingBit(var_0.xz))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_sub_i32(u_input.c.x, u_input.a)), vec2<i32>(firstTrailingBit(47980i), u_input.b), var_0.yx), vec2<bool>(true, -var_0.x <= _wgslsmith_clamp_i32(var_3, u_input.b, 46842i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(min(-u_input.a, -37033i), -(~u_input.a), u_input.c.x | -1i), countOneBits(u_input.c.yzw));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + 2683f) + _wgslsmith_f_op_f32(-526f * 1981f)), _wgslsmith_f_op_f32(min(296f, 395f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f))));
    var var_2 = func_1();
    var_2 = _wgslsmith_div_vec2_i32(reverseBits(-vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_mod_i32(-1i, -9068i))), ~(-vec2<i32>(_wgslsmith_mult_i32(u_input.b, var_2.x), 3042i)));
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-var_2.x, u_input.c.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_2.x, u_input.b, -40419i)), u_input.c.wwz)), vec2<f32>(var_1, var_1));
}

