struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<u32>(0u, 2903u, 4294967295u), vec4<i32>(-1i, -12390i, 2147483647i, 43015i)), Struct_1(vec3<u32>(0u, 34949u, 34415u), vec4<i32>(2147483647i, 1i, -35931i, 1i)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(82598i, 21580i, -14815i, -1i)), Struct_1(vec3<u32>(1u, 9286u, 58212u), vec4<i32>(2147483647i, 2147483647i, -24357i, 2147483647i)), Struct_1(vec3<u32>(0u, 0u, 96360u), vec4<i32>(0i, 9556i, 1i, -1i)), Struct_1(vec3<u32>(966u, 4832u, 1u), vec4<i32>(1i, -18245i, 2147483647i, 2147483647i)));

var<private> global2: f32;

var<private> global3: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec3<u32> {
    var var_0 = vec2<bool>(arg_1, true);
    return vec3<u32>(70594u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(global3.zy, vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, global3.x), 1u))), 26254u);
}

fn func_2() -> i32 {
    let var_0 = vec3<u32>(global3.x, _wgslsmith_mod_u32(global3.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(36935u, global3.x, u_input.d.x) | vec3<u32>(global3.x, global3.x, u_input.d.x)), (vec3<u32>(global3.x, 30169u, global3.x) & vec3<u32>(40681u, 4294967295u, 96223u)) >> (~vec3<u32>(4294967295u, 4294967295u, 71276u) % vec3<u32>(32u)))), min(global3.x, _wgslsmith_mult_u32(~u_input.d.x, ~(~u_input.d.x))));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1502f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(f32(-1f) * -240f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f), _wgslsmith_f_op_f32(868f - -1181f)))), Struct_1(~vec3<u32>(global3.x & 80177u, _wgslsmith_div_u32(4294967295u, var_0.x), _wgslsmith_mod_u32(var_0.x, 1u)), select(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.b), vec4<i32>(-11781i, u_input.c, 61853i, u_input.a)), vec4<i32>(~2147483647i, 1i, 1i, u_input.b), true)), global1[_wgslsmith_index_u32(u_input.d.x, 6u)], -9729i, Struct_1(func_3(vec4<i32>(u_input.b, ~(-2147483647i), -24288i, -31145i), false), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 0i)), -2147483647i, u_input.c, 14760i << (global3.x % 32u)) | (_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -1i, u_input.c), vec4<i32>(30093i, u_input.a, 26428i, u_input.b), vec4<i32>(8678i, 41905i, u_input.c, -46628i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(20162u, 22571u, 107097u, 6424u), vec4<u32>(u_input.d.x, u_input.d.x, var_0.x, var_0.x)) % vec4<u32>(32u)))));
    var var_2 = -vec2<i32>(26714i, -17102i);
    let var_3 = firstLeadingBit(min(vec4<i32>(~firstLeadingBit(var_2.x), -_wgslsmith_add_i32(var_1.c.b.x, var_1.b.b.x), -1i, ~u_input.b), var_1.e.b));
    global2 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-289f)))))))));
    return -1i;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_2(-411f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(u_input.d.x >> (4294967295u % 32u)), ~(~4294967295u)), 6u)], Struct_1(u_input.d, vec4<i32>(u_input.c, u_input.c, 1i, 164i)), func_2(), Struct_1(~_wgslsmith_mult_vec3_u32(~vec3<u32>(71641u, 77947u, global3.x), select(vec3<u32>(0u, u_input.d.x, 47477u), u_input.d, false)), ~vec4<i32>(8642i, u_input.b, 36843i, -1i)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) + _wgslsmith_f_op_f32(-var_0.a))))), Struct_1(func_3(~var_0.b.b, var_0.a != _wgslsmith_f_op_f32(step(-347f, var_0.a))), min(var_0.b.b, min(~var_0.c.b, ~var_0.e.b))), var_0.c, -1i, Struct_1(u_input.d, var_0.e.b));
    global2 = var_0.a;
    return vec3<i32>(-(firstLeadingBit(min(var_1.e.b.x, u_input.a)) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(global3.x, var_1.e.a.x), u_input.d.x) % 32u)), -58942i, select(u_input.c, _wgslsmith_dot_vec3_i32(var_0.c.b.xxx, ~var_1.b.b.xzz) << (_wgslsmith_dot_vec4_u32(vec4<u32>(37244u, 4294967295u, 1u, 14257u), ~vec4<u32>(33179u, u_input.d.x, 0u, 35680u)) % 32u), var_1.e.a.x <= ~reverseBits(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(abs(~u_input.a), _wgslsmith_clamp_i32(-2147483647i, ~18218i, ~(2147483647i << (global3.x % 32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -17252i, 2147483647i), -vec3<i32>(u_input.b, u_input.a, u_input.c)), func_1() | ~vec3<i32>(u_input.b, -13118i, u_input.a)), 58547i);
    var var_1 = Struct_1(u_input.d, -vec4<i32>(~(u_input.a >> (u_input.d.x % 32u)), -1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c, var_0.x), vec3<i32>(-2147483647i, var_0.x, u_input.b)), u_input.c));
    let var_2 = 0u < _wgslsmith_sub_u32(_wgslsmith_mod_u32((var_1.a.x << (global3.x % 32u)) | 1u, firstTrailingBit(~4294967295u)), ~42370u);
    let var_3 = -715f;
    let var_4 = var_3;
    var var_5 = !any(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.d.x, 9u)] | var_2, true, any(!vec4<bool>(false, true, var_2, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(var_1.b.xz, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), var_1.b.xz) << (vec2<u32>(4294967295u, 8116u) % vec2<u32>(32u)), ~var_1.b.zz)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4, 147f, 524f), vec3<f32>(_wgslsmith_f_op_f32(var_4 * -211f), _wgslsmith_f_op_f32(trunc(-357f)), -1341f), true)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1177f, var_4))), _wgslsmith_div_f32(705f, _wgslsmith_f_op_f32(807f + var_3)), -2104f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_4))))), 791f, ~2147483647i < max(var_1.b.x, u_input.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(248f, var_4, var_3) + vec3<f32>(var_4, var_4, -1147f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1902f, -103f, var_4), _wgslsmith_div_vec3_f32(vec3<f32>(-1418f, -1563f, -400f), vec3<f32>(var_4, -135f, 242f))))))), vec4<u32>(global3.x, 0u, 17123u, var_1.a.x));
}

