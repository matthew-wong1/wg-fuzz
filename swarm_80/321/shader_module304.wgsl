struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26>;

var<private> global1: vec3<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = select(!vec2<bool>(global1.x, false), select(!global1.yy, select(!select(global1.xz, global1.yy, vec2<bool>(arg_0, arg_0)), vec2<bool>(false, arg_0), select(select(vec2<bool>(global1.x, true), global1.zz, vec2<bool>(true, arg_0)), !vec2<bool>(false, arg_0), !global1.x)), global1.zz), global1.yy);
    let var_1 = Struct_3(~_wgslsmith_add_vec3_i32(u_input.a, ~vec3<i32>(arg_1.a.x, -47309i, u_input.a.x)));
    var var_2 = vec2<i32>(0i, -arg_1.a.x | -47673i);
    var var_3 = _wgslsmith_add_i32(min(u_input.a.x, ~(-7350i)), 42999i);
    let var_4 = vec3<f32>(707f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(108f)))))), -532f);
    return select(vec3<bool>(_wgslsmith_f_op_f32(round(var_4.x)) < var_4.x, var_0.x, !arg_0), !(!(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(global1.x, var_0.x, arg_0), vec3<bool>(false, arg_0, global1.x)))), !select(vec3<bool>(true, any(vec3<bool>(var_0.x, false, global1.x)), var_0.x), select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, global1.x, arg_0), vec3<bool>(global1.x, true, global1.x)), vec3<bool>(true, false, global1.x), !vec3<bool>(arg_0, arg_0, false)), select(select(vec3<bool>(true, global1.x, true), vec3<bool>(var_0.x, true, false), vec3<bool>(true, global1.x, var_0.x)), vec3<bool>(var_0.x, global1.x, false), vec3<bool>(false, false, arg_0))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_3) -> i32 {
    global1 = !arg_0;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1013f * -903f), _wgslsmith_f_op_f32(-384f * 642f), _wgslsmith_f_op_f32(ceil(236f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(737f, _wgslsmith_f_op_f32(sign(745f)), -1538f))));
    var var_1 = any(!(!func_3(true, Struct_3(u_input.a)).zx));
    let var_2 = Struct_1(all(select(!vec4<bool>(global1.x, arg_0.x, arg_0.x, true), vec4<bool>(!global1.x, arg_0.x, true, !global1.x), global1.x)), vec2<u32>(0u << (~firstTrailingBit(4294967295u) % 32u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(u_input.b.x), firstTrailingBit(1u), ~4294967295u), arg_1, 55864u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1780f, var_0.x, var_0.x, var_0.x))))), arg_1, (~select(u_input.b.wzy, vec3<u32>(arg_1, 46334u, 0u), arg_0) >> (u_input.b.xzw % vec3<u32>(32u))) << (u_input.b.yzz % vec3<u32>(32u)));
    global1 = !select(func_3(all(arg_0.yx) & (var_2.c.x <= 1788f), Struct_3(u_input.a)), select(select(select(vec3<bool>(false, var_2.a, true), arg_0, vec3<bool>(arg_0.x, arg_0.x, global1.x)), arg_0, all(vec2<bool>(true, false))), func_3(true, arg_2), all(vec3<bool>(global1.x, global1.x, false))), arg_0);
    return countOneBits(-(countOneBits(arg_2.a.x ^ 8499i) | (i32(-1i) * -13661i)));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = arg_1;
    var var_2 = func_4(select(!select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x)), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), global1.x), var_1 <= arg_1), func_3(global1.x, Struct_3(u_input.a)), any(global1.xy)), ~max(firstTrailingBit(~1u), abs(u_input.b.x) >> ((4294967295u & u_input.b.x) % 32u)), Struct_3(countOneBits(vec3<i32>(u_input.a.x, -3015i, 27016i))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2518f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-364f)) - arg_1) + -748f));
    var var_3 = ~select(1u & firstLeadingBit(u_input.b.x << (u_input.b.x % 32u)), abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 52019u)))), ~u_input.b.x >= (4294967295u >> ((u_input.b.x & u_input.b.x) % 32u)));
    return vec2<f32>(_wgslsmith_div_f32(-407f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1) + 176f));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> Struct_5 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2336f);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(71032u, u_input.b.x), 26u)];
    var_1 = var_2.b.c.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.b.c.xx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(1i, var_2.a), var_2.b.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-898f, var_2.b.c.x)), vec2<bool>(global1.x, arg_2))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.c.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.c.yz)), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b.c.zz, _wgslsmith_f_op_vec2_f32(var_2.b.c.wz + var_2.b.c.yz))))));
    return Struct_5(-(~_wgslsmith_clamp_i32(func_4(vec3<bool>(global1.x, global1.x, false), 6059u, Struct_3(var_0.yxw)), firstLeadingBit(1i), abs(-46186i))), var_2.b, _wgslsmith_f_op_f32(ceil(-786f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x)) + _wgslsmith_f_op_f32(var_3.x * var_3.x)), u_input.b.x);
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    global0 = array<Struct_5, 26>();
    global0 = array<Struct_5, 26>();
    let var_0 = ~(-arg_2 << (_wgslsmith_add_vec2_u32(vec2<u32>(121857u, _wgslsmith_mod_u32(1u, 1u)), ~select(vec2<u32>(arg_1.b.b.x, 4294967295u), arg_1.b.e.yz, false)) % vec2<u32>(32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(44843i, var_0.x), -907f)).x, abs(firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(24557i, -10095i, var_0.x, -46476i), vec4<i32>(u_input.a.x, arg_2.x, 21155i, 2147483647i)))), Struct_1(global1.x, select(vec2<u32>(~arg_1.d, firstLeadingBit(1u)), u_input.b.wx, arg_1.b.a), arg_1.b.c, 1u, ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.b.e, arg_1.b.e, vec3<u32>(u_input.b.x, arg_1.b.e.x, arg_1.d)), vec3<u32>(u_input.b.x, 1068u, arg_1.d))), -_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(arg_3, arg_1.a, u_input.a.x, arg_1.a)), ~vec4<i32>(-1i, -4835i, arg_2.x, arg_2.x) ^ -vec4<i32>(66203i, 0i, u_input.a.x, -28607i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-739f, 2226f)) * arg_1.b.c.x))))));
    global0 = array<Struct_5, 26>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_clamp_vec2_u32(select(firstLeadingBit(u_input.b.xw), firstTrailingBit(vec2<u32>(93286u, 26396u)), global1.yz), vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_u32(1u, 1u)), vec2<u32>(~u_input.b.x, u_input.b.x)));
    global1 = !(!(!vec3<bool>(all(vec4<bool>(false, true, false, true)), false, !global1.x)));
    var_0 = countOneBits(~vec2<u32>(28393u ^ _wgslsmith_mod_u32(69127u, var_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38610u, 45513u), u_input.b.wz), u_input.b.x)));
    var_0 = _wgslsmith_mult_vec2_u32(u_input.b.wy, _wgslsmith_sub_vec2_u32(~u_input.b.zy, firstLeadingBit(max(u_input.b.xz, u_input.b.xw)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 48033u), 16178u) % vec2<u32>(32u))));
    global1 = !select(!(!vec3<bool>(false, false, global1.x)), vec3<bool>(!global1.x, true, all(vec3<bool>(global1.x, false, global1.x))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, true, global1.x)), vec3<bool>(any(global1.yy), !global1.x, global1.x), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1666f)), func_1(max(1u, 73369u), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -13721i), false), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -24380i), vec2<i32>(u_input.a.x, u_input.a.x)), abs(vec2<i32>(-2147483647i, 21534i))), 2147483647i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -467f))))) + _wgslsmith_f_op_f32(-149f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -993f) + _wgslsmith_f_op_f32(step(160f, 795f)))))));
    var_1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, firstTrailingBit(max(u_input.b.x, 92512u)), 0u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, 774f, 1087f, -1808f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, 790f, 759f, 385f) + vec4<f32>(-314f, -1718f, -876f, 1075f))))));
}

