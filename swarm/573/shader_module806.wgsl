struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 28256u, 109562u, 9927u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 47899u), 66326u, vec3<u32>(5943u, 0u, 0u)), Struct_1(vec2<u32>(0u, 0u), 1u, vec3<u32>(37236u, 94845u, 47355u)), vec4<i32>(3359i, i32(-2147483648), -25636i, 0i));

var<private> global2: array<vec4<i32>, 8>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    global1 = Struct_2(global1.b, global1.a, max(firstLeadingBit(vec4<i32>(max(4230i, -1i), -8102i, 1i, _wgslsmith_add_i32(arg_2.c.x, 12067i))), global1.c));
    global2 = array<vec4<i32>, 8>();
    var var_0 = Struct_1(~min(~abs(global1.a.c.xy), ~vec2<u32>(50867u, 1u) << (global1.b.c.yx % vec2<u32>(32u))), _wgslsmith_sub_u32(~abs(0u), 6529u), _wgslsmith_mod_vec3_u32(vec3<u32>(~global1.a.c.x, arg_2.b.c.x, global0.x ^ firstTrailingBit(33106u)), vec3<u32>(global1.b.c.x & 0u, 56697u, ~(~0u))));
    var_0 = Struct_1(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a.x, global1.b.b), abs(vec2<u32>(4623u, 6795u))), ~(vec2<u32>(100750u, 0u) ^ vec2<u32>(global1.b.c.x, 21633u)), ~vec2<u32>(15938u, 14390u)), var_0.a.x, global0.zwz & _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(abs(global1.a.c), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b.c.x, 25082u, 0u), arg_2.b.c)), vec3<u32>(28541u, arg_2.b.c.x, _wgslsmith_mod_u32(arg_2.b.b, 1u))));
    global1 = Struct_2(arg_2.b, Struct_1(arg_2.a.c.xx, reverseBits(18540u), var_0.c ^ vec3<u32>(1u, _wgslsmith_sub_u32(arg_2.a.c.x, 0u), global0.x)), arg_1);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(825f - 545f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_0.x, global1.c, Struct_2(Struct_1(arg_2.yz, arg_2.x, vec3<u32>(1u, 51247u, 10428u)), Struct_1(vec2<u32>(arg_1, 1u), arg_1, arg_2), vec4<i32>(-1i, global1.c.x, 19123i, 33706i)))))) + _wgslsmith_div_f32(-447f, -1316f)), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1600f, -2735f, -418f, var_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -616f, 1000f, var_0) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(814f, 1595f, var_0, var_0), vec4<f32>(var_0, 942f, -313f, var_0), vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(abs(-780f)), -622f, var_0), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -374f, var_0))))))))));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(12141u, 48430u) >> (vec2<u32>(select(15738u, arg_2.x, true), firstTrailingBit(global1.b.c.x)) % vec2<u32>(32u)), ~_wgslsmith_sub_u32(abs(38226u), 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_2.x, ~arg_2.x, arg_1 >> (59293u % 32u)), vec3<u32>(arg_2.x << (0u % 32u), arg_2.x, 0u))), Struct_1(arg_2.xx, ~_wgslsmith_add_u32(abs(arg_2.x), global0.x ^ 42622u), vec3<u32>(_wgslsmith_mod_u32(arg_2.x, 0u), arg_2.x, 4294967295u) & max(vec3<u32>(13014u, global0.x, global0.x), ~global1.a.c)), global1.c);
    var var_3 = vec3<bool>(true, var_0 > -1000f, select(!select(any(vec2<bool>(false, true)), true, true), 1000f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) * var_0), arg_2.x > 45476u));
    var_3 = select(select(select(select(vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(var_3.x, var_3.x, false), var_3.x), vec3<bool>(true, any(vec3<bool>(true, var_3.x, false)), arg_1 >= global1.a.a.x), vec3<bool>(false, var_3.x, !var_3.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_3.x, false), vec3<bool>(false, var_3.x, false), !var_3.x), select(!vec3<bool>(var_3.x, var_3.x, true), !vec3<bool>(var_3.x, var_3.x, var_3.x), select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(true, false, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x)))), var_2.b.c.x < max(~global0.x, firstTrailingBit(17391u))), !vec3<bool>(all(!vec4<bool>(false, var_3.x, var_3.x, false)), select(var_3.x, false || var_3.x, all(var_3.xz)), any(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(true, var_3.x, false)))), true);
    return Struct_1(~vec2<u32>(arg_1, global0.x) << (_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, var_2.b.c.x), var_2.a.c.xz), arg_2.zz) % vec2<u32>(32u)), _wgslsmith_dot_vec2_u32(global0.xw >> (vec2<u32>(global1.b.b, abs(arg_1)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(global1.b.a, global1.b.a)), ~abs(~var_2.b.c));
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    global1 = Struct_2(global1.b, func_2(vec4<i32>(-_wgslsmith_mult_i32(-2147483647i, u_input.a.x), -68207i, u_input.a.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.a.x, 2147483647i), global1.c), max(u_input.a.x, -15014i))), global0.x ^ global1.a.b, _wgslsmith_mult_vec3_u32(select(select(global1.b.c, vec3<u32>(0u, global1.a.a.x, global0.x), false), countOneBits(global0.wwy), true), ~(~global0.zww))), global1.c);
    var var_0 = func_2(vec4<i32>(~global1.c.x, -countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, u_input.a.x, u_input.a.x, 2147483647i), global1.c)), ~global1.c.x, u_input.a.x), 1u, ~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global1.a.c.x, 1u, global0.x)), vec3<u32>(~4294967295u, global1.a.c.x, _wgslsmith_div_u32(global1.b.c.x, 7795u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-599f)) * -385f);
    var var_2 = 19258u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(432f, 126f), vec2<f32>(-1689f, 617f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(233f, 179f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1105f, -946f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-603f, -827f))))), arg_0.xy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(498f, 1000f) * vec2<f32>(-844f, -609f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-601f, -117f) - vec2<f32>(-335f, 624f))) + vec2<f32>(_wgslsmith_f_op_f32(1498f + 166f), _wgslsmith_f_op_f32(f32(-1f) * -361f)))));
    return min(global1.c, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.wx | (~global1.c.wy & global1.c.yy);
    var var_1 = Struct_2(global1.b, Struct_1(global0.yz, global0.x, ~(~firstTrailingBit(vec3<u32>(0u, global1.a.b, 20445u)))), global1.c);
    let var_2 = Struct_2(var_1.a, Struct_1(var_1.a.a, 24311u, global1.b.c), func_1(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    let var_3 = Struct_2(Struct_1(global0.xz << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(6656u, global0.x, var_1.b.c.x, global1.a.b), vec4<u32>(var_1.a.b, 1532u, global1.a.c.x, var_1.a.b)), ~1u) % vec2<u32>(32u)), 1u & global1.a.c.x, global1.a.c), func_2(~func_1(vec4<bool>(true, true, true, true)), ~(~4294967295u << (func_2(vec4<i32>(-24313i, u_input.a.x, 29128i, 26343i), 1u, global1.a.c).c.x % 32u)), abs(var_2.a.c)), select(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global1.c, abs(vec4<i32>(18808i, -36337i, u_input.a.x, 4687i))), ~var_1.c & ~vec4<i32>(10428i, 1i, 1i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a.x), var_1.c.x, var_0.x | var_2.c.x, i32(-1i) * -70070i), abs(var_2.c) << (countOneBits(vec4<u32>(4294967295u, 52764u, global1.b.a.x, 31892u)) % vec4<u32>(32u))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_4 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(global1.c.x, -34303i, var_2.c.x, countOneBits(_wgslsmith_mult_i32(1i, 31863i))), vec4<i32>(abs(firstLeadingBit(-5922i)), 0i, firstLeadingBit(i32(-1i) * -25301i), firstLeadingBit(var_0.x >> (global0.x % 32u)))), 1u, _wgslsmith_clamp_vec3_u32(firstLeadingBit(firstTrailingBit(var_1.b.c)), global1.a.c, select(~global0.xxx, vec3<u32>(~77212u, ~2354u, ~global1.a.a.x), true)));
    global0 = reverseBits(firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(24026u, 45628u, var_1.a.c.x, global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.b, var_2.a.b, 30729u, 13931u), vec4<u32>(global1.b.c.x, 0u, 42222u, var_4.a.x))))));
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(18180u, abs(global1.a.b), max(1393u, var_2.a.a.x), global0.x)), abs(vec4<u32>(firstLeadingBit(36481u), abs(27009u), 0u, ~90572u))), vec4<u32>(_wgslsmith_clamp_u32(123502u, var_4.b, 0u << (global0.x % 32u)) ^ ~max(var_1.a.a.x, 124592u), 4294967295u, min(~_wgslsmith_mod_u32(4294967295u, 4294967295u), 1u), firstLeadingBit(max(global0.x, var_2.b.c.x) & (var_4.c.x >> (var_1.a.a.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~func_1(vec4<bool>(true, true, true, false)).x, _wgslsmith_sub_i32(26496i & var_0.x, -global1.c.x)), 11111i);
}

