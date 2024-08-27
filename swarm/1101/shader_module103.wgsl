struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), -1i, 34881i);

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(-1i, vec4<i32>(10001i, 2147483647i, -1i, -48813i), vec3<bool>(false, true, false))), Struct_2(Struct_1(0i, vec4<i32>(1i, -5633i, -89666i, 2503i), vec3<bool>(false, true, true))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> i32 {
    var var_0 = ~(~_wgslsmith_div_u32(0u, 21149u));
    let var_1 = vec2<u32>(arg_1.c.x, 75129u);
    var var_2 = arg_1;
    var_2 = Struct_3(var_2.a, false, select(reverseBits(reverseBits(vec4<u32>(arg_2.x, arg_1.c.x, var_2.c.x, 50654u) & var_2.c)), select(~var_2.c, arg_1.c, false) << (~var_2.c % vec4<u32>(32u)), !(!all(vec2<bool>(arg_1.d, false)))), true, -(~firstLeadingBit(var_2.e)));
    global0 = vec4<i32>(-reverseBits(global0.x), arg_1.e, global0.x, global0.x);
    return ~(-6292i << (((4294967295u | ~var_2.c.x) & 1u) % 32u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(1i, ~9638i), _wgslsmith_clamp_vec2_i32(-(u_input.c.zw ^ global0.zx), vec2<i32>(abs(global0.x), u_input.b), vec2<i32>(~global0.x, u_input.b))), global0.ww);
    var var_1 = Struct_2(Struct_1(~(~(i32(-1i) * -33704i)), select(u_input.c >> (vec4<u32>(arg_0.x, 0u, 4930u, arg_0.x) % vec4<u32>(32u)), -u_input.c, arg_1) >> (vec4<u32>(4294967295u, 1u, _wgslsmith_add_u32(0u, u_input.d), ~u_input.d) % vec4<u32>(32u)), !(!select(vec3<bool>(false, arg_1.x, arg_1.x), arg_1.wxy, arg_1.wxw))));
    var_1 = global1[_wgslsmith_index_u32(arg_0.x, 2u)];
    global1 = array<Struct_2, 2>();
    let var_2 = _wgslsmith_f_op_f32(-162f * 1000f);
    return select(!arg_1.yyy, vec3<bool>(select(true, false, any(var_1.a.c)), u_input.d > 0u, true), false);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    var var_0 = 10079i;
    var var_1 = vec2<i32>(u_input.b, _wgslsmith_mult_i32(max(countOneBits(u_input.c.x), global0.x), arg_2.b.x));
    let var_2 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.d, u_input.d) | vec3<u32>(49241u, arg_0, 0u), vec3<u32>(53271u, u_input.d, 1u)), countOneBits(_wgslsmith_div_u32(44998u, 99787u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 26710u, 26485u), vec3<u32>(38764u, u_input.d, 27728u)), ~(u_input.d >> (arg_0 % 32u))), vec4<u32>(28823u, _wgslsmith_div_u32(abs(u_input.d), 41112u), countOneBits(select(u_input.d, 53281u, true)), reverseBits(0u))));
    var var_3 = vec2<i32>(0i, 42996i);
    var var_4 = global0.wzw;
    return true;
}

fn func_5(arg_0: bool) -> vec4<u32> {
    global0 = max(vec4<i32>(abs(-func_2(vec3<f32>(342f, 1401f, -577f), Struct_3(vec3<bool>(arg_0, arg_0, false), arg_0, vec4<u32>(u_input.d, 81586u, 1u, 41020u), arg_0, -12488i), vec4<u32>(34546u, u_input.d, 4294967295u, 1u))), u_input.a.x, -global0.x, -(u_input.a.x & firstLeadingBit(u_input.a.x))), ~max(vec4<i32>(-25112i, ~1i, u_input.c.x, firstTrailingBit(u_input.b)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.a.x, global0.x, -20880i), vec4<i32>(0i, 2147483647i, -42010i, 0i)))));
    global1 = array<Struct_2, 2>();
    return vec4<u32>(u_input.d, 1u, 1u, 17317u);
}

fn func_1() -> u32 {
    var var_0 = vec4<i32>(u_input.c.x, ~_wgslsmith_add_i32(u_input.c.x, -_wgslsmith_div_i32(2147483647i, global0.x)), global0.x, max(abs(~(-24786i)), _wgslsmith_add_i32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, -1000f, 813f)), Struct_3(vec3<bool>(true, true, false), false, vec4<u32>(13516u, u_input.d, 4294967295u, u_input.d), false, global0.x), vec4<u32>(40334u, u_input.d, u_input.d, u_input.d)), i32(-1i) * -26802i)));
    var var_1 = vec4<u32>(countOneBits(41912u), u_input.d, ~u_input.d, 0u);
    let var_2 = Struct_3(vec3<bool>(true, true, true), select(func_2(vec3<f32>(2552f, 820f, -1519f), Struct_3(vec3<bool>(false, false, true), false, vec4<u32>(40525u, 85609u, 49430u, var_1.x), true, global0.x), vec4<u32>(var_1.x, 42400u, u_input.d, u_input.d)) < ~var_0.x, true, (reverseBits(var_1.x) == ~1u) || true), func_5(func_4(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-200f, -154f) + vec2<f32>(-622f, -750f))), Struct_1(-32345i, u_input.c, func_3(vec2<u32>(var_1.x, 0u), vec4<bool>(false, true, false, true))))), !all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), true)), reverseBits(~reverseBits(reverseBits(var_0.x))));
    global1 = array<Struct_2, 2>();
    let var_3 = Struct_1(_wgslsmith_add_i32(-(-27943i >> (_wgslsmith_clamp_u32(u_input.d, 1u, var_2.c.x) % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~global0.x, 0i, _wgslsmith_mod_i32(-1i, u_input.c.x)), var_0.x)), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.x, 16026i, -2147483647i)), -2147483647i, _wgslsmith_sub_i32(-1i, var_0.x), firstLeadingBit(0i))) & reverseBits(countOneBits(-vec4<i32>(global0.x, u_input.a.x, global0.x, var_2.e))), select(var_2.a, vec3<bool>(all(vec3<bool>(false, true, var_2.b)), true, any(func_3(var_1.zy, vec4<bool>(true, false, false, false)).yx)), var_2.a));
    return ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, 4158u), 1u);
}

fn func_6(arg_0: vec2<u32>) -> Struct_1 {
    global0 = u_input.c;
    let var_0 = 1i;
    var var_1 = Struct_2(Struct_1(-18183i, vec4<i32>(min(_wgslsmith_clamp_i32(28804i, -36643i, -1i), u_input.c.x), min(i32(-1i) * -2147483647i, 0i | u_input.c.x), global0.x, -1i), !vec3<bool>(true, true, func_3(vec2<u32>(0u, arg_0.x), vec4<bool>(false, false, false, true)).x)));
    var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_sub_i32(3828i, -11575i), -var_1.a.b.x), _wgslsmith_clamp_vec3_i32(var_1.a.b.yzz, global0.xzz, vec3<i32>(-1i, u_input.b, u_input.b))), abs(~u_input.c) >> (vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 25637u, u_input.d), abs(52765u), 70262u >> (arg_0.x % 32u), ~0u) % vec4<u32>(32u)), var_1.a.c));
    let var_2 = Struct_3(vec3<bool>(firstLeadingBit(abs(arg_0.x)) > 33938u, var_1.a.c.x, !(!any(vec4<bool>(var_1.a.c.x, var_1.a.c.x, false, var_1.a.c.x)))), false, ~vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(arg_0.x), _wgslsmith_div_u32(11653u, 2643u)), 1u, 1u, arg_0.x), var_1.a.c.x, 9640i);
    return Struct_1(var_2.e, reverseBits(-select(vec4<i32>(var_2.e, 1i, u_input.c.x, -26686i) << (vec4<u32>(u_input.d, 54205u, arg_0.x, arg_0.x) % vec4<u32>(32u)), var_1.a.b, all(var_2.a))), !var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(max(abs(~vec2<u32>(4294967295u, u_input.d)) & vec2<u32>(func_1(), _wgslsmith_div_u32(u_input.d, 0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, u_input.d)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 51087u), vec2<u32>(44974u, 0u)))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1806f))), _wgslsmith_f_op_f32(exp2(1f)), -126f, _wgslsmith_f_op_f32(f32(-1f) * -1200f)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -667f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) - _wgslsmith_div_f32(-608f, -137f)), -367f, _wgslsmith_f_op_f32(f32(-1f) * -255f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.wzy) * _wgslsmith_f_op_vec3_f32(-var_2.wxz));
    global1 = array<Struct_2, 2>();
    var var_4 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(global0.ww, var_0.b.xx), _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(global0.x, 2562i, -21802i, 0i)) >> (u_input.d % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(func_5(true | var_0.c.x).x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 1078u)), vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), u_input.d, 41361u << (u_input.d % 32u)));
}

