struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 32>;

var<private> global3: Struct_1 = Struct_1(597f, 12214i, 4294967295u, vec3<u32>(1u, 4294967295u, 0u));

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> f32 {
    return _wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) * -162f));
}

fn func_3() -> vec3<bool> {
    let var_0 = -abs(vec4<i32>(_wgslsmith_mod_i32(~0i, global3.b), -1i, -abs(-52024i), ~1i));
    global4 = array<Struct_1, 26>();
    global1 = select(vec3<bool>(!select(true, true, any(vec4<bool>(false, global1.x, false, global1.x))), !global1.x, false), select(!(!select(vec3<bool>(true, global1.x, false), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, false, false))), select(select(select(vec3<bool>(true, global1.x, true), vec3<bool>(true, false, false), vec3<bool>(false, true, global1.x)), !vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x)), vec3<bool>(true, false, any(vec3<bool>(true, true, false))), all(select(vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x))), vec3<bool>(global3.a <= -1100f, global1.x, all(select(global1.yx, vec2<bool>(global1.x, global1.x), true)))), !select(vec3<bool>(true, !global1.x, !global1.x), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x), vec3<bool>(!global1.x, true, any(vec4<bool>(false, global1.x, false, true)))));
    let var_1 = abs(global2[_wgslsmith_index_u32(~global3.d.x, 32u)]) << (4294967295u % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(604f)), _wgslsmith_div_i32(-33421i, _wgslsmith_mult_i32(var_0.x, abs(var_0.x))), _wgslsmith_mult_u32(0u, global3.d.x ^ _wgslsmith_dot_vec2_u32(global3.d.zz, global3.d.zx)), ~(~_wgslsmith_add_vec3_u32(min(global3.d, vec3<u32>(16236u, 40851u, var_1)), min(global3.d, vec3<u32>(22192u, global2[_wgslsmith_index_u32(71859u, 32u)], global3.c)))));
    return select(select(!vec3<bool>(any(vec4<bool>(global1.x, global1.x, false, global1.x)), global1.x | false, global1.x), vec3<bool>(true, !global1.x, !(global1.x & false)), vec3<bool>(true, (-2077f > var_2.a) | (global1.x || true), true)), vec3<bool>(true, !(-1i > ~var_2.b), global3.a >= -933f), false);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = 29540u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_2()), arg_0.x, var_0, select(global3.d, vec3<u32>(1u, 1u, u_input.a), vec3<bool>(global1.x, any(vec4<bool>(true, true, global1.x, false)), false)));
    global0 = array<Struct_1, 18>();
    var var_2 = ~9431u;
    global1 = select(vec3<bool>(!global1.x, ((false && global1.x) | (var_1.a == -589f)) != true, !global1.x), !select(!(!vec3<bool>(global1.x, global1.x, true)), !func_3(), global1.x != any(vec3<bool>(global1.x, false, false))), any(func_3().zx));
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-203f * 331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(1i, global3.b, global3.b))))))))));
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(global3.b, -1i)), reverseBits(vec2<i32>(1i, min(-2147483647i, global3.b)))), _wgslsmith_clamp_vec2_i32(~select(vec2<i32>(2147483647i, global3.b), vec2<i32>(1i, global3.b), global1.yz) | abs(vec2<i32>(-5866i, global3.b)), vec2<i32>(~(-3739i), 22735i), select(vec2<i32>(global3.b ^ 6205i, firstTrailingBit(global3.b)), -vec2<i32>(global3.b, -8755i), func_3().xz)));
    let var_2 = -(~max(~(vec3<i32>(-2147483647i, global3.b, global3.b) & vec3<i32>(global3.b, 2330i, -6416i)), -vec3<i32>(global3.b, -32448i, global3.b) >> (vec3<u32>(global2[_wgslsmith_index_u32(0u, 32u)], 59771u, 0u) % vec3<u32>(32u))));
    var var_3 = ~(max(global2[_wgslsmith_index_u32(abs(7631u), 32u)], 4294967295u) >> (4294967295u % 32u));
    var var_4 = select(global1.xz, global1.yx, all(vec2<bool>(global1.x & false, true)));
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-302f, 911f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, global3.a)), func_3().x))), vec2<f32>(global3.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a * var_0))))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), reverseBits(vec3<u32>(16406u, 703u, global3.c))) & global3.d, vec3<u32>(_wgslsmith_sub_u32(~u_input.a, 0u), 25213u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, global3.d.x), ~global3.d.zz))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-47794i, ~var_1.x, select(-9808i, var_1.x, global1.x)), vec3<i32>(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_1.x), var_1), _wgslsmith_mod_i32(var_2.x, var_2.x)), var_0 <= 1345f), firstLeadingBit(vec3<i32>(0i, var_1.x, ~var_2.x))));
}

