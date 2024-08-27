struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, false));

var<private> global2: Struct_4;

var<private> global3: array<f32, 7> = array<f32, 7>(624f, -1264f, -1533f, 134f, 1254f, -634f, 1207f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-610f, -744f) - vec2<f32>(global3[_wgslsmith_index_u32(1u, 7u)], 360f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)])), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(26288u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)]) * vec2<f32>(-394f, 637f))))));
    var var_1 = true;
    return Struct_4(-firstTrailingBit(_wgslsmith_div_i32(u_input.a, u_input.a)) < (1i | u_input.a));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = 0u;
    global1 = array<vec3<bool>, 1>();
    let var_1 = Struct_2(arg_0.b.x);
    let var_2 = func_2();
    var_0 = u_input.b.x;
    return u_input.b.x;
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(!(!global2.a), global0.a, true, !any(vec4<bool>(any(vec3<bool>(false, global0.a, global2.a)), global0.a && false, all(vec3<bool>(global2.a, true, true)), global2.a)));
    let var_1 = Struct_2(9397i);
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 20632u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 7u)]) * 751f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(65786u, 7u)], 1000f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-366f, -1287f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), _wgslsmith_f_op_f32(f32(-1f) * -562f))), !select(vec2<bool>(global2.a, false), !var_0.ww, !var_0.x))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, 12749u), u_input.b.xy);
    var var_1 = global3[_wgslsmith_index_u32(func_1(Struct_1(vec3<bool>(true, global0.a, true), vec4<i32>(-(~u_input.a), u_input.a, 34476i, -min(u_input.a, 31295i)))), 7u)];
    var var_2 = Struct_3(true);
    let var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, _wgslsmith_add_u32(4294967295u, u_input.b.x), 78519u, var_0.x), vec4<u32>(_wgslsmith_mod_u32(var_0.x >> (u_input.b.x % 32u), ~var_0.x), func_3(), 37145u, func_3())) >> (var_0.x % 32u);
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_3, 7u)] + 274f)) * 891f) > _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.x, 7u)] + _wgslsmith_f_op_f32(604f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 7u)]))));
    global1 = array<vec3<bool>, 1>();
    let var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(max(-1i, u_input.a), firstTrailingBit(u_input.a)), 1i, countOneBits(1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~(-2147483647i), ~0i), i32(-1i) * -24048i, u_input.a & _wgslsmith_mod_i32(-1i, -3182i)), -abs(vec3<i32>(u_input.a, -2147483647i, u_input.a) | vec3<i32>(-2147483647i, 18068i, u_input.a)), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 12409i, u_input.a), vec3<i32>(11799i, u_input.a, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    var_2 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), ~(~firstLeadingBit(~0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(24071i, -68431i, select(abs(0i), min(u_input.a, u_input.a), all(vec2<bool>(false, var_2.a))), var_4 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3, 4294967295u, var_3), vec4<u32>(0u, 4294967295u, var_3, var_3)) % 32u)), select(min(_wgslsmith_add_vec4_i32(vec4<i32>(var_4, u_input.a, var_4, 75i), vec4<i32>(0i, u_input.a, 2147483647i, var_4)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_4, u_input.a, u_input.a), vec4<i32>(-1i, 19895i, u_input.a, -2147483647i))), ~select(vec4<i32>(u_input.a, 0i, var_4, var_4), vec4<i32>(u_input.a, 1i, 1i, u_input.a), vec4<bool>(false, false, global2.a, global0.a)), var_2.a)), ~u_input.b.x);
}

