struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: bool) -> vec3<f32> {
    var var_0 = ~(-20013i);
    var_0 = firstLeadingBit(-13664i);
    var_0 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-30721i, 2147483647i) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), select(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -9515i), vec2<i32>(-2147483647i, 1i)), min(vec2<i32>(2147483647i, 62344i), vec2<i32>(2147483647i, 21018i)), vec2<bool>(arg_3, false))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 21572u)), ~u_input.a), ~vec2<u32>(63813u, 46058u)) % 32u));
    var var_1 = -675f;
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), -505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.d.x << (arg_0.e.x % 32u), _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(arg_0.d.x, arg_0.d.x)), vec2<i32>(-49214i, -arg_0.d.x))), -arg_0.d.x);
    var var_1 = _wgslsmith_mod_vec2_u32(arg_0.a, select(arg_0.a, vec2<u32>(~(~423u), ~(~30514u)), select(arg_0.c, !(!arg_0.c), true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.xx * vec2<f32>(-167f, -290f))) + arg_0.b.zy) + arg_0.b.zx);
    let var_3 = reverseBits(firstTrailingBit(arg_0.d.yy));
    var var_4 = max(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(35958i, var_0), vec2<i32>(var_0, -1i)), ~var_3.x, ~(i32(-1i) * -25501i), -var_0), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(-1i, -52784i), 1i, -21045i), ~(vec4<i32>(var_3.x, -30301i, var_0, -37623i) << (vec4<u32>(4294967295u, 0u, 4294967295u, var_1.x) % vec4<u32>(32u))))) | _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, arg_0.d.x, 0i, arg_0.d.x) >> (vec4<u32>(~101943u, 0u, _wgslsmith_add_u32(0u, var_1.x), var_1.x) % vec4<u32>(32u)), firstTrailingBit(select(~vec4<i32>(1i, 1i, var_3.x, var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(-7879i, var_3.x, -37877i, 1i), vec4<i32>(-7780i, arg_0.d.x, var_0, var_3.x)), !vec4<bool>(arg_0.c.x, false, false, false))));
    return vec3<bool>(arg_0.c.x, any(arg_0.c), select(true, arg_0.c.x, !any(!arg_0.c)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1430f, 366f))), -594f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1632f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) - _wgslsmith_f_op_f32(round(903f)))), 250f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1580f, 168f, 758f, 244f) * vec4<f32>(-207f, -1211f, 1287f, -137f))) * vec4<f32>(-434f, -553f, _wgslsmith_f_op_f32(508f + 1000f), _wgslsmith_f_op_f32(trunc(111f)))))));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(~1i, -22057i, ~_wgslsmith_div_i32(-13482i, 2147483647i)), vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-9503i, 51139i), -8913i), 41012i, _wgslsmith_mult_i32(select(i32(-1i) * -1i, 2147483647i, true), 1i)));
    var var_2 = Struct_4(func_4(Struct_1(vec2<u32>(34835u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(636f, -397f), var_0, vec4<bool>(true, false, true, true), true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), vec3<i32>(var_1.x, reverseBits(var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 2147483647i), vec3<i32>(21896i, var_1.x, var_1.x))), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a)))), Struct_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 24807u, 1u), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(10871u, u_input.a, 2459u, 0u) >> (vec4<u32>(u_input.a, 7695u, u_input.a, u_input.a) % vec4<u32>(32u))) | vec4<u32>(u_input.a, u_input.a | u_input.a, u_input.a, ~4294967295u), 973f, vec3<bool>(true, true, any(func_4(Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(var_0.x, var_0.x, 1608f), vec2<bool>(true, true), var_1, vec3<u32>(u_input.a, u_input.a, 37253u))).xx)), countOneBits(min(vec2<i32>(var_1.x, 0i), vec2<i32>(20403i, var_1.x) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))))));
    var var_3 = -3593i | var_2.b.d.x;
    var var_4 = ~_wgslsmith_div_vec4_u32(~(~select(var_2.b.a, vec4<u32>(61219u, 2197u, u_input.a, 1u), false)), firstLeadingBit(var_2.b.a));
    return Struct_2(~select(~_wgslsmith_mult_vec4_u32(var_2.b.a, vec4<u32>(var_4.x, var_4.x, 2097u, u_input.a)), vec4<u32>(12545u, var_4.x | var_4.x, firstTrailingBit(var_2.b.a.x), var_4.x), vec4<bool>(true, !var_2.a.x, true, select(false, false, var_2.b.c.x))), 1240f, !func_4(Struct_1(firstTrailingBit(var_2.b.a.zx), var_0.wyx, vec2<bool>(false, var_2.a.x), vec3<i32>(-2147483647i, var_2.b.d.x, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.a.x, var_2.b.a.x, 36323u), var_2.b.a.yyz))), min(var_1.zy, var_2.b.d));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    let var_0 = func_2();
    let var_1 = max(49430u, firstLeadingBit(_wgslsmith_sub_u32(var_0.a.x, abs(arg_0.x ^ 0u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec2<bool>(true, func_1(vec2<u32>(u_input.a, u_input.a), Struct_2(vec4<u32>(4502u, 63051u, u_input.a, 43635u), -1558f, vec3<bool>(true, true, false), vec2<i32>(7870i, -29738i)))), func_4(Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(1000f, -196f, 636f), vec2<bool>(true, false), vec3<i32>(2912i, -25128i, -26487i), vec3<u32>(u_input.a, u_input.a, 69250u))).yy, vec2<bool>(select(false, true, false), all(vec3<bool>(false, false, true)))), func_2().c.zz, select(!vec2<bool>(true, func_1(vec2<u32>(1u, 1u), Struct_2(vec4<u32>(u_input.a, 50703u, 10468u, u_input.a), -654f, vec3<bool>(false, false, false), vec2<i32>(0i, -1i)))), vec2<bool>(true, false), func_2().c.xz));
    var var_1 = -43291i;
    let var_2 = Struct_1(vec2<u32>(abs(countOneBits(select(34429u, u_input.a, var_0.x))), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1149f, -458f) - -1250f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(239f, 943f)) + _wgslsmith_f_op_f32(ceil(1342f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f * -1028f) - 263f))), vec2<bool>(var_0.x, true), abs(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(-1i, -52904i, 0i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-43626i, 1i, 0i), vec3<i32>(0i, 23961i, 1082i)))), vec3<u32>(490u, _wgslsmith_div_u32(abs(_wgslsmith_mod_u32(u_input.a, 4294967295u)), 2180u << (select(4294967295u, 0u, var_0.x) % 32u)), u_input.a));
    var var_3 = func_2();
    let var_4 = -(vec2<i32>(var_2.d.x, var_3.d.x) >> (_wgslsmith_sub_vec2_u32(~select(vec2<u32>(9641u, 1u), var_2.e.zz, vec2<bool>(var_0.x, var_3.c.x)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, var_2.a.x), u_input.a << (4294967295u % 32u))) % vec2<u32>(32u)));
    var var_5 = Struct_4(vec3<bool>(true, -374f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b, -1000f)), func_4(var_2).x || !var_0.x), Struct_2(var_3.a, var_2.b.x, vec3<bool>(var_3.c.x, false, var_0.x), countOneBits(-vec2<i32>(37769i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, ~49594u, _wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-806f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_5.b.b))))));
}

