struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: f32 = 1222f;

var<private> global2: array<bool, 23>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1208f)) - _wgslsmith_f_op_f32(f32(-1f) * -133f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1429f)))), 867f), ~(~vec4<u32>(13202u, 4294967295u, ~u_input.b.x, _wgslsmith_mod_u32(1u, 83148u))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), abs(u_input.a.x), _wgslsmith_clamp_i32(1i, u_input.c.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.a), ~u_input.a)), reverseBits(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), 19983u)), true);
    let var_1 = ~(~(~(~32635i)) << (0u % 32u));
    var var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.xx), min(var_0.c.zz, var_0.c.zz));
    let var_3 = select(vec4<bool>(false, true, select(_wgslsmith_f_op_f32(max(1598f, var_0.a)) <= _wgslsmith_f_op_f32(max(-1351f, -797f)), max(u_input.b.x, 4872u) <= firstTrailingBit(13742u), !select(var_0.e, global2[_wgslsmith_index_u32(var_0.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), var_0.e && true), select(select(!vec4<bool>(true, var_0.e, global2[_wgslsmith_index_u32(25957u, 23u)], true), vec4<bool>(var_0.e, !global2[_wgslsmith_index_u32(16196u, 23u)], !global2[_wgslsmith_index_u32(63094u, 23u)], true), var_0.e), select(!(!vec4<bool>(var_0.e, false, true, var_0.e)), vec4<bool>(false, !global2[_wgslsmith_index_u32(64539u, 23u)], false, true), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 23u)], false, false))), true), var_0.e);
    var var_4 = vec2<u32>(u_input.b.x, 0u);
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~max(77649u, 1u)), reverseBits(_wgslsmith_div_u32(max(1u, 1742u), 4294967295u))), ~u_input.b, ~u_input.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec2<f32>(780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-909f + 1000f)))));
    var var_1 = vec3<f32>(var_0.x, 1f, var_0.x);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1947f, 312f) * vec3<f32>(var_0.x, var_1.x, var_0.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(-var_0.x), -129f))), vec3<f32>(-709f, var_0.x, 267f));
    global0 = array<Struct_2, 26>();
    let var_2 = vec2<bool>(select(any(!select(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.x, 23u)], false, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.x, 23u)], false, false), vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 23u)] & true)), any(vec3<bool>(true, true, true))), false || all(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]))));
    return 89664u;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: bool) -> vec3<i32> {
    global2 = array<bool, 23>();
    let var_0 = any(select(select(vec4<bool>(false, arg_0.x, true, global2[_wgslsmith_index_u32(36107u << (arg_2.a.d.x % 32u), 23u)]), vec4<bool>(true, all(arg_0), true, all(arg_0)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_2.a.d.x, 23u)], false, arg_0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_2.a.d.x, 23u)], true, arg_0.x), select(global2[_wgslsmith_index_u32(arg_2.a.d.x, 23u)], true, true))), vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 23u)], false, arg_0.x)) & arg_3, arg_3, !arg_3, arg_3), global2[_wgslsmith_index_u32(1u, 23u)]));
    var var_1 = global2[_wgslsmith_index_u32(func_4(firstLeadingBit(abs(_wgslsmith_add_vec4_i32(arg_1.a, _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_1.a.x, 24444i, -1i), arg_1.a)))), _wgslsmith_add_vec2_u32(vec2<u32>(29922u, ~u_input.b.x), ~func_3()), arg_2.a.d.xxx), 23u)];
    let var_2 = -_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.a.x >> (countOneBits(arg_2.a.d.x) % 32u), -1i), 1i << (~(~u_input.b.x) % 32u));
    global2 = array<bool, 23>();
    return select(_wgslsmith_clamp_vec3_i32(~(~u_input.a) | vec3<i32>(arg_1.a.x, _wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a), -11036i), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-31714i, arg_1.a.x, arg_1.a.x), vec3<i32>(-2147483647i, 1i, var_2)), -vec3<i32>(-1i, 7810i, -65258i), !vec3<bool>(var_0, false, true)) & max(_wgslsmith_sub_vec3_i32(vec3<i32>(31885i, -36229i, -29551i), u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(4259i, var_2, arg_1.a.x), vec3<i32>(arg_1.a.x, arg_1.a.x, 23780i))), vec3<i32>(arg_1.a.x, u_input.c.x, i32(-1i) * -u_input.c.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, arg_1.a.x, 1i), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 1i, 2147483647i)), _wgslsmith_mult_vec3_i32(u_input.a >> (vec3<u32>(86278u, u_input.b.x, arg_2.a.d.x) % vec3<u32>(32u)), arg_1.a.wxx)), (vec3<i32>(18858i, var_2, 1025i) << (~arg_2.a.d.xyw % vec3<u32>(32u))) >> (vec3<u32>(1u | u_input.b.x, 17520u, func_4(vec4<i32>(-1i, 44167i, arg_1.a.x, 49998i), u_input.b, vec3<u32>(0u, 4294967295u, 1u))) % vec3<u32>(32u))), vec3<bool>(arg_0.x, false, (arg_1.a.x == u_input.c.x) & !all(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.a.d.x, 23u)], var_0, arg_0.x, false))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = ~arg_3;
    global0 = array<Struct_2, 26>();
    global2 = array<bool, 23>();
    let var_1 = -827f;
    var_0 = abs(countOneBits(u_input.b.x));
    return arg_0;
}

fn func_1() -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(u_input.b.x), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 28700u, 4294967295u), vec4<u32>(41541u, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(70416u, u_input.b.x, u_input.b.x, 17819u) << (abs(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)))), ~u_input.b.x), 26u)];
    global2 = array<bool, 23>();
    var var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 86230u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 32046u, u_input.b.x, u_input.b.x), vec4<u32>(40019u, u_input.b.x, 1u, 14200u)), select(select(vec4<u32>(var_0.a.x, var_0.a.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 0u, var_0.a.x, u_input.b.x), vec4<bool>(true, false, true, true)), vec4<u32>(10660u, 0u, var_0.a.x, 1u) & vec4<u32>(u_input.b.x, var_0.a.x, u_input.b.x, 29456u), !vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(var_0.a.x, 23u)], global2[_wgslsmith_index_u32(var_0.a.x, 23u)]))), ~func_2(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(var_0.a.x, 23u)]), Struct_4(vec4<i32>(-2147483647i, u_input.c.x, u_input.a.x, u_input.c.x)), Struct_5(Struct_3(vec4<f32>(525f, -436f, 1297f, 1017f), vec4<f32>(513f, 932f, -1297f, 274f), -389f, vec4<u32>(1u, 61374u, var_0.a.x, 33114u))), false), min(1u, ~(~u_input.b.x)), global2[_wgslsmith_index_u32(u_input.b.x, 23u)] & global2[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(9038u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, var_0.a.x, 42114u)), vec3<u32>(var_0.a.x, var_0.a.x, u_input.b.x)), reverseBits(4294967295u) ^ func_4(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -5463i, 2147483647i, 9760i), vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x)), max(u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 80107u, var_0.a.x), vec3<u32>(54676u, var_0.a.x, 1u)))), 459f, ~u_input.b.x);
    let var_2 = -vec3<i32>((_wgslsmith_add_i32(2147483647i, var_1.c.x) << (1u % 32u)) & _wgslsmith_mod_i32(0i, ~var_1.c.x), countOneBits(u_input.a.x), ~u_input.a.x);
    var_1 = func_5(func_5(Struct_1(_wgslsmith_f_op_f32(-var_1.a), vec4<u32>(~var_0.a.x, 0u, var_0.a.x, 96765u), _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.c.x, 0i, -2147483647i), vec3<i32>(u_input.a.x, u_input.c.x, -70714i)), -var_1.c), countOneBits(1u | var_0.a.x), _wgslsmith_sub_u32(var_1.d, u_input.b.x) > 0u), func_5(Struct_1(var_1.a, vec4<u32>(29924u, 0u, var_0.a.x, 1u), abs(vec3<i32>(-70678i, var_1.c.x, u_input.c.x)), 0u << (0u % 32u), global2[_wgslsmith_index_u32(select(4294967295u, var_1.b.x, false), 23u)]), _wgslsmith_mult_vec3_u32(max(vec3<u32>(1u, 0u, var_0.a.x), vec3<u32>(var_1.b.x, 0u, var_1.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(49971u, u_input.b.x, var_0.a.x))), _wgslsmith_f_op_f32(-func_5(Struct_1(-374f, vec4<u32>(u_input.b.x, 43402u, var_1.b.x, var_0.a.x), var_1.c, 4294967295u, false), var_1.b.xwx, var_1.a, 58040u).a), ~(0u | u_input.b.x)).b.ywy, _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -808f)))), 1u), vec3<u32>(4294967295u, ~(u_input.b.x & 4294967295u), var_1.b.x), _wgslsmith_f_op_f32(trunc(-1000f)), select(67142u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.d, 4294967295u, 0u), var_1.b)), !(357f != var_1.a) && false));
    return vec4<bool>(any(vec2<bool>(true, true)), true, var_1.e, true);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: vec4<i32>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.a.x)));
    global2 = array<bool, 23>();
    var var_0 = _wgslsmith_f_op_f32(-1362f - arg_2.a.c);
    let var_1 = Struct_4(_wgslsmith_sub_vec4_i32(reverseBits(firstTrailingBit(abs(vec4<i32>(u_input.c.x, arg_1.x, -30740i, 59141i)))), select(arg_3, select(arg_3, select(vec4<i32>(arg_1.x, -10942i, arg_3.x, 1i), vec4<i32>(u_input.a.x, 2147483647i, arg_1.x, arg_1.x), false), !arg_0), vec4<bool>(any(arg_0), false, true, func_1().x))));
    var var_2 = select(vec2<bool>(true, true), !(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)] || arg_0.x, arg_0.x)), !(!select(arg_0.zz, arg_0.wy, all(vec3<bool>(false, arg_0.x, arg_0.x)))));
    return _wgslsmith_f_op_vec2_f32(max(arg_2.a.a.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.b.x, arg_2.a.b.x), vec2<f32>(-1294f, -405f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(select(func_1(), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], !global2[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.b.x >= u_input.b.x, true), true), -u_input.a.zx, Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, -1154f, 677f, -1614f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1774f, 857f, 1000f, 145f), vec4<f32>(846f, 552f, -679f, -567f), vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]))), _wgslsmith_f_op_f32(trunc(360f)), ~vec4<u32>(4294967295u, 0u, 0u, u_input.b.x))), (countOneBits(vec4<i32>(2147483647i, 1i, 2147483647i, u_input.a.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 26373i, 11662i, u_input.a.x), vec4<i32>(-1i, -1i, -28406i, -15163i), vec4<i32>(-4682i, u_input.a.x, -1i, u_input.a.x))) & -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, -5070i, 2147483647i), vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x)))));
    let var_1 = Struct_1(-634f, ~abs(func_5(func_5(Struct_1(1281f, vec4<u32>(8521u, 22124u, 0u, 0u), vec3<i32>(u_input.a.x, -2147483647i, 33944i), 0u, global2[_wgslsmith_index_u32(56489u, 23u)]), vec3<u32>(u_input.b.x, 4294967295u, 8733u), var_0.x, u_input.b.x), func_5(Struct_1(1000f, vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x), u_input.a, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0.x, u_input.b.x).b.zyx, _wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_mult_u32(76721u, 38821u)).b), u_input.a, u_input.b.x, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u ^ u_input.b.x, 95273u, u_input.b.x, 92181u), vec4<u32>(u_input.b.x, ~1u, 8100u, u_input.b.x)), 23u)]);
    var var_2 = ~_wgslsmith_add_u32(~select(~42322u, func_4(vec4<i32>(-1i, u_input.c.x, 2147483647i, var_1.c.x), u_input.b, vec3<u32>(var_1.b.x, 0u, 27766u)), var_1.e), func_4(abs(vec4<i32>(var_1.c.x, u_input.a.x, var_1.c.x, 22944i)), vec2<u32>(var_1.d, 33008u) ^ vec2<u32>(1u, u_input.b.x), ~vec3<u32>(var_1.b.x, u_input.b.x, 137271u)) | u_input.b.x);
    var var_3 = vec4<bool>(var_1.e, var_1.e, var_1.e, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(45090u, _wgslsmith_dot_vec4_u32(var_1.b, ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d, u_input.b.x, var_1.b.x, 1u), var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-2147483647i, var_1.c.x, var_1.c.x, var_1.c.x)), max(vec4<i32>(var_1.c.x, 2147483647i, var_1.c.x, -8664i), vec4<i32>(-1i, -7630i, var_1.c.x, 23334i) & vec4<i32>(23703i, -2147483647i, -24005i, 0i))), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(23343i, var_1.c.x, 1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, 0i)) >> (vec4<u32>(55260u, var_1.b.x, 41183u, var_1.b.x) % vec4<u32>(32u)))), -1073f, 0i);
}

