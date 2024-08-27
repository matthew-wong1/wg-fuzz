struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-1i, 75248i, 0i, 78586i, -1i, -9844i, 810i, 0i, -6811i, 38598i, 1799i, -30644i, -1i, 37883i, -45755i, 2147483647i, -44484i, -10106i, -1i);

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 42376u), vec2<u32>(4294967295u, 14410u), vec2<u32>(36348u, 1u), vec2<u32>(18011u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 52992u), vec2<u32>(0u, 12479u), vec2<u32>(0u, 22274u), vec2<u32>(46040u, 32831u), vec2<u32>(1u, 28604u), vec2<u32>(0u, 126090u), vec2<u32>(54706u, 72u), vec2<u32>(4294967295u, 2034u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(19878u, 4294967295u), vec2<u32>(85456u, 4294967295u), vec2<u32>(75326u, 29455u), vec2<u32>(4294967295u, 15826u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 12520u), vec2<u32>(0u, 10113u));

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    let var_0 = 4294967295u;
    let var_1 = vec4<u32>(arg_1.b, 1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~(~arg_1.b), 11526u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(30571u, arg_1.b, 0u, 101057u) & vec4<u32>(arg_1.b, 22659u, 4294967295u, var_0), vec4<u32>(24115u, 4294967295u, 1u, 0u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 5371u, arg_1.b) & var_0, arg_1.b ^ _wgslsmith_dot_vec3_u32(vec3<u32>(21210u, var_0, 4294967295u), vec3<u32>(4294967295u, 13793u, 0u)))), arg_1.b);
    global0 = array<i32, 19>();
    let var_2 = -46573i;
    var var_3 = _wgslsmith_mult_vec3_i32(u_input.a.zxw, vec3<i32>(global0[_wgslsmith_index_u32(var_0, 19u)], countOneBits(u_input.a.x), 23021i));
    return !select(vec2<bool>(all(vec2<bool>(arg_2, false)), select(all(vec4<bool>(true, true, true, true)), arg_2, !arg_2)), arg_0, vec2<bool>(true, true));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = firstTrailingBit(firstTrailingBit(-24080i));
    var var_1 = select(func_3(vec2<bool>(true, (var_0 << (64732u % 32u)) >= ~u_input.a.x), Struct_1(~58130i, ~arg_0.x, vec3<bool>(true, true, true)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(func_3(vec2<bool>(true, true), Struct_1(u_input.a.x, arg_0.x, vec3<bool>(false, true, true)), true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false))))), vec2<bool>(true, true));
    global0 = array<i32, 19>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-934f + -563f)));
    var var_3 = Struct_3(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-972f, var_2, 556f) - vec3<f32>(var_2, -1844f, var_2)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(abs(-2627f)), _wgslsmith_f_op_f32(f32(-1f) * -256f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, -980f, -913f), vec3<f32>(var_2, 241f, -159f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-578f, -504f, var_2), vec3<f32>(var_2, -429f, var_2), true))))), all(!(!vec4<bool>(true, var_1.x, true, false))));
    return Struct_1(~(-1i), countOneBits(~min(arg_0.x, 0u)), select(select(select(!vec3<bool>(true, var_3.c, false), vec3<bool>(false, var_1.x, var_3.c), vec3<bool>(true, true, var_1.x)), !(!vec3<bool>(var_1.x, var_1.x, false)), u_input.a.x >= 2147483647i), !select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), true), !vec3<bool>(var_1.x, true, arg_0.x <= 651u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = u_input.a.yxw;
    let var_1 = all(func_2(arg_1.b).c);
    global2 = vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(15075u, arg_0.b) >> (firstLeadingBit(~arg_0.b) % 32u), 19u)], ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-16006i, global0[_wgslsmith_index_u32(arg_1.b.x, 19u)])), var_0.yx & u_input.a.wy)) >> (_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(87145u, 21u)], ~((arg_1.b.xy << (arg_1.b.yz % vec2<u32>(32u))) >> (~vec2<u32>(16613u, arg_0.b) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_2 = vec3<f32>(-551f, _wgslsmith_f_op_f32(trunc(-552f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-354f * -700f), -1701f)), 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(530f, 144f) * _wgslsmith_f_op_f32(266f + -879f)))));
    let var_3 = _wgslsmith_clamp_vec2_u32(~(~arg_1.b.zy) >> (vec2<u32>(1u, _wgslsmith_add_u32(~arg_0.b, 4294967295u >> (arg_1.a.b % 32u))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~(~(~arg_1.b.zz)), _wgslsmith_add_vec2_u32(arg_1.b.zz, vec2<u32>(reverseBits(arg_0.b), 0u))), (~(vec2<u32>(28296u, arg_0.b) ^ global1[_wgslsmith_index_u32(arg_0.b, 21u)]) << (min(abs(vec2<u32>(29336u, arg_0.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), global1[_wgslsmith_index_u32(4294967295u, 21u)])) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1.b, arg_1.b), 1u), ~arg_0.b) % vec2<u32>(32u)));
    return ~(vec3<u32>((12445u | var_3.x) & _wgslsmith_clamp_u32(0u, arg_0.b, 0u), ~41072u << ((arg_0.b | 0u) % 32u), _wgslsmith_sub_u32(arg_0.b & 1u, _wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(var_3.x, arg_0.b, var_3.x)))) >> (min(select(~arg_1.b, ~arg_1.b, arg_1.a.c.x), reverseBits(~vec3<u32>(arg_0.b, arg_1.b.x, arg_0.b))) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = arg_0;
    global0 = array<i32, 19>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(countOneBits(13489i), global2.x), min(1u, 1u) & (select(0u, 39888u, arg_0.d.c) & ~1u), !(!(!vec3<bool>(arg_0.d.c, false, var_0.d.c)))), func_4(func_2(vec3<u32>(~0u, abs(0u), _wgslsmith_clamp_u32(1u, 79997u, 25900u))), Struct_2(Struct_1(~12917i, ~4294967295u, vec3<bool>(arg_0.d.c, arg_0.d.c, var_0.d.c)), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(80072u, 132246u, 45107u)), ~vec3<u32>(39071u, 36581u, 33985u)))));
    let var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.b.x, arg_0.d.b.x, arg_0.d.b.x)))), var_0.c, vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.b, var_1.a.b), var_1.b.xx) < (1u << (var_1.b.x % 32u)), true, true, var_1.a.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.b.x, var_0.d.b.x, -138f, -658f)), vec4<f32>(-2228f, 1348f, arg_0.c.x, arg_0.d.b.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.c))))));
    return Struct_3(-(func_2(~vec3<u32>(var_1.a.b, 14124u, 4294967295u)).a & _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, 0i, 2147483647i), u_input.a.zxw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x * 1665f), var_3.x, _wgslsmith_f_op_f32(-var_0.d.b.x)))), all(vec2<bool>(!var_0.d.c, var_0.d.c)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_5(select(!arg_2, !select(vec3<bool>(true, true, true), arg_2, !vec3<bool>(true, arg_2.x, true)), false));
    var var_1 = Struct_5(vec3<bool>(false, 1u != func_2(select(vec3<u32>(28340u, 0u, 7032u), vec3<u32>(149658u, 4294967295u, 0u), arg_2.x)).b, any(var_0.a)));
    let var_2 = arg_1.d;
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(abs(4294967295u)), 46406u), 0u), 38264u, 57850u, ~select(1u, ~(~83372u), var_1.a.x));
    global0 = array<i32, 19>();
    return func_2(abs(countOneBits(select(var_3.xyw, var_3.ywx, func_2(var_3.wxw).c))));
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_4(~(~func_2(~vec3<u32>(arg_1.b, arg_1.b, 39834u)).a), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-101472i, global2.x, 9077i) << (~vec3<u32>(arg_1.b, arg_1.b, arg_1.b) % vec3<u32>(32u)), u_input.a.zww), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-331f + 876f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(422f - 748f), _wgslsmith_f_op_f32(529f - -1304f)), -1787f)), _wgslsmith_f_op_f32(-905f + _wgslsmith_f_op_f32(f32(-1f) * -1634f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f + -764f)), 1f))), func_1(Struct_4(-(i32(-1i) * -2147483647i), ~vec3<i32>(32379i, 44665i, arg_1.a), vec4<f32>(_wgslsmith_div_f32(-402f, -924f), -1609f, 675f, _wgslsmith_f_op_f32(min(-233f, 837f))), func_1(Struct_4(1i, u_input.a.zxz, vec4<f32>(-1115f, -466f, 482f, -988f), Struct_3(-1i, vec3<f32>(1912f, 233f, -147f), true))))));
    return Struct_2(func_2(firstLeadingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b, 23005u, arg_1.b), vec3<u32>(arg_1.b, 1u, 4363u)), ~vec3<u32>(4294967295u, 4294967295u, 96259u), select(arg_1.c, arg_1.c, arg_1.c)))), firstLeadingBit(~vec3<u32>(68103u, 0u, arg_1.b)) & vec3<u32>(46547u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1155u), vec3<u32>(4294967295u, 22823u, 0u)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 17966u, 18056u)), vec3<u32>(0u, 0u, 4294967295u) >> (vec3<u32>(0u, arg_1.b, 14578u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(true, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, 972f), _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(select(-1000f, 1146f, false)), 596f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1834f, 1064f, 2517f, 1250f))))), Struct_4(0i, vec3<i32>(54671i, 22613i, -global2.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, -102f, 1373f, -937f)), vec4<f32>(1f, 1f, 1f, 1f)), func_1(Struct_4(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.wyz, vec4<f32>(347f, -516f, -901f, -1263f), Struct_3(global2.x, vec3<f32>(-786f, -2389f, -1297f), true)))), vec3<bool>(any(vec4<bool>(true, false, true, true)), true | (1i != global0[_wgslsmith_index_u32(16731u, 19u)]), true)));
    global1 = array<vec2<u32>, 21>();
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    global2 = ~reverseBits(vec2<i32>(-func_1(Struct_4(24113i, vec3<i32>(-2147483647i, global2.x, global0[_wgslsmith_index_u32(var_0.b.x, 19u)]), vec4<f32>(1786f, 563f, 1000f, 336f), Struct_3(1i, vec3<f32>(536f, -1354f, 1131f), false))).a, global0[_wgslsmith_index_u32(4294967295u, 19u)]));
    let var_1 = ~0u;
    var var_2 = -(~u_input.a);
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(702f, 1341f), _wgslsmith_f_op_f32(sign(455f)), _wgslsmith_f_op_f32(-1168f + -2176f))))), var_1 | var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-535f, 458f, 1883f, -264f))))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(531f))), -1000f, 1f)));
}

