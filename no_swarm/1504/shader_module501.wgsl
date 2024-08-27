struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = i32(-1i) * -firstLeadingBit(_wgslsmith_add_i32(firstLeadingBit(-37760i), -76610i));
    var var_1 = _wgslsmith_mod_u32(arg_0.x, min(0u, ~firstLeadingBit(u_input.d.x)));
    var_0 = -30194i;
    var_1 = 14012u;
    var_1 = 1u;
    return 926f;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * arg_0);
    var var_2 = vec3<i32>(-(u_input.c.x >> (_wgslsmith_mod_u32(abs(0u), u_input.a) % 32u)), abs(u_input.c.x), abs(u_input.c.x) >> (5150u % 32u));
    var var_3 = arg_1 & true;
    let var_4 = -27845i;
    return _wgslsmith_div_i32(~countOneBits(i32(-1i) * -1i), ~firstTrailingBit(39002i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = ~u_input.d.x;
    var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(1u), countOneBits(~u_input.d.x), u_input.b.x), 41775u);
    var var_1 = ~(~(reverseBits(vec4<i32>(-24231i, arg_1.a, arg_2.x, arg_1.a)) & -vec4<i32>(-6418i, u_input.c.x, u_input.c.x, -8936i)) << (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 60925u, 4294967295u, 102770u), vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.a), true), vec4<u32>(u_input.d.x, 912u, 0u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, 18636u)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.d.x, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u))), Struct_1(firstTrailingBit(39780i)), arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(208f - 859f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1706f))))))));
    var var_3 = arg_0;
    return 21897i > arg_0.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = vec4<bool>(func_5(var_0, Struct_1(func_4(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1817u), Struct_1(-13205i), Struct_1(-1i))), select(false, false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1639f, -177f, 565f) - vec3<f32>(684f, 1149f, -1192f)))), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.a, u_input.c.x), vec3<i32>(arg_0.x, -1i, -2147483647i)), abs(u_input.c.x), _wgslsmith_sub_i32(-26828i, var_0.a)), ~arg_1.a)), true, true, !(!func_5(Struct_1(arg_1.a), Struct_1(arg_2.x), ~vec3<i32>(arg_1.a, -75950i, 35800i))));
    var var_2 = Struct_1(~_wgslsmith_mult_i32(var_0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zx, vec2<i32>(u_input.c.x, -1i)), u_input.c.zx)));
    var var_3 = ~min(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.d.x), vec3<u32>(u_input.a, u_input.b.x, u_input.d.x)), 4294967295u, _wgslsmith_clamp_u32(u_input.a, u_input.d.x, u_input.d.x)), ~(~vec4<u32>(0u, u_input.d.x, 60768u, u_input.b.x))), vec4<u32>(62620u, _wgslsmith_div_u32(1u, ~u_input.b.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, u_input.d.x, 1u, 11006u), vec4<u32>(u_input.a, u_input.b.x, u_input.d.x, u_input.d.x)), reverseBits(vec4<u32>(u_input.a, 46993u, 4294967295u, 30597u))), u_input.a));
    var_3 = reverseBits(~(~(~vec4<u32>(1u, var_3.x, u_input.a, 0u)))) << (_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(0u) & ~var_3.x, var_3.x, 1u, abs(~68782u)), _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(46701u, 0u, u_input.b.x, u_input.a)), select(vec4<u32>(4294967295u, 5003u, u_input.b.x, var_3.x) & vec4<u32>(4294967295u, u_input.d.x, 44616u, 0u), vec4<u32>(32304u, u_input.b.x, var_3.x, 1u), select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x))))) % vec4<u32>(32u));
    return ~(1i << (u_input.d.x % 32u)) << (1u % 32u);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.c.xy >> (abs(~u_input.b) % vec2<u32>(32u));
    var var_1 = -firstLeadingBit(_wgslsmith_dot_vec2_i32(var_0, abs(var_0))) & abs(var_0.x);
    let var_2 = _wgslsmith_div_u32(42767u, ~(~u_input.b.x));
    let var_3 = Struct_1(func_2(var_0 | u_input.c.zx, Struct_1(0i), abs(-(vec4<i32>(var_0.x, 37060i, -51169i, 1i) >> (vec4<u32>(48220u, var_2, u_input.b.x, 4294967295u) % vec4<u32>(32u))))));
    var var_4 = !select(!(!any(vec4<bool>(false, false, true, false))), true, !all(vec3<bool>(false, false, false)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(abs(min(abs(vec4<u32>(0u, u_input.b.x, u_input.a, u_input.d.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 6745u, u_input.d.x, 20928u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.b.x)), countOneBits(u_input.b.x), 1u, u_input.d.x))), ~_wgslsmith_sub_vec4_u32(min(select(vec4<u32>(0u, u_input.b.x, 10874u, u_input.d.x), vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u), vec4<bool>(true, false, false, false)), vec4<u32>(u_input.a, 3749u, u_input.d.x, u_input.b.x)), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 0u) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(u_input.d.x, 3018u, 1u, u_input.d.x))));
    var var_1 = func_1(86022u, ~(u_input.c.x << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(11720u, u_input.d.x), abs(var_0.x)) % 32u)));
    let var_2 = func_1(4294967295u, 32882i >> (u_input.a % 32u));
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, ~var_0.x, ~473u, ~_wgslsmith_sub_u32(firstLeadingBit(var_0.x), u_input.d.x)), min(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.d.x, 4294967295u, var_0.x, 48914u), vec4<u32>(35248u, 85617u, 4294967295u, 19732u), vec4<bool>(true, false, true, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(23843u, 4294967295u, var_0.x, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(0u, var_0.x, var_0.x, u_input.a))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 0u, u_input.d.x, u_input.a), vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.d.x))) >> (vec4<u32>(9260u & (var_0.x << (1484u % 32u)), u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 51837u) << ((12683u & u_input.d.x) % 32u), var_0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x, 2833u, 18553u) >> (vec4<u32>(1u, u_input.b.x, 9987u, 69801u) % vec4<u32>(32u))) ^ ~vec4<u32>(0u, 1u, u_input.b.x, 24698u), firstTrailingBit(vec4<u32>(~0u, select(u_input.a, 17682u, true), ~1786u, 1u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(1064f, 1556f, false)), _wgslsmith_f_op_f32(501f * 1344f)), vec2<f32>(_wgslsmith_f_op_f32(-1217f - 1000f), -688f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-623f, 204f))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, firstTrailingBit(vec2<i32>(~(-1i ^ var_1.a), _wgslsmith_div_i32(var_2.a, 42911i << (var_0.x % 32u)))), max(vec3<i32>(var_2.a, abs(2147483647i), 1i), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.c, ~u_input.c), ~abs(vec3<i32>(var_2.a, u_input.c.x, -37048i)))), firstTrailingBit(9634u), ~(~(~(var_0.wyw << (var_0.yww % vec3<u32>(32u))))));
}

