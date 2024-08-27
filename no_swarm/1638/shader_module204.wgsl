struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(false, vec4<bool>(false, false, false, false)), Struct_2(false, vec4<bool>(false, true, true, true)), Struct_2(false, vec4<bool>(true, false, true, false)), Struct_2(true, vec4<bool>(false, true, false, true)), Struct_2(true, vec4<bool>(false, false, true, true)), Struct_2(true, vec4<bool>(true, true, true, true)), Struct_2(false, vec4<bool>(false, true, true, true)), Struct_2(true, vec4<bool>(true, true, false, true)), Struct_2(false, vec4<bool>(true, true, false, true)), Struct_2(true, vec4<bool>(true, false, false, true)), Struct_2(false, vec4<bool>(true, true, true, true)), Struct_2(false, vec4<bool>(true, true, false, true)), Struct_2(true, vec4<bool>(true, true, true, true)), Struct_2(true, vec4<bool>(true, true, false, true)), Struct_2(true, vec4<bool>(true, true, true, true)), Struct_2(false, vec4<bool>(false, false, false, true)), Struct_2(true, vec4<bool>(false, true, false, true)), Struct_2(false, vec4<bool>(false, true, false, false)), Struct_2(true, vec4<bool>(false, false, false, false)), Struct_2(true, vec4<bool>(false, true, true, false)), Struct_2(false, vec4<bool>(false, false, true, false)), Struct_2(true, vec4<bool>(true, false, true, true)), Struct_2(false, vec4<bool>(true, true, true, true)), Struct_2(true, vec4<bool>(true, false, true, true)), Struct_2(false, vec4<bool>(true, true, true, false)), Struct_2(false, vec4<bool>(true, true, true, true)));

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-52535i, -680i, -33364i, 365i), vec4<i32>(50002i, 877i, 38090i, 2147483647i), vec4<i32>(10666i, -1i, 340i, -1i), vec4<i32>(-37646i, 1i, 75071i, 0i), vec4<i32>(-1i, i32(-2147483648), -34630i, 31058i), vec4<i32>(-26604i, -1i, -8799i, 0i), vec4<i32>(-3269i, 2147483647i, -37661i, i32(-2147483648)), vec4<i32>(5684i, -38091i, 0i, 5000i), vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i), vec4<i32>(-13739i, -25506i, -39262i, 2147483647i), vec4<i32>(75455i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(2147483647i, 0i, 17145i, 21385i), vec4<i32>(-13695i, -1i, 2147483647i, -28197i), vec4<i32>(5096i, 7179i, -7852i, -1i), vec4<i32>(-24809i, -1i, 2147483647i, 31388i));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(3138u, 43404u, 14972u), -1244f, vec3<bool>(true, false, true), vec3<f32>(-1296f, -1000f, -509f), vec4<f32>(-635f, -431f, 516f, 1000f)), Struct_1(vec3<u32>(14793u, 4294967295u, 1u), -971f, vec3<bool>(false, true, false), vec3<f32>(1461f, 713f, -1148f), vec4<f32>(724f, -1290f, 119f, 276f)));

var<private> global3: array<vec2<u32>, 6>;

var<private> global4: array<u32, 23>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = vec4<bool>(true, true, true, true);
    global4 = array<u32, 23>();
    var var_1 = Struct_2(!(var_0.x & true), var_0);
    global1 = array<vec4<i32>, 15>();
    let var_2 = u_input.b.x;
    return !select(!(!select(vec4<bool>(true, var_0.x, false, false), var_1.b, vec4<bool>(false, false, var_0.x, var_0.x))), select(select(select(vec4<bool>(false, true, true, var_1.a), var_1.b, var_0), !var_1.b, all(var_0.yw)), vec4<bool>(true, any(var_1.b.wx), var_0.x, true), any(select(var_1.b, var_0, var_0.x))), !vec4<bool>(all(var_0), select(true, var_0.x, var_0.x), any(var_1.b), any(vec4<bool>(var_0.x, false, var_1.a, var_0.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = vec3<u32>(~(~abs(_wgslsmith_clamp_u32(0u, 0u, global4[_wgslsmith_index_u32(1u, 23u)]))), arg_2.a.x, abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(arg_2.a.x), ~4294967295u), 1u << (select(0u, 0u, arg_3.a) % 32u))));
    global3 = array<vec2<u32>, 6>();
    return max(select(-min(~vec2<i32>(36082i, 2147483647i), vec2<i32>(0i, 1i)), ~(-vec2<i32>(12211i, -29591i) << (global3[_wgslsmith_index_u32(~1u, 6u)] % vec2<u32>(32u))), select(vec2<bool>(func_3().x, arg_0.a), vec2<bool>(arg_1.x > arg_1.x, true), !(arg_1.x > 426f))), vec2<i32>(1i, 1i));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = Struct_2(arg_2.b.x, !arg_2.b);
    var var_1 = arg_0;
    let var_2 = reverseBits(func_4(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1190f, -952f, arg_1, -445f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1521f, 878f, 121f, -583f)))), global2[_wgslsmith_index_u32(67972u, 2u)], Struct_2(true, func_3())));
    var var_3 = u_input.b.ywz;
    global4 = array<u32, 23>();
    return !all(var_0.b.xx);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(all(func_3().yw), vec4<bool>(false, arg_1.d.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1395f))), arg_1.a.x < ~(~0u), arg_2));
    global3 = array<vec2<u32>, 6>();
    let var_1 = ~u_input.c.x;
    global2 = array<Struct_1, 2>();
    let var_2 = arg_1.d.x;
    return Struct_2(true, vec4<bool>(!(!func_3().x), true, true, var_0.b.x == true));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = ~38727u;
    let var_1 = Struct_2(select(select(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, true), true, true), !vec4<bool>(true, _wgslsmith_mult_i32(-5274i, -53093i) <= (35144i << (u_input.c.x % 32u)), true, true));
    global1 = array<vec4<i32>, 15>();
    var var_2 = func_5(_wgslsmith_mod_i32(_wgslsmith_div_i32(min(65528i, _wgslsmith_dot_vec2_i32(vec2<i32>(-47610i, 23908i), vec2<i32>(-1i, 34009i))), -1i), -max(1i, i32(-1i) * -12598i)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~84532u, _wgslsmith_clamp_u32(5295u, global4[_wgslsmith_index_u32(u_input.d.x, 23u)], 0u), 23535u), ~(~vec3<u32>(0u, u_input.a.x, global4[_wgslsmith_index_u32(21029u, 23u)]))), -528f, vec3<bool>(!all(vec3<bool>(var_1.b.x, var_1.a, var_1.b.x)), func_2(var_1, -1112f, global0[_wgslsmith_index_u32(~66715u, 26u)]), all(var_1.b)), vec3<f32>(arg_0, 1000f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(-549f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 899f, -1705f, arg_0)))), true);
    return vec3<u32>(~abs(4294967295u), ~4294967295u, u_input.c.x) & _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e & vec3<u32>(u_input.b.x, 18328u, global4[_wgslsmith_index_u32(0u, 23u)]), ~abs(vec3<u32>(1u, u_input.c.x, global4[_wgslsmith_index_u32(u_input.d.x, 23u)]))), _wgslsmith_clamp_vec3_u32(~u_input.e, u_input.b.wyy, vec3<u32>(u_input.b.x, 0u, global4[_wgslsmith_index_u32(u_input.c.x, 23u)])) & (vec3<u32>(19415u, u_input.e.x, 12877u) << ((u_input.a.xzz & u_input.d.wwx) % vec3<u32>(32u))), vec3<u32>(~13584u ^ (4294967295u & global4[_wgslsmith_index_u32(1u, 23u)]), 3078u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) + 357f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-629f)))), _wgslsmith_f_op_f32(1185f - _wgslsmith_f_op_f32(round(1702f)))))));
    global4 = array<u32, 23>();
    let var_1 = func_1(var_0.x);
    let var_2 = select(1i, max(3819i >> (var_1.x % 32u), ~1i), func_3().x);
    var var_3 = select(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -19212i, var_2), vec3<i32>(var_2, 0i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2, -2147483647i, var_2), vec3<i32>(var_2, var_2, var_2)))), ~vec3<i32>(1i & var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(-6580i, 10873i), vec2<i32>(var_2, -2147483647i)), select(var_2, -1615i, true))), ~firstLeadingBit(max(var_2, var_2) >> (global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(31415u, 23u)], 4294967295u), 23u)] % 32u)), !(!func_5(6622i, global2[_wgslsmith_index_u32(1122u, 2u)], false).b.x || true));
    var var_4 = _wgslsmith_clamp_u32(abs(global4[_wgslsmith_index_u32(16282u, 23u)]), reverseBits(4294967295u) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.d.x, 23u)], u_input.b.x, global4[_wgslsmith_index_u32(4294967295u, 23u)]) >> (vec3<u32>(61498u, var_1.x, global4[_wgslsmith_index_u32(0u, 23u)]) % vec3<u32>(32u)), ~vec3<u32>(global4[_wgslsmith_index_u32(19933u, 23u)], global4[_wgslsmith_index_u32(u_input.e.x, 23u)], 6342u))), 1u);
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(2734f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))))), -1466f, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(~64164u), 13620u, ~func_1(_wgslsmith_f_op_f32(-var_5.x)).x));
}

