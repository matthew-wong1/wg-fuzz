struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 49011u, 16173u);

var<private> global1: array<i32, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: Struct_2) -> bool {
    var var_0 = Struct_4(Struct_1(min(arg_3.a.a, ~0u), arg_3.a.b, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.a.c.x * arg_2.a))), arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2.a, 759f)), _wgslsmith_f_op_f32(291f - 1000f), _wgslsmith_f_op_f32(min(arg_1, arg_2.a)), arg_1) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_3.a.d * arg_3.a.d)))), -(i32(-1i) * -8745i)), arg_3);
    let var_1 = firstTrailingBit(-(vec2<i32>(arg_3.c.x, -1i) ^ var_0.b.d.zz));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.c.x);
    global1 = array<i32, 15>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.d.xzz)), vec3<f32>(arg_3.a.d.x, _wgslsmith_f_op_f32(min(var_2, arg_1)), arg_1))));
    return select(true, !(false & any(!vec2<bool>(arg_3.a.b.x, var_0.a.b.x))), true);
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = true;
    global0 = firstLeadingBit(vec4<u32>(u_input.b, global0.x, global0.x, 20437u)) << (vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 117100u, global0.x), _wgslsmith_sub_vec3_u32(global0.xwz, vec3<u32>(0u, u_input.b, 10942u))), 31382u), 4294967295u, firstTrailingBit(~31342u), u_input.b) % vec4<u32>(32u));
    let var_1 = u_input.a;
    var var_2 = arg_0.wxx;
    var var_3 = Struct_1(9921u, vec3<bool>(all(select(arg_0.wzx, !vec3<bool>(var_2.x, false, false), false)), (-global1[_wgslsmith_index_u32(0u, 15u)] >= u_input.a) == !(!var_2.x), !func_3(true, -245f, Struct_5(-2272f), Struct_2(Struct_1(global0.x, arg_0.xzx, vec2<f32>(-1052f, 1814f), vec4<f32>(-490f, -831f, -247f, 482f), var_1), var_1, vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], -55462i, 0i, global1[_wgslsmith_index_u32(12091u, 15u)]), vec4<i32>(-2147483647i, 0i, 35435i, -1i)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(-178f)), _wgslsmith_f_op_f32(-1000f + -1000f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, -1000f, 431f, 1733f) - vec4<f32>(237f, -235f, 638f, -1158f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, 2362f, 802f, -673f)))))), -73669i);
    return vec3<bool>(var_0 != false, true, 50731u >= u_input.b);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, 53593u, 1u), ~global0.yzy), global0.yzw, select(func_2(vec4<bool>(false, true, true, true)), func_2(vec4<bool>(false, true, false, false)), vec3<bool>(true, true, true))), vec3<u32>(~u_input.b, firstTrailingBit(1u), global0.x));
    let var_1 = ~(vec4<u32>(1u, 13940u, 85972u, 4294967295u) | select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(19490u, u_input.b, global0.x, var_0.x), abs(vec4<u32>(var_0.x, u_input.b, 8822u, 1u)), vec4<u32>(u_input.b, 51713u, var_0.x, u_input.b)), vec4<u32>(4294967295u, 1u, abs(var_0.x), 53867u), true && all(vec3<bool>(false, false, true))));
    let var_2 = 0i;
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.b & 4294967295u) >> (~(~0u) % 32u), var_0.x), var_1.x, u_input.b, _wgslsmith_sub_u32(~0u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, 26075u), 100269u >> (var_1.x % 32u))));
    var_0 = vec3<u32>(~23803u, reverseBits(35079u), _wgslsmith_clamp_u32(4294967295u, ~var_1.x, select(global0.x, global0.x, true)));
    return _wgslsmith_f_op_f32(sign(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f - _wgslsmith_f_op_f32(sign(320f))) - -1000f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-335f, -1971f, -1000f, -1000f), vec4<f32>(var_0.x, var_0.x, 458f, -1000f))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 524f) * _wgslsmith_f_op_f32(abs(-1153f))), -615f, var_0.x, -162f) + vec4<f32>(_wgslsmith_f_op_f32(func_1(299f, -80351i, ~u_input.a, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(min(var_0.x, -1254f)), _wgslsmith_div_f32(var_0.x, var_0.x))));
    global0 = vec4<u32>(global0.x & _wgslsmith_mult_u32(_wgslsmith_sub_u32(~global0.x, 4294967295u), global0.x), 0u, global0.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.ywz, vec3<u32>(0u, u_input.b, global0.x)), 1u, u_input.b, u_input.b)), vec4<u32>(~4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, global0.x), ~u_input.b), abs(min(u_input.b, global0.x)), reverseBits(~1u))));
    let var_2 = Struct_5(var_1.x);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b, 29567u, global0.x, 27477u) >> (vec4<u32>(10764u, global0.x, u_input.b, global0.x) % vec4<u32>(32u))), ~vec4<u32>(1u, 43695u, u_input.b, 0u)), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(3020u, global0.x, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, global0.x, 0u)), _wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, 4294967295u, u_input.b, 4294967295u), abs(vec4<u32>(31616u, 4294967295u, u_input.b, global0.x))), select(true, any(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false))))), vec3<bool>((true && all(vec3<bool>(false, false, false))) && ((u_input.a >> (global0.x % 32u)) > _wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(45138u, 15u)])), any(vec4<bool>(all(vec3<bool>(false, true, true)), -69813i >= u_input.a, true, u_input.b <= 4294967295u)), true), _wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(round(1808f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(109f, var_1.x)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-736f, 1000f) + _wgslsmith_div_f32(-813f, 1195f)), 701f, -776f, -561f)), reverseBits(countOneBits(-u_input.a ^ _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(14892u, 15u)]))));
    var var_4 = true;
    let var_5 = select(!(!var_3.b.xz), !(!vec2<bool>(var_3.b.x, var_3.b.x)), var_3.b.zx);
    let x = u_input.a;
    s_output = StorageBuffer(24006u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30930u, ~(~var_3.a), _wgslsmith_mult_u32(1u, ~u_input.b)), ~vec3<u32>(1u, var_3.a, 0u)), 15u)]);
}

