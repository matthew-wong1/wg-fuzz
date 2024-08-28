struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 32>;

var<private> global2: vec3<u32> = vec3<u32>(29718u, 0u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> bool {
    let var_0 = !vec3<bool>(!(!arg_2.a), all(!(!vec2<bool>(arg_2.a, true))), !(!arg_0.b.x));
    var var_1 = arg_2;
    global1 = array<Struct_2, 32>();
    var var_2 = _wgslsmith_sub_i32(var_1.c.c.b.x, u_input.a);
    var var_3 = Struct_2(vec3<u32>(~(arg_0.a.x ^ arg_2.c.a.x), firstTrailingBit(32983u) << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 14115u, 34437u, global2.x)) % 32u), max(1u, arg_0.a.x | 1388u)) ^ arg_0.a, !select(vec2<bool>(all(vec2<bool>(true, false)), false), select(vec2<bool>(var_0.x, arg_0.b.x), var_0.xy, select(false, true, arg_2.a)), var_1.c.b), Struct_1(arg_2.c.c.c, abs(vec4<i32>(firstTrailingBit(-4682i), -var_1.c.c.b.x, 15955i & u_input.a, arg_2.c.c.a | -1i)), _wgslsmith_dot_vec2_i32(var_1.c.c.d.yx, select(~vec2<i32>(arg_2.c.c.b.x, u_input.e.x), -arg_2.c.c.b.yx, !var_0.x)), _wgslsmith_mult_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_2.c.c.a, arg_0.c.a), var_1.c.c.b.www), -var_1.c.c.b.wzy), ~(-arg_0.c.d)), arg_2.c.c.e));
    return true;
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = Struct_3(false, ~abs(arg_0.c.a), Struct_2(vec3<u32>(45984u, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(1u, 10323u)), 55454u), vec2<bool>(!(u_input.c != 20839u), func_3(Struct_2(u_input.d.xyx, arg_0.c.b, arg_0.c.c), arg_0.c.c.e.x, arg_0)), arg_0.c.c), true);
    let var_1 = arg_0.d;
    global1 = array<Struct_2, 32>();
    var var_2 = var_0.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.e.x)) + var_0.c.c.e.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.c.e.yy))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> vec4<f32> {
    let var_0 = -2147483647i;
    global0 = _wgslsmith_f_op_f32(round(arg_0.x));
    global0 = arg_2;
    var var_1 = arg_0.x;
    global2 = abs(~u_input.d.yyw);
    return vec4<f32>(arg_0.x, -233f, arg_0.x, _wgslsmith_f_op_vec2_f32(func_2(Struct_3(!(!arg_1.x), vec3<u32>(22217u, global2.x << (arg_3 % 32u), 4294967295u & arg_3), Struct_2(vec3<u32>(77712u, 23470u, 4294967295u), select(vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, false), true), Struct_1(u_input.b, vec4<i32>(var_0, u_input.b, 2147483647i, 0i), u_input.b, u_input.e, vec4<f32>(-1468f, arg_0.x, -1174f, arg_0.x))), all(vec4<bool>(arg_1.x, arg_1.x, true, true))))).x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(true, vec3<u32>(arg_2, arg_2, u_input.c), Struct_2(u_input.d.xxy, vec2<bool>(true, false), Struct_1(u_input.e.x, vec4<i32>(u_input.e.x, u_input.b, u_input.a, 1i), u_input.b, vec3<i32>(32385i, u_input.e.x, u_input.a), vec4<f32>(-1715f, 1749f, arg_0.x, -700f))), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz + vec2<f32>(arg_0.x, 216f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(662f, arg_1.x) + _wgslsmith_div_f32(-772f, 379f)), 1084f))), vec4<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(44668i, u_input.b, u_input.e.x, u_input.e.x), vec4<i32>(u_input.b, -2147483647i, -40986i, u_input.e.x)) >> (~global2.x % 32u)) <= 34292i, select(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), select(1i, u_input.e.x, false) > (i32(-1i) * -28590i)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)) || any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), true), _wgslsmith_f_op_f32(round(arg_1.x)), ~(~1u | countOneBits(~arg_2))));
    var var_1 = _wgslsmith_add_vec4_u32(~u_input.d, max(u_input.d, u_input.d));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_sub_vec3_u32(max(u_input.d.zzx, vec3<u32>(var_1.x, ~global2.x, 11751u)), vec3<u32>(4294967295u, 38262u, 33164u)), global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(u_input.c, var_1.x) & 0u) & _wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.x, var_1.x), ~vec3<u32>(var_1.x, 0u, arg_2))), 32u)], true);
    var var_3 = Struct_3(true, var_1.ywy, var_2.c, true);
    let var_4 = var_3.c.c.e;
    return vec4<i32>(-abs(~u_input.e.x), _wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -var_2.c.c.a, 9799i), -((u_input.e.x | u_input.a) ^ firstTrailingBit(-10613i))), -_wgslsmith_mult_i32(var_3.c.c.b.x | var_3.c.c.d.x, var_3.c.c.c) >> (~var_1.x % 32u), abs(~_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_mod_i32(var_2.c.c.b.x, var_2.c.c.a))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_0 = !all(select(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, false, arg_2, arg_2)), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(true, arg_2, true, arg_2)), vec4<bool>(true, true, true, false))) | true;
    global1 = array<Struct_2, 32>();
    var var_1 = arg_3.d.zz >> (vec2<u32>(arg_1, 41358u) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))), 796f >= arg_3.e.x)) * arg_3.e.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_3.e.ww, !select(vec4<bool>(true, arg_2, false, false), vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(true, true, false, true)), arg_3.e.x, ~4294967295u)).x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_5(u_input.e.x, abs(_wgslsmith_add_u32(global2.x, 4294967295u << (global2.x % 32u))) & 0u, true, Struct_1(countOneBits(0i), _wgslsmith_clamp_vec4_i32(-min(vec4<i32>(u_input.b, 60615i, -2147483647i, u_input.a), vec4<i32>(-2147483647i, -30782i, u_input.b, 2147483647i)), func_1(vec3<f32>(-1319f, 1500f, -1042f), vec3<f32>(-573f, -705f, -820f), 18745u) | vec4<i32>(2147483647i, u_input.a, u_input.b, -45325i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b, u_input.b, 13897i)), vec4<i32>(u_input.b, -6695i, -1i, u_input.e.x))), 39265i, -vec3<i32>(u_input.e.x & u_input.b, max(2147483647i, -2147483647i), -71431i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-663f, -818f, -1163f, 1253f))) + vec4<f32>(-803f, -287f, 1670f, -1298f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(203f, -346f, 198f, 1919f), vec4<f32>(-1392f, -877f, 368f, 1249f)) + vec4<f32>(408f, -2223f, -1797f, -1322f))))));
    let var_0 = Struct_1(u_input.e.x, -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, 0i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 29944i)), vec4<i32>(u_input.b, u_input.e.x, u_input.e.x, u_input.e.x) << (u_input.d % vec4<u32>(32u))), vec4<i32>(u_input.b >> (4294967295u % 32u), -20i >> (u_input.d.x % 32u), i32(-1i) * -37227i, ~u_input.b)), u_input.a, ~(u_input.e & vec3<i32>(_wgslsmith_div_i32(u_input.b, u_input.e.x), countOneBits(u_input.a), u_input.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(f32(-1f) * -1234f), -709f, _wgslsmith_f_op_f32(round(-1302f)))))));
    var var_1 = false;
    var var_2 = Struct_1(0i, var_0.b, firstLeadingBit(-2147483647i), var_0.b.xyy >> (u_input.d.zyw % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.e)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.e.x, var_0.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.e.x, 527f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e.x, -1888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1284f))), var_0.e.x), var_2.e)));
    var_2 = Struct_1(-2147483647i, _wgslsmith_clamp_vec4_i32(var_2.b, ~(~var_0.b), vec4<i32>(u_input.e.x >> (0u % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a, u_input.a, 15112i, -1i), vec4<i32>(u_input.b, var_2.d.x, u_input.b, 1i)), _wgslsmith_div_i32(~(-9094i), ~var_2.d.x), ~var_2.c)), 49063i, firstLeadingBit(-func_1(var_0.e.zyx, _wgslsmith_f_op_vec3_f32(sign(var_2.e.wwy)), ~global2.x).wzx), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-444f, 288f)))), var_0.e.x, -1192f, -1932f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-1232f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(-(~u_input.e.x), firstTrailingBit(firstTrailingBit(0u)), !select(false, true, false), Struct_1(41822i, vec4<i32>(-26403i, var_0.c, var_2.c, -19600i), _wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(var_2.c, var_2.c, 0i, u_input.b)), ~vec3<i32>(-27186i, var_0.a, var_0.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(-259f, -645f, 138f, 441f), var_0.e)))))), vec2<u32>(~u_input.d.x, ~(~(~1u))), _wgslsmith_sub_i32(u_input.e.x, var_0.d.x));
}

