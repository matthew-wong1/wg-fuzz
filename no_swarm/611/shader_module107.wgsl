struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, false, -1315f, 1u, vec2<u32>(19260u, 1u)), Struct_1(false, true, -1000f, 26602u, vec2<u32>(0u, 1u)), Struct_1(false, false, 575f, 4294967295u, vec2<u32>(33045u, 1u)), Struct_1(true, true, -362f, 1u, vec2<u32>(1u, 8774u)), Struct_1(false, false, -411f, 1u, vec2<u32>(0u, 4294967295u)), Struct_1(true, true, -484f, 21811u, vec2<u32>(39388u, 42061u)), Struct_1(true, false, 332f, 37677u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(true, true, -1325f, 4294967295u, vec2<u32>(0u, 1u)), Struct_1(false, false, -709f, 69722u, vec2<u32>(99247u, 1u)), Struct_1(true, false, -1323f, 0u, vec2<u32>(4294967295u, 1797u)), Struct_1(true, false, -1825f, 1u, vec2<u32>(0u, 0u)), Struct_1(true, true, -2355f, 4294967295u, vec2<u32>(63260u, 24690u)), Struct_1(true, false, -1190f, 4294967295u, vec2<u32>(1u, 4294967295u)), Struct_1(true, true, 121f, 1u, vec2<u32>(0u, 11440u)), Struct_1(false, true, -559f, 4294967295u, vec2<u32>(14337u, 3156u)), Struct_1(true, false, -1498f, 58123u, vec2<u32>(55295u, 113591u)), Struct_1(true, false, 683f, 11009u, vec2<u32>(1u, 1u)), Struct_1(false, false, 1587f, 1u, vec2<u32>(22347u, 1u)), Struct_1(true, true, 1570f, 1u, vec2<u32>(4294967295u, 1u)), Struct_1(false, true, 1773f, 77951u, vec2<u32>(28812u, 7630u)), Struct_1(false, false, 1272f, 4294967295u, vec2<u32>(52151u, 1u)), Struct_1(false, false, 2275f, 35264u, vec2<u32>(48018u, 1u)), Struct_1(false, true, -487f, 4294967295u, vec2<u32>(1u, 35107u)), Struct_1(false, true, -477f, 4294967295u, vec2<u32>(1u, 18134u)), Struct_1(false, false, 204f, 1u, vec2<u32>(16514u, 56662u)), Struct_1(false, false, -275f, 0u, vec2<u32>(1u, 65660u)), Struct_1(true, true, -1583f, 47834u, vec2<u32>(71869u, 0u)), Struct_1(false, false, -209f, 0u, vec2<u32>(1u, 1u)), Struct_1(false, true, 1993f, 1u, vec2<u32>(1u, 18573u)), Struct_1(true, true, 404f, 4294967295u, vec2<u32>(30808u, 0u)), Struct_1(false, false, -756f, 0u, vec2<u32>(57934u, 1u)), Struct_1(false, true, 1000f, 4294967295u, vec2<u32>(102791u, 52387u)));

var<private> global2: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, false, 479f, 47238u, vec2<u32>(21656u, 77981u)), Struct_1(true, true, -1574f, 89286u, vec2<u32>(95109u, 42827u)), Struct_1(false, false, -466f, 59404u, vec2<u32>(27675u, 55065u)), Struct_1(false, true, 1207f, 1u, vec2<u32>(40658u, 0u)), Struct_1(true, true, 1139f, 0u, vec2<u32>(1u, 86573u)), Struct_1(false, false, 270f, 4294967295u, vec2<u32>(1u, 86590u)), Struct_1(true, false, -892f, 23695u, vec2<u32>(48591u, 29542u)), Struct_1(false, false, -934f, 1u, vec2<u32>(59992u, 19424u)), Struct_1(true, true, 180f, 4294967295u, vec2<u32>(39630u, 99326u)), Struct_1(false, true, 1142f, 8270u, vec2<u32>(78764u, 0u)), Struct_1(true, false, -620f, 73409u, vec2<u32>(53369u, 1u)));

var<private> global4: vec3<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = ~((firstTrailingBit(vec4<i32>(global4.x, u_input.a.x, 2147483647i, 2147483647i)) ^ vec4<i32>(u_input.a.x, global4.x >> (11549u % 32u), -global4.x, abs(-2147483647i))) | reverseBits(~vec4<i32>(-47164i, u_input.a.x, -2147483647i, -1i)));
    let var_1 = Struct_1(arg_0, all(!(!(!vec4<bool>(arg_0, true, arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f - -1682f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1667f * -458f))))), _wgslsmith_add_u32(~(~1u), ~(~1u)), vec2<u32>(1u, 1u));
    let var_2 = Struct_1(false, all(vec3<bool>(var_1.b, any(select(vec2<bool>(true, var_1.b), vec2<bool>(true, true), vec2<bool>(false, var_1.b))), any(vec2<bool>(true, true)))), -1000f, var_1.d, var_1.e);
    var var_3 = select(select(vec3<bool>(true, true, true), !(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.e, vec2<u32>(4294967295u, var_1.e.x)), 26u)]), vec3<bool>(false, !arg_0, true)), global2[_wgslsmith_index_u32(~countOneBits(~64069u ^ _wgslsmith_clamp_u32(var_2.e.x, var_2.d, var_1.d)), 26u)], select(vec3<bool>(max(12953i, var_0.x) != firstLeadingBit(-2147483647i), false, var_1.b), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 61956u, 12902u), vec3<u32>(var_2.d, var_2.e.x, 0u) | vec3<u32>(1u, 87312u, var_1.d))), 26u)], var_1.a));
    var var_4 = vec3<u32>(firstLeadingBit(var_1.e.x | var_2.e.x), 1u, 23063u) ^ ~vec3<u32>(48283u, ~4294967295u, ~(~1u));
    return var_1.b;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 25>();
    let var_0 = -14343i;
    global0 = array<Struct_1, 25>();
    let var_1 = Struct_1(any(vec4<bool>(true, any(vec2<bool>(true, true)), func_3(true), true)), all(vec3<bool>(2147483647i < var_0, true, select(true, true, false))), _wgslsmith_div_f32(451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(653f - 257f))))), reverseBits(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(16200u, 1u, 4294967295u), vec3<u32>(1u, 1u, 0u)) << (3961u % 32u))), vec2<u32>(1u, ~1u));
    var var_2 = u_input.a;
    return all(select(vec4<bool>(true, true, true, 1f >= var_1.c), select(!select(vec4<bool>(false, var_1.b, false, false), vec4<bool>(var_1.b, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.b, true, false)), !select(vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(var_1.a, true, false, var_1.b), vec4<bool>(false, true, var_1.a, var_1.a)), select(vec4<bool>(false, var_1.a, false, false), !vec4<bool>(false, false, false, var_1.b), var_1.b | false)), !(var_1.c == var_1.c)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -1840f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) != var_0.c, var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-161f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1178f, var_0.c)))), arg_0)), 58409u, var_0.e);
    var var_2 = 1f;
    let var_3 = all(!vec4<bool>(true, func_2(), var_0.b == var_1.b, var_1.b && var_1.b));
    let var_4 = Struct_1(all(vec4<bool>(var_0.b, var_0.b, all(vec2<bool>(false, false)) != any(global2[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(var_0.c + 1162f) > -1010f)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * var_0.c))), _wgslsmith_mult_u32(var_0.d, 1u), var_0.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-458f, -1000f)) + -117f)) + _wgslsmith_div_f32(-1128f, var_0.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = ~arg_1;
    global1 = array<Struct_1, 32>();
    let var_1 = arg_0.c;
    global4 = max(-countOneBits(-vec3<i32>(5124i, 2147483647i, 11956i)), u_input.a);
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a << (_wgslsmith_sub_vec3_u32(vec3<u32>(49768u, _wgslsmith_mult_u32(42746u, var_0.x), 0u), countOneBits(var_0.xxw)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(~(-23378i), 0i, global4.x), u_input.a));
    return Struct_1(!(arg_0.a && true) || (!(arg_1.x >= 15083u) | !(!arg_0.b)), arg_0.b, 276f, ~_wgslsmith_clamp_u32(~arg_1.x, 35146u, 1u), select(var_0.wz, max(countOneBits(var_0.zy), var_0.xx), _wgslsmith_f_op_f32(-488f + _wgslsmith_f_op_f32(min(var_1, 426f))) != -1443f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 11>();
    let var_0 = func_4(Struct_1(true, true, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -688f)))), ~56981u, vec2<u32>(26710u, ~1u)), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = true;
    let var_2 = vec4<f32>(var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(max(1512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1171f)))) - var_0.c))), _wgslsmith_f_op_f32(var_0.c - var_0.c));
    global2 = array<vec3<bool>, 26>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(20731u, var_0.e.x), 32u)];
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(19488u, _wgslsmith_mod_u32(var_0.e.x, ~32057u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)))))), _wgslsmith_f_op_f32(var_0.c + 1000f));
}

