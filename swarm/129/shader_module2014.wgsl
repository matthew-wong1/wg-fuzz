struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-474i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -42599i), vec2<i32>(13959i, i32(-2147483648)), vec2<i32>(-16911i, i32(-2147483648)), vec2<i32>(28894i, 0i), vec2<i32>(-2157i, 0i), vec2<i32>(60187i, -1i), vec2<i32>(-6018i, -11277i), vec2<i32>(-14949i, 2147483647i), vec2<i32>(-47078i, -73797i), vec2<i32>(2147483647i, 31917i), vec2<i32>(2147483647i, 13301i), vec2<i32>(-57951i, -40254i), vec2<i32>(0i, 8604i), vec2<i32>(-66881i, -3216i), vec2<i32>(-23632i, -18051i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-31529i, -3864i), vec2<i32>(-37326i, -1i));

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1402f, -1000f), vec2<f32>(-1534f, -497f), vec2<f32>(-1000f, -893f));

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global1 = array<vec2<f32>, 3>();
    var var_0 = Struct_1(global2.a, global2.b.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b.c.x, arg_0, 1000f, 728f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(454f, global2.b.c.x, arg_0, global2.b.c.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1175f, -635f, 2514f))) + _wgslsmith_f_op_vec4_f32(-global2.b.c))));
    global0 = array<vec2<i32>, 21>();
    var_0 = global2.b;
    global1 = array<vec2<f32>, 3>();
    return _wgslsmith_f_op_vec4_f32(global2.b.c * global2.b.c);
}

fn func_2() -> bool {
    var var_0 = u_input.a;
    global0 = array<vec2<i32>, 21>();
    global2 = Struct_2(global2.b.b.yx, Struct_1(global2.a, vec3<bool>(true, true, !all(global2.b.b.zx)), _wgslsmith_f_op_vec4_f32(func_3(-866f))));
    var var_1 = _wgslsmith_f_op_f32(sign(global2.b.c.x));
    let var_2 = u_input.c;
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<u32> {
    global1 = array<vec2<f32>, 3>();
    var var_0 = vec2<bool>(true, !func_2());
    var var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(14015i, _wgslsmith_mult_i32(2147483647i, u_input.b)), u_input.d.x, _wgslsmith_add_i32(i32(-1i) * -22233i, -2147483647i), ~51247i), firstLeadingBit(~(~vec4<i32>(u_input.b, 1i, u_input.d.x, -1i))));
    var var_2 = 379f;
    global0 = array<vec2<i32>, 21>();
    return _wgslsmith_mult_vec2_u32(u_input.c.zy, vec2<u32>(0u, u_input.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_clamp_u32(0u, 41553u, ~u_input.a);
    let var_1 = min(vec3<i32>(reverseBits(i32(-1i) * -1i), u_input.b ^ _wgslsmith_div_i32(u_input.d.x, 47600i), 80004i), reverseBits(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, 0i, -43468i)))) >> (u_input.c % vec3<u32>(32u));
    var var_2 = Struct_2(global2.b.b.yy, Struct_1(select(!(!global2.b.a), vec2<bool>(true, any(vec4<bool>(global2.a.x, false, global2.a.x, false))), true), select(select(!global2.b.b, !global2.b.b, global2.b.b), vec3<bool>(global2.b.b.x, true, global2.b.a.x), false), vec4<f32>(-632f, _wgslsmith_f_op_f32(-575f * 129f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2040f) + -103f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1926f * 1355f), _wgslsmith_f_op_f32(abs(266f))))));
    global0 = array<vec2<i32>, 21>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(var_2.b.c)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    let var_0 = func_4(u_input.d, vec2<u32>(35177u, _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.c.x, 41170u, _wgslsmith_add_u32(0u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-222f)));
    let var_2 = Struct_2(!vec2<bool>(any(vec2<bool>(global2.b.a.x, global2.a.x)), all(select(vec3<bool>(global2.b.a.x, global2.a.x, true), global2.b.b, global2.b.b))), global2.b);
    var var_3 = var_0;
    let var_4 = var_0.a.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false && !(!global2.a.x);
    global2 = func_5((u_input.d.xx << ((reverseBits(u_input.c.zy) & vec2<u32>(620u, 1u)) % vec2<u32>(32u))) ^ u_input.d.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1086f, global2.b.c.x, global2.b.c.x, global2.b.c.x) - global2.b.c) * global2.b.c), vec4<f32>(_wgslsmith_div_f32(-579f, global2.b.c.x), _wgslsmith_f_op_f32(ceil(global2.b.c.x)), _wgslsmith_f_op_f32(-1513f * global2.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(!vec4<bool>(global2.a.x, global2.b.b.x, false, true))))), Struct_3(_wgslsmith_f_op_vec4_f32(-global2.b.c)), func_4(vec3<i32>(72944i, abs(u_input.b), min(u_input.b ^ u_input.d.x, 0i)), func_1(global2.b.c.x, global2.b, ~(~vec3<u32>(0u, 36575u, u_input.a)))));
    var var_1 = Struct_1(!select(!(!global2.a), vec2<bool>(any(global2.b.b.xx), global2.a.x), vec2<bool>(true, true)), select(vec3<bool>(!(!global2.b.b.x), true, true), !global2.b.b, all(!global2.b.b.xy)), func_5(_wgslsmith_mult_vec2_i32(max(global0[_wgslsmith_index_u32(u_input.c.x, 21u)] >> (u_input.c.zx % vec2<u32>(32u)), ~vec2<i32>(u_input.d.x, -50669i)), global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-global2.b.c.x), Struct_1(global2.b.a, vec3<bool>(global2.b.b.x, true, true), global2.b.c), ~u_input.c).x, 21u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2.b.c))), vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -923f), global2.b.c.x, -138f))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b.c.x, 548f, 1218f, -589f), vec4<f32>(global2.b.c.x, global2.b.c.x, global2.b.c.x, global2.b.c.x)))), func_4(max(abs(vec3<i32>(u_input.d.x, -28965i, u_input.d.x)), vec3<i32>(u_input.d.x, -1i, u_input.b)), vec2<u32>(4294967295u | u_input.a, max(u_input.c.x, 0u)))).b.c);
    var var_2 = var_1.c.wzz;
    var var_3 = -646f;
    let x = u_input.a;
    s_output = StorageBuffer(-721f, vec3<u32>(4294967295u, countOneBits(_wgslsmith_mod_u32(4294967295u, abs(u_input.c.x))), firstTrailingBit(u_input.a)));
}

