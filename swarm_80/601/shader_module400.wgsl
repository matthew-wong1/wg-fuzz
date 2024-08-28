struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, true, true, true, false, false, false, true, true);

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(72391i, -3432i, -36102i), vec3<i32>(24304i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 29312i, -3483i), vec3<i32>(i32(-2147483648), -60425i, 4078i), vec3<i32>(31844i, -237i, 55575i), vec3<i32>(-37832i, -60650i, 0i), vec3<i32>(10720i, i32(-2147483648), 1i), vec3<i32>(-11728i, -1i, 1i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(19992i, 1i, -35726i), vec3<i32>(1i, -17513i, -1i), vec3<i32>(45401i, 0i, 1i), vec3<i32>(2147483647i, 1i, -44457i), vec3<i32>(1i, 29068i, -57974i), vec3<i32>(-57451i, -10558i, 0i), vec3<i32>(2147483647i, 0i, -11485i), vec3<i32>(1i, 0i, -18521i), vec3<i32>(2147483647i, -36285i, -1i), vec3<i32>(-39697i, 2147483647i, 18348i), vec3<i32>(-1i, 32369i, 0i), vec3<i32>(-30987i, i32(-2147483648), 50259i), vec3<i32>(-40451i, -22597i, -1i), vec3<i32>(-18398i, i32(-2147483648), -9234i), vec3<i32>(0i, -46375i, -12982i), vec3<i32>(0i, -31892i, 2147483647i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(10776i, -1i, -41257i));

var<private> global3: array<bool, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = ~global0.x;
    var var_1 = !(!vec4<bool>((global1[_wgslsmith_index_u32(global0.x, 10u)] || global1[_wgslsmith_index_u32(4294967295u, 10u)]) || any(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], false, global3[_wgslsmith_index_u32(global0.x, 5u)])), global0.x != 0u, all(select(vec4<bool>(false, global3[_wgslsmith_index_u32(3930u, 5u)], true, global1[_wgslsmith_index_u32(84967u, 10u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(34071u, 10u)], true, global1[_wgslsmith_index_u32(global0.x, 10u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global0.x, 10u)], false, global1[_wgslsmith_index_u32(69084u, 10u)]))), global3[_wgslsmith_index_u32(global0.x, 5u)]));
    global0 = (~(~vec4<u32>(7743u, 662u, 4667u, 26777u)) ^ vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.x, 1u), firstLeadingBit(26183u), 25474u), _wgslsmith_dot_vec3_u32(~global0.yzw, min(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(4294967295u, 28059u, 4294967295u))), global0.x, _wgslsmith_add_u32(0u, 31192u))) & vec4<u32>(33892u >> (reverseBits(abs(global0.x)) % 32u), ~4294967295u, 0u, 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2307f, -2601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f * 1062f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1010f, 589f, -409f)))))))));
    let var_3 = vec4<i32>(u_input.b.x, firstLeadingBit(_wgslsmith_add_i32(max(u_input.a.x ^ 2147483647i, reverseBits(u_input.b.x)), u_input.b.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, u_input.b.x, u_input.a.x), ~firstLeadingBit(vec4<i32>(-1i, u_input.b.x, -46800i, u_input.a.x))) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(~0i, 46812i), vec2<i32>(u_input.b.x ^ 2147483647i, u_input.c)), ~(u_input.a.x >> (_wgslsmith_dot_vec3_u32(global0.wxy, global0.wyx) % 32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -992f);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = -1148f;
    var var_1 = Struct_2(Struct_1(-u_input.c, _wgslsmith_f_op_f32(func_3())), !(!(!(!vec4<bool>(false, false, arg_2, arg_2)))), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), Struct_1(~15277i, 2741f), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 20592i), ~u_input.a.x, 1i), ~countOneBits(global2[_wgslsmith_index_u32(42713u, 27u)])), _wgslsmith_f_op_f32(func_3())));
    let var_2 = arg_0;
    global2 = array<vec3<i32>, 27>();
    let var_3 = var_0;
    return _wgslsmith_div_u32(1u, arg_1);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2(~max(19576u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, 0u, 1u), vec4<u32>(1u, 17384u, global0.x, 0u)), ~global0.x, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true, global1[_wgslsmith_index_u32(global0.x, 10u)])))), global0.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, 1u), 5u)]);
    let var_1 = Struct_2(Struct_1(u_input.a.x, 282f), select(vec4<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true, global1[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(global0.x, 5u)])), (global0.x << (global0.x % 32u)) > 1u, all(!vec3<bool>(false, global1[_wgslsmith_index_u32(64576u, 10u)], false)), global1[_wgslsmith_index_u32(global0.x ^ _wgslsmith_dot_vec2_u32(global0.yy, vec2<u32>(28069u, 4294967295u)), 10u)]), select(vec4<bool>(43406u <= global0.x, all(vec2<bool>(global1[_wgslsmith_index_u32(62634u, 10u)], global1[_wgslsmith_index_u32(57942u, 10u)])), !global3[_wgslsmith_index_u32(global0.x, 5u)], !global3[_wgslsmith_index_u32(9129u, 5u)]), !(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 5u)], false, global3[_wgslsmith_index_u32(global0.x, 5u)], global1[_wgslsmith_index_u32(global0.x, 10u)])), !(global1[_wgslsmith_index_u32(global0.x, 10u)] & false)), vec4<bool>(true, global3[_wgslsmith_index_u32(~4294967295u, 5u)], any(vec2<bool>(global3[_wgslsmith_index_u32(53959u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)])), select(50228u, global0.x, false) >= abs(0u))), Struct_1(30154i, _wgslsmith_f_op_f32(func_3())), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(8802u, 27u)], global2[_wgslsmith_index_u32(global0.x, 27u)]) >> (26780u % 32u), ~_wgslsmith_mod_i32(0i, u_input.a.x), u_input.c), 545f), Struct_1(_wgslsmith_mod_i32(2147483647i, firstTrailingBit(4041i)), _wgslsmith_f_op_f32(-395f + _wgslsmith_f_op_f32(f32(-1f) * -197f))));
    global0 = vec4<u32>(global0.x, reverseBits(abs(37165u)), func_2(~4294967295u, ~(~36204u), all(vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_div_u32(~1u, 3551u) ^ func_2(global0.x, global0.x | global0.x, global3[_wgslsmith_index_u32(13406u, 5u)]));
    global0 = abs(~(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(56511u, 1u, global0.x, 5579u), vec4<u32>(1u, 4294967295u, 78375u, global0.x)), ~vec4<u32>(global0.x, 1u, global0.x, global0.x), ~vec4<u32>(4294967295u, global0.x, global0.x, 33909u)) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global0.x), vec4<u32>(0u, global0.x, 1u, global0.x), vec4<u32>(global0.x, 46094u, 1u, 31973u))));
    global1 = array<bool, 10>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    global1 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(57453u, 0u << (1u % 32u)) >> (countOneBits(~vec2<u32>(global0.x, 0u)) % vec2<u32>(32u))), vec4<i32>(u_input.c, ~reverseBits(u_input.b.x), _wgslsmith_mult_i32((u_input.c & 0i) | -1i, ~firstLeadingBit(-22516i)), _wgslsmith_add_i32(52513i, u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(981f, 415f)))), _wgslsmith_div_f32(961f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2241f)) - _wgslsmith_f_op_f32(f32(-1f) * -444f)))), _wgslsmith_add_i32(abs(u_input.a.x << (~global0.x % 32u)), u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1568f, 1099f)) + _wgslsmith_f_op_f32(round(-1524f))))))));
}

