struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: vec4<f32> = vec4<f32>(446f, -353f, 1048f, -1451f);

var<private> global2: array<i32, 26> = array<i32, 26>(i32(-2147483648), 3962i, 2147483647i, 2147483647i, -16705i, 11106i, 5979i, 1i, 38936i, i32(-2147483648), -1i, 1i, 3381i, -1i, 10694i, 11668i, -840i, -1i, 1i, i32(-2147483648), 5879i, 9124i, -1i, -41297i, i32(-2147483648), 2147483647i);

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_4(max(vec3<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b, 8u)], 26u)], min(u_input.a, -10799i)), -1i, reverseBits(1i)), vec3<i32>(1i, firstLeadingBit(_wgslsmith_sub_i32(u_input.d, u_input.a)), global2[_wgslsmith_index_u32(~u_input.b ^ u_input.c.x, 26u)])), Struct_1(~(~vec2<i32>(-15536i, u_input.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x))))))), u_input.e);
    var var_1 = -249f;
    var_1 = 177f;
    global0 = array<u32, 8>();
    var var_2 = select(vec2<bool>(false, all(vec3<bool>(true, any(vec3<bool>(true, true, true)), true))), vec2<bool>(false, all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true))))), true);
    return !var_2.x;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = array<u32, 8>();
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 114f, global1.x, -156f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, -2008f, global1.x, -865f)))) | all(select(vec3<bool>(arg_0 > arg_0, any(vec3<bool>(false, true, true)), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), !func_3(vec4<f32>(global1.x, 775f, global1.x, global1.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(global1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f * global1.x) * 184f))));
    var var_2 = u_input.c;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-923f, _wgslsmith_f_op_f32(max(439f, 2690f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1903f)))));
    return select(select(!select(!vec2<bool>(false, var_0), select(vec2<bool>(true, true), vec2<bool>(true, var_0), false), select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(false, false))), vec2<bool>(var_0, 4294967295u <= _wgslsmith_sub_u32(1u, u_input.b)), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global1.x, -124f, 343f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1515f, -1114f, global1.x, var_1))))), !select(vec2<bool>(func_3(vec4<f32>(var_1, -182f, global1.x, var_1)), !var_0), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, true)), true), !any(!(!vec3<bool>(var_0, var_0, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1406f)), _wgslsmith_div_f32(arg_1.c.b, arg_1.c.b), _wgslsmith_f_op_f32(-944f + arg_1.c.b), arg_1.b.b);
    let var_0 = Struct_4(-vec3<i32>(reverseBits(arg_1.c.a.x), _wgslsmith_dot_vec2_i32(arg_1.b.a, -vec2<i32>(-2147483647i, 0i)), 27843i), Struct_1(arg_1.b.a, 1025f), select(firstLeadingBit(vec3<i32>(0i, 2147483647i, -2147483647i) & vec3<i32>(-46832i, 1187i, global2[_wgslsmith_index_u32(5967u, 26u)])), ~abs(vec3<i32>(u_input.d, 2147483647i, global2[_wgslsmith_index_u32(91978u, 26u)])), func_2(8003u << (global0[_wgslsmith_index_u32(0u, 8u)] % 32u)).x) & (-vec3<i32>(-1i, u_input.d, 1i) ^ select(vec3<i32>(2147483647i, 32272i, global2[_wgslsmith_index_u32(1u, 26u)]), select(vec3<i32>(0i, global2[_wgslsmith_index_u32(10328u, 26u)], -1519i), u_input.e, true), vec3<bool>(arg_1.a.x, arg_1.a.x, false))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1194f, _wgslsmith_div_f32(var_0.b.b, var_0.b.b), _wgslsmith_f_op_f32(min(-606f, -1000f)), _wgslsmith_f_op_f32(-var_0.b.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, 197f, global1.x, var_0.b.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-var_0.b.b), 269f, _wgslsmith_f_op_f32(var_0.b.b + -605f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0.b.b, 1052f, arg_1.c.b) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-174f, 551f, global1.x, 1442f), vec4<f32>(global1.x, global1.x, 469f, var_0.b.b), vec4<bool>(true, arg_0.x, arg_1.a.x, true)))))));
    return _wgslsmith_f_op_f32(abs(948f));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> vec4<i32> {
    global3 = !(global0[_wgslsmith_index_u32(2820u, 8u)] <= 1u);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(4294967295u), Struct_2(!vec2<bool>(true, arg_3), Struct_1(vec2<i32>(-2147483647i, -1666i), global1.x), Struct_1(u_input.e.xy, arg_2.x)), ~(~u_input.c))), _wgslsmith_div_f32(595f, _wgslsmith_f_op_f32(f32(-1f) * -914f)), _wgslsmith_f_op_f32(floor(-418f)), arg_1) + arg_0);
    let var_0 = Struct_1(-(~vec2<i32>(-22698i, countOneBits(global2[_wgslsmith_index_u32(8076u, 26u)]))), -1000f);
    let var_1 = var_0;
    let var_2 = Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(-(vec2<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4246u, 8u)], 26u)], -73422i) & vec2<i32>(-23086i, -2147483647i)), _wgslsmith_f_op_f32(-1180f + _wgslsmith_f_op_f32(618f - var_1.b))), Struct_1(var_0.a, -315f)), global1.zz, Struct_2(func_2(min(66630u, 0u)), var_1, Struct_1(reverseBits(~vec2<i32>(var_0.a.x, 20022i)), -1122f)));
    return select(vec4<i32>(~reverseBits(~global2[_wgslsmith_index_u32(u_input.b, 26u)]), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_0.a.x), vec2<i32>(var_0.a.x, -22665i), var_0.a), -vec2<i32>(var_1.a.x, 2147483647i)), ~1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 44908i, 1i, 59267i), vec4<i32>(0i, global2[_wgslsmith_index_u32(21277u, 26u)], 1i, 39790i))), var_1.a.x ^ ~(29997i << (u_input.c.x % 32u)), var_0.a.x), vec4<i32>(var_2.c.b.a.x, -6716i, abs(u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, var_2.c.b.a.x) ^ countOneBits(var_2.c.c.a), var_1.a)), (~(var_2.c.c.a.x & var_1.a.x) | 1i) <= 52292i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((~u_input.b | u_input.c.x) != u_input.c.x);
    let var_1 = ~abs(-(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 26u)], 1i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 26u)]) << (vec4<u32>(65144u, u_input.c.x, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(5071u, 8u)]) % vec4<u32>(32u))) | (func_1(vec4<f32>(global1.x, -1817f, global1.x, global1.x), 431f, vec4<f32>(801f, global1.x, 1243f, global1.x), false) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 15681u, 1u, 5462u), vec4<u32>(4073u, u_input.b, 1u, u_input.c.x)) % vec4<u32>(32u))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, 1686f, -289f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, -1428f, -1000f)))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), 907f, -986f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = Struct_2(vec2<bool>(!var_0, true | var_0), Struct_1(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(~1u >> (u_input.c.x % 32u), 26u)]), _wgslsmith_f_op_f32(abs(global1.x))), Struct_1(reverseBits(vec2<i32>(u_input.a ^ 1i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-794f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.b, var_2.c.b)))))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(0i, var_2.b.a.x)), vec2<i32>(-12542i, var_2.b.a.x) | abs(u_input.e.yy)), vec2<i32>(~func_1(vec4<f32>(var_2.c.b, -982f, global1.x, 337f), 302f, vec4<f32>(-394f, global1.x, global1.x, global1.x), var_0).x, 1i)));
}

