struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: vec2<bool>;

var<private> global2: f32;

var<private> global3: array<vec3<bool>, 18>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = select(global3[_wgslsmith_index_u32(u_input.a, 18u)], !vec3<bool>(true, all(select(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(21734u, 5u)], global1.x)), global1.x), select(select(vec3<bool>(false || global1.x, any(vec2<bool>(true, true)), all(global0[_wgslsmith_index_u32(1u, 5u)])), vec3<bool>(all(vec3<bool>(false, true, true)), !global1.x, false), _wgslsmith_f_op_f32(select(-516f, -1676f, global1.x)) >= _wgslsmith_div_f32(248f, -292f)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(55706u, 94383u), _wgslsmith_clamp_u32(u_input.a, arg_1.x, 4294967295u)), 18u)], any(vec2<bool>(true, true))));
    let var_1 = select(global3[_wgslsmith_index_u32(~abs(~max(u_input.a, u_input.a)), 18u)], select(vec3<bool>(true, true, _wgslsmith_clamp_i32(arg_0.x, 24785i, -16348i) <= arg_0.x), vec3<bool>(any(!vec4<bool>(global1.x, true, true, false)), true, !(global1.x || false)), vec3<bool>(u_input.a < _wgslsmith_div_u32(arg_1.x, arg_1.x), global1.x & true, var_0.x)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~50077u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(14139u, 1u)) >> (firstLeadingBit(79025u) % 32u))), 18u)]);
    var var_2 = !select(select(select(select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, var_0.x, false, global1.x), false), !vec4<bool>(false, global1.x, true, true), true), vec4<bool>(u_input.a >= 1u, true, true, true), true != all(vec2<bool>(var_1.x, var_0.x))), vec4<bool>(var_1.x, arg_0.x == _wgslsmith_mult_i32(arg_0.x, arg_0.x), false, any(select(vec2<bool>(global1.x, var_0.x), var_0.yy, var_1.x))), vec4<bool>(any(vec2<bool>(false, true)) && true, ~u_input.a < 41342u, false && (var_1.x & false), var_0.x));
    var_2 = vec4<bool>(false, true, false, var_2.x);
    var_2 = select(!(!vec4<bool>(all(vec2<bool>(false, var_1.x)), var_1.x, false, global1.x)), vec4<bool>(var_1.x, true, true, false), !(!vec4<bool>(arg_0.x >= 0i, true, false, true)));
    return -441f;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(~min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 2147483647i, -1i, 30331i), vec4<i32>(arg_0.b.x, arg_0.b.x, 32772i, 0i) ^ vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -1i)), -(vec4<i32>(arg_0.b.x, 2147483647i, -1i, arg_0.b.x) | vec4<i32>(41358i, -2147483647i, 2147483647i, arg_0.b.x))), min(select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 13676u, 0u, u_input.a), vec4<u32>(114372u, 6003u, u_input.a, u_input.a)), vec4<u32>(1u, 1u, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 64620u), !vec4<bool>(true, true, false, arg_0.a.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 17281u, 4294967295u), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~vec4<u32>(2676u, u_input.a, 4294967295u, u_input.a)), ~vec4<u32>(72460u, u_input.a, u_input.a, 42458u)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1313f)))));
    global2 = _wgslsmith_f_op_f32(ceil(1f));
    global3 = array<vec3<bool>, 18>();
    global1 = select(select(arg_0.a.yz, !vec2<bool>(all(arg_0.a), arg_0.a.x), global0[_wgslsmith_index_u32((min(4294967295u, u_input.a) >> (1u % 32u)) ^ abs(countOneBits(60711u)), 5u)]), !global0[_wgslsmith_index_u32(u_input.a, 5u)], true);
    return ~(((u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, 0u, 20460u)) % 32u)) | u_input.a) | select(u_input.a, reverseBits(_wgslsmith_sub_u32(36968u, 24142u)), true));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1681f + 1762f))))), _wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = -firstTrailingBit(arg_2.b.x);
    var_1 = arg_2.b.x;
    var var_2 = Struct_1(vec4<bool>(global1.x, false, ~u_input.a > ~min(0u, 1u), true), -_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_2.b.x), vec2<i32>(arg_2.b.x, arg_2.b.x)) ^ ~(-arg_2.b));
    var var_3 = countOneBits(-9324i);
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    let var_0 = arg_1.a.wz;
    let var_1 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(554f, -731f)))), vec2<u32>(func_2(Struct_1(arg_1.a, vec2<i32>(arg_1.b.x, arg_1.b.x))), ~30899u), Struct_1(!select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(global1.x, false, true, var_0.x), arg_1.a), arg_1.b), firstLeadingBit(~vec2<u32>(u_input.a, arg_2))), arg_1, 5388i, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(300f, -1012f), vec2<f32>(1593f, -1828f), var_0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(250f, -627f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(470f, -600f) * vec2<f32>(-1188f, -2141f)))), abs(min(firstLeadingBit(vec2<u32>(1007u, u_input.a)), vec2<u32>(arg_2, 0u))), arg_1, min(abs(~vec2<u32>(u_input.a, 9532u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)))).a.wzw, !(!(-arg_1.b.x < -13755i)));
    let var_2 = vec2<i32>(arg_1.b.x, ~arg_0);
    let var_3 = -1049f;
    let var_4 = vec3<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.a, arg_2), ~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1975u), vec2<u32>(0u, arg_2))), ~u_input.a, _wgslsmith_sub_u32(~1u, 66810u)));
    return vec4<bool>(global1.x, false, !var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, 798f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3)) - var_3)) > _wgslsmith_div_f32(776f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0, arg_1.b.x, var_2.x, 2147483647i), vec4<u32>(arg_2, var_4.x, var_4.x, var_4.x))), var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(any(func_1(1i, Struct_1(vec4<bool>(global1.x, false, false, global1.x), vec2<i32>(-6287i, 0i)), ~u_input.a)), false, true, true), ~vec2<i32>((37717i << (u_input.a % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(-10760i, -22003i), vec2<i32>(-78186i, 45604i)), max(i32(-1i) * -2147483647i, -33453i)));
    var var_1 = any(func_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-21114i, ~var_0.b.x), select(~var_0.b.x, var_0.b.x, global1.x)), Struct_1(var_0.a, vec2<i32>(-15188i, -var_0.b.x)), 4294967295u).wy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 8807u, u_input.a), vec4<u32>(37154u, u_input.a, 25228u, 4294967295u), vec4<u32>(104754u, u_input.a, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, 5002u, u_input.a)), vec4<u32>(0u, u_input.a, firstLeadingBit(43301u), ~1u), !select(var_0.a, var_0.a, vec4<bool>(false, global1.x, global1.x, global1.x))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(u_input.a, 36903u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) | vec4<u32>(1u, u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(9520u, u_input.a, 34344u, u_input.a))), !vec4<bool>(global1.x, true, false, false))), -52651i & countOneBits(var_0.b.x), var_0.b.x, ~vec3<u32>(reverseBits(~u_input.a), u_input.a, ~select(u_input.a, 1u, false)));
}

