struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 52155u;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<vec2<bool>, 31>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global1 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -2147483647i), u_input.a.x & 51288i), -33603i, ~u_input.a.x, -1i), ~vec4<i32>(max(1i, 1i), u_input.a.x & -u_input.a.x, ~u_input.a.x, u_input.a.x));
    let var_1 = Struct_1(arg_0.a);
    var var_2 = global1[_wgslsmith_index_u32(select(~abs(_wgslsmith_mod_u32(firstTrailingBit(0u), 43346u)), ~1u, 1u == (_wgslsmith_dot_vec3_u32(max(vec3<u32>(36993u, 17929u, 0u), vec3<u32>(55619u, 1u, 13451u)), ~vec3<u32>(16641u, 48011u, 103610u)) << (_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5737u, 7917u, 39384u), vec4<u32>(0u, 0u, 26113u, 0u))) % 32u))), 30u)];
    let var_3 = Struct_1(true);
    return vec2<u32>(4294967295u, ~(~(~_wgslsmith_div_u32(1u, 1u))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(arg_0), arg_0), ~func_3(global1[_wgslsmith_index_u32(arg_0, 30u)]), vec2<u32>(arg_0 & 113030u, abs(24120u))), reverseBits(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u) << (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)), ~vec2<u32>(0u, arg_0)))));
    var var_1 = _wgslsmith_dot_vec2_u32((~vec2<u32>(56222u, arg_3) & ~(vec2<u32>(1u, arg_3) >> (vec2<u32>(9309u, 1u) % vec2<u32>(32u)))) & func_3(Struct_1(false)), _wgslsmith_mult_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 5230u) ^ vec2<u32>(4294967295u, 11905u), ~vec2<u32>(arg_3, arg_0))), vec2<u32>(~_wgslsmith_mod_u32(110781u, 1u), ~(~4294967295u))));
    let var_2 = ~108961u;
    var_1 = ~(0u & (35882u ^ abs(_wgslsmith_mod_u32(var_2, 4294967295u))));
    var_1 = _wgslsmith_mod_u32(var_2, func_3(arg_1).x);
    return _wgslsmith_mod_vec4_u32(max(~vec4<u32>(1u, 72041u, 4294967295u, var_0) << (reverseBits(vec4<u32>(var_0, 14937u, 36651u, 4294967295u) | vec4<u32>(4294967295u, var_0, 87781u, arg_0)) % vec4<u32>(32u)), (min(vec4<u32>(48835u, 0u, arg_0, arg_3), vec4<u32>(88638u, arg_3, 4294967295u, arg_0)) >> (reverseBits(vec4<u32>(var_2, 4294967295u, arg_3, 11460u)) % vec4<u32>(32u))) << (vec4<u32>(arg_0, 63987u, arg_0, abs(16861u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(min(vec4<u32>(min(33488u, 1u), 71764u, arg_3, arg_0), select(firstLeadingBit(vec4<u32>(54404u, var_0, var_0, 109670u)), vec4<u32>(0u, arg_0, var_0, var_2) >> (vec4<u32>(arg_0, arg_0, arg_3, 1u) % vec4<u32>(32u)), all(vec3<bool>(true, true, arg_1.a)))), ~vec4<u32>(arg_0, arg_3, 0u, 1u) << (select(vec4<u32>(51923u, 0u, 1u, var_2), vec4<u32>(82474u, var_0, 4294967295u, 10954u), vec4<bool>(arg_1.a, arg_2.a, arg_1.a, false)) % vec4<u32>(32u))));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(abs(u_input.a.x), countOneBits(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-19346i, 38898i, u_input.a.x), u_input.a.wzw), u_input.a.x)));
    global0 = 1u;
    let var_1 = ~50485u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1948f, 1000f, 1601f) - vec3<f32>(-853f, -540f, -1750f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-647f, 446f, -1105f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(826f, -304f, -643f), vec3<f32>(-610f, 1000f, 112f), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1571f, -873f, 469f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, -172f, 184f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-237f)) * _wgslsmith_f_op_f32(-666f - -798f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1475f)), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(168f * -183f), _wgslsmith_f_op_f32(-1406f + -413f), _wgslsmith_f_op_f32(-var_2.x), 1000f);
    return reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12297u, var_1, 93012u, var_1), func_2(86816u, Struct_1(true), Struct_1(true), 64033u)), ~var_1), ~(~firstTrailingBit(vec2<u32>(1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_u32(~(~80873u), 41154u, _wgslsmith_clamp_u32(~(~(~26883u)), 0u, 1u));
    var var_0 = vec3<bool>(true, select(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), true, any(vec4<bool>(true, true, true, true))), false);
    let var_1 = -40341i;
    global0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(func_1(), abs(vec2<u32>(1u, 1u))), 4294967295u) | 1u;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(424f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1439f - -1089f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1143f))))));
    var_0 = select(select(!(!(!vec3<bool>(var_0.x, true, false))), select(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(var_0.x, true & var_0.x, true), select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, true, var_0.x))), vec3<bool>(var_0.x, !var_0.x, select(var_0.x, var_0.x, var_0.x) || false)), vec3<bool>(!(!(-35536i == u_input.a.x)), var_0.x, true), select(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), select(select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), !vec3<bool>(var_0.x, true, false), !(!var_0.x)), !vec3<bool>(true, false, select(var_0.x, var_0.x, false))));
    global2 = array<vec2<bool>, 31>();
    var var_3 = 35478u;
    var var_4 = vec2<u32>(reverseBits(func_3(Struct_1(var_0.x)).x), 1u) & ((vec2<u32>(1u, ~1u) >> (select(min(vec2<u32>(4294967295u, 45888u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(1u, 4294967295u), any(vec4<bool>(var_0.x, var_0.x, true, var_0.x))) % vec2<u32>(32u))) & ~vec2<u32>(func_3(global1[_wgslsmith_index_u32(0u, 30u)]).x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x, var_2.x), ~(firstTrailingBit(vec2<u32>(1u, 16309u)) << (vec2<u32>(~43243u, 131913u) % vec2<u32>(32u))), 2147483647i);
}

