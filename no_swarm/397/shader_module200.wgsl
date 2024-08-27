struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f * -285f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) - _wgslsmith_f_op_f32(trunc(610f)))), vec2<f32>(_wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-357f * 190f)))), 1264f)));
    var var_1 = Struct_1(arg_0.a, -arg_1.x, arg_0.c);
    var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = select(!vec4<bool>(true | (4294967295u <= var_1.c), true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, all(vec3<bool>(false, false, false)))), !select(vec4<bool>(arg_0.c > arg_0.a.x, all(vec3<bool>(true, true, true)), true, 1124f < var_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true && all(vec4<bool>(true, false, true, false))));
    return false;
}

fn func_2() -> u32 {
    var var_0 = 4294967295u;
    var var_1 = reverseBits(_wgslsmith_mod_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 35748u), vec3<u32>(0u, 25561u, 0u)) << (reverseBits(9811u) % 32u)) >> (16859u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(53850u, 0u, 4294967295u, 27628u), vec4<u32>(23026u, 1u, 1u, 84349u)), vec4<u32>(1u, 1u, 1u, 1u)) >> (1u % 32u)));
    var var_2 = abs(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) << (0u % 32u);
    var_0 = 54117u;
    var var_3 = !select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !vec3<bool>(func_3(Struct_1(vec4<u32>(45093u, 1010u, 60985u, 34933u), u_input.a.x, 18015u), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(false, false, true))));
    return min(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 41172u, ~4294967295u), ~(~vec3<u32>(15797u, 7015u, 456u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~54296u, _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u), vec3<u32>(1u, 1u, 33144u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_clamp_i32(2147483647i, -(i32(-1i) * -(arg_0.b ^ arg_0.b)), ~_wgslsmith_mult_i32(-arg_0.b, -arg_0.b << ((arg_0.a.x >> (arg_0.c % 32u)) % 32u)));
    let var_2 = arg_0.c;
    let var_3 = Struct_1(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(1u, _wgslsmith_mult_u32(arg_0.c, var_2), ~var_2, var_2)), arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a.x, 32835u) ^ 0u, var_2)), _wgslsmith_add_i32(i32(-1i) * -arg_0.b, ~firstTrailingBit(-2147483647i)) << (~func_2() % 32u), func_2());
    let var_4 = vec3<bool>(true, select(!any(vec3<bool>(false, true, true)), all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), var_3.a.x <= var_2)), true), !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0)), 1136f)) < _wgslsmith_f_op_f32(-189f * 782f)));
    return Struct_1(countOneBits(arg_0.a), -1767i, ~31932u);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = -(~u_input.a.x);
    var var_1 = arg_1;
    var var_2 = min(firstTrailingBit(_wgslsmith_clamp_i32(min(-28741i, arg_3.b), var_0, 2147483647i << (arg_3.c % 32u))), 26002i) << (_wgslsmith_dot_vec3_u32(var_1.a.xzy, arg_2.a.wzz) % 32u);
    var var_3 = abs(reverseBits(max(vec3<i32>(func_1(arg_1, -1000f).b, -23328i, -11371i), min(vec3<i32>(arg_3.b, -40912i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b, arg_1.b, arg_2.b), vec3<i32>(20745i, 49600i, var_0), vec3<i32>(arg_3.b, -16292i, arg_1.b))))));
    let var_4 = func_1(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1223f))) - _wgslsmith_f_op_f32(step(403f, _wgslsmith_f_op_f32(trunc(641f))))) + _wgslsmith_f_op_f32(floor(1f))));
    return reverseBits(arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), ~vec3<u32>(64313u, 11434u, 52647u)), vec3<u32>(34351u, ~0u, func_4(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), func_1(Struct_1(vec4<u32>(1u, 55540u, 34385u, 68904u), u_input.a.x, 0u), 142f), Struct_1(vec4<u32>(4294967295u, 0u, 89331u, 47913u), 34875i, 25698u), Struct_1(vec4<u32>(0u, 3103u, 20668u, 110309u), u_input.a.x, 46064u)))), _wgslsmith_div_vec3_u32(select(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(72702u, 4294967295u, 0u), vec3<u32>(43331u, 4294967295u, 47529u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(80222u, 58787u, 0u), countOneBits(vec3<u32>(63587u, 4294967295u, 9714u))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), false)), vec3<u32>(1u, _wgslsmith_mult_u32(~1u, 1u), 96164u)));
    var var_1 = ~select(62807u, func_4(vec4<bool>(true, true, true, true), Struct_1(countOneBits(vec4<u32>(94120u, 36203u, 30384u, 4294967295u)), -40748i, 1u), Struct_1(vec4<u32>(1u, 17394u, 4294967295u, 4294967295u), 0i & u_input.a.x, reverseBits(42408u)), func_1(Struct_1(vec4<u32>(1u, 76673u, 4294967295u, 8021u), 44524i, 1u), -886f)), true);
    var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(min(~_wgslsmith_sub_u32(90861u, 72995u), ~abs(29665u)), ~4294967295u));
    var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(select(63744u, max(4294967295u, _wgslsmith_add_u32(9872u, 81511u)), true), ~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31385u, 15486u), vec2<u32>(0u, 0u)) >> (max(88301u, 2350u) % 32u), max(func_4(vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(48250u, 1u, 1u, 0u), -22098i, 1u), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), u_input.a.x, 51416u), Struct_1(vec4<u32>(11463u, 5363u, 61333u, 1u), u_input.a.x, 1u)), 34557u)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(76234u, 31280u)))));
    var var_2 = true;
    var_2 = (202f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-906f, -607f))))) || true;
    let var_3 = Struct_1(vec4<u32>(2574u, 1u, _wgslsmith_mult_u32(abs(15968u), _wgslsmith_mod_u32(17603u, ~54017u)), select(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(0u, 4294967295u), u_input.a.x > u_input.a.x) ^ 1u), max(reverseBits(u_input.a.x), ~abs(u_input.a.x) << (1u % 32u)), firstTrailingBit(1u) >> (abs(51144u) % 32u));
    var var_4 = _wgslsmith_add_vec4_u32(select(var_3.a, vec4<u32>(var_3.c, 1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(0u, 0u)), var_3.a.x), select(vec4<bool>(select(false, true, true), all(vec2<bool>(false, false)), var_3.b <= -43622i, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))), var_3.a << (~var_3.a % vec4<u32>(32u)));
    var var_5 = func_1(func_1(func_1(func_1(Struct_1(vec4<u32>(21667u, 1u, var_3.a.x, var_3.c), -24520i, var_4.x), _wgslsmith_f_op_f32(ceil(-566f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1421f)), -1120f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2551f, 241f) * -946f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-107f, -275f)))))), _wgslsmith_f_op_f32(-621f * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec4_i32(~(~vec4<i32>(var_3.b, var_5.b, var_5.b, var_3.b)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-3171i, -1i, u_input.a.x, -22113i), vec4<i32>(2147483647i, var_3.b, var_5.b, var_5.b)), select(vec4<i32>(u_input.a.x, var_5.b, var_5.b, -2147483647i), vec4<i32>(0i, var_5.b, var_5.b, 2147483647i), true), vec4<bool>(true, true, true, true))), 18237u, _wgslsmith_f_op_f32(max(-697f, -409f)), max(-62079i, -var_3.b), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), -897f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1816f + 1354f), _wgslsmith_f_op_f32(419f * 1657f), -1334f, _wgslsmith_f_op_f32(min(334f, 464f)))))));
}

