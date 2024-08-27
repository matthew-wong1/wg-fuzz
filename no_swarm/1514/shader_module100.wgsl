struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(937f, -301f, -1395f, -253f, 1207f, -671f);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(-1i, 309f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = max(vec3<i32>(-32667i, 38589i, reverseBits(_wgslsmith_sub_i32(-27717i, u_input.a))), _wgslsmith_mod_vec3_i32(select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-686i, global3.a, global1.a.a), vec3<i32>(global2.e, global3.a, 2147483647i), vec3<i32>(-20398i, 15385i, 20979i)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.a, 0i, global1.b.a), vec3<i32>(global3.a, global2.e, -49188i))), false), vec3<i32>(global3.a, 20040i, -2147483647i)));
    let var_1 = Struct_1(-global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f), -1000f)));
    let var_2 = 18422u;
    let var_3 = arg_0;
    let var_4 = var_3.a;
    return false;
}

fn func_2() -> bool {
    let var_0 = select(!(!vec4<bool>(false, true, all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 6u)])) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.a.b)), _wgslsmith_div_f32(642f, -289f))), true | (true || (786f <= global0[_wgslsmith_index_u32(0u, 6u)])), true | (func_3(Struct_2(global2.a, global1.b, global2.c, -661f, 29221i)) || select(false, false, true)), !((global2.b.a >= global1.b.a) && true)), select(vec4<bool>(all(vec3<bool>(false, false, true)), true, true, firstTrailingBit(7767u) == ~55572u), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), 0i >= global2.a.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false))), any(vec2<bool>(true, true))), vec4<bool>(true && (730f <= global3.b), true, func_3(Struct_2(Struct_1(u_input.a, -1938f), Struct_1(global2.b.a, -731f), vec4<f32>(764f, global1.c.x, global2.a.b, 733f), global1.a.b, global1.a.a)) || false, false)));
    var var_1 = Struct_2(global1.a, global2.a, vec4<f32>(1768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.b, -2388f)) * global2.b.b), global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * -302f) - global3.b) * global2.b.b)), global3.b, -abs(global2.e));
    var var_2 = 34246u;
    var var_3 = select(!(!vec3<bool>(var_0.x, true, global1.b.a <= global3.a)), vec3<bool>(true, true, (global3.b < _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(58356u, 6u)] * global2.c.x)) & (select(36989u, 4294967295u, var_0.x) != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48221u, 4294967295u), vec3<u32>(1u, 8286u, 71812u)))), all(vec3<bool>(true | var_0.x, false, all(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), var_0.x)))));
    global3 = Struct_1(-19745i, _wgslsmith_f_op_f32(1470f + 2757f));
    return var_0.x == (372f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(480f * 752f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - var_1.d)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = vec3<bool>(any(arg_0), true, func_2());
    var_0 = arg_0.xwx;
    var var_1 = Struct_1(-33287i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(49823u, 1u), 6u)]);
    global1 = Struct_2(Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f - -778f)) + _wgslsmith_f_op_f32(global3.b * global3.b))), global2.a, _wgslsmith_f_op_vec4_f32(sign(global2.c)), 202f, -1i);
    global1 = Struct_2(Struct_1(_wgslsmith_mult_i32(10997i, 1i), _wgslsmith_f_op_f32(-global1.a.b)), Struct_1(-(global2.e ^ 70793i), -832f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.c.x, -374f, true)))) - global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f - _wgslsmith_f_op_f32(-global1.b.b))), global2.d, _wgslsmith_f_op_f32(round(global1.a.b))), _wgslsmith_f_op_f32(floor(233f)), 10707i);
    return Struct_1(_wgslsmith_sub_i32(~abs(~global2.e), u_input.a << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 2595u, 52088u), vec3<u32>(4825u, 0u, 44061u), true), ~vec3<u32>(1u, 0u, 1u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global2.d)))) + global3.b));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 6>();
    let var_0 = ~abs(~(~(~vec2<u32>(4830u, 12503u))));
    global2 = Struct_2(func_4(select(vec4<bool>(true, true, select(true, false, true), all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), false), i32(-1i) * -25521i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 6u)]))) == global2.b.b, all(vec2<bool>(true, false)) || func_2()), Struct_1(_wgslsmith_mod_i32(-global1.e, _wgslsmith_mod_i32(global3.a ^ -29787i, -2413i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.x, 6u)], global1.d, false)) - _wgslsmith_f_op_f32(sign(global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1581f, -404f, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1917f, -434f, global0[_wgslsmith_index_u32(4294967295u, 6u)], 486f), global2.c)) * global1.c), global2.c)) - vec4<f32>(1280f, -169f, -161f, 759f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1382f), global3.b)) - _wgslsmith_f_op_f32(f32(-1f) * -1957f)), ~(-8116i));
    var var_1 = -870f;
    let var_2 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(var_0.x, var_0.x, 16287u, 23915u))) >> (countOneBits(vec4<u32>(1u, firstTrailingBit(0u), var_0.x ^ 40493u, 4294967295u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 22294u, var_0.x), ~vec4<u32>(var_0.x, 11457u, 5544u, 56526u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return func_4(!select(vec4<bool>(false, true, true, true), vec4<bool>(func_3(Struct_2(global1.a, Struct_1(global1.e, -1283f), vec4<f32>(1281f, -1705f, global3.b, global1.c.x), global3.b, -498i)), all(vec2<bool>(false, true)), any(vec3<bool>(false, false, true)), true), false), global1.a.a, func_2() || false, true && all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1(), global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 400f, -783f, -954f))) + _wgslsmith_f_op_vec4_f32(select(global2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.a.b, global0[_wgslsmith_index_u32(8622u, 6u)], global2.a.b)), func_2()))) + vec4<f32>(_wgslsmith_f_op_f32(-574f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(57075u, 6u)], -1080f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(154f, global2.d)), _wgslsmith_div_f32(global2.c.x, global0[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.b - -223f), 292f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 6u)]))))), _wgslsmith_f_op_f32(round(global3.b)), 0i);
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(global2.b.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.b.a, global2.a.a), _wgslsmith_div_i32(~39254i, -u_input.a)), -(i32(-1i) * -16062i)), -abs(vec3<i32>(1i, global3.a ^ global1.e, abs(global3.a))));
    global0 = array<f32, 6>();
    global3 = Struct_1(_wgslsmith_clamp_i32(min(u_input.a, reverseBits(global2.b.a)) ^ 66011i, -firstLeadingBit(u_input.a), ~global2.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-148f + global3.b))))));
    let var_1 = vec3<bool>(true, !(-1i == global1.a.a), _wgslsmith_mod_i32(func_1().a, global3.a) > -60249i);
    let var_2 = -1328f;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(global2.c));
    global2 = Struct_2(global2.a, func_1(), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f + 1165f)), -57926i);
    let x = u_input.a;
    s_output = StorageBuffer(~select(~var_0.xy, max(var_0.xy, var_0.xy), func_4(vec4<bool>(var_1.x, true, false, false), global2.e, true, true).b >= _wgslsmith_f_op_f32(ceil(global1.b.b))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 17545u), ~(~4294967295u), ~1u), ~vec3<u32>(~59018u, _wgslsmith_clamp_u32(1u, 3458u, 2044u), countOneBits(76127u))), vec2<u32>(4294967295u, 1u), _wgslsmith_mod_u32(0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(21660u, 50333u), vec2<u32>(9585u, 40415u), vec2<bool>(var_1.x, var_1.x))))));
}

