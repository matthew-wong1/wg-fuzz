struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 18> = array<f32, 18>(1207f, 1010f, 432f, 288f, -476f, -1107f, 1000f, 747f, -1442f, -275f, -2016f, -1000f, -916f, 208f, -181f, -670f, 682f, 304f);

var<private> global2: array<f32, 4>;

var<private> global3: u32;

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    var var_0 = u_input.e;
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_sub_u32(7164u, u_input.c);
    let var_3 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(select(any(vec2<bool>(true, false)), true, true), true, true, all(vec3<bool>(false, false, true))), !all(vec3<bool>(true, true, true))));
    let var_4 = select(select(vec2<bool>(var_3, ~var_2 == 619u), select(!vec2<bool>(var_3, false), vec2<bool>(true, true), any(vec2<bool>(var_3, true))), var_3), !(!(!vec2<bool>(false, var_3))), !select(vec2<bool>(var_3, select(false, true, var_3)), vec2<bool>(true, true), vec2<bool>(!var_3, var_3)));
    return 2147483647i;
}

fn func_2() -> vec4<f32> {
    let var_0 = func_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -32315i, -2147483647i), u_input.a), vec4<i32>(global0.a, -12350i, u_input.d.x, 26531i), ~u_input.a) | reverseBits(vec4<i32>(global0.a, global0.a, u_input.d.x, global0.a)), global0.a) | _wgslsmith_div_i32(37842i, global0.a);
    var var_1 = Struct_1(-22817i);
    let var_2 = Struct_2(Struct_1(1i), vec4<bool>(false, false, true, false), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 4u)]), -519f, global1[_wgslsmith_index_u32(u_input.e.x, 18u)], -1599f))), Struct_1(abs(-12127i)), ((all(vec3<bool>(true, true, true)) & true) & (true && (global0.a == var_0))) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
    global2 = array<f32, 4>();
    let var_3 = Struct_4(u_input.d.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(738f, global2[_wgslsmith_index_u32(58719u, 4u)], true)) + 138f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) - var_2.c.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(227u, 4u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(775f, 209f, var_2.b.x)) - _wgslsmith_f_op_f32(ceil(-547f))), global1[_wgslsmith_index_u32(u_input.c, 18u)]))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-976f, 185f, 1493f, var_2.c.x) + _wgslsmith_f_op_vec4_f32(trunc(var_2.c))))), _wgslsmith_f_op_vec4_f32(-var_2.c))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-652f, -471f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]) + vec2<f32>(arg_1, global2[_wgslsmith_index_u32(0u, 4u)])))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1557f, 233f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(49735u, 4u)], arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(137f, arg_1), -1259f) * vec2<f32>(1f, -1000f)), false & (arg_2 & (1u < u_input.c))))));
    global4 = array<Struct_1, 28>();
    let var_1 = u_input.e.x << (u_input.c % 32u);
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * vec4<f32>(arg_1, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(var_1, 0u)), 4u)]), -291f, global2[_wgslsmith_index_u32(var_1 >> (_wgslsmith_mult_u32(min(u_input.e.x, 12939u), 44910u) % 32u), 4u)]));
    return Struct_2(global4[_wgslsmith_index_u32(u_input.c, 28u)], !vec4<bool>(true, all(vec4<bool>(arg_0, false, false, true)), any(vec3<bool>(arg_2, true, arg_0)) || !arg_0, arg_0), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2182f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(trunc(-1363f)), var_0.x))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, u_input.a.x) << (var_1 % 32u), firstLeadingBit(global0.a & -10206i))), ~countOneBits(-global0.a) > u_input.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = ~0u;
    let var_1 = min(1u, u_input.c);
    let var_2 = ~vec4<i32>(1i, u_input.d.x, arg_1.d.a, 3739i) >> (select(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 0u, 10267u, 4294967295u), countOneBits(vec4<u32>(var_1, u_input.c, var_0, var_1)))), select(vec4<u32>(countOneBits(4294967295u), ~u_input.c, var_1, 35336u), ~vec4<u32>(0u, 55790u, var_0, u_input.c) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 4294967295u, 1u, u_input.e.x), vec4<u32>(u_input.c, var_0, var_1, var_1)), arg_1.b), vec4<bool>(true, global0.a >= u_input.d.x, 2147483647i >= -arg_0.x, all(select(vec2<bool>(arg_1.e, true), arg_1.b.wz, arg_1.e)))) % vec4<u32>(32u));
    var var_3 = 1u;
    let var_4 = Struct_4(_wgslsmith_clamp_i32(global0.a, ~arg_1.d.a, countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(7156i, var_2.x), arg_0.yy))));
    return _wgslsmith_dot_vec2_i32(arg_0.zz, firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(~var_4.a, var_2.x), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -24175i), _wgslsmith_div_vec2_i32(u_input.d, arg_0.xx)), u_input.a.yy & -arg_0.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<i32>(59015i, -2147483647i, func_4(select(-vec3<i32>(-2147483647i, 2147483647i, 47278i), vec3<i32>(u_input.b.x, 2147483647i, u_input.a.x), 66430u >= u_input.e.x), func_1(true, 350f, false))), abs(((u_input.e.x & 1u) ^ ~0u) | (u_input.e.x << ((15322u | u_input.e.x) % 32u))));
    global2 = array<f32, 4>();
    let var_1 = firstLeadingBit(~(~113466u)) >> (u_input.c % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b, 18u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(29610u, 18u)])), func_1(false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, var_0.b, u_input.c), vec4<u32>(4294967295u, var_1, var_1, var_0.b)), 18u)], false).c.zyz) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, 730f, 1121f))))));
    global3 = 22519u;
    var var_3 = u_input.d;
    let var_4 = Struct_2(func_1(select(all(vec2<bool>(true, true)) && any(vec4<bool>(true, true, false, false)), any(vec2<bool>(false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 12945u, var_0.b), vec3<u32>(u_input.e.x, 65593u, 1u)) >= 0u), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(85778u, 4u)])), func_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 4u)]) < _wgslsmith_f_op_f32(-var_2.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 43136u, var_1), vec3<u32>(var_1, 67600u, 20644u) << (vec3<u32>(var_1, u_input.e.x, 161947u) % vec3<u32>(32u))), 18u)], all(vec3<bool>(true, true, true))).b.x).a, vec4<bool>(!(true & select(true, true, true)), any(vec2<bool>(all(vec4<bool>(true, false, true, false)), true)), !any(func_1(false, global2[_wgslsmith_index_u32(1u, 4u)], false).b.yzx), false), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(var_0.b, 4u)], var_2.x, 1645f, -662f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.x, global2[_wgslsmith_index_u32(53578u, 4u)], var_2.x) - vec4<f32>(global2[_wgslsmith_index_u32(23820u, 4u)], var_2.x, global2[_wgslsmith_index_u32(9117u, 4u)], -1697f))) - func_1(true, global1[_wgslsmith_index_u32(39599u, 18u)], var_0.b <= u_input.c).c), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1627f, -430f, _wgslsmith_div_f32(1000f, -1567f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 18u)])))))), func_1(true, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 4u)]), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))).d, true);
    var_3 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(func_1(var_4.e, global2[_wgslsmith_index_u32(u_input.c, 4u)], false).c.x, _wgslsmith_div_f32(-368f, 548f))))), var_3.x);
}

