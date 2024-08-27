struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(1497f, -467f, 468f, 769f, -1835f, 1041f, 1000f, -1250f, 380f, 277f, 1562f, 172f, 494f, -271f, -1000f, 1447f, 990f, -1820f, -779f, -449f);

var<private> global1: vec2<i32> = vec2<i32>(-12194i, 28142i);

var<private> global2: f32 = 107f;

var<private> global3: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global4: array<u32, 8> = array<u32, 8>(4294967295u, 8260u, 1u, 4294967295u, 4732u, 11801u, 53616u, 4294967295u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_1(true, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(127102u, 8u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(61743u, 8u)], 8u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26495u, 8u)], 8u)], 8u)], 8u)], 8u)], 4294967295u), vec4<u32>(4294967295u, 57108u, 0u, 5126u), vec4<u32>(global4[_wgslsmith_index_u32(29838u, 8u)], 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21488u, 8u)], 8u)], 8u)], 8u)], 4294967295u))), select(vec4<u32>(1u, 37594u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(93563u, 8u)], 8u)], 8u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35788u, 8u)], 8u)]), ~vec4<u32>(global4[_wgslsmith_index_u32(49026u, 8u)], 10806u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10419u, 8u)], 8u)], global4[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(true, true, true, true))), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~(global4[_wgslsmith_index_u32(4294967295u, 8u)] | 4294967295u)), 8u)], 8u)], 8u)]), vec2<bool>(true, (abs(u_input.a) & -12544i) != -47632i), _wgslsmith_mod_vec2_i32(select(-(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(54256i, global1.x), vec2<bool>(true, false)), max(-vec2<i32>(0i, 13544i), ~select(vec2<i32>(-12092i, u_input.a), vec2<i32>(global1.x, 2147483647i), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 14u)]))), ~33420u);
    var var_1 = -u_input.a;
    global4 = array<u32, 8>();
    global4 = array<u32, 8>();
    var var_2 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1606i, 14703i, global1.x) ^ vec3<i32>(-1i, global1.x, 1i), countOneBits(vec3<i32>(u_input.a, u_input.a, var_0.d.x))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 22013i, u_input.a), vec3<i32>(-14495i, -10854i, 1i)), -(vec3<i32>(31135i, var_0.d.x, global1.x) | vec3<i32>(1i, u_input.a, global1.x))), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 61279i), var_0.a), vec3<i32>(1i, 1i, 1i)));
    return true;
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 20u)] - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1057f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(51551u, 8u)], 8u)], 8u)], 8u)], 20u)], true)))))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(10991i, -1i ^ global1.x, global1.x), vec3<i32>(_wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(-2147483647i, u_input.a)), -77637i, ~u_input.a), -11835i, _wgslsmith_dot_vec4_i32(vec4<i32>(17492i, 1i, 10464i, u_input.a) << (vec4<u32>(global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 74336u, 6000u) % vec4<u32>(32u)), -select(vec4<i32>(global1.x, global1.x, -27036i, global1.x), vec4<i32>(29105i, 5922i, -10646i, 0i), vec4<bool>(true, true, false, false)))));
    var_1 = global0[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(19826u, 8u)] ^ abs(~reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(62990u, 8u)], 8u)], 8u)]))), 20u)];
    global0 = array<f32, 20>();
    return _wgslsmith_dot_vec2_i32(~var_2.zx, _wgslsmith_mod_vec2_i32(max(~vec2<i32>(u_input.a, 2147483647i), vec2<i32>(var_2.x, -35854i) << (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36185u, 8u)], 8u)], 8u)], 8u)], global4[_wgslsmith_index_u32(9587u, 8u)]) % vec2<u32>(32u))) >> (~vec2<u32>(26203u, 20569u) % vec2<u32>(32u)), vec2<i32>(~7319i, _wgslsmith_dot_vec2_i32(~vec2<i32>(6455i, 1i), var_2.xz))));
}

fn func_2() -> vec2<u32> {
    let var_0 = vec3<i32>(u_input.a, func_4(func_3()), ~(-global1.x));
    var var_1 = true;
    let var_2 = Struct_1(true, 1u, !vec2<bool>(!(-1650i <= global1.x), all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec2_i32(var_0.zz | (_wgslsmith_div_vec2_i32(var_0.xy, var_0.xy) | _wgslsmith_mod_vec2_i32(vec2<i32>(-2361i, 7568i), var_0.yz)), -(var_0.yy >> (select(vec2<u32>(53518u, 104u), vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(4702u, 8u)]), true) % vec2<u32>(32u)))), ~58708u);
    let var_3 = Struct_1(all(vec4<bool>(true, true, true, true)), firstLeadingBit(global4[_wgslsmith_index_u32(~abs(global4[_wgslsmith_index_u32(47505u, 8u)]), 8u)]), var_2.c, vec2<i32>(~(~var_0.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(-48861i, var_0.x), -(vec2<i32>(u_input.a, global1.x) ^ var_2.d))), 303u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] * global0[_wgslsmith_index_u32(1u, 20u)]))) + 1344f), global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(abs(var_2.e))), 20u)])));
    return vec2<u32>(min(select(~4294967295u, ~_wgslsmith_mult_u32(3902u, global4[_wgslsmith_index_u32(44698u, 8u)]), func_3()), global4[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(26339u, firstLeadingBit(var_3.e))), 8u)]), var_2.e);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = Struct_1(arg_1.c.a, 0u, arg_1.c.c, arg_1.b.d, ~global4[_wgslsmith_index_u32(23974u, 8u)]);
    global3 = array<vec2<bool>, 14>();
    return countOneBits(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], global4[_wgslsmith_index_u32(53412u, 8u)]) << (vec2<u32>(global4[_wgslsmith_index_u32(0u, 8u)], 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 0u))), ~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35193u, 8u)], 8u)], 8u)] >> (global4[_wgslsmith_index_u32(4294967295u, 8u)] % 32u)), _wgslsmith_dot_vec2_u32(func_1(global1.x, Struct_2(689f, Struct_1(false, 17741u, vec2<bool>(false, true), vec2<i32>(global1.x, global1.x), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), Struct_1(false, 4294967295u, vec2<bool>(true, false), vec2<i32>(0i, u_input.a), global4[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_1(false, 4294967295u, vec2<bool>(false, true), vec2<i32>(global1.x, 43075i), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15127u, 8u)], 8u)]))), abs(vec2<u32>(35649u, 1u)))), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~1u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(63882u, 8u)], 8u)], 8u)], global4[_wgslsmith_index_u32(1u, 8u)], 6771u), vec3<u32>(global4[_wgslsmith_index_u32(25645u, 8u)], global4[_wgslsmith_index_u32(68031u, 8u)], 4294967295u)))), 8u)], 8u)], 32811u, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25834u, 8u)], 8u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)]), 8u)], 8u)]), 8u)]), -vec3<i32>(global1.x, 10457i, u_input.a), _wgslsmith_div_u32(select(4294967295u, 69171u, select(false, all(vec2<bool>(false, false)), true)), ~(~1u)), vec4<i32>(-1i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(54171u, global4[_wgslsmith_index_u32(33857u, 8u)], 80437u, 28057u), vec4<u32>(4294967295u, 21896u, 33296u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7151u, 8u)], 8u)])) % 32u), u_input.a, 2147483647i, -(u_input.a << ((global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(589u, 8u)], 8u)], 8u)], 8u)] >> (global4[_wgslsmith_index_u32(1u, 8u)] % 32u)) % 32u))));
}

