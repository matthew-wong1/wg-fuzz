struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 23>;

var<private> global3: vec4<i32>;

var<private> global4: array<bool, 2>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1101f + 708f), _wgslsmith_f_op_f32(-817f - 2392f))))));
    global1 = vec3<i32>(global3.x, global1.x, global3.x) ^ global3.yzy;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-529f * var_0), _wgslsmith_f_op_f32(floor(510f)), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80406u, 23u)], 2u)]))), _wgslsmith_f_op_f32(-var_0), -1000f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), _wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1402f)))))));
    let var_2 = vec4<bool>(true, true, any(select(vec3<bool>(true, any(vec4<bool>(false, true, global4[_wgslsmith_index_u32(arg_0.x, 2u)], global4[_wgslsmith_index_u32(2333u, 2u)])), var_0 <= -505f), vec3<bool>(all(vec4<bool>(true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36067u, 23u)], 2u)], global4[_wgslsmith_index_u32(1u, 2u)], false)), true, global4[_wgslsmith_index_u32(select(32447u, 141833u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 23u)], 2u)]), 2u)]), all(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(11715u, 2u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 23u)], 23u)], 2u)]), vec4<bool>(global4[_wgslsmith_index_u32(0u, 2u)], global4[_wgslsmith_index_u32(80306u, 2u)], true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 2u)], false, true))))), false);
    global1 = select(-abs(global3.wyx), vec3<i32>(0i, _wgslsmith_mult_i32(16547i, _wgslsmith_div_i32(_wgslsmith_mod_i32(global1.x, -2147483647i), -global3.x)), _wgslsmith_mod_i32(~2147483647i, global1.x)), false);
    return vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0, reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], arg_0.x)), select(vec2<u32>(20608u, 0u), vec2<u32>(arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16500u, 23u)], 23u)]), var_2.x) >> (arg_0 % vec2<u32>(32u))), countOneBits(vec2<u32>(29133u, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(24044u, 15u)], 23u)]))), 15u)], ~firstTrailingBit(35640u >> (global2[_wgslsmith_index_u32(55172u, 23u)] % 32u)) >> (firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12961u >> (select(83000u, arg_0.x, global4[_wgslsmith_index_u32(arg_0.x, 2u)]) % 32u), 15u)], 15u)]) % 32u));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_5(1i, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27132u, 23u)], 23u)], 23u)], 15u)]) << (vec2<u32>(global2[_wgslsmith_index_u32(31503u, 23u)], global2[_wgslsmith_index_u32(7592u, 23u)]) % vec2<u32>(32u))), ~vec2<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9391u, 23u)], 15u)], 23u)], 23u)], 23u)], 15u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(1u, 15u)]))), 2u)], vec4<u32>(2593u, global0[_wgslsmith_index_u32(1u, 15u)], ~(~_wgslsmith_clamp_u32(4294967295u, 58022u, global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(~(~19457u), 15u)])), Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-3012f)) + _wgslsmith_f_op_f32(ceil(-854f)))), global3.xzx, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(18175i, 33358i, 2147483647i, global1.x), min(vec4<i32>(global3.x, 2147483647i, u_input.b, -2147483647i), vec4<i32>(global1.x, 11296i, u_input.b, global3.x))), ~(~vec4<i32>(global1.x, 27886i, -949i, -16096i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-603f * var_0.d.a.a), _wgslsmith_f_op_f32(-772f * 273f))), _wgslsmith_f_op_f32(min(var_0.d.a.a, _wgslsmith_f_op_f32(step(var_0.d.a.a, -131f))))))));
    global0 = array<u32, 15>();
    global2 = array<u32, 23>();
    global4 = array<bool, 2>();
    return vec4<bool>(all(!(!select(vec4<bool>(var_0.b, true, true, global4[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(101u, 2u)], global4[_wgslsmith_index_u32(74230u, 2u)], true), false))), true, var_0.b, global4[_wgslsmith_index_u32(~0u, 2u)]);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1497f - -1000f)))), 557f)));
    var var_1 = !vec2<bool>(global4[_wgslsmith_index_u32(abs(65838u) ^ min(global2[_wgslsmith_index_u32(22863u, 23u)], global2[_wgslsmith_index_u32(37468u, 23u)]), 2u)] && false, true);
    let var_2 = any(func_2());
    let var_3 = 1u;
    global3 = -max(firstLeadingBit(~vec4<i32>(global1.x, global1.x, u_input.a, 2147483647i) << (abs(vec4<u32>(1348u, 1u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29947u, 23u)], 15u)])) % vec4<u32>(32u))), vec4<i32>(~global1.x, 29034i | _wgslsmith_mod_i32(u_input.b, global3.x), u_input.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 45789i), global3.x)));
    return Struct_3(_wgslsmith_f_op_f32(select(-2861f, 750f, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec3_i32(max(vec3<i32>(1021i ^ global3.x, -2147483647i, u_input.b) ^ global3.xwy, -max(global3.zxz << (vec3<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52580u, 15u)], 23u)], 15u)], 23u)], 23u)], 23u)], 15u)], 11822u, 72350u) % vec3<u32>(32u)), global3.zxz)), abs(global3.wxy >> (~(~vec3<u32>(global0[_wgslsmith_index_u32(30158u, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8203u, 23u)], 15u)], 38885u)) % vec3<u32>(32u))), global3.yyz);
    let var_0 = func_1();
    let var_1 = global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(9857u, 23u)], ~1u), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), 15u)] ^ global0[_wgslsmith_index_u32(5267u, 15u)]) << (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], ~4294967295u), 15u)] % 32u), 15u)];
    var var_2 = vec3<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_sub_u32(max(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22606u, 15u)], 23u)], 23u)], 23u)]), 23u)], firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(0u, 1u))), 1u, min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(20892u, 59330u), 15u)], abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]), _wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6559u, 23u)], 23u)]), vec2<u32>(28087u, global0[_wgslsmith_index_u32(1837u, 15u)]))))));
    let var_3 = Struct_4(var_0, -vec3<i32>(~25243i, _wgslsmith_sub_i32(global1.x, u_input.b), 1i) >> (reverseBits(~vec3<u32>(57465u, 70466u, global0[_wgslsmith_index_u32(27524u, 15u)])) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~9253i, 0i, _wgslsmith_mod_i32(global3.x, global3.x), 0i << (global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 23u)] % 32u)), vec4<i32>(abs(u_input.a), global1.x, u_input.b, u_input.b)), select(vec4<i32>(abs(global1.x), _wgslsmith_sub_i32(u_input.b, global3.x), reverseBits(u_input.b), _wgslsmith_sub_i32(u_input.a, global3.x)), -(~vec4<i32>(global1.x, u_input.a, 2147483647i, 12902i)), vec4<bool>(!global4[_wgslsmith_index_u32(0u, 2u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(95984u, 23u)], 2u)] && true, true, global4[_wgslsmith_index_u32(min(3579u, 18421u), 2u)])), vec4<i32>(31071i, u_input.a << (~55311u % 32u), global1.x, u_input.a)));
    var var_4 = vec2<bool>(false, any(!(!vec3<bool>(false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 2u)], true))));
    let var_5 = var_3.c;
    let var_6 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-(~global1.x)), ~(-60715i), -1i, u_input.a), ~vec4<i32>(global1.x, _wgslsmith_div_i32(6306i, u_input.a), var_5.x, 56765i & (global3.x >> (global2[_wgslsmith_index_u32(10233u, 23u)] % 32u))), vec4<i32>(global1.x, -(-5476i ^ global1.x), _wgslsmith_dot_vec4_i32(var_3.c, vec4<i32>(_wgslsmith_dot_vec3_i32(global3.wyy, vec3<i32>(global3.x, global3.x, u_input.b)), -1i, ~(-44350i), -global1.x)), _wgslsmith_add_i32(abs(-u_input.b), i32(-1i) * -2147483647i)));
    var_2 = ~select(~max(vec3<u32>(89647u, 10654u, global2[_wgslsmith_index_u32(6823u, 23u)]), vec3<u32>(37198u, 7672u, var_2.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_2.x, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14565u, 15u)], 23u)]), ~vec3<u32>(21772u, global2[_wgslsmith_index_u32(var_2.x, 23u)], 1u)), !vec3<bool>(true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4052u, 23u)], 2u)], false)) | firstLeadingBit(vec3<u32>(~_wgslsmith_add_u32(24304u, 0u), 4294967295u, ~(11341u << (var_2.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(i32(-1i) * -var_6.x, -28661i) ^ var_3.c.x, var_3.c.x);
}

