struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 18> = array<f32, 18>(925f, -612f, -1158f, -790f, 264f, 623f, 1000f, 402f, -422f, 973f, 230f, -2689f, 252f, -171f, 1908f, -151f, -1339f, -472f);

var<private> global2: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(global2.b.d - _wgslsmith_f_op_f32(-737f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 50391u, 17877u), 18u)] + global1[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1673f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1642f, global2.a.b.d))))));
    global1 = array<f32, 18>();
    var var_1 = true;
    global0 = !vec2<bool>(global0.x, true);
    global0 = select(!select(!(!vec2<bool>(global0.x, false)), vec2<bool>(global0.x, global0.x), any(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), true))), vec2<bool>(!all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(vec3<bool>(true, var_0.x < 1382f, true))), !global0.x);
    return any(!vec4<bool>(true, global0.x, true, true)) || true;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> Struct_4 {
    var var_0 = vec3<i32>(~arg_2, -u_input.d | arg_2, -arg_0.x);
    var var_1 = global0.x;
    var var_2 = arg_2 & _wgslsmith_dot_vec2_i32(~((vec2<i32>(-25158i, arg_2) & vec2<i32>(24264i, 1i)) & vec2<i32>(2147483647i, var_0.x)), vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(global2.a.b.c.wzz), abs(vec3<i32>(arg_0.x, 1533i, u_input.b)))));
    var var_3 = !select(vec3<bool>(func_3(), !global0.x && global0.x, global0.x), vec3<bool>(all(!vec3<bool>(global0.x, global0.x, global0.x)), true, func_3()), select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, any(vec2<bool>(true, global0.x)), any(vec4<bool>(true, global0.x, true, global0.x))), vec3<bool>(global0.x && global0.x, true, false)));
    var var_4 = select(_wgslsmith_mod_vec3_i32(abs((vec3<i32>(47344i, 2147483647i, u_input.d) >> (u_input.c.wyw % vec3<u32>(32u))) >> (abs(u_input.c.wyy) % vec3<u32>(32u))), firstLeadingBit(~_wgslsmith_mod_vec3_i32(global2.b.c.xww, vec3<i32>(0i, 2147483647i, global2.a.b.b)))), ~global2.b.c.xyx, !vec3<bool>(true | var_3.x, var_3.x, !(global2.a.b.d < 2845f)));
    return Struct_4(Struct_3(-814f, Struct_1(vec4<i32>(-45620i, arg_0.x, var_4.x >> (4294967295u % 32u), countOneBits(-16562i)), u_input.b, global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f)), ~_wgslsmith_mult_u32(arg_1, 4294967295u))), Struct_1(global2.a.b.a, min(~var_4.x, 1i), -(~_wgslsmith_mult_vec4_i32(global2.b.a, global2.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 18u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.b.e, 18u)])) + _wgslsmith_f_op_f32(global2.b.d * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(153256u, 18u)] - -103f))), global2.a.b.e), global2.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> Struct_4 {
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    global2 = func_2(global2.b.a.wy, u_input.c.x, global2.c);
    var var_0 = global2.a;
    let var_1 = global0.x;
    return func_2(~(~(func_2(vec2<i32>(var_0.b.b, var_0.b.b), var_0.b.e, u_input.d).b.c.zw | firstTrailingBit(vec2<i32>(global2.b.c.x, 1i)))), u_input.a.x, (i32(-1i) * -48534i) & (u_input.b | ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(170f, 583f) * vec2<f32>(global1[_wgslsmith_index_u32(global2.b.e, 18u)], 674f)), vec2<f32>(global2.a.b.d, global2.b.d))))), select(any(!vec4<bool>(global0.x, global0.x, true, global0.x)), global0.x, true), any(!vec4<bool>(false, global2.b.a.x < 2147483647i, true, global0.x)));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-125f * _wgslsmith_f_op_f32(-global2.b.d)), global2.b.d, any(!vec4<bool>(global0.x, false, true, false)) & true)), _wgslsmith_f_op_f32(ceil(global2.b.d)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~func_1(vec2<f32>(-608f, global1[_wgslsmith_index_u32(71389u, 18u)]), false, global0.x).b.e), 18u)] * global2.a.b.d));
    let var_1 = global2.b;
    global0 = vec2<bool>(any(vec4<bool>(global0.x, any(vec4<bool>(false, global0.x, global0.x, true)), all(!vec3<bool>(global0.x, global0.x, global0.x)), 827f <= _wgslsmith_f_op_f32(max(996f, var_0.x)))), true);
    let var_2 = func_2(vec2<i32>(u_input.b ^ func_1(_wgslsmith_div_vec2_f32(var_0.xx, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global2.b.d)), true, false).c, 1i), 1u, var_1.c.x);
    let var_3 = Struct_4(func_2(vec2<i32>(var_2.c, 1i), 5639u, 15198i).a, var_2.b, _wgslsmith_dot_vec4_i32(var_1.c, var_2.a.b.c));
    let var_4 = Struct_1(vec4<i32>(_wgslsmith_div_i32(global2.a.b.b, var_1.b), global2.c, ~(-max(u_input.b, 10639i)), _wgslsmith_div_i32(~(-var_1.c.x), u_input.b)), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-1i, global2.a.b.b)), firstLeadingBit(vec2<i32>(2147483647i, u_input.b) << (vec2<u32>(1u, 18785u) % vec2<u32>(32u)))) & u_input.d, select(~vec4<i32>(global2.b.b, global2.c, -18891i, 0i) ^ ~var_2.a.b.c, select(var_1.a, ~(var_3.b.c << (vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 39122u) % vec4<u32>(32u))), select(var_2.b.d >= var_0.x, true, false)), !select(!vec4<bool>(global0.x, true, true, false), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), true), !global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f))) * 413f), _wgslsmith_div_u32(0u, ~0u));
    global0 = !(!select(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(!global0.x, global0.x), all(vec4<bool>(false, false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, 1389f, var_0.x, var_1.d)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.d, var_3.b.d, -958f, var_2.b.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1184f, global1[_wgslsmith_index_u32(4294967295u, 18u)], -284f, var_3.b.d) + vec4<f32>(-207f, var_4.d, var_3.a.a, var_2.b.d))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.d)), global2.b.d, _wgslsmith_f_op_f32(abs(var_1.d)), _wgslsmith_f_op_f32(-var_2.a.b.d))))));
}

