struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -90609i, -43559i);

var<private> global2: array<f32, 6>;

var<private> global3: vec4<f32> = vec4<f32>(-1366f, 2076f, 331f, -312f);

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = global1.x;
    var var_1 = true & all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, any(vec4<bool>(true, false, false, false)))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(1u, 13u)], ~_wgslsmith_dot_vec2_u32(u_input.d, countOneBits(u_input.c.xx)) << (~(~31738u) % 32u), global3.x);
    let var_3 = Struct_2(vec3<bool>(any(!(!vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x))), any(!select(vec4<bool>(var_2.a.x, true, false, var_2.a.x), vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(false, var_2.a.x, true, false))), true), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1064f + 463f) + global3.x))));
    var var_4 = !(!(!select(!var_2.a.zx, vec2<bool>(false, false), !var_3.a.xx)));
    return u_input.c;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_1(global3.wxy);
    var var_1 = (_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 86597u), vec3<u32>(u_input.d.x, u_input.c.x, u_input.b.x)), func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, global3.x, global2[_wgslsmith_index_u32(0u, 6u)], 1801f), vec4<f32>(700f, -305f, -329f, -782f))), vec4<f32>(-1363f, global2[_wgslsmith_index_u32(1u, 6u)], global3.x, -1008f))) << (min(u_input.c, _wgslsmith_sub_vec3_u32(u_input.c, ~u_input.c)) % vec3<u32>(32u))) >> (firstLeadingBit(u_input.c) % vec3<u32>(32u));
    var var_2 = Struct_2(!vec3<bool>(_wgslsmith_f_op_f32(select(global3.x, 856f, false)) != _wgslsmith_f_op_f32(-var_0.a.x), false, all(vec4<bool>(true, true, true, true))), ~0u, 2231f);
    let var_3 = !vec4<bool>(false, false, true, all(select(vec3<bool>(var_2.a.x, var_2.a.x, true), !vec3<bool>(var_2.a.x, var_2.a.x, false), select(var_2.a, var_2.a, false))));
    let var_4 = vec3<bool>(true, false, var_3.x);
    return var_2.a.x;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -745f;
    global0 = array<vec3<bool>, 13>();
    let var_1 = arg_3;
    let var_2 = var_1;
    var var_3 = vec4<bool>(arg_2.a.x, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.xzx, vec3<f32>(arg_3.a.x, var_2.a.x, -695f))) + var_1.a))), arg_2.a.x, abs(abs(countOneBits(global1.x))) <= reverseBits(-19194i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-1000f + 1480f), arg_2.c)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f - -316f) - _wgslsmith_f_op_f32(-var_2.a.x)), -131f, _wgslsmith_f_op_f32(f32(-1f) * -483f))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(true, !(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), (all(vec2<bool>(true, true)) | any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, 7319u)), 13u)])) || all(vec2<bool>(false, true)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~_wgslsmith_div_vec2_i32(global1.xy, -vec2<i32>(global1.x, -2147483647i))), global1.xy);
    var_0 = global0[_wgslsmith_index_u32(1u, 13u)];
    var var_3 = _wgslsmith_f_op_f32(1062f - arg_0.a.x);
    return var_1;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = false;
    global4 = firstTrailingBit(_wgslsmith_sub_u32(arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(19850u, 90130u, _wgslsmith_sub_u32(arg_3.x, arg_1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, arg_3.x, arg_3.x), vec3<u32>(9731u, arg_1.b, arg_3.x))), select(firstLeadingBit(vec4<u32>(34897u, arg_1.b, 4294967295u, arg_3.x)), firstTrailingBit(vec4<u32>(arg_3.x, 9626u, 66543u, arg_1.b)), false))));
    global0 = array<vec3<bool>, 13>();
    let var_1 = _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(1u, _wgslsmith_mod_u32(~82902u, u_input.d.x), 4294967295u));
    var var_2 = arg_1.a.yy;
    return vec3<bool>(arg_1.a.x, var_2.x, !(!(false | var_2.x)) || !(false | !arg_1.a.x));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = Struct_2(!arg_0.a, var_1.b, 1716f);
    var var_3 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 13>();
    let var_0 = func_6(Struct_2(func_5(select(vec3<i32>(-7371i, -26652i, 19003i), vec3<i32>(-40118i, -33201i, -41390i), any(vec4<bool>(true, true, false, false))), Struct_2(select(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(13915u, 13u)], false), _wgslsmith_div_u32(1u, 10493u), _wgslsmith_div_f32(-1052f, global3.x)), func_4(func_1(true, -1i, Struct_2(vec3<bool>(true, false, true), u_input.c.x, -151f), Struct_1(global3.ywy))), u_input.b), 1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x)))), vec4<u32>(~42546u, ~u_input.d.x, ~30174u, u_input.c.x), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(global3.zww * _wgslsmith_f_op_vec3_f32(global3.xyz * vec3<f32>(562f, -1620f, global2[_wgslsmith_index_u32(1u, 6u)]))))));
    global4 = 1u;
    global4 = min(20916u, ~18942u);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 6u)] + var_0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1643f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), !(!(24610u != u_input.d.x)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, global1.x, ~_wgslsmith_sub_i32(firstTrailingBit(-25729i), u_input.a), 1i), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~global1.x, -8745i, u_input.a & u_input.a), -2147483647i), -5430i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-421i, _wgslsmith_mult_i32(4771i, global1.x)), 16051i, _wgslsmith_dot_vec2_i32(vec2<i32>(21846i, -44792i) >> (u_input.c.xy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -1i), global1.xx, global1.xz)))), i32(-1i) * -1i, abs(vec3<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.d), ~u_input.b.x) << (select(vec3<u32>(29827u, u_input.c.x, u_input.c.x), u_input.c, func_5(vec3<i32>(33053i, global1.x, global1.x), Struct_2(global0[_wgslsmith_index_u32(1u, 13u)], u_input.b.x, global2[_wgslsmith_index_u32(25183u, 6u)]), var_0, vec2<u32>(0u, 5930u))) % vec3<u32>(32u))), 49243u);
}

