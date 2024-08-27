struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-1i, 1i, -22660i, -11520i);

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<f32> {
    let var_0 = countOneBits(u_input.d.x);
    global0 = array<i32, 4>();
    global1 = 3851i;
    global0 = array<i32, 4>();
    global1 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(930f, -176f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 788f) - vec2<f32>(564f, 1947f)))))));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_div_f32(450f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 1216f)))), u_input.b, _wgslsmith_add_u32(u_input.d.x, reverseBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 79061u, u_input.d.x)), firstTrailingBit(vec3<u32>(u_input.d.x, 114384u, u_input.d.x))))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, arg_0, 36861i)), vec3<i32>(-20553i, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], 8286i)), (i32(-1i) * -6279i) | _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.yz)), ~select(global0[_wgslsmith_index_u32(~1u, 4u)], 2149i, true)));
    var var_2 = var_0.x;
    var var_3 = !(!(!(!all(vec2<bool>(true, false)))));
    var var_4 = vec3<bool>(true != (false && (1u < var_1.c)), countOneBits(~_wgslsmith_mod_u32(0u, var_1.c)) > (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_1.c), u_input.d) >> (u_input.d.x % 32u)), !all(vec2<bool>(true, true)));
    return 399f <= var_1.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> i32 {
    global1 = firstLeadingBit(~28234i);
    var var_0 = Struct_3(!select(select(vec4<bool>(arg_1.b.b.x, arg_0.x, arg_1.d.b.x, arg_1.a.x), vec4<bool>(true, false, arg_0.x, arg_0.x), arg_0), select(vec4<bool>(arg_1.a.x, false, true, false), !arg_0, func_2(global0[_wgslsmith_index_u32(arg_1.b.a.c, 4u)])), arg_0.x), Struct_2(arg_1.b.a, arg_0, arg_2), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, -349f, _wgslsmith_div_f32(168f, arg_2)), Struct_2(arg_1.e.a, select(select(vec4<bool>(arg_0.x, arg_0.x, arg_1.d.b.x, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_1.a.x, false, arg_1.e.b.x), false), !arg_1.d.b.x), !arg_0, select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_1.e.b.x, arg_1.d.b.x, false, arg_1.d.b.x), true)), _wgslsmith_f_op_f32(floor(-288f))), Struct_2(arg_1.b.a, vec4<bool>(!(!arg_1.b.b.x), arg_1.d.b.x, func_2(1i) & false, !arg_1.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-183f + 108f)))));
    var var_1 = Struct_3(select(!select(select(vec4<bool>(arg_0.x, false, false, true), var_0.d.b, arg_1.a), select(vec4<bool>(false, arg_0.x, var_0.b.b.x, false), vec4<bool>(false, arg_1.b.b.x, false, false), arg_0.x), !vec4<bool>(false, false, arg_1.a.x, false)), select(vec4<bool>(-803f > arg_2, true, false, true), vec4<bool>(!var_0.d.b.x, var_0.e.b.x, arg_0.x, var_0.a.x), vec4<bool>(any(arg_1.d.b.wxw), select(arg_1.b.b.x, var_0.e.b.x, arg_0.x), true, all(arg_0.xyw))), arg_0.x && true), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(abs(-700f)), _wgslsmith_f_op_f32(arg_2 - var_0.e.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c))) * var_0.c), arg_1.e, Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-2433f)), vec4<i32>(~global0[_wgslsmith_index_u32(0u, 4u)], ~global0[_wgslsmith_index_u32(4294967295u, 4u)], -var_0.e.a.b.x, _wgslsmith_mult_i32(-31139i, 34079i)), arg_1.d.a.c, u_input.b.xx), !vec4<bool>(true, any(var_0.e.b.yz), var_0.b.b.x, arg_1.d.b.x && arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * -1000f) + var_0.d.c))));
    var var_2 = ~u_input.d;
    var var_3 = 838f;
    return _wgslsmith_div_i32(-u_input.e.x, ~_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.d.a.b.x, ~var_1.b.a.d.x), _wgslsmith_dot_vec4_i32(var_0.d.a.b | var_1.b.a.b, firstTrailingBit(var_1.e.a.b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = -_wgslsmith_add_vec4_i32(arg_1.b.a.b << (vec4<u32>(u_input.d.x, 1u, ~u_input.d.x, arg_0.x) % vec4<u32>(32u)), -u_input.b >> (~(~vec4<u32>(1u, u_input.d.x, arg_0.x, u_input.d.x)) % vec4<u32>(32u)));
    let var_1 = arg_1.e.a;
    global1 = func_4(vec4<bool>(!(!func_2(-5434i)), true, _wgslsmith_sub_i32(-u_input.a, -2147483647i) < _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -1i, arg_1.e.a.b.x, var_1.b.x), vec4<i32>(global0[_wgslsmith_index_u32(59499u, 4u)], global0[_wgslsmith_index_u32(var_1.c, 4u)], 23378i, var_1.b.x)), arg_1.a.x), arg_1, _wgslsmith_f_op_f32(-var_1.a));
    var var_2 = ~arg_0;
    var var_3 = var_1;
    return Struct_2(var_1, vec4<bool>(all(vec4<bool>(!arg_1.a.x, arg_1.b.b.x, !arg_1.a.x, true)), false, _wgslsmith_div_i32(select(-20381i, u_input.a, arg_1.e.b.x), ~(-3745i)) >= var_1.b.x, all(select(vec2<bool>(true, false), select(arg_1.b.b.wx, vec2<bool>(arg_1.e.b.x, true), arg_1.e.b.x), !arg_1.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_3.a)))))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    global1 = _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.e.x, -1i, ~arg_1.b.a.d.x, arg_2.b.x) & u_input.b), arg_1.e.a.b);
    let var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(_wgslsmith_mod_i32(~2147483647i, 56961i), arg_2.b.x, _wgslsmith_div_i32(arg_1.e.a.d.x, max(-1i, 49865i))), func_1(vec2<u32>(reverseBits(0u), 0u), arg_1).a.b.zzw ^ reverseBits(vec3<i32>(1i, arg_2.d.x, 2147483647i) & vec3<i32>(-6125i, -1i, u_input.a)));
    return vec2<bool>(false, !(!(-42115i != arg_2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true)))), u_input.d.x == u_input.d.x), !func_5(~vec4<u32>(47540u, 0u, 1408u, u_input.d.x), Struct_3(vec4<bool>(true, true, true, true), Struct_2(Struct_1(1164f, vec4<i32>(15804i, -1i, u_input.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 4u)]), u_input.d.x, u_input.b.wy), vec4<bool>(true, true, true, false), 616f), vec3<f32>(-691f, -230f, -847f), func_1(u_input.d, Struct_3(vec4<bool>(true, true, true, true), Struct_2(Struct_1(1056f, u_input.b, 4294967295u, u_input.e.xz), vec4<bool>(true, true, false, false), 193f), vec3<f32>(2087f, 1697f, -465f), Struct_2(Struct_1(233f, vec4<i32>(-1i, 1i, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], 38398i), 15465u, u_input.e.yx), vec4<bool>(false, false, true, false), 205f), Struct_2(Struct_1(-834f, vec4<i32>(1i, 59931i, -3439i, 0i), 0u, vec2<i32>(57840i, global0[_wgslsmith_index_u32(u_input.d.x, 4u)])), vec4<bool>(false, true, false, true), 2206f))), Struct_2(Struct_1(1000f, u_input.b, 22216u, vec2<i32>(global0[_wgslsmith_index_u32(1u, 4u)], 9724i)), vec4<bool>(true, true, true, false), 1635f)), func_1(vec2<u32>(u_input.d.x, u_input.d.x), Struct_3(vec4<bool>(true, false, true, true), Struct_2(Struct_1(-1043f, u_input.b, 0u, u_input.b.xx), vec4<bool>(true, true, false, false), 974f), vec3<f32>(2295f, 188f, 1573f), Struct_2(Struct_1(718f, vec4<i32>(2147483647i, u_input.a, u_input.c, 113278i), 23374u, vec2<i32>(-12514i, global0[_wgslsmith_index_u32(u_input.d.x, 4u)])), vec4<bool>(false, false, true, false), -160f), Struct_2(Struct_1(685f, u_input.b, 13865u, vec2<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 4u)])), vec4<bool>(true, true, true, false), 427f))).a, _wgslsmith_f_op_f32(floor(-2392f))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -106f));
}

