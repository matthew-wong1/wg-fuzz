struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, true, false, false, true, true, false, true, true, false, true, false, false, false, false, true, false, false, true, true, false);

var<private> global2: vec2<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1293f, 855f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(744f, -923f) * -257f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) * 458f), _wgslsmith_f_op_f32(-1624f - _wgslsmith_f_op_f32(-1443f - -1405f)), true | any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(2363u, 22u)]))))));
    var var_1 = Struct_3(Struct_2(27978u), global2.x, 4294967295u, Struct_1(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0, 1i, arg_0), 1i), _wgslsmith_div_i32(~arg_0, _wgslsmith_mod_i32(u_input.b.x, 0i)), ~_wgslsmith_clamp_i32(arg_0, u_input.a.x, u_input.a.x), firstTrailingBit(u_input.b.x)), true, firstLeadingBit(~(vec4<u32>(88604u, u_input.c, u_input.c, 0u) >> (vec4<u32>(24637u, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u))))), 1000f);
    var var_2 = countOneBits(_wgslsmith_add_i32(1i, -11682i));
    let var_3 = -1210f;
    global0 = _wgslsmith_f_op_f32(-var_1.e);
    return _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 11830i, _wgslsmith_mod_i32(abs(u_input.a.x), ~4848i) & -2147483647i, arg_0), firstTrailingBit(var_1.d.a));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(32222u);
    let var_1 = ~_wgslsmith_add_u32(firstLeadingBit(u_input.c), ~(~(~11349u)));
    let var_2 = -func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, u_input.a), u_input.a));
    global1 = array<bool, 22>();
    global2 = vec2<bool>(all(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(global2.x, global2.x, global1[_wgslsmith_index_u32(u_input.c, 22u)])))), !(!all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 22u)], true))));
    return var_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = false;
    let var_1 = select(vec4<bool>(true, any(select(!vec3<bool>(var_0, global1[_wgslsmith_index_u32(26087u, 22u)], global2.x), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 22u)]), vec3<bool>(false, true, false))), arg_3.a >= ~0u, _wgslsmith_f_op_f32(-arg_2.x) <= 1814f), select(vec4<bool>(!(false || var_0), global2.x, global2.x, global1[_wgslsmith_index_u32(1142u, 22u)]), vec4<bool>(1000f > arg_1, all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], true, false, true)), all(!vec4<bool>(global1[_wgslsmith_index_u32(12247u, 22u)], true, global2.x, true)), _wgslsmith_f_op_f32(1361f - 193f) <= arg_2.x), select(vec4<bool>(global1[_wgslsmith_index_u32(~arg_3.a, 22u)], -6621i < arg_0.x, all(vec2<bool>(true, var_0)), true || var_0), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(48421u, 22u)], true, true, global1[_wgslsmith_index_u32(67274u, 22u)]), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(1u, 22u)], false, global1[_wgslsmith_index_u32(4294967295u, 22u)])), vec4<bool>(true, true, false, var_0), vec4<bool>(false, false, true, false)), global1[_wgslsmith_index_u32(55024u, 22u)])), true);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(arg_2));
    global0 = 220f;
    return !select(select(!(!vec2<bool>(false, var_1.x)), vec2<bool>(global1[_wgslsmith_index_u32(arg_3.a, 22u)], arg_3.a > u_input.c), var_1.yw), !select(select(vec2<bool>(var_0, global1[_wgslsmith_index_u32(arg_3.a, 22u)]), vec2<bool>(false, var_0), var_1.x), vec2<bool>(global2.x, true), select(vec2<bool>(false, var_1.x), vec2<bool>(global2.x, global1[_wgslsmith_index_u32(0u, 22u)]), false)), !(!global1[_wgslsmith_index_u32(u_input.c, 22u)] & (arg_0.x != 2147483647i)));
}

fn func_1() -> Struct_1 {
    let var_0 = any(vec4<bool>(any(func_4(vec4<i32>(53557i, u_input.b.x, 16324i, -2147483647i), _wgslsmith_f_op_f32(-1627f + -689f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1063f, -381f, -2064f)), func_2(-624f))), global1[_wgslsmith_index_u32(firstLeadingBit(87824u), 22u)] || global1[_wgslsmith_index_u32(firstLeadingBit(36741u), 22u)], (select(global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(3948u, 22u)], false) & all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 22u)], true))) || true, func_4(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, -34344i, u_input.b.x, -2147483647i)), ~vec4<i32>(u_input.a.x, -52192i, 1i, u_input.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-558f, 167f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(1723f)), -597f, _wgslsmith_f_op_f32(341f - -1021f)), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(59113u, u_input.c), vec2<u32>(1u, u_input.c)))).x));
    let var_1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 10510u), ~vec3<u32>(u_input.c, 1u, 0u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, 29944u), vec3<u32>(u_input.c, 24727u, 1u)))), 64971u);
    let var_2 = vec4<f32>(930f, _wgslsmith_f_op_f32(round(-691f)), _wgslsmith_f_op_f32(floor(652f)), -891f);
    let var_3 = Struct_3(func_2(167f), false, 68150u, Struct_1(~(~(-vec4<i32>(-2147483647i, -14103i, -2147483647i, -53795i))), !(!global2.x), min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, var_1, 35247u, u_input.c), vec4<u32>(u_input.c, 0u, 0u, 4294967295u)), vec4<u32>(u_input.c, u_input.c, u_input.c, 51494u) | vec4<u32>(u_input.c, var_1, var_1, u_input.c)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(88748u, 33764u, 0u, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_1, var_1), vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(0u, 0u, u_input.c, u_input.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_2.x)))));
    let var_4 = Struct_3(func_2(_wgslsmith_f_op_f32(select(-308f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), var_3.e), true))), !(!all(select(vec4<bool>(false, false, global2.x, true), vec4<bool>(true, var_3.b, global2.x, global2.x), vec4<bool>(false, global2.x, var_3.d.b, false)))), firstTrailingBit(select(_wgslsmith_dot_vec3_u32(~var_3.d.c.yxx, vec3<u32>(u_input.c, u_input.c, 0u)), select(_wgslsmith_mod_u32(u_input.c, 97060u), _wgslsmith_sub_u32(var_1, 0u), all(vec2<bool>(false, false))), 1138f > _wgslsmith_f_op_f32(floor(2431f)))), Struct_1(~(vec4<i32>(-1i) * -var_3.d.a), var_3.d.b, ~(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 43335u, 4294967295u)) ^ ~var_3.d.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-778f)) + _wgslsmith_f_op_f32(max(-287f, -584f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - -680f), _wgslsmith_f_op_f32(1278f - -1588f))) * -179f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_3.e) + _wgslsmith_f_op_f32(ceil(var_2.x))) != _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_2.x)))));
    return Struct_1(_wgslsmith_div_vec4_i32(var_3.d.a, vec4<i32>(0i, -_wgslsmith_mod_i32(var_3.d.a.x, 45427i), 1i, select(1i, -var_4.d.a.x, var_4.b))), any(select(!select(vec4<bool>(false, global2.x, false, var_4.b), vec4<bool>(var_3.d.b, global2.x, false, true), global2.x), vec4<bool>(true, true, !var_4.d.b, all(vec3<bool>(global2.x, var_4.d.b, false))), select(vec4<bool>(var_4.d.b, false, var_0, false), !vec4<bool>(true, var_0, true, var_4.d.b), !var_4.b))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 35109u), _wgslsmith_div_u32(55364u, var_1), ~var_1, var_1)), var_4.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(~_wgslsmith_mult_u32(u_input.c, ~u_input.c)), global1[_wgslsmith_index_u32(u_input.c, 22u)], max(4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(select(u_input.c, 1u, true), ~40524u), ~(~u_input.c))), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) - 599f));
    global1 = array<bool, 22>();
    var var_1 = u_input.c << (~var_0.a.a % 32u);
    var var_2 = ~vec2<u32>(u_input.c, 4573u);
    let var_3 = vec3<f32>(-977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -971f))) * _wgslsmith_f_op_f32(trunc(var_0.e))), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -527f, -858f, var_0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 130f, -216f, var_0.e) * vec4<f32>(var_3.x, -1376f, var_3.x, var_0.e)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, 640f, var_0.e, 1000f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, var_0.e, var_3.x, -289f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 692f, 929f, var_3.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), -572f, var_0.e, var_0.e))), var_0.d.a.wyx & var_0.d.a.xyx);
}

