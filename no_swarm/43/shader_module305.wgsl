struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, true), Struct_1(false));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<i32, 16> = array<i32, 16>(17061i, 2147483647i, 0i, 1i, -1i, 1585i, 2147483647i, 1i, 26877i, -8204i, -1446i, 0i, 1i, 2147483647i, 49329i, 0i);

var<private> global4: array<i32, 22> = array<i32, 22>(i32(-2147483648), -14117i, 26852i, 19056i, -12268i, 0i, 0i, 15232i, 34644i, i32(-2147483648), 2147483647i, -24280i, -37177i, i32(-2147483648), -27829i, 10804i, -16335i, -1i, 0i, -6720i, 2147483647i, -1i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global1 = 0u;
    var var_0 = Struct_4(u_input.a.wxz, ~(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-32194i, u_input.c.x), 26144i)), false, Struct_2(Struct_1(!any(arg_0)), vec3<i32>(0i, -u_input.c.x, countOneBits(19363i)) >> (~vec3<u32>(38078u, u_input.e.x, u_input.e.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(floor(-1027f)), all(vec4<bool>(false, arg_0.x, true, false))))));
    var_0 = Struct_4(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~var_0.a, _wgslsmith_mod_vec3_i32(var_0.d.b, var_0.d.b)), ~vec3<i32>(0i, var_0.a.x, 18396i) << (select(vec3<u32>(u_input.e.x, u_input.b, 20180u), vec3<u32>(u_input.e.x, 0u, 1u), arg_0.yyz) % vec3<u32>(32u))), -(min(u_input.a.wzw, var_0.a) ^ var_0.a)), 0i, !global2.a, Struct_2(Struct_1(select(true, var_0.d.a.a & true, var_0.c)), _wgslsmith_mod_vec3_i32(var_0.a, _wgslsmith_mod_vec3_i32(var_0.d.b | vec3<i32>(-7006i, u_input.a.x, var_0.a.x), -vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(89173u, 16u)], 17793i)))), -611f);
    let var_1 = min(~(abs(0u) | _wgslsmith_mod_u32(u_input.b, u_input.b)), _wgslsmith_mult_u32(u_input.e.x, u_input.b)) & 26820u;
    var var_2 = vec2<bool>(true, any(global0.a));
    return _wgslsmith_div_f32(-935f, var_0.e);
}

fn func_4(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = vec3<bool>(select(true, (countOneBits(-2147483647i) > arg_0.b) | false, any(vec4<bool>(global2.a, !global0.a.x, all(vec4<bool>(true, true, global0.b.a, false)), !arg_0.d.a.a))), _wgslsmith_f_op_f32(arg_0.e + 655f) >= 642f, true);
    var var_1 = true;
    return arg_0.a;
}

fn func_2() -> Struct_3 {
    global3 = array<i32, 16>();
    global4 = array<i32, 22>();
    global0 = Struct_3(select(vec2<bool>(!select(false, global2.a, true), ~2147483647i != -global4[_wgslsmith_index_u32(u_input.e.x, 22u)]), global0.a, (global3[_wgslsmith_index_u32(0u, 16u)] << (abs(u_input.e.x) % 32u)) == 1i), global0.b);
    let var_0 = Struct_3(global0.a, global0.b);
    let var_1 = Struct_2(global0.b, func_4(Struct_4(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(global4[_wgslsmith_index_u32(u_input.e.x, 22u)], -1i, 1i)), reverseBits(u_input.a.yyy)), global3[_wgslsmith_index_u32(u_input.e.x, 16u)], true, Struct_2(global0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -9008i, -35853i), u_input.a.xwz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, var_0.a.x, var_0.a.x))) - -1488f))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 22>();
    global0 = Struct_3(global0.a, func_1());
    global2 = Struct_1(all(global0.a));
    global3 = array<i32, 16>();
    global4 = array<i32, 22>();
    global2 = Struct_1(global2.a);
    var var_0 = Struct_4(-u_input.a.yxw, -2147483647i, true, Struct_2(func_1(), u_input.a.zyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f * 810f))))));
    global2 = func_2().b;
    global3 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(u_input.e.x), u_input.b, min(~(~37542u), 1u)), var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_0.e)), var_0.e, _wgslsmith_f_op_f32(-469f - 1f))));
}

