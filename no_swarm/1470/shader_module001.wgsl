struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 83045u, 1u, 4294967295u);

var<private> global1: i32;

var<private> global2: array<bool, 26> = array<bool, 26>(false, true, false, true, true, true, false, true, false, true, true, false, true, true, true, true, false, true, false, true, false, true, true, false, true, false);

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), 15437i), vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), 0i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), 0i)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), -21672i), vec3<bool>(false, true, true), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true), 2147483647i), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), 67610i)));

var<private> global4: array<vec2<bool>, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = vec2<f32>(-393f, _wgslsmith_f_op_f32(abs(548f)));
    global4 = array<vec2<bool>, 6>();
    let var_1 = false;
    let var_2 = firstLeadingBit(u_input.a.x);
    global4 = array<vec2<bool>, 6>();
    return _wgslsmith_f_op_f32(var_0.x * var_0.x);
}

fn func_2(arg_0: i32) -> Struct_5 {
    global1 = u_input.a.x;
    global1 = abs(~(_wgslsmith_mod_i32(~(-16089i), 32120i) << (~(~global0.x) % 32u)));
    var var_0 = max(vec2<i32>(-1i) * -((u_input.a.xx ^ u_input.a.xz) >> ((vec2<u32>(global0.x, 64397u) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u))), ~u_input.a.xx);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1010f + 419f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)) + _wgslsmith_f_op_f32(step(-1000f, 1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(global0.zxw, vec4<i32>(1i, 2147483647i, arg_0, 50132i)))) - -1000f)));
    return Struct_5(u_input.a.x, vec4<f32>(var_2, _wgslsmith_f_op_f32(-var_2), var_2, var_2), Struct_4(countOneBits(~global0.yzy), all(vec4<bool>(!global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(~0u, 26u)], var_2 > 468f, true)), Struct_2(Struct_1(vec2<bool>(true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(2434u, 26u)], global2[_wgslsmith_index_u32(50075u, 26u)], true), vec3<bool>(global2[_wgslsmith_index_u32(74479u, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)], true)), _wgslsmith_div_i32(-2147483647i, arg_0)), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], false, global2[_wgslsmith_index_u32(~global0.x, 26u)]), Struct_1(!global4[_wgslsmith_index_u32(1u, 6u)], !vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(14025u, 26u)]), ~1i), Struct_1(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.x, 26u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(89754u, 26u)], global2[_wgslsmith_index_u32(23683u, 26u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], false)), ~arg_0))));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> u32 {
    let var_0 = select(vec4<bool>(arg_0.c.b, !select(arg_0.c.b, all(vec3<bool>(arg_0.c.b, arg_0.c.c.c.b.x, global2[_wgslsmith_index_u32(global0.x, 26u)])), false & global2[_wgslsmith_index_u32(global0.x, 26u)]), false, true), vec4<bool>(all(arg_0.c.c.c.b.yz), !((false || global2[_wgslsmith_index_u32(arg_0.c.a.x, 26u)]) | true), global2[_wgslsmith_index_u32(global0.x, 26u)], true), vec4<bool>(arg_0.c.c.d.b.x, true, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(~countOneBits(~arg_0.c.a.x), 26u)]));
    global1 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(56796i, -20514i), u_input.a.x, firstLeadingBit(2147483647i)), abs((vec4<i32>(arg_0.a, u_input.a.x, arg_1, -7325i) >> (vec4<u32>(8900u, 1u, global0.x, arg_0.c.a.x) % vec4<u32>(32u))) | ~vec4<i32>(8850i, arg_0.c.c.a.c, u_input.a.x, u_input.a.x)), true), select(min(firstLeadingBit(vec4<i32>(arg_0.a, -1i, -6947i, u_input.a.x)), ~vec4<i32>(1i, arg_1, -2147483647i, u_input.a.x)) & abs(vec4<i32>(2147483647i, arg_0.a, arg_1, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1 ^ 1i, min(u_input.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, 964i, arg_0.a)), 1i), abs(vec4<i32>(arg_1, arg_1, arg_0.c.c.d.c, u_input.a.x)) ^ -vec4<i32>(8896i, -14235i, 14258i, arg_1)), all(select(!var_0, select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.x, 26u)], var_0.x, true), var_0, true), any(var_0.zyz)))));
    var var_1 = arg_0;
    global4 = array<vec2<bool>, 6>();
    global1 = 44379i;
    return 4299u;
}

fn func_1(arg_0: bool, arg_1: f32) -> i32 {
    global0 = countOneBits(~_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(global0.x, 104582u, 994u, global0.x)), ~countOneBits(vec4<u32>(global0.x, 1u, global0.x, 1u))));
    global0 = vec4<u32>(global0.x, _wgslsmith_clamp_u32(~global0.x, func_4(func_2(_wgslsmith_add_i32(u_input.a.x, 13287i)), ~_wgslsmith_div_i32(-16338i, u_input.a.x)), global0.x), 0u, ~0u);
    var var_0 = vec2<f32>(-1483f, _wgslsmith_f_op_f32(trunc(arg_1)));
    global0 = select(vec4<u32>(_wgslsmith_add_u32(global0.x, global0.x), global0.x | global0.x, ~54902u, _wgslsmith_mult_u32(global0.x, ~global0.x << (_wgslsmith_mod_u32(23697u, 1u) % 32u))), countOneBits(min(abs(vec4<u32>(206u, global0.x, 15482u, 2135u) & vec4<u32>(global0.x, 4294967295u, global0.x, global0.x)), ~min(vec4<u32>(global0.x, 23825u, global0.x, 4294967295u), vec4<u32>(15875u, global0.x, global0.x, global0.x)))), vec4<bool>(func_2(_wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x)).c.b, true, false, !((global0.x > global0.x) || arg_0)));
    global3 = array<Struct_2, 2>();
    return 23482i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 26>();
    let var_0 = Struct_5(_wgslsmith_mod_i32(u_input.a.x, ~min(func_1(false, 1000f), i32(-1i) * -51528i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1962f, -1721f, 994f, 1241f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, -1417f, 800f, -421f) * vec4<f32>(-374f, -1399f, 1248f, -1727f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(906f, 272f, 985f, -641f) - vec4<f32>(1094f, 996f, 2137f, 1886f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec4<bool>(0i != -u_input.a.x, !(global2[_wgslsmith_index_u32(global0.x, 26u)] & false), global2[_wgslsmith_index_u32(global0.x, 26u)], any(!vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], false))))), Struct_4(vec3<u32>(0u, ~global0.x, global0.x | 20482u) | (global0.ywz >> ((vec3<u32>(1u, global0.x, global0.x) ^ vec3<u32>(global0.x, 82858u, 0u)) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(84916u, 26u)], Struct_2(Struct_1(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(5218u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), func_2(u_input.a.x).c.c.c.b, Struct_1(!global4[_wgslsmith_index_u32(global0.x, 6u)], vec3<bool>(global2[_wgslsmith_index_u32(33739u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], false), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), func_2(u_input.a.x).c.c.a)));
    let var_1 = select(!(!vec4<bool>(func_2(24620i).c.b, all(vec2<bool>(var_0.c.b, global2[_wgslsmith_index_u32(62090u, 26u)])), var_0.c.b | var_0.c.b, var_0.b.x >= var_0.b.x)), !select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)], false), vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)], false, true, var_0.c.b), false), !vec4<bool>(var_0.c.b, global2[_wgslsmith_index_u32(1u, 26u)], false, global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)]), true), select(select(vec4<bool>(var_0.c.c.a.a.x, var_0.c.b, false, var_0.c.b), vec4<bool>(var_0.c.c.b.x, false, false, false), true), !vec4<bool>(var_0.c.b, var_0.c.b, false, global2[_wgslsmith_index_u32(24587u, 26u)]), vec4<bool>(var_0.c.c.b.x, false, true, false)), global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)]), select(!select(vec4<bool>(var_0.c.b, var_0.c.c.a.a.x, true, true), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0.x, 26u)], var_0.c.c.d.b.x), var_0.b.x > -735f), vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)], true, true, !any(vec4<bool>(true, false, true, var_0.c.c.c.b.x))), vec4<bool>(!any(vec4<bool>(var_0.c.b, global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)], var_0.c.b, false)), any(select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)], false, true, global2[_wgslsmith_index_u32(61198u, 26u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.x, 26u)], true, global2[_wgslsmith_index_u32(var_0.c.a.x, 26u)]), var_0.c.c.d.a.x)), func_2(min(6020i, u_input.a.x)).c.c.d.a.x, global2[_wgslsmith_index_u32(~(~var_0.c.a.x), 26u)])));
    var var_2 = var_1.wwx;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(var_0.a).b.yyy * vec3<f32>(1000f, var_3.x, 380f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.zzy))))), ~select(func_4(var_0, _wgslsmith_sub_i32(u_input.a.x, var_0.c.c.a.c)), func_2(reverseBits(0i)).c.a.x, var_1.x), ~global0.x, vec3<u32>(global0.x, ~_wgslsmith_clamp_u32(max(4294967295u, global0.x), ~global0.x, func_4(var_0, -36974i)), global0.x));
}

