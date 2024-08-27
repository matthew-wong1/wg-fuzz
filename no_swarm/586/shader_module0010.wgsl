struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    var var_0 = Struct_4(arg_0.a);
    var var_1 = !(!arg_0.b.zx);
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(arg_1.yyy, min(vec3<u32>(_wgslsmith_sub_u32(u_input.a, 46306u), _wgslsmith_sub_u32(u_input.d.x, 0u), u_input.d.x), max(~vec3<u32>(1u, 1u, arg_1.x), countOneBits(vec3<u32>(u_input.d.x, arg_1.x, u_input.d.x)))), ~min(arg_1.yzz, u_input.d.xwy)));
    let var_3 = arg_0.a;
    let var_4 = var_3;
    return u_input.c.x;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = Struct_3(Struct_1(countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.xw, vec2<i32>(u_input.c.x, var_0), vec2<i32>(var_0, var_0)), vec2<i32>(0i, var_0))), vec4<i32>(abs(max(var_0, 15752i)), ~30495i, var_0, _wgslsmith_add_i32(func_3(Struct_2(Struct_1(vec2<i32>(2147483647i, var_0), u_input.c, -2400f, vec4<f32>(-800f, 1000f, -448f, 322f)), vec4<bool>(true, true, true, false), u_input.c.zz, vec4<bool>(false, false, true, false)), u_input.d, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -1i, 0i), u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f + -629f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(640f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2166f, -2089f, 634f, -323f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, -885f, 820f, 1040f))))), Struct_2(Struct_1(countOneBits(select(vec2<i32>(0i, u_input.b), vec2<i32>(var_0, var_0), vec2<bool>(true, false))), abs(-u_input.c), -171f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1913f, 1634f, 343f, 255f)), vec4<f32>(199f, 895f, -469f, -616f)))), !vec4<bool>(true, true, any(vec4<bool>(true, true, false, false)), false), u_input.c.yz, vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    var_1 = Struct_3(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0, var_1.b.c.x, u_input.b), u_input.c.xyz, false), var_1.a.b.xwx), 42128i), _wgslsmith_div_vec4_i32(vec4<i32>(-29742i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_1.b.a.a.x), u_input.c.zzx), _wgslsmith_mult_i32(0i, 0i), var_1.b.c.x), vec4<i32>(-1i) * -vec4<i32>(var_0, 71334i, var_0, var_1.a.b.x)), _wgslsmith_f_op_f32(-var_1.b.a.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1106f, -739f, -1000f, var_1.a.d.x), vec4<f32>(var_1.a.d.x, var_1.b.a.d.x, -731f, 526f))), _wgslsmith_f_op_vec4_f32(-var_1.b.a.d))), var_1.b);
    let var_2 = Struct_1(-_wgslsmith_mod_vec2_i32(~var_1.a.a, u_input.c.zz) ^ ~var_1.a.b.zy, abs(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.c.x, var_1.a.a.x, var_1.a.a.x, u_input.b), vec4<i32>(-38906i, -2147483647i, 2147483647i, -2147483647i)), _wgslsmith_mod_i32(14297i, var_1.b.c.x)), i32(-1i) * -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.a.b.x, -13301i), abs(var_0)), firstLeadingBit(-12869i))), 398f, vec4<f32>(1074f, var_1.a.d.x, var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.a.d.x))))));
    var_1 = Struct_3(var_1.b.a, Struct_2(Struct_1(firstTrailingBit(vec2<i32>(41401i, var_2.b.x) << (u_input.d.zz % vec2<u32>(32u))), _wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.c), u_input.c << (vec4<u32>(1u, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))), 1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -523f, -1000f, var_1.b.a.d.x)), var_1.a.d)), select(vec4<bool>(all(vec3<bool>(true, var_1.b.b.x, var_1.b.b.x)), var_1.b.d.x, !var_1.b.d.x, var_1.b.d.x), vec4<bool>(false, any(var_1.b.b.xxw), all(var_1.b.b.xy), true), false), vec2<i32>(reverseBits(var_2.b.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, var_1.a.b.x), var_0)), var_1.b.b));
    return Struct_2(var_2, var_1.b.d, ~vec2<i32>(reverseBits(var_0), var_1.b.a.a.x), !var_1.b.b);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = min(~u_input.a, u_input.d.x >> (u_input.d.x % 32u));
    var var_1 = abs(1u);
    var var_2 = Struct_1(u_input.c.yy, min(~u_input.c, vec4<i32>(_wgslsmith_add_i32(u_input.b << (1u % 32u), abs(26642i)), -325i, arg_1.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b.x, 6952i, -22440i, arg_1.c.x), vec4<i32>(-2147483647i, 9788i, arg_1.c.x, 2613i)), ~u_input.b))), _wgslsmith_f_op_f32(-arg_1.a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1.a.d)))) - arg_1.a.d));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f))) * -131f), _wgslsmith_f_op_f32(sign(arg_1.a.d.x)), var_2.c, arg_1.a.d.x);
    var var_4 = u_input.b;
    return var_0;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mult_u32(func_4(true, func_2()), reverseBits(~reverseBits(u_input.a))) < 42433u;
    let var_1 = Struct_4(func_2().a);
    var var_2 = var_1.a.d;
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2417f, var_1.a.c, var_1.a.d.x)))))), _wgslsmith_f_op_vec4_f32(-var_1.a.d)));
    var_0 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(var_1.a.c <= var_1.a.d.x, true, func_2().b.x, any(vec3<bool>(true, true, true))), var_2.x <= var_2.x));
    return reverseBits(reverseBits(~func_2().c.x & _wgslsmith_dot_vec2_i32(var_1.a.b.yw, vec2<i32>(u_input.c.x, -28851i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((firstTrailingBit(u_input.c.zz >> (u_input.d.wy % vec2<u32>(32u))) << ((_wgslsmith_sub_vec2_u32(u_input.d.zw, vec2<u32>(u_input.a, 10568u)) | u_input.d.wy) % vec2<u32>(32u))) ^ ~vec2<i32>(_wgslsmith_div_i32(1i, -83008i), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -2147483647i)), vec4<i32>(u_input.c.x, max(u_input.c.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(min(2768i, -47859i), max(u_input.c.x, 3510i), abs(u_input.c.x)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), ~u_input.c.yyy)), 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1589f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(min(-437f, _wgslsmith_f_op_f32(f32(-1f) * -1168f))), 1000f)));
    let var_1 = false;
    var var_2 = vec3<i32>(-1i >> (~select(1u, u_input.a, true) % 32u), func_1(), 25985i) & ~vec3<i32>(var_0.a.x, -var_0.a.x << (u_input.a % 32u), _wgslsmith_dot_vec3_i32(~u_input.c.wzy, vec3<i32>(u_input.c.x, var_0.a.x, u_input.c.x)));
    let var_3 = u_input.d;
    var_2 = _wgslsmith_sub_vec3_i32(~u_input.c.xzz, var_0.b.wwy);
    var var_4 = Struct_3(var_0, func_2());
    var var_5 = var_4.b.b.x;
    var var_6 = max(reverseBits(max(u_input.c, var_0.b)), var_4.a.b >> (~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_3.x, 21193u, u_input.d.x), u_input.d) % vec4<u32>(32u))) << (max(_wgslsmith_mult_vec4_u32(abs(firstTrailingBit(vec4<u32>(var_3.x, u_input.a, 17588u, 28117u))), var_3), countOneBits(u_input.d)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1625f * var_4.b.a.d.x), func_2().a.d.x, var_0.d.x) + _wgslsmith_f_op_vec3_f32(var_4.a.d.wyy + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-104f, var_4.a.d.x, var_0.d.x)))))), var_4.a.c, -1000f, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 0u, u_input.d.x, var_3.x), u_input.d) | u_input.a), _wgslsmith_div_u32(countOneBits(~var_3.x), u_input.a)));
}

