struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 97988u, 1u, 1u, 0u, 0u, 68821u, 0u, 13692u, 16787u, 5227u, 0u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = arg_0 ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(39065u, global0[_wgslsmith_index_u32(arg_0, 12u)], u_input.a), vec3<u32>(49258u, global0[_wgslsmith_index_u32(u_input.a, 12u)], 37479u)), _wgslsmith_div_u32(126854u, 56192u)), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(16546u, 12u)], 71479u, 4062u), vec4<u32>(u_input.a, 1896u, arg_0, 4294967295u), vec4<u32>(u_input.a, 14636u, global0[_wgslsmith_index_u32(1u, 12u)], 1u))));
    let var_1 = (firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a, 16305u, global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<u32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 12u)], 67898u, 4294967295u)), ~4294967295u, _wgslsmith_sub_u32(arg_0, 6972u))) >> (_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), select(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, 44864u)), vec3<u32>(43656u, global0[_wgslsmith_index_u32(4828u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)]), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))) % vec3<u32>(32u))) << (abs((~vec3<u32>(arg_0, 1u, 5160u) << (vec3<u32>(4294967295u, 15680u, u_input.a) % vec3<u32>(32u))) >> (((vec3<u32>(2236u, 16170u, 63327u) | vec3<u32>(arg_0, 25440u, 3246u)) << (~vec3<u32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_0) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return !(true && any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, false)))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.c;
    global0 = array<u32, 12>();
    var var_1 = -arg_2.b.a;
    let var_2 = Struct_1(-6062i, func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], u_input.a, 95893u, global0[_wgslsmith_index_u32(0u, 12u)]) & vec4<u32>(global0[_wgslsmith_index_u32(368u, 12u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)], u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, 4294967295u))) || var_0.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.d.c.x + arg_2.d.d.x), _wgslsmith_f_op_f32(ceil(-826f)))), _wgslsmith_div_f32(-2366f, _wgslsmith_f_op_f32(f32(-1f) * -518f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-875f, -444f, 2647f) + vec3<f32>(arg_2.b.d.x, var_0.d.x, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1186f, arg_2.b.d.x, arg_1) * arg_2.c.d)))))), i32(-1i) * -(i32(-1i) * -39017i));
    var var_3 = vec2<f32>(-205f, _wgslsmith_f_op_f32(trunc(arg_1)));
    return var_0.b;
}

fn func_1() -> bool {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_0 = !(!vec2<bool>(select(select(false, false, true), func_2(Struct_3(990i), -118f, Struct_2(vec3<f32>(-182f, -1000f, -1371f), Struct_1(-2147483647i, true, vec2<f32>(-403f, 205f), vec3<f32>(466f, -1033f, -1000f), 18204i), Struct_1(1i, false, vec2<f32>(-1000f, -156f), vec3<f32>(-880f, 1147f, -1230f), 19114i), Struct_1(1i, true, vec2<f32>(-477f, -992f), vec3<f32>(938f, 820f, 391f), 0i))), false), false));
    let var_1 = select(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)] << (51412u % 32u), 12u)], _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(104793u, 12u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)]) ^ ~abs(vec3<u32>(u_input.a, 1u, 36955u)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 83856u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20307u, 12u)], 12u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)], u_input.a, u_input.a), vec3<u32>(25913u, 73106u, 39968u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 61071u, 19881u), vec3<u32>(31568u, global0[_wgslsmith_index_u32(u_input.a, 12u)], 4294967295u)) % vec3<u32>(32u)), ~(vec3<u32>(u_input.a, 4294967295u, u_input.a) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44348u, 12u)], 12u)], 12u)], u_input.a, u_input.a)), all(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), false)))), select(reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 811u), vec3<u32>(33537u, u_input.a, u_input.a))), min(~(vec3<u32>(0u, 4294967295u, u_input.a) >> (vec3<u32>(0u, u_input.a, 115384u) % vec3<u32>(32u))), min(max(vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(50238u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), reverseBits(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(u_input.a, 12u)])))), vec3<bool>(var_0.x, false, func_3(~4294967295u))), var_0.x);
    var_0 = vec2<bool>(true, all(select(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, false), false), !vec3<bool>(true, false, var_0.x), false), vec3<bool>(true, var_0.x, true), false | any(vec4<bool>(false, var_0.x, true, var_0.x)))));
    return true;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_3 {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return Struct_3(-13646i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 12u)], ~9933u, vec3<bool>(false, func_1() == any(vec3<bool>(true, true, true)), true), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(104378u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31393u, 12u)], 12u)]) >> (~vec4<u32>(38534u, u_input.a, 1u, 24120u) % vec4<u32>(32u))), vec4<u32>(~(~global0[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_clamp_u32(1u, 4294967295u, 27621u) ^ ~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 0u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(40799u, 12u)]), vec2<u32>(10827u, global0[_wgslsmith_index_u32(19571u, 12u)])), 4294967295u))));
    global0 = array<u32, 12>();
    var_0 = func_4(58287u, _wgslsmith_dot_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(35035u, 12u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(9753u, u_input.a, u_input.a, 477u), max(vec4<u32>(11838u, 0u, 4294967295u, u_input.a), vec4<u32>(65445u, 0u, 31607u, global0[_wgslsmith_index_u32(u_input.a, 12u)]))), _wgslsmith_dot_vec3_u32(vec3<u32>(22826u, u_input.a, 4294967295u) >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 12u)]) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1356u, 12u)], 12u)], 52698u, 7890u) >> (vec3<u32>(2100u, 0u, u_input.a) % vec3<u32>(32u)))), ~vec3<u32>(4294967295u, ~u_input.a, countOneBits(1u))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), func_3(1u)), vec3<bool>(any(vec2<bool>(true, false)), true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)] == 27262u), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), ~_wgslsmith_add_u32(1u, 0u) <= ~_wgslsmith_div_u32(u_input.a, u_input.a)), ~(~min(~vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), max(vec4<u32>(global0[_wgslsmith_index_u32(0u, 12u)], u_input.a, u_input.a, 4294967295u), vec4<u32>(37496u, 4294967295u, 0u, 4294967295u)))));
    var_0 = func_4(_wgslsmith_dot_vec2_u32(~abs(firstLeadingBit(vec2<u32>(3891u, global0[_wgslsmith_index_u32(57017u, 12u)]))), abs(vec2<u32>(~45134u, 4294967295u))), 76385u, !vec3<bool>(true, !func_3(u_input.a), all(vec3<bool>(true, false, true)) != false), vec4<u32>(13730u, reverseBits(~0u), 18193u, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(22016u, 10822u), 12u)])) << (~vec4<u32>(u_input.a, u_input.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], 96804u), vec4<u32>(33026u, 63074u, 4294967295u, 1u))) % vec4<u32>(32u)));
    var var_1 = firstTrailingBit(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 12u)]));
    var var_2 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(42653u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 24215u, u_input.a)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 12u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 12u)]), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(29958u, 12u)], global0[_wgslsmith_index_u32(36665u, 12u)], 8583u)))), countOneBits(45483u)), 12u)], u_input.a, !select(vec3<bool>(false, true, false), vec3<bool>(true, true, any(vec3<bool>(true, false, true))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), max(vec4<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), 1u, u_input.a), abs(vec4<u32>(13186u, u_input.a, u_input.a, 19920u))) | firstLeadingBit(~firstTrailingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47431u, 12u)], 12u)], 12u)], 4294967295u, u_input.a))));
    var var_3 = Struct_1(-countOneBits(-2147483647i), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-257f, -831f), vec2<f32>(1866f, -400f))))), vec3<f32>(197f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(424f, -178f)), _wgslsmith_f_op_f32(floor(1255f))))), -528f), firstTrailingBit((var_2.a << (u_input.a % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, -2147483647i), vec2<i32>(-1i, var_0.a))) & -41033i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_3.c.x, var_3.d.x)), _wgslsmith_f_op_f32(1258f + -554f), _wgslsmith_f_op_f32(var_3.c.x * 1782f), -488f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-674f)), -916f), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-13661i, 39742i, -19277i, 7027i), vec4<i32>(41465i, -29615i, 0i, var_2.a))) & vec4<i32>(-var_0.a, _wgslsmith_sub_i32(-var_0.a, -20612i & var_3.a), abs(~var_2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), -vec2<i32>(-182i, 2147483647i))), var_3.d);
}

