struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27658u, 13866u, 43375u);

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<bool>, 19>;

var<private> global3: array<vec3<f32>, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    let var_0 = arg_0;
    global1 = u_input.a;
    global1 = vec3<i32>(arg_1.x, (2147483647i << (~_wgslsmith_dot_vec2_u32(global0.yz, global0.zx) % 32u)) >> (10411u % 32u), _wgslsmith_div_i32(u_input.a.x, global1.x));
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global0 = ~(~reverseBits(vec3<u32>(~global0.x, func_3(arg_0.x, vec2<i32>(global1.x, 1415i), false), ~global0.x)));
    global0 = firstTrailingBit(vec3<u32>(abs(~global0.x >> (1u % 32u)), global0.x, countOneBits(0u)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -209f), -687f, _wgslsmith_f_op_f32(-1157f - -238f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(154f, 668f, 2131f, -851f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    return func_2(vec3<bool>(true, any(vec4<bool>(true, true, false, arg_1)), all(!(!vec4<bool>(arg_1, arg_1, arg_1, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 0u, 14561u, global0.x), vec4<u32>(global0.x, global0.x, 1u, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 74378u, 60644u, 5939u), vec4<u32>(global0.x, global0.x, 96477u, global0.x))) | vec4<u32>(80844u, global0.x, 0u, _wgslsmith_mod_u32(~27888u, global0.x)));
    let var_1 = ~(~13u);
    return select(vec4<bool>(true, any(vec2<bool>(all(vec2<bool>(false, true)), true)), ~u_input.a.x == 0i, true), vec4<bool>(true, true, u_input.a.x >= (i32(-1i) * -51708i), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false))), true);
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = func_1(max(_wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(u_input.a.x, global1.x, arg_0.a)), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 33532i), arg_0.d << (arg_0.e.x % 32u), u_input.a.x)), -arg_0.b.xww), false, arg_0.a | u_input.a.x);
    let var_1 = true | (arg_0.e.x != _wgslsmith_mult_u32(~(~arg_0.e.x), 3u));
    return countOneBits(arg_0.e.zzw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(_wgslsmith_clamp_i32(-1i, abs(u_input.a.x << (global0.x % 32u)), 0i), vec4<i32>(_wgslsmith_div_i32(-1i, 2147483647i), 2147483647i, -16819i, -16080i), func_4(func_1(~u_input.a, true, ~u_input.a.x), Struct_2(func_2(global2[_wgslsmith_index_u32(4294967295u, 19u)]).a), Struct_2(vec4<f32>(1f, 1f, 1f, 1f))), reverseBits(_wgslsmith_mult_i32(~53375i, -1i)), ~vec4<u32>(47118u, 1u >> (global0.x % 32u), global0.x ^ 43891u, 73665u)));
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, -1i, -1i, global1.x), ~vec4<i32>(0i, 51982i, -40300i, global1.x)), global1.x, firstLeadingBit(global1.x) << (~global0.x % 32u)), vec3<i32>(28151i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.a.yy), abs(global1.yy)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a.x, global1.x), u_input.a.yx), max(global1.zz, u_input.a.zy)))), vec3<i32>(-1i, ~81375i, abs(~1i)));
    var_0 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(0i), 1i), -var_0.x), 11798i), _wgslsmith_add_i32(var_0.x, ~firstLeadingBit(-38348i)));
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), firstTrailingBit(u_input.a) << (~countOneBits(~vec3<u32>(110271u, 4294967295u, 15419u)) % vec3<u32>(32u)), abs(u_input.a));
    let var_1 = Struct_1(_wgslsmith_mod_i32(0i, -select(20396i >> (global0.x % 32u), global1.x, true)), vec4<i32>(u_input.a.x, countOneBits(u_input.a.x), 0i & _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -28544i, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(23249i, u_input.a.x, 5893i, -1i), vec4<i32>(63586i, 23402i, var_0.x, -950i), vec4<i32>(var_0.x, -2147483647i, 1i, global1.x))), -(~(~var_0.x))), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)), !vec4<bool>(select(true, true, false), true, any(vec2<bool>(false, true)), true), vec4<bool>(all(func_4(Struct_2(vec4<f32>(-1137f, -2227f, 1453f, 846f)), Struct_2(vec4<f32>(2189f, -1604f, -1108f, 965f)), Struct_2(vec4<f32>(390f, 342f, 682f, 935f))).yy), all(vec4<bool>(true, false, false, false)), !(u_input.a.x != global1.x), _wgslsmith_sub_i32(-25068i, global1.x) > 1i)), ~(_wgslsmith_sub_i32(countOneBits(-2147483647i), 11881i) << (global0.x % 32u)), ~(~_wgslsmith_div_vec4_u32(min(vec4<u32>(global0.x, global0.x, 68030u, 3005u), vec4<u32>(global0.x, 53782u, 11232u, global0.x)), ~vec4<u32>(77426u, 47865u, global0.x, global0.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, _wgslsmith_f_op_f32(f32(-1f) * -661f), 1412f, _wgslsmith_f_op_f32(f32(-1f) * -213f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 411f, 1301f, -1599f), vec4<f32>(171f, 1179f, 289f, -1292f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -777f, -1848f, 363f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1241f, -963f, -1785f, 595f) + vec4<f32>(647f, 895f, -306f, 200f))), vec4<f32>(_wgslsmith_f_op_f32(floor(603f)), -1112f, -1000f, _wgslsmith_div_f32(-1907f, 117f)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(min(max((vec2<i32>(22129i, -44435i) | var_0.xy) << (~vec2<u32>(var_1.e.x, global0.x) % vec2<u32>(32u)), countOneBits(~global1.zz)), _wgslsmith_add_vec2_i32(~reverseBits(var_1.b.zy), firstLeadingBit(~vec2<i32>(13568i, 230i)))), var_2.a);
}

