struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(318f, 799f, 330f, 631f, 106f, 1000f, -231f, -742f, -1477f, 2364f, -1009f, -1059f, 1029f, -1795f, -1025f, 1133f, 321f, -635f, 724f, 722f, 873f, 1215f, -787f, -726f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = arg_1.b.ww;
    var var_1 = u_input.c.xww;
    let var_2 = !vec3<bool>(true, true != any(arg_1.b.wwz), var_0.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1151f, -1043f))))));
    global0 = array<f32, 24>();
    return max(-2147483647i, arg_0);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = 0u;
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_1 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -59340i, u_input.b.x, u_input.b.x) ^ ~vec4<i32>(-21435i, u_input.b.x, u_input.b.x, 21113i), select(~vec4<i32>(u_input.b.x, -33616i, u_input.b.x, 5970i), vec4<i32>(u_input.b.x, 21970i, u_input.b.x, u_input.b.x), all(vec4<bool>(true, true, false, true)))), abs(vec4<i32>(func_3(u_input.b.x, Struct_2(Struct_1(arg_0.xz, u_input.a, vec2<f32>(arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<u32>(u_input.a.x, 64335u, u_input.d)), vec4<bool>(false, true, false, false), Struct_1(vec2<f32>(arg_0.x, global0[_wgslsmith_index_u32(var_0, 24u)]), vec3<u32>(1u, var_0, 1u), vec2<f32>(-304f, arg_0.x), u_input.a), arg_0.x, Struct_1(arg_0.zy, u_input.c.zyy, vec2<f32>(arg_0.x, 2485f), u_input.c.wwy)), 4294967295u), _wgslsmith_mult_i32(u_input.b.x, -1116i), -41243i, 2147483647i)) << (_wgslsmith_add_vec4_u32(~u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, u_input.a.x), firstLeadingBit(u_input.c))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1073f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), -666f), -1391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.d, 24u)]))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(64522u, 24u)], 389f, global0[_wgslsmith_index_u32(var_0, 24u)], -359f), vec4<f32>(global0[_wgslsmith_index_u32(39576u, 24u)], arg_0.x, global0[_wgslsmith_index_u32(var_0, 24u)], arg_0.x), false))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], 1000f), vec4<f32>(-496f, arg_0.x, 1314f, arg_0.x), vec4<bool>(true, true, false, false))), vec4<f32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 486f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 469f, 373f, -704f), vec4<f32>(-557f, 815f, 1443f, 423f)) * vec4<f32>(arg_0.x, -1099f, -589f, arg_0.x))), firstLeadingBit(1578u) == _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 36045u, 1u, var_0), vec4<u32>(u_input.c.x, u_input.a.x, 65789u, 1484u)))));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(30600u, 24u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 24u)] * global0[_wgslsmith_index_u32(var_0, 24u)]))), countOneBits(u_input.c.wxz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, global0[_wgslsmith_index_u32(40774u, 24u)])), _wgslsmith_f_op_vec2_f32(ceil(var_2.wx)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_2.wy, arg_0.zx)))), u_input.c.zzw), select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), false), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 24u)])), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 24u)]))), ~u_input.a << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 6048u, 1u), ~vec3<u32>(var_0, var_0, var_0), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 81578u), u_input.a)) % vec3<u32>(32u)), arg_0.xx, vec3<u32>(u_input.d, abs(~14037u), 4294967295u)), _wgslsmith_f_op_f32(arg_0.x - global0[_wgslsmith_index_u32(33530u, 24u)]), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_2.xx)), vec3<u32>(var_0 ^ _wgslsmith_add_u32(u_input.a.x, var_0), select(var_0, ~u_input.c.x, true), ~(~14309u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, arg_0.x))) + arg_0.zy), u_input.a << (select(vec3<u32>(1u, u_input.a.x, 44572u), abs(vec3<u32>(var_0, var_0, var_0)), false) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0.d.e.b;
    global0 = array<f32, 24>();
    let var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(841f)))), _wgslsmith_div_f32(func_2(_wgslsmith_f_op_vec3_f32(-arg_0.c)).c.c.x, func_2(_wgslsmith_f_op_vec3_f32(step(arg_0.c, vec3<f32>(arg_0.c.x, global0[_wgslsmith_index_u32(48293u, 24u)], 772f)))).c.a.x), global0[_wgslsmith_index_u32(select(~_wgslsmith_add_u32(arg_0.d.e.d.x, u_input.c.x), 1u, func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(6289u, 24u)], arg_0.d.e.c.x)))).b.x), 24u)])).a;
    var_0 = var_1.b;
    var var_2 = arg_0.d;
    return func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1052f, var_1.c.x, var_1.c.x)), arg_0.c))))).a;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = arg_1 & false;
    var var_1 = func_4(Struct_3(u_input.b.x ^ -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(sign(-2055f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(487f, arg_3.x, -1393f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], -2181f, 979f))), func_2(_wgslsmith_f_op_vec3_f32(ceil(arg_3)))), !select(arg_2.xz, select(arg_2.zz, vec2<bool>(false, true), select(vec2<bool>(arg_2.x, arg_1), arg_2.zz, vec2<bool>(arg_1, true))), arg_2.xx));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3.xx), vec3<u32>(_wgslsmith_div_u32(4294967295u, var_1.b.x), u_input.d, ~4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.a)))), func_4(Struct_3(u_input.b.x >> (var_1.b.x % 32u), global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_f_op_vec3_f32(-arg_3), func_2(vec3<f32>(553f, -509f, var_1.a.x))), arg_2.zy).b), vec4<bool>(all(!(!arg_2.yx)), !(_wgslsmith_f_op_f32(f32(-1f) * -107f) <= _wgslsmith_f_op_f32(var_1.a.x + -498f)), false, (~u_input.b.x ^ 0i) > u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -676f), -150f)), (~u_input.c.wwx & func_4(Struct_3(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 24u)], -1000f, 1602f), Struct_2(Struct_1(arg_3.xx, u_input.c.yxx, var_1.c, vec3<u32>(u_input.d, 7528u, var_1.d.x)), vec4<bool>(true, false, false, arg_1), Struct_1(vec2<f32>(-237f, global0[_wgslsmith_index_u32(1u, 24u)]), vec3<u32>(0u, u_input.d, 0u), arg_3.xy, vec3<u32>(48719u, 1u, var_1.d.x)), arg_3.x, Struct_1(vec2<f32>(-813f, -1000f), vec3<u32>(8081u, 63698u, u_input.d), vec2<f32>(arg_3.x, var_1.c.x), vec3<u32>(var_1.d.x, 4294967295u, 15719u)))), arg_2.zx).d) ^ u_input.c.xxw, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(arg_3.xz)))))), countOneBits(vec3<u32>(u_input.c.x, var_1.b.x, var_1.b.x)) & select(~var_1.b, var_1.b, func_2(arg_3).b.wyz)), var_1.a.x, func_2(arg_3).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))), all(vec4<bool>(!any(vec2<bool>(false, true)), false, all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, false)))));
    let var_1 = abs(u_input.c.x);
    var var_2 = select(vec3<i32>(-1i, u_input.b.x, -4933i), ~(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(24428i, u_input.b.x, u_input.b.x)) ^ ~vec3<i32>(-1i, 4090i, u_input.b.x))), true | var_0.x);
    let var_3 = func_1((_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -1i, var_2.x, -15365i), vec4<i32>(var_2.x, u_input.b.x, 1i, var_2.x) >> (vec4<u32>(14789u, 6462u, 1u, var_1) % vec4<u32>(32u))) & -2147483647i) <= _wgslsmith_sub_i32(var_2.x, -2147483647i), true, select(vec3<bool>(var_0.x, false, true | (var_0.x | false)), vec3<bool>(any(vec2<bool>(false, var_0.x)) || (var_0.x && var_0.x), var_2.x < 2147483647i, true && var_0.x), !vec3<bool>(var_0.x, true, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, 1508f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 24u)])), 829f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~5995u, 24u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2865u, 24u)] + -1000f)))));
    let var_4 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-890f, global0[_wgslsmith_index_u32(var_1, 24u)], 1187f), vec3<f32>(var_3.e.c.x, var_3.a.c.x, 244f), var_3.b.yzw))))))).e.d.x;
    let var_5 = true;
    global0 = array<f32, 24>();
    var var_6 = i32(-1i) * -(i32(-1i) * -30425i);
    var_2 = abs(countOneBits((vec3<i32>(-1i) * -vec3<i32>(1i, var_2.x, u_input.b.x)) & vec3<i32>(u_input.b.x, 1i, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<i32>(-1i) * -select(-vec4<i32>(2147483647i, -1349i, 2147483647i, -2147483647i), ~vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, 0i), true), 1u ^ var_1, 4294967295u, _wgslsmith_mod_u32(func_4(Struct_3(-2147483647i, -456f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(var_1, 24u)], 928f, global0[_wgslsmith_index_u32(1u, 24u)]))), var_3), vec2<bool>(true, !var_5)).d.x, var_4));
}

