struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1008f, Struct_1(vec3<bool>(false, false, true), -1i, 0u, vec2<f32>(-429f, 1411f), -12200i));

var<private> global1: array<u32, 1>;

var<private> global2: array<vec4<f32>, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_f32(1000f + arg_2.a.d.x), global0.b);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) + global0.a) + global0.b.d.x), _wgslsmith_f_op_f32(global0.a * arg_2.a.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2.a.d.x, _wgslsmith_f_op_f32(arg_2.a.d.x - -176f))), _wgslsmith_f_op_f32(select(global0.b.d.x, -665f, arg_0.a)))), arg_2.b.x);
    global1 = array<u32, 1>();
    let var_1 = arg_2.a.d.x;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(~39893i, arg_0.c), max(global0.b.e, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 41481i, -3310i), vec3<i32>(11756i, i32(-1i) * -2147483647i, ~u_input.c.x))));
    return Struct_3(_wgslsmith_f_op_f32(trunc(arg_2.a.d.x)), arg_2.a);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    global1 = array<u32, 1>();
    let var_0 = _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(~u_input.b.x, 15u)])));
    var var_1 = true || all(!vec4<bool>(arg_1.x <= global0.a, arg_2.b.c != 42414u, true, 11294u == global0.b.c));
    let var_2 = Struct_4(u_input.b.xz, arg_2, max(vec4<u32>(1u, arg_2.b.c, min(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(1u, u_input.b.x)), arg_2.b.c ^ 67056u), ~firstLeadingBit(1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, abs(4294967295u), global1[_wgslsmith_index_u32(86645u, 1u)], 5365u), reverseBits(vec4<u32>(0u, u_input.b.x, global1[_wgslsmith_index_u32(global0.b.c, 1u)], 4294967295u)) & vec4<u32>(15630u, 20518u, 4294967295u, u_input.b.x))), ~(~((vec3<u32>(arg_2.b.c, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 1u)]) & u_input.b) >> (vec3<u32>(arg_2.b.c, 0u, 1u) % vec3<u32>(32u)))));
    let var_3 = Struct_4(var_2.d.xz, func_2(Struct_5(~0u >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.xz), var_2.c, var_2.b.b.e, !select(vec2<bool>(false, false), vec2<bool>(false, arg_2.b.a.x), vec2<bool>(false, global0.b.a.x))), abs(min(u_input.c.xx, vec2<i32>(u_input.c.x, global0.b.e))), Struct_2(var_2.b.b, _wgslsmith_f_op_vec2_f32(-arg_1.yy), u_input.d)), countOneBits(countOneBits(abs(max(vec4<u32>(20755u, 1u, 27416u, 29174u), var_2.c)))), ~firstLeadingBit(var_2.c.yxy));
    return select(global0.b.a.yy, !(!vec2<bool>(global0.a <= 1196f, var_2.b.b.a.x)), (~0u >= global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 1u)], 1u)]) & false);
}

fn func_1() -> Struct_3 {
    let var_0 = !select(select(func_3(vec3<i32>(global0.b.b, u_input.a.x, -12994i), vec3<f32>(global0.b.d.x, 283f, global0.a), func_2(Struct_5(false, vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 0u, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 119279u), u_input.d, global0.b.a.xz), u_input.a.yz, Struct_2(global0.b, global0.b.d, u_input.d))), func_2(Struct_5(global0.b.a.x, vec4<u32>(1u, global0.b.c, 21729u, 0u), u_input.c.x, global0.b.a.zx), u_input.a.zy, Struct_2(Struct_1(global0.b.a, 2147483647i, 40186u, vec2<f32>(864f, 728f), -30572i), vec2<f32>(1986f, global0.a), -4182i)).b.a.zz, global0.b.a.zz), !global0.b.a.zx, func_3(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(21452i, -1i), -global0.b.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.d.x, 644f, -646f) + vec3<f32>(-1298f, global0.a, global0.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.d.x, global0.a, global0.b.d.x)))), Struct_3(278f, global0.b)).x);
    global2 = array<vec4<f32>, 15>();
    var var_1 = func_2(Struct_5(false, ~vec4<u32>(global0.b.c, u_input.b.x, global0.b.c, 1u) | vec4<u32>(47223u, _wgslsmith_sub_u32(4294967295u, 33718u), ~71458u, _wgslsmith_add_u32(6535u, u_input.b.x)), 1i, var_0), select(_wgslsmith_add_vec2_i32(u_input.c.yz, min(vec2<i32>(global0.b.e, u_input.a.x), vec2<i32>(u_input.a.x, global0.b.e))), firstLeadingBit(vec2<i32>(u_input.d, -global0.b.b)), func_2(Struct_5(false, firstTrailingBit(vec4<u32>(16855u, 4294967295u, u_input.b.x, global0.b.c)), u_input.d & -1i, vec2<bool>(global0.b.a.x, false)), abs(vec2<i32>(u_input.d, u_input.c.x) << (vec2<u32>(u_input.b.x, 33270u) % vec2<u32>(32u))), Struct_2(global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, global0.b.d.x)), global0.b.b)).b.a.x), Struct_2(func_2(Struct_5(all(vec2<bool>(true, false)), select(vec4<u32>(8221u, u_input.b.x, u_input.b.x, global0.b.c), vec4<u32>(global0.b.c, 4294967295u, 4294967295u, u_input.b.x), vec4<bool>(var_0.x, false, false, true)), abs(-1i), func_3(vec3<i32>(u_input.a.x, -16381i, u_input.c.x), vec3<f32>(global0.b.d.x, 1963f, 1000f), Struct_3(-798f, global0.b))), ~(-u_input.a.xz), Struct_2(Struct_1(global0.b.a, 1i, 1u, global0.b.d, global0.b.e), vec2<f32>(1000f, global0.b.d.x), -8265i)).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.b.d.x + 389f))), -51181i)).b;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.d) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d))))));
    var var_3 = _wgslsmith_f_op_f32(step(var_1.d.x, 1960f));
    return func_2(Struct_5(true, vec4<u32>(abs(var_1.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 2808u, global0.b.c), u_input.b), _wgslsmith_div_u32(4294967295u, 13032u), countOneBits(global1[_wgslsmith_index_u32(37023u, 1u)])) >> (~vec4<u32>(u_input.b.x, 1406u, 0u, 1u) % vec4<u32>(32u)), 12157i, !global0.b.a.zy), reverseBits(~select(-u_input.a.zy, _wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.c.yw), global0.b.a.x)), Struct_2(Struct_1(vec3<bool>(!var_0.x, true, false), 1i, global0.b.c >> (_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, var_1.c)) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, global0.b.d.x)), ~(var_1.b ^ global0.b.b)), global0.b.d, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c.www), u_input.c.yyw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = func_1();
    let var_1 = _wgslsmith_sub_i32(global0.b.e ^ global0.b.b, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, max(u_input.a.x, global0.b.b), _wgslsmith_sub_i32(2147483647i, global0.b.b))), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 55229i, 0i), vec3<i32>(global0.b.e, u_input.c.x, 23732i)))));
    var var_2 = Struct_2(Struct_1(global0.b.a, ~0i, 34833u, global0.b.d, -(1i & (var_1 >> (global1[_wgslsmith_index_u32(global0.b.c, 1u)] % 32u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1268f))) - _wgslsmith_f_op_f32(ceil(global0.a))), func_1().b.d.x), _wgslsmith_sub_i32(~u_input.d, -abs(28340i)) << (_wgslsmith_add_u32(31445u, ~max(46469u, 0u)) % 32u));
    var_2 = Struct_2(global0.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -252f)), _wgslsmith_f_op_f32(ceil(var_2.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.d.x, global0.b.d.x)), _wgslsmith_f_op_vec2_f32(-global0.b.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, global0.a))))))), _wgslsmith_div_i32(firstLeadingBit(u_input.c.x), -1i));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.d.x), _wgslsmith_f_op_f32(var_2.a.d.x * var_2.a.d.x)));
    global2 = array<vec4<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(vec4<u32>(global0.b.c, 1607u, var_2.a.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.c, 1u)], 1u)]), select(vec4<u32>(global1[_wgslsmith_index_u32(global0.b.c, 1u)], 18744u, 51103u, 13178u), vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(global0.b.c, 1u)], global0.b.c), vec4<bool>(false, false, global0.b.a.x, var_2.a.a.x)), vec4<bool>(true, true, global0.b.a.x, false)), firstLeadingBit(vec4<u32>(~0u, max(global0.b.c, global1[_wgslsmith_index_u32(33270u, 1u)]), select(var_2.a.c, var_2.a.c, var_2.a.a.x), 13995u)), vec4<bool>(func_1().b.a.x, any(vec4<bool>(var_2.a.a.x, true, true, true)), global0.b.a.x, var_2.a.a.x & false)), global2[_wgslsmith_index_u32(38169u, 15u)], ~reverseBits(~(~4294967295u)), vec2<f32>(-1600f, _wgslsmith_f_op_f32(f32(-1f) * -881f)), min(vec4<i32>(var_2.a.e, _wgslsmith_mult_i32(-2147483647i, var_2.c), ~var_1, 2147483647i) & u_input.c, u_input.c));
}

