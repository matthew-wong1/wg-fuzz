struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global2 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mult_u32(0u, u_input.a), 1u, 73470u), vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(~1194u, 20u)]), u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~22904u, 20u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], u_input.a)), 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)])));
    var var_0 = !select(select(vec4<bool>(all(vec2<bool>(false, false)), false, select(true, true, false), true), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, true)));
    var_0 = select(select(vec4<bool>(false, true, var_0.x, any(!var_0.ywx)), select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x || true, !var_0.x, !var_0.x, var_0.x), any(select(var_0.wz, var_0.wy, var_0.x))), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), select(vec4<bool>(true, u_input.a < ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14619u, 20u)], 20u)], true, _wgslsmith_f_op_f32(ceil(-817f)) > _wgslsmith_f_op_f32(trunc(1121f))), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x || true, any(!vec4<bool>(var_0.x, false, true, true)), var_0.x), true), var_0.x);
    let var_1 = ~vec2<u32>(0u, u_input.a);
    let var_2 = firstTrailingBit(reverseBits(vec2<i32>(~2147483647i >> (max(global0[_wgslsmith_index_u32(44604u, 20u)], 3040u) % 32u), -2147483647i)));
    return -687f;
}

fn func_2() -> vec3<bool> {
    global0 = array<u32, 20>();
    let var_0 = _wgslsmith_f_op_f32(max(-379f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(1430f, 647f))) - -450f)));
    let var_1 = var_0;
    var var_2 = ~(i32(-1i) * -1i);
    let var_3 = vec3<u32>(~global0[_wgslsmith_index_u32(1u, 20u)], u_input.a, ~_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(0u, 20u)] >> (20074u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 52653u), select(vec2<u32>(19173u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 4294967295u), false))));
    return !(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<u32, 20>();
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(43188u, 4294967295u, 0u)) & ~(~vec3<u32>(4593u, u_input.a, 36402u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(77617u, 20u)], u_input.a, 81672u) >> (vec3<u32>(u_input.a, 0u, 35285u) % vec3<u32>(32u)), ~vec3<u32>(79995u, u_input.a, global0[_wgslsmith_index_u32(1u, 20u)])))), _wgslsmith_div_vec3_u32(select(min(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 20u)], 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(20867u, 20u)]), vec3<u32>(u_input.a, 4294967295u, 55466u))), vec3<u32>(42121u, u_input.a, ~114165u), !func_2()), abs(vec3<u32>(369u, 4294967295u, 4294967295u) >> (vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 20u)], 3866u) % vec3<u32>(32u))) << (vec3<u32>(~u_input.a, abs(u_input.a), global0[_wgslsmith_index_u32(1u, 20u)] | 1u) % vec3<u32>(32u))));
    let var_1 = 4294967295u;
    var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50809u, 20u)], 20u)], 52659u, u_input.a, global0[_wgslsmith_index_u32(var_1, 20u)]), vec4<u32>(1u, 40545u, 17873u, 39052u))) << (firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(2595u, 20u)], u_input.a, 4294967295u)) % vec3<u32>(32u)), ~(~abs(vec3<u32>(var_0.x, var_0.x, 4294967295u)))), abs(abs(reverseBits(min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 35151u, global0[_wgslsmith_index_u32(1u, 20u)]), vec3<u32>(0u, u_input.a, 26985u))))), select(~(~vec3<u32>(var_1, global0[_wgslsmith_index_u32(var_1, 20u)], 34073u)), vec3<u32>(var_1, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50607u, 20u)], 20u)], ~u_input.a) >> (min(~vec3<u32>(global0[_wgslsmith_index_u32(39345u, 20u)], 48526u, var_0.x), ~vec3<u32>(44515u, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 20u)])) % vec3<u32>(32u)), vec3<bool>(arg_1.x | true, !arg_1.x, true)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, -1911f, 1000f, -1413f) * vec4<f32>(-175f, 298f, -323f, -1202f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1148f, -460f, -1952f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(182f, -1056f, 303f, -824f))) + vec4<f32>(-553f, -1007f, -355f, -3196f)), vec4<bool>(true, any(vec2<bool>(arg_1.x, true)), arg_1.x, arg_1.x))))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) - vec2<f32>(782f, 799f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, 1000f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(456f, -829f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-150f, _wgslsmith_f_op_f32(325f + -1160f))))), global1[_wgslsmith_index_u32(~0u, 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(786f, 310f, -541f, -994f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, -1395f, -2477f, -562f) - vec4<f32>(545f, -1000f, -345f, -441f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(834f, 900f, 802f, 308f))) - vec4<f32>(850f, 1083f, -762f, 1676f))))), false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-222f, _wgslsmith_div_f32(728f, 584f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2426f, -1000f)))), global1[_wgslsmith_index_u32(~0u, 19u)]);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(trunc(-450f)), _wgslsmith_f_op_f32(f32(-1f) * -152f)))))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, var_0.a.x) * var_0.c) - vec2<f32>(var_0.a.x, 1686f)), var_0.a.xx))), global1[_wgslsmith_index_u32(13403u, 19u)]);
    let var_2 = func_1(_wgslsmith_add_vec2_i32(-firstLeadingBit(vec2<i32>(var_0.d.b.x, -342i)), _wgslsmith_mod_vec2_i32(min(_wgslsmith_div_vec2_i32(var_1.d.b, var_0.d.b), vec2<i32>(var_0.d.b.x, var_1.d.b.x)), min(vec2<i32>(1i, 1i), ~var_0.d.b))), !select(select(vec3<bool>(var_0.b, true, false), vec3<bool>(var_1.b, var_1.b, var_0.b), !vec3<bool>(var_1.b, true, var_0.b)), select(vec3<bool>(var_0.b, var_1.b, false), !vec3<bool>(var_0.b, var_1.b, var_0.b), vec3<bool>(var_1.b, true, false)), false));
    let var_3 = min(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(70274u, 0u, 33419u), ~vec3<u32>(30230u, 1u, u_input.a)), vec3<u32>(u_input.a, 8302u, 4857u) & (vec3<u32>(global0[_wgslsmith_index_u32(var_2.d.c, 20u)], var_2.d.c, 60104u) ^ vec3<u32>(5704u, var_2.d.c, 67870u))), vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u) & 19739u, 4294967295u, 1u)) & ~_wgslsmith_div_vec3_u32(~vec3<u32>(32198u, u_input.a, var_1.d.c), vec3<u32>(var_1.d.c, ~4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.c, global0[_wgslsmith_index_u32(var_0.d.c, 20u)], global0[_wgslsmith_index_u32(var_1.d.c, 20u)]), vec3<u32>(u_input.a, var_0.d.c, 1u)), 20u)]));
    var_0 = Struct_2(var_1.a, abs(min(_wgslsmith_clamp_u32(110026u, 1u, 6469u), _wgslsmith_clamp_u32(53984u, 1411u, 1u))) >= ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(27507u | u_input.a, 20u)], var_0.d.c), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -1000f)), var_2.d.a), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2347f) - -774f))), var_2.d.b, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}

