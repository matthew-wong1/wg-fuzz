struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> Struct_1 {
    return Struct_1(false, u_input.a.xx);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-799f * 1518f);
    var_0 = -112f;
    let var_1 = Struct_2(func_1(), u_input.c.x & _wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(u_input.c.x), ~(~7244u)));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2099f, -1303f, 748f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, 897f, 219f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f + 1051f)), _wgslsmith_f_op_f32(678f + _wgslsmith_f_op_f32(-1000f - 785f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, 1078f, -553f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1195f * -1877f), _wgslsmith_div_f32(1000f, -124f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) - -510f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f))), var_2.a)));
    return Struct_1(func_1().a, reverseBits(vec2<i32>(u_input.a.x ^ var_1.a.b.x, -2147483647i & arg_1) >> (reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(14095u, 48579u), vec2<u32>(12352u, 4294967295u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = func_3(~_wgslsmith_div_vec4_i32(u_input.a, u_input.a), 12724i);
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-5044i, arg_0.a.b.x), select(var_0.b.x, _wgslsmith_div_i32(1i >> (arg_0.b % 32u), firstLeadingBit(var_0.b.x)), any(vec3<bool>(arg_2.x, false, false))), 8600i, var_0.b.x), select(u_input.a, _wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, -1i, -62547i, 2147483647i), u_input.a | vec4<i32>(0i, u_input.a.x, 85625i, 108979i), arg_2), ~(~u_input.a)), arg_2), _wgslsmith_clamp_vec4_i32(firstTrailingBit(~u_input.a), vec4<i32>(firstLeadingBit(-2147483647i) & _wgslsmith_mod_i32(0i, arg_3.a.b.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.a.b.x, u_input.b), vec2<i32>(38221i, -1i)), min(15933i, -77884i), 25874i), firstTrailingBit(~u_input.a) << (((vec4<u32>(68071u, u_input.c.x, 1u, 4294967295u) | vec4<u32>(18130u, arg_3.b, arg_3.b, arg_0.b)) >> (_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(1u, u_input.c.x, 4294967295u, arg_3.b)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = max(-vec4<i32>(arg_3.a.b.x & arg_3.a.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, arg_3.a.b.x), func_1().b.x), func_1().b.x, _wgslsmith_mod_i32(2147483647i, var_1.x)), -_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, 0i, -2147483647i, 49306i), ~u_input.a));
    var var_2 = select(vec2<bool>(false, !all(!vec4<bool>(arg_2.x, arg_2.x, false, arg_3.a.a))), vec2<bool>(true, all(arg_2.yzw)), select(!(!arg_2.wy), select(!arg_2.xy, !vec2<bool>(arg_2.x, arg_1), true), select(select(vec2<bool>(arg_0.a.a, arg_3.a.a), select(arg_2.zw, arg_2.xx, arg_2.zx), !arg_2.zx), arg_2.yz, true)));
    let var_3 = !(arg_0.a.b.x <= ~countOneBits(_wgslsmith_dot_vec3_i32(var_1.zyz, var_1.www)));
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), ~min(1u, _wgslsmith_mod_u32(func_2(Struct_2(Struct_1(false, u_input.a.yz), 66431u), true, vec4<bool>(false, true, false, false), Struct_2(Struct_1(true, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.c.x)), 16798u)));
    var var_1 = u_input.c;
    var var_2 = var_0.a;
    let var_3 = 4294967295u;
    var var_4 = Struct_2(var_0.a, _wgslsmith_mult_u32(4294967295u, var_3) & var_3);
    var_1 = _wgslsmith_mult_vec4_u32(abs(u_input.c), ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 4294967295u, 0u, var_1.x) >> (u_input.c % vec4<u32>(32u))), u_input.c | (vec4<u32>(17057u, var_1.x, u_input.c.x, 20354u) | vec4<u32>(1u, var_0.b, var_3, var_4.b))));
    var_4 = var_0;
    let var_5 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3683i, 31532i, var_0.a.b.x), ~u_input.a.zwz), ~1i, _wgslsmith_dot_vec2_i32(var_0.a.b ^ vec2<i32>(5073i, var_0.a.b.x), vec2<i32>(var_2.b.x, 20482i)), var_4.a.b.x) ^ select(u_input.a, vec4<i32>(_wgslsmith_div_i32(-9302i, var_4.a.b.x), 1i, 12548i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(var_4.a.b.x, u_input.a.x))), true), ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.b.x, -25677i, -1i, var_2.b.x), vec4<i32>(var_4.a.b.x, -2147483647i, 90565i, 2147483647i)), ~u_input.a) ^ countOneBits(firstTrailingBit(select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, -22875i), var_0.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~((u_input.c.xzz ^ select(vec3<u32>(1u, var_1.x, 3464u), vec3<u32>(62784u, 23300u, var_3), vec3<bool>(false, true, false))) << (~max(vec3<u32>(var_1.x, 4294967295u, 4294967295u), vec3<u32>(17294u, var_0.b, var_3)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(303f))))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1610f * 990f) - 164f))), _wgslsmith_div_u32(4294967295u, var_4.b), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(reverseBits(var_5.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, 2147483647i), _wgslsmith_dot_vec4_i32(var_5, vec4<i32>(-20848i, 2147483647i, var_5.x, var_5.x)), var_2.b.x), _wgslsmith_dot_vec4_i32(reverseBits(var_5), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(11130i, 1i, -13391i, var_0.a.b.x), ~var_5))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1514f, 1f))));
}

