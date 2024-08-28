struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-23179i, 1i, 1i, i32(-2147483648)), vec4<i32>(-15797i, -6303i, 2147483647i, 0i), vec4<i32>(2147483647i, 2147483647i, -1i, -9236i), vec4<i32>(-15897i, -65306i, -36812i, 20014i), vec4<i32>(i32(-2147483648), 1753i, i32(-2147483648), -1i));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(29802i, 2147483647i, 1i), 0u, 261f, vec4<bool>(true, false, true, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = 17198u;
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c + arg_1.c), -502f, -1466f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_1.c * global1.c), _wgslsmith_div_f32(global1.c, arg_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(f32(-1f) * -241f), arg_1.c))));
    let var_2 = true;
    global0 = array<vec4<i32>, 5>();
    global1 = Struct_1(global1.a, ~0u, 1000f, vec4<bool>(any(vec2<bool>(true && arg_1.d.x, arg_1.d.x)), global1.d.x, arg_1.c == _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(var_1.a.x, arg_1.c))), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.c, global1.c, 225f, var_1.b.x))), var_1.b))))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + global1.c) - global1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -1850f, global1.c, 1683f) - vec4<f32>(global1.c, -276f, global1.c, -115f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1436f, 490f, global1.c, global1.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global1.a.x, Struct_1(global1.a, global1.b, -829f, global1.d))) + vec4<f32>(-160f, global1.c, 1103f, -1460f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, 314f, global1.c, global1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(686f, -286f, 1924f, 180f) * vec4<f32>(-467f, -531f, global1.c, 435f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(global1.c, -1432f)), global1.c, -1332f, 1000f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec3_i32(select(firstLeadingBit(global1.a) ^ vec3<i32>(global1.a.x, global1.a.x, 1i), countOneBits(~vec3<i32>(13246i, -652i, global1.a.x)), any(global1.d.yx) && false), -global1.a >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global1.b, global1.b), vec3<u32>(global1.b, 4294967295u, 25025u)) % vec3<u32>(32u))), Struct_1(vec3<i32>(2147483647i, 0i, -2147483647i), _wgslsmith_sub_u32(max(5530u, _wgslsmith_clamp_u32(u_input.a, 15586u, u_input.a)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c))), !select(!global1.d, vec4<bool>(global1.d.x, true, false, global1.d.x), true)))).yx;
    var var_3 = !global1.d.x;
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(194f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(-901f, global1.c), _wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(global1.c)), var_1.x, _wgslsmith_f_op_f32(var_1.x + -446f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.c, var_2.x, 502f, var_2.x), vec4<f32>(874f, global1.c, global1.c, -234f))))));
    return u_input.a;
}

fn func_1() -> f32 {
    global0 = array<vec4<i32>, 5>();
    global1 = Struct_1(vec3<i32>(~1i, global1.a.x >> ((~9471u | func_2()) % 32u), global1.a.x), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1909f + _wgslsmith_f_op_f32(round(-447f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1129f - 932f) - -659f)), !global1.d);
    var var_0 = Struct_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(min(-1000f, 2062f)), global1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1638f, 586f, 1099f, global1.c) - vec4<f32>(global1.c, -701f, 1469f, global1.c)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.c, -748f, global1.c) + vec4<f32>(2708f, 744f, -136f, global1.c)) + vec4<f32>(global1.c, global1.c, global1.c, 1000f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, -770f, global1.c, global1.c)))), !select(vec4<bool>(false, true, true, global1.d.x), vec4<bool>(false, false, global1.d.x, global1.d.x), global1.d)))));
    var var_1 = 2147483647i;
    let var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(abs(global1.a.x), -60548i, -89518i & global1.a.x, 3232i), global0[_wgslsmith_index_u32(firstLeadingBit(~15167u), 5u)]) << (~(vec4<u32>(_wgslsmith_mult_u32(global1.b, 22252u), _wgslsmith_clamp_u32(95856u, 0u, 64187u), u_input.a, u_input.a & u_input.a) | vec4<u32>(63032u >> (0u % 32u), ~global1.b, 20222u, global1.b)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-414f)))) + _wgslsmith_f_op_f32(-1156f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 1414f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), global1.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.c, global1.c), _wgslsmith_f_op_f32(-global1.c)))) - vec3<f32>(-469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))), -568f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, 482f)), 1738f, _wgslsmith_f_op_f32(f32(-1f) * -712f), global1.c))) - vec4<f32>(global1.c, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f * -984f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + global1.c), 1173f))));
    let var_1 = vec2<i32>(global1.a.x, reverseBits(_wgslsmith_dot_vec3_i32(abs(global1.a), firstLeadingBit(-vec3<i32>(8141i, global1.a.x, global1.a.x)))));
    global1 = Struct_1((vec3<i32>(abs(var_1.x), ~7381i, -1i) >> (max(vec3<u32>(u_input.a, 9339u, 15713u), _wgslsmith_add_vec3_u32(vec3<u32>(1549u, global1.b, 15918u), vec3<u32>(4294967295u, global1.b, global1.b))) % vec3<u32>(32u))) << (~vec3<u32>(global1.b, min(4294967295u, u_input.a), min(global1.b, 24753u)) % vec3<u32>(32u)), 27596u, _wgslsmith_div_f32(740f, 403f), !vec4<bool>(all(select(global1.d, vec4<bool>(global1.d.x, global1.d.x, global1.d.x, true), global1.d)), false, false, !(false & global1.d.x)));
    global0 = array<vec4<i32>, 5>();
    global1 = Struct_1(vec3<i32>(~(global1.a.x << (_wgslsmith_div_u32(global1.b, 1u) % 32u)), firstTrailingBit(-firstLeadingBit(global1.a.x)), countOneBits(var_1.x)), global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(379f + -136f)))))), global1.d);
    global0 = array<vec4<i32>, 5>();
    var var_2 = global1.d.zx;
    global1 = Struct_1(vec3<i32>(var_1.x, global1.a.x, global1.a.x), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a)) | select(vec2<u32>(global1.b, u_input.a), firstTrailingBit(vec2<u32>(16775u, 12147u)), all(vec3<bool>(global1.d.x, false, false))), abs(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b, 72977u), vec2<u32>(u_input.a, 0u))))), 1327f, global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * -2159f) + _wgslsmith_f_op_f32(sign(var_0.a.x))), countOneBits(~(_wgslsmith_dot_vec4_i32(vec4<i32>(27788i, var_1.x, var_1.x, var_1.x), global0[_wgslsmith_index_u32(4294967295u, 5u)]) >> ((u_input.a & global1.b) % 32u))), 1u);
}

