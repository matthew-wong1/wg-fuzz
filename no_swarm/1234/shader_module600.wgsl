struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<i32>(-51688i, -16818i)), Struct_2(vec2<i32>(i32(-2147483648), 0i)), Struct_2(vec2<i32>(-1i, 62736i)), Struct_2(vec2<i32>(0i, -14840i)), Struct_2(vec2<i32>(-18316i, -1i)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(vec2<i32>(0i, -24720i)), Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(1i, i32(-2147483648))), Struct_2(vec2<i32>(36357i, 9307i)), Struct_2(vec2<i32>(-647i, 0i)), Struct_2(vec2<i32>(-29474i, 14826i)), Struct_2(vec2<i32>(i32(-2147483648), -1i)), Struct_2(vec2<i32>(-65205i, 2147483647i)), Struct_2(vec2<i32>(8420i, 0i)), Struct_2(vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<i32>(1i, 37073i)));

var<private> global3: f32 = 474f;

var<private> global4: array<bool, 11>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    var var_0 = 44052u;
    global2 = array<Struct_2, 17>();
    global1 = _wgslsmith_sub_vec3_i32(global0.b, firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global0.b.x >> (0u % 32u), -1i), -vec3<i32>(0i, -2147483647i, -2147483647i))));
    global0 = Struct_1(!select(arg_0.a, arg_0.a || (global4[_wgslsmith_index_u32(0u, 11u)] || global0.a), u_input.a < global1.x), min(u_input.b.xyw, vec3<i32>(global1.x, select(global1.x, -1i, false) | ~2147483647i, global1.x)), _wgslsmith_f_op_vec2_f32(exp2(global0.c)));
    var var_1 = ~u_input.d.x;
    return max(-arg_0.b.x | arg_0.b.x, _wgslsmith_mod_i32(global1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(3501i, global0.b.x, arg_0.b.x), global0.b)) << (arg_1.x % 32u));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1011f);
    var var_0 = Struct_2(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(u_input.b.yx, vec2<i32>(30014i, -48i)));
    var_0 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, u_input.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, 31542i), global0.b.yy) >> (u_input.d.zz % vec2<u32>(32u)), -(~global1.xz))));
    var var_1 = Struct_1(false, vec3<i32>(-func_3(Struct_1(global4[_wgslsmith_index_u32(25814u, 11u)], global0.b, global0.c), vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, 4294967295u), 957i << (u_input.d.x % 32u)), global0.b.x, -5630i), global0.c);
    global0 = Struct_1(arg_0, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.x, var_0.a.x, select(u_input.b.x, -2392i, global0.a) & -var_1.b.x), vec3<i32>(var_0.a.x << (4294967295u % 32u), ~global0.b.x, reverseBits(-2147483647i)) & vec3<i32>(_wgslsmith_add_i32(global1.x, 10601i), ~global1.x, global1.x), var_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global0.c.x)));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0.c.x) < global0.c.x, abs(vec3<i32>(-61399i, u_input.b.x, u_input.b.x)), vec2<f32>(-702f, 1745f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c + global0.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, global0.c.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-410f, var_1.c.x)))), Struct_1((!arg_0 || all(vec3<bool>(global4[_wgslsmith_index_u32(26266u, 11u)], arg_0, true))) && true, min(u_input.b.wxy, _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.a.x, -245i, -18614i), global0.b & vec3<i32>(-3116i, var_1.b.x, global0.b.x))), _wgslsmith_f_op_vec2_f32(-var_1.c)), -2147483647i, select(vec3<bool>(any(vec3<bool>(var_1.a, var_1.a, false)), global4[_wgslsmith_index_u32(~(~0u), 11u)], !all(vec4<bool>(global4[_wgslsmith_index_u32(1u, 11u)], true, arg_0, global0.a))), !(!vec3<bool>(arg_0, true, true)), any(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 11u)], true)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_3 {
    global3 = arg_1.c.x;
    let var_0 = 0u;
    let var_1 = arg_2;
    return func_2(global0.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    return func_2(true).c;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~(~(~u_input.d.x)), ~12995u, u_input.d.x);
    global0 = Struct_1(true, firstTrailingBit(firstLeadingBit(vec3<i32>(~global1.x, arg_2.d, -global1.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global0.c, _wgslsmith_f_op_vec2_f32(trunc(func_2(true).b)), arg_2.e.zz)))));
    let var_1 = func_1(!(!global0.a), arg_3, -vec3<i32>(_wgslsmith_mult_i32(~72726i, arg_3.b.x), max(_wgslsmith_mod_i32(u_input.a, 1i), 1i), global1.x)).a;
    let var_2 = func_2(!(_wgslsmith_sub_i32(-var_1.b.x, 2147483647i) >= arg_3.b.x));
    var var_3 = ~(-(~var_2.a.b));
    return arg_3;
}

fn func_6(arg_0: Struct_1) -> bool {
    global2 = array<Struct_2, 17>();
    global3 = -1716f;
    var var_0 = countOneBits(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1300f, arg_0.c.x)))));
    let var_2 = vec2<i32>(i32(-1i) * -2147483647i, ~(-60054i >> (u_input.d.x % 32u)));
    return all(select(vec2<bool>(true, !(!global4[_wgslsmith_index_u32(u_input.c.x, 11u)])), select(func_2(true).e.zz, vec2<bool>(true, false), true), !any(select(vec2<bool>(false, global0.a), vec2<bool>(false, false), vec2<bool>(false, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global0.a, func_6(func_5(func_4(func_1(false, Struct_1(true, vec3<i32>(-20803i, u_input.a, 17429i), vec2<f32>(-1241f, 1082f)), vec3<i32>(31204i, 2147483647i, global0.b.x)), _wgslsmith_f_op_vec2_f32(-global0.c), vec3<u32>(22476u, u_input.c.x, u_input.d.x) | u_input.d, Struct_2(vec2<i32>(global1.x, -1i))), 1u, func_1(global4[_wgslsmith_index_u32(72016u, 11u)], func_2(global0.a).a, _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, 1i, global0.b.x), vec3<i32>(global1.x, 1i, global1.x))), Struct_1(true, _wgslsmith_sub_vec3_i32(u_input.b.yzy, u_input.b.zyz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 1544f))))), true);
    global3 = 1864f;
    global3 = func_1(false, func_1(func_1(global0.a, func_5(Struct_1(false, u_input.b.wyw, vec2<f32>(651f, -1165f)), 4294967295u, func_2(global4[_wgslsmith_index_u32(u_input.d.x, 11u)]), func_1(global0.a, Struct_1(var_0.x, global0.b, global0.c), global0.b).a), ~global0.b & ~global0.b).c.a, func_4(Struct_3(Struct_1(true, vec3<i32>(-1i, 2147483647i, u_input.a), global0.c), func_5(Struct_1(false, vec3<i32>(global1.x, global0.b.x, global1.x), global0.c), 41972u, Struct_3(Struct_1(false, vec3<i32>(global0.b.x, global0.b.x, 29692i), global0.c), global0.c, Struct_1(false, vec3<i32>(2147483647i, 25360i, u_input.a), vec2<f32>(-995f, global0.c.x)), u_input.a, var_0), Struct_1(var_0.x, vec3<i32>(-48830i, -2147483647i, global1.x), vec2<f32>(global0.c.x, global0.c.x))).c, Struct_1(var_0.x, vec3<i32>(global0.b.x, 31597i, 0i), vec2<f32>(-278f, global0.c.x)), _wgslsmith_div_i32(-26500i, -40025i), select(var_0, var_0, var_0)), _wgslsmith_f_op_vec2_f32(-func_5(Struct_1(false, vec3<i32>(-18664i, -2147483647i, u_input.b.x), vec2<f32>(global0.c.x, global0.c.x)), u_input.c.x, Struct_3(Struct_1(global4[_wgslsmith_index_u32(u_input.c.x, 11u)], global0.b, global0.c), global0.c, Struct_1(global0.a, u_input.b.yxw, global0.c), 12792i, var_0), Struct_1(true, u_input.b.zxw, global0.c)).c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.c.x, 32292u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(49549u, u_input.c.x, u_input.c.x))), global2[_wgslsmith_index_u32(u_input.c.x, 17u)]), global0.b).a, ~abs(vec3<i32>(-global0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, -2147483647i), vec3<i32>(global0.b.x, -2147483647i, -1i)), -2147483647i))).a.c.x;
    var var_1 = func_2(var_0.x == global4[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_clamp_u32(43325u, u_input.d.x, u_input.c.x), ~u_input.d.x), 1u), 11u)]);
    var_1 = Struct_3(func_1(true, var_1.a, func_1(any(var_0.xx), Struct_1(global4[_wgslsmith_index_u32(u_input.d.x >> (21804u % 32u), 11u)], func_2(global0.a).a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, var_1.b.x))), vec3<i32>(-1i, global0.b.x, abs(global1.x))).c.b).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x)))) * vec2<f32>(376f, global0.c.x)), Struct_1(true, vec3<i32>(_wgslsmith_sub_i32(1i, ~global1.x), var_1.c.b.x, abs(2501i)), func_2(select(var_0.x, var_1.a.a, var_0.x) || false).a.c), -2147483647i >> (u_input.d.x % 32u), !func_1(false, Struct_1(var_1.e.x, vec3<i32>(33425i, 39534i, 30556i), vec2<f32>(global0.c.x, var_1.b.x)), abs(global0.b >> (u_input.d % vec3<u32>(32u)))).e);
    global4 = array<bool, 11>();
    global3 = _wgslsmith_f_op_f32(-var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, var_1.b.x, 414f))), vec3<f32>(-815f, _wgslsmith_f_op_f32(1151f - func_5(var_1.a, u_input.d.x, Struct_3(Struct_1(global4[_wgslsmith_index_u32(u_input.d.x, 11u)], u_input.b.xyz, var_1.c.c), vec2<f32>(452f, -747f), Struct_1(true, u_input.b.wzx, vec2<f32>(var_1.b.x, -392f)), var_1.c.b.x, var_1.e), Struct_1(global4[_wgslsmith_index_u32(40559u, 11u)], vec3<i32>(global1.x, var_1.d, 1i), vec2<f32>(-721f, global0.c.x))).c.x), _wgslsmith_f_op_f32(min(-123f, _wgslsmith_f_op_f32(-789f * -313f))))), _wgslsmith_div_i32(~firstLeadingBit(var_1.c.b.x), -1i), -1i);
}

