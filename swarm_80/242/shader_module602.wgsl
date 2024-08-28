struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1135f, 694f, -616f, -205f), vec4<f32>(-1000f, -730f, -861f, -1000f), vec4<f32>(-509f, -679f, -1210f, 776f), vec4<f32>(-794f, 1000f, -1000f, 1000f), vec4<f32>(564f, 798f, 1374f, -1000f), vec4<f32>(882f, -1000f, -1828f, 1000f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    var var_0 = countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, arg_0.c, 1i >> (0u % 32u)), vec3<i32>(arg_0.a.x, 54085i, arg_0.a.x << (0u % 32u))));
    var var_1 = reverseBits(4294967295u);
    var var_2 = Struct_2(_wgslsmith_clamp_vec3_i32(arg_0.b.a, -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 5077i, -1i, -2147483647i), vec4<i32>(arg_2.x, 47381i, 4405i, -1i)), _wgslsmith_clamp_i32(var_0.x, arg_2.x, -1i), ~arg_0.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(arg_0.a.x), -2147483647i, min(-2147483647i, arg_0.b.a.x)), vec3<i32>(arg_0.c << (1u % 32u), 4567i, var_0.x))));
    var var_3 = ~30089i;
    let var_4 = arg_0.b;
    return 973f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.b, ~(~abs(u_input.b) << (u_input.b % vec4<u32>(32u))));
    var var_1 = -2000f;
    let var_2 = Struct_1(min(~u_input.b, u_input.b), 176f, countOneBits(vec3<u32>(~u_input.a, ~reverseBits(0u), _wgslsmith_div_u32(var_0, 47353u))));
    let var_3 = _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(266f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -689f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(-1i, 46062i), Struct_2(vec3<i32>(0i, 26365i, 1i)), 3963i, true, 0u), true, select(vec2<i32>(-5848i, 1i), vec2<i32>(-2716i, 1i), false))), -517f)));
    var var_4 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-28617i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-27432i, -28246i, 23360i), vec3<i32>(-1i, 36014i, -10963i)), 43211i), -vec4<i32>(9349i, -19664i >> (var_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, -12120i, -13712i), vec4<i32>(0i, -1i, -26527i, -18324i)), 2147483647i)), abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-21811i, -51135i, 1i, -45365i), vec4<i32>(2147483647i, -11008i, -2147483647i, 2147483647i) << (u_input.b % vec4<u32>(32u))), 40626i)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(-55379i, 1i, _wgslsmith_add_i32(-2147483647i, 0i)) ^ firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 19628i, 31996i), vec3<i32>(-45855i, 2147483647i, -15875i)))));
    return Struct_3(~(-(vec2<i32>(-35241i, 44303i) << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u)))) | max(firstLeadingBit(vec2<i32>(1i, -1i)), vec2<i32>(-5075i, 1i)), Struct_2(reverseBits(vec3<i32>(2147483647i, 1i, ~(-1i)))), _wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, 41299i)), vec3<i32>(-2359i, i32(-1i) * -7599i, 1i), true), _wgslsmith_mod_vec3_i32(~vec3<i32>(-15314i, -1i, 2530i), select(_wgslsmith_div_vec3_i32(vec3<i32>(14331i, 2147483647i, -33540i), vec3<i32>(43791i, 1i, -29260i)), abs(vec3<i32>(2147483647i, -690i, 22904i)), vec3<bool>(true, true, true)))), false, ~1u);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<u32>(~(~u_input.a), u_input.a, 4294967295u, u_input.a), _wgslsmith_f_op_f32(func_3(arg_1.a, false, -vec2<i32>(~arg_1.b.a.x, 2147483647i))), vec3<u32>(~10583u, select(func_2().e, _wgslsmith_mod_u32(4294967295u, 4294967295u) | ~arg_1.a.e, false), u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1528f, _wgslsmith_f_op_f32(sign(-707f)))) * 1048f);
    var var_2 = select(_wgslsmith_div_u32(var_0.a.x, 0u), ~120115u, arg_1.a.d);
    let var_3 = func_2().b;
    let var_4 = abs(var_3.a.x ^ -2147483647i);
    return Struct_2(arg_1.c.a);
}

fn func_1() -> f32 {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-907f * 1343f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2280f, 922f)))), Struct_4(func_2(), func_2().b, Struct_2(-vec3<i32>(1i, 1i, 1i))), -(vec2<i32>(-1i) * -vec2<i32>(0i, -20969i)));
    let var_1 = Struct_4(Struct_3(~abs(min(vec2<i32>(32981i, var_0.a.x), vec2<i32>(var_0.a.x, -2147483647i))), Struct_2(-abs(vec3<i32>(var_0.a.x, var_0.a.x, 0i))), -_wgslsmith_mult_i32(-var_0.a.x, var_0.a.x), true, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x) ^ _wgslsmith_mod_u32(~u_input.a, 4294967295u)), var_0, var_0);
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    return _wgslsmith_f_op_f32(f32(-1f) * -152f);
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_2(max(~(~vec3<i32>(-30989i, 13645i, 2147483647i)), firstLeadingBit(~reverseBits(vec3<i32>(12129i, 2147483647i, 23439i)))));
    var var_1 = Struct_1(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(1u, u_input.a))), ~firstLeadingBit(u_input.b.yz)), _wgslsmith_mod_u32(arg_3, countOneBits(~17534u)), max(1u, 74689u << (max(39618u, u_input.a) % 32u))), -552f, u_input.b.xww);
    var var_2 = arg_2;
    var var_3 = 776f;
    let var_4 = abs(select(21949u, _wgslsmith_add_u32(~69004u, reverseBits(u_input.a)) >> (arg_3 % 32u), ~1u <= (var_1.a.x | firstLeadingBit(1u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_f32(-431f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(474f - -298f), -1385f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f + -1784f) - _wgslsmith_f_op_f32(round(1655f)))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * -2099f), ~u_input.b.x);
    var var_1 = func_5(var_0.d, false, -719f, u_input.a >> (~var_0.e % 32u)).b;
    global0 = array<vec4<f32>, 6>();
    var var_2 = var_0.d;
    var_2 = 1603f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1105f)));
    var var_3 = func_4(vec2<f32>(1f, 1f), Struct_4(Struct_3(-var_0.b.a.yy, func_2().b, abs(_wgslsmith_clamp_i32(var_0.a.x, var_1.a.x, 20374i)), any(!vec2<bool>(var_0.d, var_0.d)), func_2().e), Struct_2(vec3<i32>(-2147483647i, var_0.b.a.x, 0i)), var_0.b), vec2<i32>(countOneBits(var_1.a.x), func_2().b.a.x >> (var_0.e % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(func_2().b.a, -abs(vec3<i32>(var_3.a.x, 2147483647i, var_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-970f, -1615f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2042f, 1347f)), vec2<bool>(var_0.d, var_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1384f, 605f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 351f))), vec2<f32>(-418f, -254f))))), vec4<f32>(-326f, 1700f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1269f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -393f), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, var_0.e >> (min(u_input.a, 63513u) % 32u)), u_input.b.yy));
}

