struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(~reverseBits(vec2<i32>(1i, 1i)), u_input.b.xx, vec3<bool>(!all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, false)))), true | !any(vec2<bool>(false, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, -1955f, -575f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 733f, 722f) - vec3<f32>(1842f, 605f, 213f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, 273f, -109f) * vec3<f32>(313f, 2815f, 304f)))))));
    let var_1 = _wgslsmith_div_i32(~(-2147483647i), ~1i);
    var var_2 = Struct_1(vec2<i32>(0i, 7169i) ^ vec2<i32>(1i & -var_1, 1i), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, u_input.b.x)), vec2<u32>(firstTrailingBit(0u), _wgslsmith_sub_u32(u_input.b.x, 38166u))), vec2<u32>(~49379u ^ u_input.b.x, var_0.b.x)), select(select(vec3<bool>(false, var_0.c.x != true, true), select(!var_0.c, select(var_0.c, var_0.c, vec3<bool>(var_0.c.x, false, false)), var_0.c), vec3<bool>(false && var_0.c.x, var_0.c.x, !var_0.c.x)), select(vec3<bool>(true, var_0.c.x, true), !var_0.c, true && (u_input.a != 1u)), !var_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1163f, var_0.d.x, var_0.d.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d))) + var_0.d));
    var_0 = Struct_1(min(vec2<i32>(2147483647i, 1i), vec2<i32>(var_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -12479i, 46270i, 100788i), vec4<i32>(var_1, var_2.a.x, var_2.a.x, -2089i)))), _wgslsmith_clamp_vec2_u32(var_0.b, var_0.b, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(39906u, u_input.b.x), u_input.b.xx))), vec3<bool>(true, true & all(select(vec3<bool>(false, true, var_2.c.x), vec3<bool>(var_0.c.x, false, var_2.c.x), var_0.c)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x))), -1632f, var_0.d.x)));
    var var_3 = firstLeadingBit(var_2.a);
    return var_2.c;
}

fn func_2() -> Struct_1 {
    let var_0 = (_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, -39590i, 1i)), vec3<i32>(1413i, ~(-1i), 1i)) & abs(firstTrailingBit(1i))) != -countOneBits(1i << (_wgslsmith_clamp_u32(18397u, u_input.b.x, 0u) % 32u));
    var var_1 = Struct_1(-(~vec2<i32>(1i, 1i)), ~(~min(_wgslsmith_div_vec2_u32(vec2<u32>(46718u, u_input.a), u_input.b.xz), u_input.b.yz)), select(!(!vec3<bool>(false, false, var_0)), select(!func_3(), vec3<bool>(true, true, true), func_3().x), var_0), vec3<f32>(-1002f, -1265f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-502f - -1306f), _wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f) - 806f)))));
    var var_2 = true;
    var var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, u_input.a, var_1.b.x, u_input.a), vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, u_input.a)), firstLeadingBit(vec4<u32>(var_1.b.x, u_input.b.x, var_1.b.x, 71867u))), max(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, 0u, var_1.b.x)) ^ ((var_1.b.x << (u_input.b.x % 32u)) >> (~u_input.b.x % 32u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.b.x, 0u, u_input.b.x, 61108u)), vec4<u32>(var_1.b.x, 30067u, u_input.b.x, var_1.b.x) >> (vec4<u32>(u_input.b.x, var_1.b.x, 7029u, var_1.b.x) % vec4<u32>(32u))) | 24745u));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(715f - _wgslsmith_f_op_f32(-170f - 1184f))))))));
    return Struct_1(-_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -24965i, ~var_1.a.x), var_1.a), var_1.b, !vec3<bool>(false, (u_input.b.x > 0u) || select(false, var_1.c.x, true), true), vec3<f32>(var_1.d.x, -488f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4, var_1.d.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_f_op_f32(sign(var_0.d.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(ceil(372f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-147f - -1306f))))));
    var_0 = func_2();
    return _wgslsmith_clamp_vec2_i32(func_2().a, arg_0.a, arg_0.a ^ vec2<i32>(35225i, reverseBits(2147483647i))) & select(var_0.a, vec2<i32>(abs(max(var_0.a.x, arg_0.a.x)), -2147483647i), arg_0.c.x);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(select(select(func_4(func_2(), Struct_1(vec2<i32>(0i, 0i), vec2<u32>(u_input.b.x, u_input.a), vec3<bool>(true, true, false), vec3<f32>(591f, -670f, 193f))), vec2<i32>(1i, 1i), true), reverseBits(vec2<i32>(select(-2147483647i, -8888i, false), _wgslsmith_mult_i32(41128i, 0i))), true), max(~u_input.b.yz, ~(vec2<u32>(u_input.a, 132640u) >> (~vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)))), func_2().c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-871f, 1011f, 168f)))))))));
    var_0 = func_2();
    var_0 = func_2();
    let var_1 = func_2().a;
    var var_2 = ~(~(~max(~0u, 1u >> (u_input.a % 32u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-553f + -610f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + 2285f))));
    var var_1 = func_2();
    var var_2 = func_2();
    var var_3 = func_3();
    let var_4 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~2386i, -16043i, arg_0.a.x), reverseBits(vec3<i32>(var_2.a.x, var_2.a.x, var_1.a.x)) | -vec3<i32>(arg_0.a.x, 0i, var_1.a.x)), vec3<i32>(0i, arg_0.a.x, abs(~(-44379i)))), firstTrailingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(43133i, arg_0.a.x, -2147483647i), vec3<i32>(var_1.a.x, var_1.a.x, 56303i), vec3<i32>(29549i, -2147483647i, -1i))) << (max(vec3<u32>(_wgslsmith_sub_u32(91984u, u_input.a), var_2.b.x, select(var_2.b.x, u_input.b.x, false)), select(u_input.b, ~u_input.b, var_1.c)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(var_1.d.zz, vec2<f32>(var_1.d.x, arg_0.d.x))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(select(arg_0.d.x, 385f, false)))))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, 651f) + var_1.d.zx))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<i32>(1i, 1i), vec2<u32>(1952u, 102788u & u_input.a), vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(1000f * 457f), _wgslsmith_f_op_f32(func_1()), -1000f)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, false), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(759f, -340f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(932f))))))));
    let var_1 = abs(~(u_input.b.x | 0u));
    var var_2 = func_2();
    let var_3 = ~5619u;
    var var_4 = vec3<u32>(~1u, var_2.b.x, ~max(var_1, ~var_3));
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-445f, ~u_input.b, var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().d.x * -1262f), _wgslsmith_f_op_f32(ceil(var_2.d.x))), abs(select(var_2.a.x, var_2.a.x, func_3().x)));
}

