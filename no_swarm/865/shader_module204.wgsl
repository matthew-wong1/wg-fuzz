struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_5;

var<private> global2: array<bool, 23>;

var<private> global3: Struct_3 = Struct_3(Struct_1(-231f), Struct_2(Struct_1(-336f), Struct_1(985f), false, Struct_1(1000f)), Struct_2(Struct_1(1067f), Struct_1(-872f), true, Struct_1(-1000f)), Struct_1(447f), 26155u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global1 = Struct_5(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + global0.b)))) * global0.b), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f + _wgslsmith_f_op_f32(-global1.c.x)) - 860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(794f, _wgslsmith_f_op_f32(min(global3.d.a, -562f)))))));
    let var_0 = Struct_3(global3.b.b, Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(abs(global1.b.x))))), arg_0.c, Struct_1(-452f)), global0.d, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1687f, 321f)))))), abs(~_wgslsmith_mod_u32(global1.a.a, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-global3.a.a);
    var_1 = _wgslsmith_f_op_f32(arg_0.b.a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)), _wgslsmith_f_op_f32(ceil(global0.d.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) - _wgslsmith_f_op_f32(sign(-1266f))))));
    return ~(-25606i);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_4 {
    global3 = Struct_3(global3.c.d, Struct_2(global0.c.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f))), global0.e.c, Struct_1(-2307f)), global1.a.c, global0.c.b, _wgslsmith_mult_u32(~(_wgslsmith_sub_u32(arg_1, global0.a) >> (_wgslsmith_sub_u32(11754u, global0.a) % 32u)), u_input.a.x));
    let var_0 = vec3<i32>(-59827i, firstLeadingBit(~firstLeadingBit(func_3(global0.c))), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(1i, reverseBits(-877i)), 1i));
    var var_1 = select(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, global0.a, 320u), vec3<u32>(19822u, global1.a.a, 1u)), 23u)], arg_0, abs(var_0.x) < 32405i), !(!vec3<bool>(global1.a.d.c, true, global0.d.c)), ((78533u | global3.e) > _wgslsmith_mult_u32(1u, global1.a.a)) || arg_0), vec3<bool>(!(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11459u, u_input.b), vec2<u32>(global1.a.a, 0u)), 23u)]), !(_wgslsmith_f_op_f32(min(1049f, -902f)) == global0.b.x), global2[_wgslsmith_index_u32(~(~0u), 23u)]), !global2[_wgslsmith_index_u32(min(~_wgslsmith_add_u32(0u, 1u), _wgslsmith_clamp_u32(global0.a, global1.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_1, global3.e), vec4<u32>(0u, 34377u, global1.a.a, global3.e)))), 23u)]);
    let var_2 = _wgslsmith_clamp_i32(func_3(global1.a.e), _wgslsmith_dot_vec2_i32(var_0.xx, _wgslsmith_clamp_vec2_i32(-reverseBits(var_0.zz), var_0.zy, var_0.xy)), -2416i);
    var var_3 = select(var_1.zz, vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(18409u, 13612u, 87178u)), abs(vec3<u32>(11072u, global0.a, global0.a))), ~(~arg_1)), 23u)], select(!all(vec3<bool>(var_1.x, global0.e.c, true)), !all(vec3<bool>(global0.e.c, var_1.x, global2[_wgslsmith_index_u32(17016u, 23u)])), true != any(var_1.xy))), global3.c.c & global2[_wgslsmith_index_u32(~(~(~global1.a.a)), 23u)]);
    return Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1664f, 1000f, global0.c.b.a)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-844f, global1.b.x, global3.d.a)), _wgslsmith_f_op_vec3_f32(round(global1.a.b)))))), Struct_2(Struct_1(global1.c.x), Struct_1(_wgslsmith_f_op_f32(sign(-464f))), global1.a.e.c, Struct_1(_wgslsmith_f_op_f32(sign(219f)))), global1.a.e, Struct_2(global1.a.c.a, global3.b.a, !(!all(vec3<bool>(var_1.x, global1.a.d.c, global1.a.c.c))), Struct_1(_wgslsmith_f_op_f32(519f - _wgslsmith_f_op_f32(min(global0.e.a.a, -107f))))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(global3.b.c, 14873u);
    let var_1 = countOneBits(~_wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(-60591i, 0i, 2147483647i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(70315i, 2147483647i, -2147483647i, -840i), -vec4<i32>(44370i, -2147483647i, 2147483647i, 2205i))));
    let var_2 = false;
    var var_3 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1, var_1, var_1), firstLeadingBit(vec3<i32>(-65722i, -1i, -1i))), _wgslsmith_mult_i32(firstLeadingBit(-1i), var_1 ^ var_1), countOneBits(_wgslsmith_mod_i32(var_1, var_1)), i32(-1i) * -var_1), vec4<i32>(var_1, -func_3(global0.e), -firstTrailingBit(var_1), -var_1 >> (countOneBits(0u) % 32u)));
    var var_4 = global0.e;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global0.d.a.a, func_2(true, ~global3.e).c.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d.a * -1000f)), -848f)));
    let var_1 = global0.c;
    var_0 = Struct_5(Struct_4(1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, 860f, -1419f)))), Struct_2(func_1().e.d, Struct_1(_wgslsmith_f_op_f32(-global0.b.x)), all(select(vec2<bool>(false, true), vec2<bool>(false, global2[_wgslsmith_index_u32(44344u, 23u)]), false)), func_1().d.a), global1.a.c, Struct_2(func_2(true, 1u).c.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -325f)), 11724u <= select(82684u, global1.a.a, global3.b.c), func_1().e.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1576f, -1000f, 1000f)) + _wgslsmith_div_vec3_f32(global0.b, global1.b))), global0.b.yy);
    let var_2 = Struct_2(func_1().d.b, var_0.a.d.b, any(select(select(vec3<bool>(var_0.a.c.c, global3.c.c, global2[_wgslsmith_index_u32(global0.a, 23u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(52279u, 23u)], true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 23u)], var_1.c, global3.c.c), vec3<bool>(global2[_wgslsmith_index_u32(41550u, 23u)], true, false)), global0.d.c), !vec3<bool>(true, var_1.c, true), all(!vec3<bool>(global3.b.c, var_1.c, global2[_wgslsmith_index_u32(u_input.b, 23u)])))), Struct_1(-274f));
    let var_3 = global3.b;
    global1 = Struct_5(func_2(true, ~global1.a.a), var_0.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.a * _wgslsmith_f_op_f32(f32(-1f) * -1307f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2118f + 638f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.a, -1156f) + var_0.c)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, 941f) + global1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(374f, var_3.d.a) * vec2<f32>(var_1.d.a, -440f)))))));
    global2 = array<bool, 23>();
    var var_4 = func_2(global3.b.c, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(35424u, global1.a.a, global3.e, 4294967295u)) | var_0.a.a, _wgslsmith_sub_u32(abs(90986u), _wgslsmith_mod_u32(1u, var_0.a.a)), ~var_0.a.a), ~reverseBits(20779u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<u32>(firstTrailingBit(44242u), global3.e, ~23618u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1850f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.d.a))), var_2.a.a)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 23494u, var_4.a, 110582u)), vec4<u32>(global3.e | 4294967295u, 0u, 1u, func_1().a), vec4<u32>(global3.e, ~global3.e, var_0.a.a >> (10605u % 32u), ~9655u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, global1.a.a, 13891u), select(vec4<u32>(102116u, var_0.a.a, var_0.a.a, 18509u), vec4<u32>(global0.a, global1.a.a, var_0.a.a, global0.a), var_1.c)), vec4<u32>(max(var_0.a.a, global0.a), ~14919u, 4294967295u, ~global3.e))));
}

