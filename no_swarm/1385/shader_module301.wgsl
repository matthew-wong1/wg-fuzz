struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(1i, 0i, 23143i, 17612i), vec4<i32>(-59085i, 2147483647i, 43183i, -1i), vec4<i32>(1i, i32(-2147483648), 11629i, 1i));

var<private> global1: Struct_2;

var<private> global2: i32 = -1i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 282f, _wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, true)), arg_1.c.x) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(f32(-1f) * -102f), arg_1.c.x))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>) -> bool {
    global1 = Struct_2(global1.e, all(global1.e.a.wy), false, ~(global1.d >> (select(~vec2<u32>(55316u, 64256u), vec2<u32>(1u, 1u), select(vec2<bool>(arg_1.x, true), vec2<bool>(false, false), false)) % vec2<u32>(32u))), Struct_1(select(vec4<bool>(true, false, !arg_1.x, any(global1.a.a.yww)), global1.a.a, false)));
    global1 = Struct_2(global1.a, arg_1.x, global1.c, vec2<i32>(38684i, global1.d.x), global1.a);
    let var_0 = Struct_3(_wgslsmith_mod_vec2_i32(-countOneBits(~vec2<i32>(2147483647i, u_input.c)), vec2<i32>(global1.d.x, u_input.d)));
    var var_1 = global1.a;
    let var_2 = Struct_1(select(!vec4<bool>(false && global1.a.a.x, false, var_1.a.x, !arg_1.x), var_1.a, global1.e.a.x | true));
    return !(global1.e.a.x && !(346f == _wgslsmith_f_op_f32(1000f + arg_0.x)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(global1.a, Struct_4(Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), global1.d)), vec4<bool>(false, false, firstTrailingBit(0i) > -13346i, global1.e.a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, -1406f, -627f)))))));
    var var_1 = select(global1.a.a, !(!global1.a.a), all(vec3<bool>(func_3(var_0.zz, global1.e.a.yy), true, global1.c)) & !(~0i <= global1.d.x));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-378f)))), var_0.x)));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-18052i, global1.d.x), _wgslsmith_mod_i32(~global1.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-10655i, global1.d.x, 2147483647i, 0i), vec4<i32>(4905i, global1.d.x, 1i, u_input.c)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-69602i, u_input.c, 1i, 13913i), global0[_wgslsmith_index_u32(65030u, 3u)], vec4<i32>(u_input.d, -2147483647i, -13419i, u_input.d)))), abs(countOneBits(abs(u_input.a)))), _wgslsmith_sub_i32(-2147483647i, -51870i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(arg_0.x, 3u)], vec4<i32>(i32(-1i) * -1353i, u_input.c, select(global1.d.x, 3573i, var_1.x), ~global1.d.x), vec4<i32>(_wgslsmith_clamp_i32(u_input.d, 8191i, u_input.b), 3001i, min(global1.d.x, u_input.c), global1.d.x)), select(-vec4<i32>(global1.d.x, u_input.c, -2147483647i, global1.d.x), vec4<i32>(u_input.a, 2147483647i, -1i, u_input.a), vec4<bool>(var_1.x, true, true, var_1.x)) >> (vec4<u32>(~17100u, abs(0u), arg_0.x, 49583u) % vec4<u32>(32u))));
    let var_4 = global1.a;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec3<bool>(true, any(select(vec4<bool>(global1.b, global1.c, global1.c, true), vec4<bool>(global1.b, global1.e.a.x, global1.a.a.x, false), false)), func_1(~vec2<u32>(4294967295u, 13345u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2(global1.e, Struct_4(Struct_3(~global1.d), !global1.e.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(811f, -171f, 711f)))))))).x;
    let var_2 = _wgslsmith_add_i32(global1.d.x, global1.d.x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-175f - -329f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(global1.e.a), Struct_4(Struct_3(global1.d), vec4<bool>(global1.b, false, global1.e.a.x, true), vec3<f32>(642f, -230f, 1079f)))).x)))));
    var_0 = _wgslsmith_f_op_f32(-var_3.x) == _wgslsmith_f_op_f32(sign(var_3.x));
    var var_4 = vec2<u32>(85645u, ~(~1u));
    var var_5 = all(select(vec4<bool>(any(global1.e.a.zw), !global1.e.a.x, func_3(vec2<f32>(2336f, var_3.x), vec2<bool>(false, global1.a.a.x)), !global1.b), select(!global1.e.a, !vec4<bool>(false, global1.c, global1.c, false), !global1.e.a.x), !select(global1.a.a, global1.e.a, global1.c))) & func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_4.x, 0u), select(vec2<u32>(var_4.x, var_4.x), vec2<u32>(16733u, 56881u), global1.a.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(25315u, var_4.x) & vec2<u32>(var_4.x, var_4.x), vec2<u32>(var_4.x, var_4.x) | vec2<u32>(var_4.x, var_4.x))));
    var_4 = firstTrailingBit(vec2<u32>(firstTrailingBit(~min(13860u, 4294967295u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_4.x), vec2<u32>(24090u, var_4.x))) ^ var_4.x));
    let var_6 = abs(min(_wgslsmith_div_vec3_i32(~(-vec3<i32>(41927i, global1.d.x, u_input.c)), -select(vec3<i32>(global1.d.x, -16875i, -20250i), vec3<i32>(var_2, global1.d.x, 2147483647i), vec3<bool>(true, global1.b, false))), select(~vec3<i32>(global1.d.x, 2147483647i, global1.d.x), select(vec3<i32>(global1.d.x, -3296i, 0i), vec3<i32>(-2563i, u_input.c, 1i), false), global1.a.a.yzz) ^ (~vec3<i32>(global1.d.x, u_input.c, global1.d.x) >> (~vec3<u32>(var_4.x, var_4.x, var_4.x) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_4.x, 3u)], var_4.x);
}

