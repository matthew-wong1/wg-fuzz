struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: bool = false;

var<private> global2: array<i32, 2> = array<i32, 2>(0i, -1i);

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: array<f32, 1> = array<f32, 1>(497f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -1000f, 529f), vec3<f32>(arg_0.d, arg_2, 898f), false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(323f * arg_1), -674f) * vec3<f32>(-1413f, _wgslsmith_div_f32(-743f, arg_2), _wgslsmith_f_op_f32(548f + 1000f))), all(vec2<bool>(true, !arg_0.e.x))))));
    global3 = select(!var_0.e.wwx, var_0.e.xzw, var_0.e.wyx);
    global0 = array<Struct_1, 3>();
    global1 = any(arg_0.e.wx);
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = firstLeadingBit(countOneBits(vec3<u32>(~arg_1.c, u_input.b | ~var_0.b, ~u_input.b)));
    global4 = array<f32, 1>();
    global2 = array<i32, 2>();
    return !(!vec4<bool>(_wgslsmith_f_op_f32(floor(1335f)) > arg_0, var_1.e.x, false, all(!vec2<bool>(true, var_1.e.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = _wgslsmith_f_op_f32(670f - _wgslsmith_f_op_f32(f32(-1f) * -516f));
    global3 = vec3<bool>(1539f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + -1477f)) * global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 66305u), 1u)]), (arg_2.c << (0u % 32u)) > abs(1u), arg_0.e.x);
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-447f)), _wgslsmith_f_op_f32(round(arg_2.d))), global4[_wgslsmith_index_u32(reverseBits(reverseBits(~arg_0.c)), 1u)]);
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    global2 = array<i32, 2>();
    let var_0 = func_4(Struct_1(-countOneBits(-vec3<i32>(1816i, 26850i, arg_1)), ~_wgslsmith_add_u32(u_input.b, min(1u, 10817u)), 76634u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(vec4<bool>(global3.x, arg_3 & arg_3, true, all(global3.zx)), vec4<bool>(arg_3 | global3.x, all(vec4<bool>(false, global3.x, true, arg_3)), true, all(vec4<bool>(global3.x, arg_3, true, true))), arg_3)), vec3<i32>(arg_1 >> (((u_input.a << (25673u % 32u)) << (6045u % 32u)) % 32u), _wgslsmith_add_i32(2147483647i, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_add_i32(~1i, 43110i), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10935i, global2[_wgslsmith_index_u32(92225u, 2u)]), vec3<i32>(-20342i, global2[_wgslsmith_index_u32(arg_2.x, 2u)], 2147483647i)))), Struct_1(max(-vec3<i32>(0i, arg_1, global2[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_2.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], -2147483647i), vec3<i32>(0i, -1611i, 36679i)) & ~vec3<i32>(arg_1, global2[_wgslsmith_index_u32(arg_2.x, 2u)], -8791i)), 1u, firstTrailingBit(arg_2.x), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(arg_1, -2147483647i, 2147483647i), 1u, 0u, global4[_wgslsmith_index_u32(countOneBits(arg_2.x), 1u)], !vec4<bool>(global3.x, arg_3, false, true)), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f * global4[_wgslsmith_index_u32(arg_2.x, 1u)])), !all(vec3<bool>(global3.x, global3.x, true)))), select(select(vec4<bool>(global3.x, true, false, true), vec4<bool>(arg_3, global3.x, false, global3.x), func_3(1000f, Struct_1(vec3<i32>(658i, -2147483647i, 0i), 4294967295u, 26946u, -833f, vec4<bool>(arg_3, true, false, global3.x)), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], -4999i))), select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, false, true, false), arg_3), all(vec4<bool>(true, true, false, false)))), select(select(func_3(arg_0, Struct_1(vec3<i32>(-19206i, -15016i, arg_1), arg_2.x, u_input.b, arg_0, vec4<bool>(arg_3, false, false, arg_3)), vec2<i32>(-8454i, arg_1) ^ vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], -1i)).zzy, vec3<bool>(arg_3 != arg_3, true, false), true), vec3<bool>(false, !arg_3 || select(false, false, global3.x), arg_2.x >= min(u_input.b, arg_2.x)), select(select(!vec3<bool>(global3.x, false, global3.x), !vec3<bool>(arg_3, arg_3, global3.x), vec3<bool>(arg_3, arg_3, global3.x)), select(!vec3<bool>(arg_3, global3.x, arg_3), vec3<bool>(true, global3.x, arg_3), !global3.x), !func_3(arg_0, global0[_wgslsmith_index_u32(57631u, 3u)], vec2<i32>(arg_1, global2[_wgslsmith_index_u32(u_input.a, 2u)])).yyx)));
    let var_1 = var_0.a;
    var var_2 = vec3<i32>(0i, arg_1, -(_wgslsmith_dot_vec3_i32(min(var_0.a, var_1), ~var_1) ^ -arg_1));
    global0 = array<Struct_1, 3>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - var_0.d), var_0.d) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) * _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(218f - -685f), _wgslsmith_f_op_f32(trunc(var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, arg_0, global4[_wgslsmith_index_u32(4294967295u, 1u)]) + vec3<f32>(var_0.d, -1000f, 542f)))))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(arg_1, arg_1)), vec4<f32>(1497f, -723f, arg_1.x, -303f), !vec4<bool>(global3.x, arg_0, true, global3.x)))) + arg_1));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(abs(2147483647i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.b, 2u)])), ~global2[_wgslsmith_index_u32(u_input.b, 2u)] >> (u_input.a % 32u), -firstTrailingBit(global2[_wgslsmith_index_u32(35918u, 2u)]), _wgslsmith_clamp_i32(24178i, min(-1i, global2[_wgslsmith_index_u32(4294967295u, 2u)]), reverseBits(global2[_wgslsmith_index_u32(u_input.b, 2u)]))), vec4<i32>(-2147483647i, 1i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(~0u, 2u)], reverseBits(0i)), 1i)) ^ 1i;
    global3 = vec3<bool>(true, ((_wgslsmith_clamp_i32(0i, global2[_wgslsmith_index_u32(1u, 2u)], 1i) ^ -6206i) > var_1) | true, global3.x == arg_0);
    return func_4(func_4(Struct_1(vec3<i32>(min(var_1, -6333i), var_1 | -15511i, ~1i), u_input.a, _wgslsmith_add_u32(~u_input.b, firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f - arg_2.x)), vec4<bool>(true, true, true, arg_0)), firstLeadingBit(vec3<i32>(var_1, var_1, 27949i) << (vec3<u32>(18355u, 122578u, 36129u) % vec3<u32>(32u))) & vec3<i32>(global2[_wgslsmith_index_u32(6353u, 2u)] << (0u % 32u), var_1, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.b, 2u)], -1801i)), Struct_1(vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 2u)], var_1), var_1 << (4294967295u % 32u), -1i), 17522u, _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_f_op_f32(-1764f + 857f), func_3(_wgslsmith_div_f32(var_0.x, var_0.x), func_4(global0[_wgslsmith_index_u32(u_input.b, 3u)], vec3<i32>(global2[_wgslsmith_index_u32(0u, 2u)], -2147483647i, -29531i), Struct_1(vec3<i32>(-1i, -2147483647i, -4924i), 1u, 46905u, arg_1.x, vec4<bool>(arg_0, arg_0, global3.x, arg_0)), vec3<bool>(global3.x, global3.x, global3.x)), ~vec2<i32>(global2[_wgslsmith_index_u32(90631u, 2u)], 2147483647i))), vec3<bool>(all(!vec4<bool>(true, arg_0, global3.x, false)), false, (global2[_wgslsmith_index_u32(u_input.a, 2u)] ^ 0i) > countOneBits(-2147483647i))), -(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(20425i, -27990i, global2[_wgslsmith_index_u32(1u, 2u)]), vec3<i32>(7406i, global2[_wgslsmith_index_u32(u_input.b, 2u)], var_1)), firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], var_1, 1i))) ^ -vec3<i32>(2147483647i, 0i, global2[_wgslsmith_index_u32(u_input.b, 2u)])), func_4(Struct_1(abs(vec3<i32>(2147483647i, -27476i, global2[_wgslsmith_index_u32(u_input.b, 2u)]) & vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.a, 2u)], 1i)), 4294967295u, 1u, -1000f, !func_3(global4[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(vec3<i32>(var_1, -2147483647i, var_1), 35508u, u_input.b, global4[_wgslsmith_index_u32(u_input.b, 1u)], vec4<bool>(arg_0, global3.x, false, arg_0)), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], 0i))), ~vec3<i32>(-9675i, -24094i, global2[_wgslsmith_index_u32(~u_input.a, 2u)]), func_4(func_4(global0[_wgslsmith_index_u32(reverseBits(115861u), 3u)], vec3<i32>(global2[_wgslsmith_index_u32(50654u, 2u)], var_1, var_1) & vec3<i32>(26385i, 2147483647i, -22812i), func_4(Struct_1(vec3<i32>(var_1, var_1, -2147483647i), u_input.a, u_input.b, arg_2.x, vec4<bool>(false, true, false, global3.x)), vec3<i32>(18092i, var_1, global2[_wgslsmith_index_u32(0u, 2u)]), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(23684u, 2u)], 1i), u_input.a, 0u, 329f, vec4<bool>(true, true, global3.x, false)), vec3<bool>(true, global3.x, true)), vec3<bool>(false, global3.x, false)), firstTrailingBit(vec3<i32>(-1i, 1i, var_1)), func_4(Struct_1(vec3<i32>(var_1, -2147483647i, 0i), 30260u, u_input.b, -761f, vec4<bool>(false, true, global3.x, arg_0)), ~vec3<i32>(var_1, 0i, var_1), Struct_1(vec3<i32>(14848i, 1i, var_1), u_input.a, 1u, -1365f, vec4<bool>(true, false, arg_0, global3.x)), vec3<bool>(false, global3.x, arg_0)), vec3<bool>(true, true, true)), func_4(func_4(Struct_1(vec3<i32>(65349i, global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)]), 35717u, 38137u, arg_2.x, vec4<bool>(arg_0, true, true, true)), -vec3<i32>(-42862i, global2[_wgslsmith_index_u32(u_input.b, 2u)], -2147483647i), Struct_1(vec3<i32>(-2147483647i, 1i, var_1), u_input.a, u_input.b, global4[_wgslsmith_index_u32(7812u, 1u)], vec4<bool>(false, arg_0, arg_0, true)), vec3<bool>(global3.x, false, global3.x)), vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(4288u, 2u)], -1i), var_1, 1i), Struct_1(~vec3<i32>(var_1, var_1, -2147483647i), ~u_input.b, ~45440u, 277f, !vec4<bool>(global3.x, false, global3.x, arg_0)), vec3<bool>(false, all(vec4<bool>(false, false, true, arg_0)), false)).e.yxx), !select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, global3.x, any(vec3<bool>(true, global3.x, false))), !select(vec3<bool>(true, false, true), vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 1>();
    global2 = array<i32, 2>();
    global0 = array<Struct_1, 3>();
    global4 = array<f32, 1>();
    let var_0 = global3.x;
    var var_1 = u_input.b;
    var var_2 = func_5(global3.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b, 1u)], -247f, -764f, global4[_wgslsmith_index_u32(u_input.a, 1u)]) - vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(21298u, 1u)], -1271f, global4[_wgslsmith_index_u32(u_input.a, 1u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(2808f, 0i, vec4<u32>(36105u, 4294967295u, u_input.b, 1u), true)))))));
    let var_3 = select(!vec3<bool>(false, func_4(func_5(true, vec4<f32>(global4[_wgslsmith_index_u32(var_2.c, 1u)], 346f, -280f, global4[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<f32>(1000f, global4[_wgslsmith_index_u32(36624u, 1u)], global4[_wgslsmith_index_u32(u_input.b, 1u)])), ~vec3<i32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)], var_2.a.x), Struct_1(var_2.a, 28659u, 24159u, var_2.d, var_2.e), vec3<bool>(false, global3.x, var_2.e.x)).e.x, var_2.e.x && (var_2.e.x & false)), vec3<bool>(var_2.e.x, all(func_5(true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d, global4[_wgslsmith_index_u32(33137u, 1u)], 604f, -862f), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 1u)], 1411f, 1988f, -751f), var_2.e)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.d, -139f, 156f), vec3<f32>(-1292f, -588f, var_2.d), vec3<bool>(false, false, true)))).e), !(1u != _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 1u), vec2<u32>(15377u, 0u)))), 11367u == _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_2.c, var_2.c, 1u, 25912u)), firstLeadingBit(vec4<u32>(45871u, u_input.a, var_2.b, u_input.a))), vec4<u32>(_wgslsmith_div_u32(var_2.b, var_2.c), 1u, _wgslsmith_mod_u32(85237u, u_input.a), u_input.b)));
    var var_4 = ~abs(~global2[_wgslsmith_index_u32(~0u, 2u)]) | 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~4294967295u), _wgslsmith_mod_u32(countOneBits(var_2.b), abs(4294967295u))), 0u);
}

