struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(-37832i, -36970i, -43049i, 0i), 431f, 96355u, 2216f), Struct_1(vec4<i32>(1i, 0i, 2147483647i, -1i), 463f, 5142u, 636f), Struct_1(vec4<i32>(26629i, -26208i, 2147483647i, 16605i), 786f, 74684u, 107f), Struct_1(vec4<i32>(i32(-2147483648), -11626i, 2147483647i, -41956i), 131f, 1u, 780f), Struct_1(vec4<i32>(2147483647i, -19904i, 60293i, 14028i), -1000f, 4294967295u, -553f), Struct_1(vec4<i32>(1i, 2147483647i, -40133i, 4001i), 401f, 98712u, -1587f), Struct_1(vec4<i32>(1i, -1i, -1i, 2147483647i), 579f, 1u, -2387f), Struct_1(vec4<i32>(-1i, -1i, 4561i, 2147483647i), 968f, 18687u, -371f), Struct_1(vec4<i32>(76040i, 1i, -18696i, 1i), 733f, 0u, 2273f), Struct_1(vec4<i32>(-14000i, -46326i, i32(-2147483648), -1i), -300f, 1u, 1366f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -35874i, 84423i), -1353f, 39233u, -329f), Struct_1(vec4<i32>(1i, -1i, 1i, 1i), -362f, 20223u, 619f), Struct_1(vec4<i32>(-34611i, 33449i, 2147483647i, i32(-2147483648)), -777f, 19727u, 659f), Struct_1(vec4<i32>(-1i, -1i, -7132i, 2147483647i), 1216f, 20084u, 566f));

var<private> global1: array<Struct_2, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = ~vec4<u32>(1u, u_input.b, firstTrailingBit(22261u), 4294967295u);
    var var_1 = Struct_2(Struct_1(vec4<i32>(min(max(18092i, u_input.d.x), 16774i & u_input.d.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, 53557i, u_input.a.x, 31606i), vec4<i32>(-2147483647i, 22157i, -74093i, u_input.a.x)), _wgslsmith_mod_i32(-2147483647i, 1i) | u_input.a.x, -abs(u_input.a.x)), -1129f, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(65864u, 28629u, var_0.x, 38112u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, var_0.x))), 25972u), -427f), Struct_1(-vec4<i32>(-1i, -53242i, -1i, 0i) >> (vec4<u32>(59617u, 1u, u_input.c.x, _wgslsmith_sub_u32(132u, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(620f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, -872f)))))), abs(1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1154f - _wgslsmith_f_op_f32(-1000f + -869f))))), _wgslsmith_f_op_f32(round(1028f)));
    global1 = array<Struct_2, 14>();
    var var_2 = vec3<bool>(any(vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) || true);
    let var_3 = Struct_2(Struct_1(var_1.a.a, var_1.c, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.d - var_1.b.d) + _wgslsmith_f_op_f32(var_1.a.d * var_1.b.d)))), global0[_wgslsmith_index_u32(61724u, 14u)], _wgslsmith_f_op_f32(-var_1.b.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) * _wgslsmith_f_op_f32(f32(-1f) * -508f)), var_3.b.d)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c))) + _wgslsmith_f_op_f32(step(1486f, _wgslsmith_f_op_f32(-var_1.c)))))));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 14>();
    var var_0 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(u_input.b > 0u, true, any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true)), false);
    var_0 = vec3<bool>(!var_0.x, 1000f == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1181f, 423f, var_0.x)), -2191f), _wgslsmith_f_op_f32(func_3(vec2<i32>(0i, 14719i))))), false);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f + -1297f) - -1595f);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(u_input.c.x, 1u)), _wgslsmith_add_u32(17068u, 0u), u_input.c.x, u_input.b << (u_input.c.x % 32u)), vec4<u32>(1u, ~1u, u_input.c.x, u_input.b)), 14u)], global0[_wgslsmith_index_u32(u_input.c.x, 14u)], var_1);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 * -338f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(var_2.c)))) * _wgslsmith_f_op_f32(-var_2.a.b))));
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 14>();
    global0 = array<Struct_1, 14>();
    var var_0 = global0[_wgslsmith_index_u32(abs(0u), 14u)];
    var_0 = Struct_1(~vec4<i32>(u_input.d.x, _wgslsmith_clamp_i32(0i, var_0.a.x, u_input.d.x), _wgslsmith_div_i32(u_input.d.x, u_input.d.x), _wgslsmith_clamp_i32(807i, var_0.a.x, 40071i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(35828u, u_input.b, ~var_0.c, _wgslsmith_mod_u32(31135u, u_input.c.x)), ~vec4<u32>(22413u, u_input.c.x, var_0.c, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_div_f32(1179f, _wgslsmith_f_op_f32(func_3(vec2<i32>(-21723i, u_input.d.x))))), ~u_input.b, var_0.b);
    global1 = array<Struct_2, 14>();
    return reverseBits(firstLeadingBit(var_0.c) | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 14>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1003f, _wgslsmith_f_op_f32(1209f - 375f))), _wgslsmith_div_f32(199f, 247f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f * -1071f)) - 782f))));
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(min(func_1(), _wgslsmith_div_u32(u_input.b, u_input.b)), ~u_input.c.x)) << (countOneBits(50143u) % 32u), 14u)];
    var var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 14u)];
    global0 = array<Struct_1, 14>();
    var var_4 = u_input.d;
    var var_5 = _wgslsmith_mod_vec4_i32(vec4<i32>(10014i, min(~0i, 17707i), firstLeadingBit(-2147483647i), var_2.b.a.x), ~_wgslsmith_add_vec4_i32(select(var_2.a.a, var_2.a.a, var_0.x) | ~var_3.a.a, var_2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_2.b.b, -415f, var_3.c)))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1920f, var_3.a.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(614f - var_2.a.b), _wgslsmith_div_f32(-122f, -358f), var_1.x))));
}

