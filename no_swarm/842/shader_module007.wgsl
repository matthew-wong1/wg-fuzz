struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(84573u, 4294967295u, 75853u, 32282u);

var<private> global1: vec3<u32> = vec3<u32>(1u, 84764u, 111327u);

var<private> global2: array<u32, 3> = array<u32, 3>(0u, 4294967295u, 0u);

var<private> global3: array<bool, 12> = array<bool, 12>(false, true, false, false, false, false, false, false, true, false, false, false);

var<private> global4: array<bool, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_div_f32(-774f, _wgslsmith_f_op_f32(-arg_1.b.b.x))))));
    let var_1 = _wgslsmith_f_op_f32(select(745f, arg_1.b.a, any(select(select(vec2<bool>(false, false), vec2<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 10u)], global4[_wgslsmith_index_u32(global1.x, 10u)]), true), select(!vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 12u)], true), vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 10u)])), select(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 10u)], false), !vec2<bool>(true, global4[_wgslsmith_index_u32(26583u, 10u)]), false)))));
    global3 = array<bool, 12>();
    global3 = array<bool, 12>();
    global4 = array<bool, 10>();
    return -742f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(-735f, vec4<f32>(-1523f, 1280f, 317f, -539f)), Struct_2(-251f, Struct_1(814f, vec4<f32>(188f, -130f, -2276f, 109f)), Struct_1(-640f, vec4<f32>(1333f, 539f, 561f, -634f))))))) - 887f));
    var var_1 = vec3<f32>(-920f, 392f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f - 1031f)), 993f)));
    let var_2 = min(74075u, ~(~(~(~1u))));
    global0 = arg_0;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_1.x), Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_1.x, var_1.x), -742f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 141f, var_1.x, -106f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1558f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(1584f - -389f), -2218f), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1806f * -1000f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-782f + -586f)))));
    return Struct_1(-182f, vec4<f32>(_wgslsmith_f_op_f32(min(383f, -475f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), 2082f)), _wgslsmith_f_op_f32(floor(var_3.c.b.x)), -1000f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.a, arg_0.a)), -1411f)), func_2(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(43862u, 43549u, global0.x, 38852u)), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 3u)], 3u)], 3u)], 4294967295u, global2[_wgslsmith_index_u32(global0.x, 3u)], 0u)), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u, 1u) >> (vec2<u32>(u_input.a, 8892u) % vec2<u32>(32u))), ~vec2<u32>(62791u, global1.x)), -34518i, global1.xx), arg_2.c);
    var var_1 = true;
    let var_2 = !arg_1.x;
    global3 = array<bool, 12>();
    var var_3 = vec4<i32>(-(~(-33529i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(firstLeadingBit(u_input.b.x ^ u_input.c), max(-1i, u_input.c)), _wgslsmith_add_i32(~u_input.c << (~global0.x % 32u), u_input.b.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(29699i, u_input.c, -1i), vec3<i32>(u_input.b.x, -1i, -1i)), ~(~vec3<i32>(u_input.b.x, -2147483647i, -31149i))), firstLeadingBit(~vec3<i32>(u_input.b.x, u_input.c, -2147483647i))), -u_input.c);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(307f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, arg_2.x) - -1621f)));
    let var_2 = !vec3<bool>(true, (_wgslsmith_div_i32(u_input.c, -18874i) << (global0.x % 32u)) <= _wgslsmith_mod_i32(-2147483647i, 1i), true);
    global3 = array<bool, 12>();
    var var_3 = func_4(func_2(abs(abs(vec4<u32>(1u, global2[_wgslsmith_index_u32(global0.x, 3u)], global1.x, 76736u))), vec2<u32>(_wgslsmith_mult_u32(14799u, 1u), 40021u), u_input.b.x << (7871u % 32u), global1.yz), select(select(select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 3u)], 12u)], var_2.x), select(vec4<bool>(false, true, global4[_wgslsmith_index_u32(0u, 10u)], false), vec4<bool>(true, true, true, false), vec4<bool>(false, arg_0, arg_0, global4[_wgslsmith_index_u32(global0.x, 10u)])), false), !select(vec4<bool>(var_2.x, global4[_wgslsmith_index_u32(9115u, 10u)], true, global4[_wgslsmith_index_u32(global0.x, 10u)]), vec4<bool>(true, false, false, false), false), arg_0), select(vec4<bool>(false && global4[_wgslsmith_index_u32(global0.x, 10u)], select(false, var_2.x, global4[_wgslsmith_index_u32(global1.x, 10u)]), true, arg_0), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(global1.x, 12u)], true), false), vec4<bool>(all(vec3<bool>(false, true, global3[_wgslsmith_index_u32(global1.x, 12u)])), true, 44885u >= u_input.a, true)), Struct_2(726f, func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(21847u, 10963u, u_input.a, 12071u), vec4<u32>(48727u, u_input.a, global1.x, 106389u)), global0.ww, u_input.b.x, global1.zy), arg_1));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f - 235f)), -769f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1125f, arg_1.a)) * _wgslsmith_f_op_f32(-1331f * var_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a + -818f), 1f))) - func_4(func_2(vec4<u32>(4294967295u, global1.x, u_input.a, global0.x) | vec4<u32>(85674u, 1u, global2[_wgslsmith_index_u32(global0.x, 3u)], global1.x), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)]), firstLeadingBit(0i), global1.zx), vec4<bool>(select(var_2.x, true, true), true, false, arg_0), Struct_2(_wgslsmith_f_op_f32(step(-349f, var_3.a)), func_2(vec4<u32>(4294967295u, global0.x, global2[_wgslsmith_index_u32(global1.x, 3u)], 1u), vec2<u32>(42591u, 4294967295u), u_input.b.x, global1.yx), Struct_1(1676f, var_0.b))).b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(17088u, 1u, 11690u, select(~global1.x, ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global0.x, 3u)] & 82194u, _wgslsmith_mod_u32(u_input.a, global1.x)), true));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1(all(!vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 10u)])), Struct_1(_wgslsmith_f_op_f32(sign(-466f)), vec4<f32>(-844f, 1058f, -120f, -1298f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, 580f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(-783f, _wgslsmith_f_op_f32(-1f), 162f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -735f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1740f, var_0.x, var_0.x) * vec4<f32>(210f, 850f, 454f, -1279f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(-var_0.x), 967f, _wgslsmith_f_op_f32(var_0.x * var_0.x))), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(global0.wxz, vec3<u32>(0u, global0.x, global1.x))), ~abs(vec3<u32>(global0.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], 39613u))), 3u)], 12u)])));
    var var_2 = _wgslsmith_dot_vec2_i32(abs(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x) & vec2<i32>(32366i, u_input.c), ~u_input.b))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, i32(-1i) * -22962i), -vec2<i32>(33459i, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(14805u << (0u % 32u), 4294967295u, global0.x, _wgslsmith_add_u32(0u, global0.x))), 439u, _wgslsmith_f_op_vec2_f32(ceil(var_1.zz)), ~vec4<i32>(56461i, -983i, countOneBits(abs(33034i)), -(~0i)), select(firstTrailingBit(~vec2<i32>(-1i, u_input.c)), vec2<i32>(u_input.b.x, ~(-2147483647i)), false));
}

