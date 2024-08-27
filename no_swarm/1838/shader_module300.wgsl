struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, true, true, false, false, true, false, false, false, false, false, true, false, false, true, true, false, false, false, true);

var<private> global1: array<vec3<bool>, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    var var_0 = ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 1297u)) & ~(38875u & u_input.a)) >> (u_input.a % 32u)) <= ~(~(~u_input.a));
    var var_1 = ~(~max(min(u_input.a ^ 4294967295u, u_input.a), ~firstTrailingBit(u_input.a)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(175f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1175f + -888f) - _wgslsmith_f_op_f32(abs(-1000f)))), any(vec2<bool>(true, true)), _wgslsmith_mod_vec3_u32(min(abs(vec3<u32>(u_input.a, 17469u, 5674u)), min(vec3<u32>(53898u, u_input.a, 8278u), vec3<u32>(u_input.a, u_input.a, 4294967295u))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(533u, u_input.a, u_input.a))))), Struct_1(801f, any(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 19u)], !vec3<bool>(global0[_wgslsmith_index_u32(40019u, 21u)], false, false), global0[_wgslsmith_index_u32(u_input.a, 21u)])), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 37078u), vec3<u32>(0u, 1u, u_input.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-256f, 1549f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(335f * 232f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(402f, 666f, 1514f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(189f, -2689f, 1279f) - vec3<f32>(656f, 541f, -2772f))) + vec3<f32>(1f, _wgslsmith_f_op_f32(sign(1906f)), -2025f))), ~(~(~vec3<i32>(1i, 16293i, -10476i)) >> (vec3<u32>(43204u, _wgslsmith_mult_u32(u_input.a, 4872u), 37716u >> (1u % 32u)) % vec3<u32>(32u))));
    global0 = array<bool, 21>();
    var_2 = Struct_2(Struct_1(290f, !var_2.b.b, _wgslsmith_mult_vec3_u32(~firstLeadingBit(var_2.b.c), ~(~vec3<u32>(35184u, var_2.a.c.x, var_2.a.c.x)))), Struct_1(_wgslsmith_f_op_f32(sign(-1150f)), false, var_2.a.c), _wgslsmith_div_vec3_f32(vec3<f32>(1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.x))), var_2.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.c))))), ~vec3<i32>(select(var_2.d.x, i32(-1i) * -2147483647i, true), _wgslsmith_dot_vec2_i32(-var_2.d.xy, countOneBits(vec2<i32>(var_2.d.x, var_2.d.x))), -select(var_2.d.x, -1i, false)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2.b.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(trunc(-364f))))));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = 45148i;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-403f, 1276f, -266f, -1730f))) - vec4<f32>(2048f, -367f, 567f, 329f)))) * vec4<f32>(-185f, _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f + 2049f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(-1631f))))), vec4<f32>(-825f, 1f, _wgslsmith_f_op_f32(select(-607f, _wgslsmith_f_op_f32(f32(-1f) * -1465f), true)), _wgslsmith_f_op_f32(f32(-1f) * -401f)), vec4<bool>(all(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(77724u, 21u)]), vec2<bool>(false, true), false)), _wgslsmith_mod_i32(54057i, 46292i) == ~(-var_0), false, arg_0)));
    global0 = array<bool, 21>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    var var_3 = !(!select(vec3<bool>(arg_0 || global0[_wgslsmith_index_u32(u_input.a, 21u)], all(global1[_wgslsmith_index_u32(u_input.a, 19u)]), !arg_0), vec3<bool>(true, !global0[_wgslsmith_index_u32(u_input.a, 21u)], !arg_0), global1[_wgslsmith_index_u32(1u, 19u)]));
    return ~abs(min(~vec2<u32>(4294967295u, 0u), ~(vec2<u32>(1u, u_input.a) & vec2<u32>(42387u, u_input.a))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1424f))), global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, 0u, arg_2.x, u_input.a), ~vec4<u32>(0u, arg_2.x, 523u, 1u))), 21u)], select(abs(~vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(arg_2.x, u_input.a, u_input.a)), reverseBits(vec3<u32>(arg_2.x, 0u, 59516u))), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, global0[_wgslsmith_index_u32(u_input.a, 21u)])))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(83357u, arg_2.x), ~u_input.a)), 21u)], vec3<u32>(91400u, u_input.a, ~(arg_2.x | arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1656f, 891f, 1378f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, 1335f, 1052f))))), vec3<i32>(0i, max(-23136i, select(32174i, 49110i, global0[_wgslsmith_index_u32(u_input.a, 21u)]) >> ((arg_2.x >> (arg_2.x % 32u)) % 32u)), 1i));
    var var_1 = abs(~var_0.d);
    let var_2 = all(vec2<bool>(!all(select(vec2<bool>(var_0.a.b, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false), vec2<bool>(true, true))), any(vec3<bool>(select(global0[_wgslsmith_index_u32(arg_2.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(28150u, 21u)]), true, any(global1[_wgslsmith_index_u32(arg_2.x, 19u)])))));
    let var_3 = Struct_2(Struct_1(var_0.b.a, var_0.a.b, ~(~var_0.b.c)), var_0.a, _wgslsmith_f_op_vec3_f32(func_3()), -vec3<i32>(arg_0, _wgslsmith_mod_i32(var_0.d.x, 1i), _wgslsmith_div_i32(reverseBits(45601i), ~(-2147483647i))));
    global0 = array<bool, 21>();
    return var_3.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_4(1i, ~(~(18031i >> (u_input.a % 32u))), func_2(true)), func_4(_wgslsmith_div_i32(-25390i, -2147483647i) & _wgslsmith_dot_vec4_i32(select(vec4<i32>(-35774i, 0i, 47568i, 952i), vec4<i32>(11409i, -1i, 2147483647i, 1i), global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<i32>(-32417i, 44242i, 14893i, -4578i)), ~select(_wgslsmith_mult_i32(1i, -19834i), -43243i, any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))), func_4(max(max(-2147483647i, 2147483647i), -1i), 0i, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u) >> (vec2<u32>(28909u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(70072u, 67730u))).c.yz), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-852f, -352f, 114f) - vec3<f32>(-219f, -1352f, -270f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1351f, -591f, -682f))), _wgslsmith_f_op_vec3_f32(func_3())) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2199f, 1312f, 1683f)) - vec3<f32>(_wgslsmith_f_op_f32(round(-1058f)), 290f, _wgslsmith_f_op_f32(f32(-1f) * -393f)))), select(vec3<i32>(-1i) * -select(vec3<i32>(30344i, 17602i, -1i), vec3<i32>(0i, 4985i, 0i), vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 21u)])), vec3<i32>(1i, select(2147483647i, 1i, global0[_wgslsmith_index_u32(u_input.a, 21u)]) >> (u_input.a % 32u), firstLeadingBit(~0i)), true));
    var var_1 = 2147483647i;
    let var_2 = all(!(!(!select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 21u)], var_0.a.b), vec2<bool>(true, false)))));
    global0 = array<bool, 21>();
    let var_3 = reverseBits(-(~var_0.d.xy));
    return Struct_1(var_0.c.x, any(select(vec2<bool>(!var_0.b.b, var_2), !(!vec2<bool>(var_0.a.b, false)), var_2)), vec3<u32>(u_input.a, min(func_4(~22220i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, var_0.d.x, 1894i), vec4<i32>(-7796i, var_3.x, 33470i, 0i)), ~vec2<u32>(34509u, 109037u)).c.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, var_0.a.c.x, u_input.a), u_input.a, func_2(false).x)), ~((var_0.b.c.x & u_input.a) & ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 19>();
    var var_0 = u_input.a;
    global0 = array<bool, 21>();
    var var_1 = func_1();
    let var_2 = Struct_2(func_1(), Struct_1(_wgslsmith_f_op_f32(519f - _wgslsmith_f_op_f32(min(2315f, var_1.a))), var_1.b, ~_wgslsmith_div_vec3_u32(~var_1.c, var_1.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-var_1.a), 1408f))), select(vec3<i32>(1i, _wgslsmith_mod_i32(~38520i, -50995i), ~(-2147483647i)), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(-63194i, 37488i, 0i)), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-32741i, -1691i, 8303i)), ~vec3<i32>(-2147483647i, 56030i, 1i))), !(true | var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_2.c, vec3<f32>(var_1.a, var_2.c.x, var_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(-1236f + 700f), -2005f), !select(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(43891u, 19u)], global1[_wgslsmith_index_u32(var_1.c.x, 19u)])))), 364f, -(var_2.d & (vec3<i32>(-1i) * -var_2.d)), var_2.b.c, _wgslsmith_add_vec2_i32(-vec2<i32>(1i, ~var_2.d.x), select(var_2.d.yx, ~abs(var_2.d.yz), false != any(vec2<bool>(true, true)))));
}

