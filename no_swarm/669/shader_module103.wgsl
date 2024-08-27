struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(26561i, i32(-2147483648)), vec3<u32>(94719u, 74999u, 11928u), vec4<f32>(835f, 429f, -173f, -986f));

var<private> global2: f32 = 384f;

var<private> global3: array<i32, 19> = array<i32, 19>(-6829i, -5326i, 1i, -26406i, -9990i, 18209i, -4109i, -20835i, 2147483647i, -20529i, 53089i, -1i, 15655i, 14396i, -27530i, -29485i, -20879i, 9455i, 31051i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    return !(!select(select(!vec2<bool>(false, arg_3), !vec2<bool>(false, arg_3), vec2<bool>(false, false)), select(vec2<bool>(arg_3, arg_3), !vec2<bool>(true, arg_3), select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_3), vec2<bool>(arg_3, true))), select(!vec2<bool>(false, arg_3), vec2<bool>(true, true), select(vec2<bool>(false, arg_3), vec2<bool>(false, true), vec2<bool>(true, arg_3)))));
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = global1.b.yx;
    global1 = global0[_wgslsmith_index_u32(48145u, 6u)];
    var var_1 = ~(~(-1i));
    var var_2 = select(vec2<bool>(true | (true || select(true, true, true)), select(true, true, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_3(global1.c.yy, Struct_1(vec2<i32>(arg_1, u_input.a.x), vec3<u32>(32192u, 4845u, 1u), global1.c), Struct_1(u_input.a.xx, global1.b, vec4<f32>(global1.c.x, global1.c.x, global1.c.x, 623f)), true), true));
    var var_3 = global1.b.yy;
    return !(all(!(!vec3<bool>(var_2.x, false, true))) && false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(select(_wgslsmith_add_vec2_i32(max(vec2<i32>(arg_0.a.x, global1.a.x), vec2<i32>(-16144i, 29538i)), ~u_input.a.xy), u_input.a.zz, !func_2(1u, global3[_wgslsmith_index_u32(u_input.c, 19u)])) << (~reverseBits(firstLeadingBit(global1.b.yy)) % vec2<u32>(32u)), ~select(select(global1.b, vec3<u32>(global1.b.x, 0u, arg_1.b.x), false) >> (arg_0.b % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(global1.b, vec3<u32>(23700u, 108157u, global1.b.x)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.c, arg_1.c)), arg_1.c));
    global0 = array<Struct_1, 6>();
    global3 = array<i32, 19>();
    global1 = global0[_wgslsmith_index_u32(min(~_wgslsmith_div_u32(~firstLeadingBit(0u), _wgslsmith_sub_u32(abs(46376u), ~arg_1.b.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(0u, 4294967295u, var_0.b.x, u_input.b)), ~(~vec4<u32>(global1.b.x, 0u, var_0.b.x, 1u))), arg_0.b.x)), 6u)];
    global2 = arg_1.c.x;
    return _wgslsmith_f_op_f32(arg_1.c.x - -907f);
}

fn func_4(arg_0: f32) -> vec2<i32> {
    global3 = array<i32, 19>();
    global3 = array<i32, 19>();
    global1 = Struct_1(_wgslsmith_add_vec2_i32(~countOneBits(global1.a << (global1.b.zz % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(30667i, u_input.a.x), true), vec2<i32>(global3[_wgslsmith_index_u32(39387u, 19u)], u_input.a.x))), ~global1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-1371f * global1.c.x), _wgslsmith_f_op_f32(-arg_0), -531f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, -1385f, global1.c.x) * global1.c) * global1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(ceil(-1051f)), -311f, _wgslsmith_f_op_f32(sign(1000f))))));
    let var_0 = _wgslsmith_div_vec4_i32(select(vec4<i32>(-1i) * -(u_input.a << (vec4<u32>(33334u, u_input.b, u_input.b, 15908u) % vec4<u32>(32u))), -firstLeadingBit(vec4<i32>(14185i, 74800i, global3[_wgslsmith_index_u32(1u, 19u)], -12260i)) >> ((firstLeadingBit(vec4<u32>(53081u, 0u, global1.b.x, u_input.b)) >> (vec4<u32>(u_input.c, 4294967295u, u_input.b, global1.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), -vec4<i32>(-(~40141i), -40464i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 19u)], -3241i, -2147483647i, global1.a.x), vec4<i32>(u_input.a.x, -6216i, -81622i, -2147483647i)) & reverseBits(21796i), 1i ^ global1.a.x));
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(max(0i, 0i), -3544i ^ var_0.x), global3[_wgslsmith_index_u32(1u, 19u)]), vec2<i32>(-(~(-2323i)), global1.a.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.x, var_0.x), var_0.yy | vec2<i32>(-24506i, var_0.x)), firstTrailingBit(reverseBits(global1.a)))), ~global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(620f))), 1156f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 346f, -657f, -977f)), global1.c)))));
    return _wgslsmith_add_vec2_i32(-var_1.a, vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(669i, 1279i, 1i), _wgslsmith_sub_vec3_i32(var_0.xzy, u_input.a.yyz))) | (vec2<i32>(~var_1.a.x, global3[_wgslsmith_index_u32(13114u, 19u)] << (global1.b.x % 32u)) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(global1.b.x, u_input.c), vec2<u32>(var_1.b.x, global1.b.x)) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_1(~(~(global1.a >> (~vec2<u32>(31342u, u_input.b) % vec2<u32>(32u)))), arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.x, -1000f, arg_1.c.x, 836f))))) - global1.c));
    let var_1 = arg_0;
    var var_2 = 731f;
    global2 = -808f;
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_1.a, global1.a), i32(-1i) * -17289i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 19u)], -6565i)), _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(var_0.a.x, 41352i, global1.a.x, var_0.a.x))) << (firstLeadingBit(~(var_1.b.zx << (global1.b.yz % vec2<u32>(32u)))) % vec2<u32>(32u)), ~vec3<u32>(~(~55941u), countOneBits(9644u), _wgslsmith_mod_u32(0u, ~var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.x, arg_0.c.x, -855f, 492f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, 1508f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(-var_1.c))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-382f)), 1000f, arg_1.b.x <= global1.b.x))))), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(763f, global1.c.x), global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + -1000f))) * _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(5310u, 6u)], Struct_1(func_4(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(54884i, global3[_wgslsmith_index_u32(43794u, 19u)]), vec3<u32>(9360u, 114918u, global1.b.x), vec4<f32>(614f, global1.c.x, global1.c.x, global1.c.x)), global0[_wgslsmith_index_u32(63651u, 6u)]))), global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, global1.c.x, global1.c.x, global1.c.x))), 255f)));
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 6u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1.b.yz, var_0.b.yx), 15228u)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(~global1.b.x, u_input.b, 4294967295u ^ u_input.b), vec3<u32>(42045u, 1u, 4294967295u)) % 32u), 6u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(~(~global1.b.x), select(global1.b.x, abs(var_0.b.x), u_input.c > global1.b.x)), u_input.b, ~var_0.b.x, ~_wgslsmith_mult_u32(min(u_input.b, var_0.b.x), ~global1.b.x)), max(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(global1.b.x, 123353u, 90467u, var_0.b.x)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 15079u, global1.b.x), vec4<u32>(var_0.b.x, u_input.c, u_input.c, var_0.b.x)))), countOneBits(select(vec4<u32>(22547u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, var_0.b.x, u_input.b), vec4<bool>(true, false, true, false))) | min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 50416u, global1.b.x, 15246u), vec4<u32>(11037u, u_input.b, 2685u, 89363u)), ~vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, var_0.b.x)))), 6u)];
    var var_2 = _wgslsmith_mult_vec2_i32(~var_1.a, _wgslsmith_div_vec2_i32(var_1.a | (-vec2<i32>(-705i, 29591i) >> (~vec2<u32>(62005u, var_1.b.x) % vec2<u32>(32u))), vec2<i32>(~firstTrailingBit(u_input.a.x), reverseBits(var_1.a.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(751f)), var_1.c.x, false)))), _wgslsmith_f_op_f32(sign(1694f))) + global1.c.x);
    var var_4 = var_0.b.x == ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 76456u, global1.b.x, var_1.b.x), vec4<u32>(var_0.b.x, var_0.b.x, u_input.b, 1u)), 59078u);
    let var_5 = Struct_1((u_input.a.yz >> ((~var_0.b.zy ^ var_0.b.yy) % vec2<u32>(32u))) | var_1.a, var_1.b & ~(~(vec3<u32>(60654u, 0u, global1.b.x) >> (vec3<u32>(52396u, var_1.b.x, var_1.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(38501u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(min(-798f, _wgslsmith_f_op_f32(var_1.c.x + var_0.c.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(var_5.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_5.c.x - 121f), _wgslsmith_f_op_f32(step(global1.c.x, global1.c.x))))))), firstTrailingBit(0i), var_5.b.x, -2147483647i);
}

