struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 65565u);

var<private> global2: array<f32, 7>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = ~reverseBits(min(min(arg_1.a.zy, global1.zy), ~global1.yz));
    let var_1 = Struct_4(select(arg_2.c.x, !select(!arg_2.c.x, arg_1.a.x <= arg_1.a.x, arg_2.c.x), !arg_2.c.x));
    global0 = var_1.a;
    global3 = _wgslsmith_div_u32(_wgslsmith_add_u32(28768u, ~reverseBits(~1574u)), global1.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.e.x))) <= global2[_wgslsmith_index_u32(u_input.e.x, 7u)];
    return _wgslsmith_f_op_f32(trunc(-781f)) > _wgslsmith_f_op_f32(exp2(arg_1.e.x));
}

fn func_3() -> f32 {
    var var_0 = u_input.e.x;
    let var_1 = ~(~vec2<u32>(~(~u_input.c.x), ~_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(15972u, 36419u, 0u))));
    var var_2 = Struct_1(u_input.c, vec4<i32>(i32(-1i) * -33320i, firstLeadingBit(select(u_input.a, u_input.a, false)), -_wgslsmith_div_i32(-2147483647i, u_input.d.x), _wgslsmith_mult_i32(-2147483647i >> (u_input.e.x % 32u), max(-1i, u_input.b.x))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 47466u, 48406u, u_input.c.x), u_input.c | vec4<u32>(26000u, 1u, var_1.x, 39604u), u_input.c) % vec4<u32>(32u)), -1360f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(476f + -1574f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_f_op_f32(1000f - global2[_wgslsmith_index_u32(u_input.c.x, 7u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(12586u, 7u)], global2[_wgslsmith_index_u32(u_input.e.x, 7u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(9008u, 7u)], global2[_wgslsmith_index_u32(108260u, 7u)]))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1333f, 1167f), vec2<f32>(635f, -1083f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], -151f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_2.c, -1243f)))));
    let var_4 = vec3<bool>(2147483647i >= u_input.d.x, true, true);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-784f, var_2.c)) - -736f)))), -1847f));
}

fn func_1(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = select(firstLeadingBit(firstTrailingBit(u_input.c.xz)), vec2<u32>(abs(~(~0u)), 0u), true);
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(75758u, 7u)], Struct_1(select(u_input.c | (u_input.c >> (u_input.c % vec4<u32>(32u))), u_input.c, !func_2(vec4<f32>(-1040f, global2[_wgslsmith_index_u32(42155u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], -826f), Struct_1(u_input.c, vec4<i32>(18583i, -11670i, 26185i, u_input.b.x), global2[_wgslsmith_index_u32(global1.x, 7u)], global2[_wgslsmith_index_u32(u_input.c.x, 7u)], arg_0.yz), Struct_2(vec3<i32>(0i, u_input.d.x, u_input.d.x), Struct_1(u_input.c, vec4<i32>(u_input.a, 0i, u_input.b.x, u_input.a), arg_0.x, -750f, arg_0.yz), vec4<bool>(true, false, true, false)))), -countOneBits(vec4<i32>(1i, 2147483647i, u_input.a, -2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 7u)], false))), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(abs(56603u), 7u)], -725f))), vec2<f32>(global2[_wgslsmith_index_u32(~max(7105u, 68629u), 7u)], _wgslsmith_f_op_f32(f32(-1f) * -1721f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 7u)], -990f, arg_0.x, global2[_wgslsmith_index_u32(10732u, 7u)]) - arg_0))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(291f, _wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))) + var_1.a)));
    let var_3 = Struct_2(vec3<i32>(u_input.a | var_1.b.b.x, ~(-2147483647i), var_1.b.b.x), var_1.b, !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))));
    global2 = array<f32, 7>();
    return _wgslsmith_f_op_vec2_f32(exp2(var_3.b.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(905f, 1296f, -204f, global2[_wgslsmith_index_u32(u_input.e.x, 7u)]), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(global1.x, 7u)], -620f, -782f), vec4<bool>(true, true, false, true)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(44455u, 7u)] - -800f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3590u, 7u)]))) - _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 7u)], 1696f, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(global1.x, 7u)]), vec4<f32>(-512f, 301f, 1000f, global2[_wgslsmith_index_u32(global1.x, 7u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, global2[_wgslsmith_index_u32(global1.x, 7u)], 244f, global2[_wgslsmith_index_u32(u_input.c.x, 7u)]))))))));
    global2 = array<f32, 7>();
    let var_1 = u_input.d;
    let var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(select(-1448f, global2[_wgslsmith_index_u32(global1.x, 7u)], true)) <= _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global1.x, 7u)]))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), all(vec4<bool>(true, true, false, true))))), select(vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, true)), true), vec3<bool>(-19728i < _wgslsmith_clamp_i32(u_input.b.x, -1140i, u_input.b.x), true, true)), true);
    let var_3 = Struct_2(u_input.d, Struct_1(max(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 4294967295u, u_input.c.x, global1.x), vec4<u32>(10112u, 7415u, u_input.c.x, 57838u), vec4<u32>(u_input.e.x, 66002u, 6716u, 1u))), u_input.c), ~(select(vec4<i32>(-38108i, u_input.a, -1i, 1i), vec4<i32>(var_1.x, u_input.a, u_input.a, u_input.b.x), false) ^ -vec4<i32>(-2147483647i, var_1.x, u_input.b.x, u_input.a)), -1740f, global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(18082u, global1.x), 0u), 7u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(141f, var_0.x), vec2<f32>(-489f, 308f)), vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 7u)], var_0.x), var_2.zz)), vec2<f32>(-1194f, -1778f))), select(vec4<bool>(!(u_input.d.x >= u_input.a), !all(vec4<bool>(false, true, var_2.x, true)), true, all(select(vec2<bool>(false, false), var_2.xz, vec2<bool>(var_2.x, var_2.x)))), select(!select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, false, true, true)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, true, false))), !(!var_2.x) & (_wgslsmith_add_u32(global1.x, global1.x) == _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))));
    var var_4 = global1.zx;
    global3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.e.x, _wgslsmith_f_op_f32(var_3.b.d + var_0.x), var_0.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(var_3.b.a, abs(u_input.c)), _wgslsmith_sub_vec4_u32(~u_input.c, vec4<u32>(global1.x >> (4965u % 32u), firstLeadingBit(var_4.x), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 48965u))), _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(var_3.b.b.xx, vec2<i32>(var_3.a.x, -54812i)), 1i, _wgslsmith_mod_i32(var_3.a.x, -43456i), 36743i), ~var_3.b.b), var_3.b.e, firstTrailingBit(vec2<u32>(~global1.x, 1u) << ((max(global1.xx, vec2<u32>(var_3.b.a.x, 1u)) << (vec2<u32>(3974u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

