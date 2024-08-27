struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, true), vec2<u32>(21497u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648)), 2147483647i), Struct_1(vec2<i32>(-10243i, -4618i), vec3<bool>(false, false, true), vec2<u32>(0u, 3621u), vec4<i32>(0i, 2147483647i, 58849i, 1i), 33563i), Struct_1(vec2<i32>(-2037i, -1i), vec3<bool>(false, false, true), vec2<u32>(0u, 4294967295u), vec4<i32>(0i, -41083i, 49463i, -1i), 1i), Struct_1(vec2<i32>(0i, 0i), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 0u), vec4<i32>(-47312i, 1i, -37220i, -7883i), 2147483647i), Struct_1(vec2<i32>(-8529i, 1i), vec3<bool>(false, true, false), vec2<u32>(32703u, 1u), vec4<i32>(-2249i, 18302i, 18661i, -6833i), 22758i), Struct_1(vec2<i32>(12003i, 39527i), vec3<bool>(false, false, false), vec2<u32>(84217u, 1u), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), 6860i), Struct_1(vec2<i32>(-2705i, 1i), vec3<bool>(false, true, false), vec2<u32>(7163u, 57204u), vec4<i32>(29677i, -44313i, 26944i, -8493i), -41981i), Struct_1(vec2<i32>(-1i, 0i), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 0u), vec4<i32>(-1i, 18598i, 0i, 62131i), 35174i), Struct_1(vec2<i32>(-18040i, -27430i), vec3<bool>(true, false, false), vec2<u32>(0u, 28781u), vec4<i32>(18745i, 91038i, 2147483647i, -11550i), -56125i), Struct_1(vec2<i32>(2147483647i, -42880i), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 7198u), vec4<i32>(-38343i, 2147483647i, 34626i, 41231i), 29144i));

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<bool>(false, true, true), vec2<u32>(4737u, 49726u), vec4<i32>(-1i, -1i, -20516i, 1i), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<bool>(false, true, true), vec2<u32>(10351u, 1471u), vec4<i32>(2147483647i, 21949i, -8610i, 6782i), 19658i), Struct_1(vec2<i32>(0i, -2649i), vec3<bool>(false, false, false), vec2<u32>(588u, 26523u), vec4<i32>(-1i, 2147483647i, 45159i, -36299i), 2147483647i), Struct_1(vec2<i32>(-54948i, i32(-2147483648)), vec3<bool>(false, true, true), vec2<u32>(0u, 1u), vec4<i32>(-10096i, -18359i, 1i, i32(-2147483648)), 4193i), Struct_1(vec2<i32>(13948i, 26359i), vec3<bool>(false, false, false), vec2<u32>(12858u, 51225u), vec4<i32>(i32(-2147483648), 8808i, 1i, -32266i), -26883i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(false, false, false), vec2<u32>(88056u, 3844u), vec4<i32>(0i, -1i, 39427i, -1i), 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), -35108i), vec3<bool>(true, true, true), vec2<u32>(27278u, 9604u), vec4<i32>(55880i, -1i, 2147483647i, -10876i), -13073i), Struct_1(vec2<i32>(-22234i, -35272i), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 12340u), vec4<i32>(-25572i, i32(-2147483648), -5181i, i32(-2147483648)), 40221i), Struct_1(vec2<i32>(i32(-2147483648), -32954i), vec3<bool>(true, false, false), vec2<u32>(16405u, 48500u), vec4<i32>(30769i, 0i, 24383i, -1i), -7801i), Struct_1(vec2<i32>(1i, -36590i), vec3<bool>(true, true, true), vec2<u32>(24756u, 17739u), vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec2<i32>(-31827i, -22860i), vec3<bool>(false, true, true), vec2<u32>(12316u, 30893u), vec4<i32>(82072i, 1i, 1i, 2793i), 1i), Struct_1(vec2<i32>(1i, 27358i), vec3<bool>(false, false, true), vec2<u32>(1u, 6912u), vec4<i32>(-41231i, 0i, 1i, -31136i), 2147483647i), Struct_1(vec2<i32>(44642i, 41086i), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(2147483647i, 47236i, 1i, -1i), 42269i), Struct_1(vec2<i32>(26296i, -1i), vec3<bool>(true, true, false), vec2<u32>(9080u, 48304u), vec4<i32>(-108339i, 6529i, 27850i, -25305i), 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> f32 {
    global3 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_add_u32((29728u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), u_input.b >> (u_input.b % vec3<u32>(32u)))) >> ((u_input.b.x >> (min(0u << (u_input.b.x % 32u), 36055u) % 32u)) % 32u), 44366u);
    var_0 = u_input.b.x;
    global1 = array<Struct_1, 10>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 10u)];
    return _wgslsmith_f_op_f32(min(209f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-758f)), _wgslsmith_f_op_f32(min(-2801f, -333f))), !(!any(vec4<bool>(true, arg_0, arg_0, false)))))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * -1000f), _wgslsmith_f_op_f32(878f + -1000f)))), 1732f);
    var_0 = -1518f;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, arg_3.x))))), _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(334f, 652f))));
    let var_2 = -(firstLeadingBit(global2.x) >> (arg_0 % 32u));
    var var_3 = global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec3_u32(~(vec3<u32>(7354u, arg_0, 46571u) ^ u_input.b), vec3<u32>(firstTrailingBit(107132u), ~18258u, ~36790u))), 10u)];
    return _wgslsmith_div_u32(~abs(u_input.b.x), 15451u);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = firstTrailingBit(vec4<u32>(func_2(1u, vec3<f32>(274f, -1246f, 1183f), u_input.c.x ^ global2.x, select(vec2<bool>(false, false), vec2<bool>(arg_0, true), false)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yx), 4294967295u), select(4294967295u, 4294967295u, true))) | vec4<u32>((u_input.b.x ^ _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) ^ u_input.b.x, u_input.b.x, u_input.b.x & ~36471u, 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1283f)), _wgslsmith_f_op_f32(1822f - 464f), -124f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1376f * -1000f)))))));
    let var_2 = -(~(-global2.yx & u_input.c.zz)) | (_wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(u_input.c.x, u_input.c.x)), reverseBits(vec2<i32>(31969i, global2.x) | global2.xz)) >> (vec2<u32>(_wgslsmith_mod_u32(3010u, var_0.x) & 55604u, abs(u_input.b.x)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(abs(var_1.x));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x);
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(22634i, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -18504i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.e, 2778i), vec2<i32>(0i, 2147483647i), u_input.c.zz))), reverseBits(-min(global2.x, 2147483647i))), ~max(-46036i, 4837i) ^ _wgslsmith_clamp_i32(2147483647i, -(global2.x << (u_input.b.x % 32u)), 2147483647i));
    let var_1 = ~select(~firstTrailingBit(~vec2<u32>(arg_1.c.x, u_input.b.x)), vec2<u32>(firstTrailingBit(u_input.b.x) & countOneBits(arg_1.c.x), u_input.b.x), arg_0.x);
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(var_0.xz ^ vec2<i32>(firstLeadingBit(global2.x), -1i), ~max(vec2<i32>(2147483647i, -19196i) ^ var_0.zy, ~vec2<i32>(1625i, arg_1.a.x))), vec3<bool>(any(select(select(vec2<bool>(arg_0.x, false), arg_0, arg_0.x), select(arg_1.b.xz, vec2<bool>(arg_1.b.x, false), false), arg_0)), arg_0.x, u_input.a >= -2147483647i), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, _wgslsmith_mult_vec2_u32(var_1, vec2<u32>(arg_1.c.x, arg_1.c.x)))) ^ _wgslsmith_add_vec2_u32(countOneBits(firstTrailingBit(u_input.b.xy)), vec2<u32>(1u, ~var_1.x)), arg_1.d, max(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.d, select(arg_1.d, vec4<i32>(27312i, u_input.a, arg_1.e, global2.x), vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_0.x)), ~vec4<i32>(var_0.x, arg_1.e, 1i, 0i)), u_input.c)));
    global3 = array<Struct_1, 14>();
    var var_3 = u_input.b.xx;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(vec2<bool>(select(true, true, all(vec2<bool>(true, false))), func_1(true)), vec2<bool>(true, true), vec2<bool>(true, false)), global3[_wgslsmith_index_u32(u_input.b.x, 14u)]);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-571f + 997f))), _wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(round(-1334f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703f * 414f)), _wgslsmith_f_op_f32(trunc(-713f)))), -1000f, _wgslsmith_f_op_f32(func_3(false))), vec4<f32>(1f, 1f, 1f, 1f));
    var var_2 = countOneBits(_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(var_0.d.xww, func_4(vec2<bool>(var_0.b.x, false), Struct_1(vec2<i32>(0i, u_input.a), var_0.b, vec2<u32>(u_input.b.x, 0u), vec4<i32>(2147483647i, global2.x, u_input.c.x, var_0.e), var_0.e)).d.xyy), u_input.c.ywz));
    var var_3 = ~u_input.b.x;
    let var_4 = var_0.b.x;
    global1 = array<Struct_1, 10>();
    let var_5 = Struct_1(vec2<i32>(-var_0.e, min(1i, var_2.x)), var_0.b, func_4(select(select(vec2<bool>(var_0.b.x, true), vec2<bool>(false, false), true), vec2<bool>(var_0.b.x || false, !var_0.b.x), !(!var_0.b.zy)), Struct_1(var_2.zx, !func_4(var_0.b.xx, Struct_1(vec2<i32>(-9119i, 57391i), var_0.b, var_0.c, vec4<i32>(var_2.x, var_0.d.x, u_input.c.x, global2.x), global2.x)).b, ~(~var_0.c), -u_input.c, -(var_0.e & -2147483647i))).c, vec4<i32>(i32(-1i) * -2147483647i, global2.x, var_0.d.x >> (~var_0.c.x % 32u), -33848i) ^ (u_input.c & vec4<i32>(-65260i, 16189i << (u_input.b.x % 32u), _wgslsmith_sub_i32(-2795i, var_2.x), -2147483647i)), _wgslsmith_mod_i32(var_0.d.x, -max(i32(-1i) * -36091i, u_input.a)));
    let var_6 = firstLeadingBit(~(~(~(~vec4<u32>(var_0.c.x, 1u, u_input.b.x, var_0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(var_0.c | vec2<u32>(4294967295u, 4294967295u), u_input.b.yz)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_6.x, _wgslsmith_mod_u32(var_0.c.x, var_5.c.x)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.c.x, 4294967295u), u_input.b.zy, firstTrailingBit(vec2<u32>(var_5.c.x, var_6.x))), _wgslsmith_mod_vec2_u32(~vec2<u32>(31204u, var_6.x), vec2<u32>(0u, u_input.b.x) & vec2<u32>(4294967295u, var_0.c.x)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -11081i, firstTrailingBit(_wgslsmith_mult_i32(var_0.d.x, -16710i))), firstLeadingBit(vec2<i32>(var_0.d.x, 1i)) << (~firstLeadingBit(u_input.b.yy) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(var_0.a.x, 0i), -2147483647i)), _wgslsmith_clamp_u32(~reverseBits(var_0.c.x), abs(var_6.x), 1u));
}

