struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

var<private> global2: array<bool, 10>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = arg_0;
    global3 = Struct_2(arg_0.x);
    global2 = array<bool, 10>();
    let var_1 = countOneBits(u_input.b.zy);
    let var_2 = Struct_2(~(-var_1.x));
    return var_2;
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(21273u, 10u)];
    let var_1 = vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d, 1u), u_input.e.x), 10u)], true, global2[_wgslsmith_index_u32(u_input.d, 10u)], all(!select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 10u)], global2[_wgslsmith_index_u32(12924u, 10u)], global2[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-834f, -1071f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1443f)), _wgslsmith_f_op_f32(trunc(389f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1132f, 1023f)), _wgslsmith_f_op_f32(ceil(-1183f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1f + -1325f), -467f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-704f, -668f))) * vec2<f32>(-991f, -1596f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1146f, -997f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, 1899f)))))), false));
    global1 = false;
    let var_3 = u_input.d;
    return abs(var_3);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    global3 = Struct_2(u_input.c);
    global3 = func_2(~vec4<i32>(arg_0.x, firstTrailingBit(~(-1i)), arg_0.x, -39964i), vec3<u32>(21181u, arg_3.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(15316u, 47917u, u_input.d), vec3<u32>(56538u, 126435u, 1u)), ~u_input.e) | 1u), global2[_wgslsmith_index_u32(~0u, 10u)]);
    var var_0 = false;
    var var_1 = any(!select(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_3.a, 10u)]), select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 10u)], false), global2[_wgslsmith_index_u32(19551u, 10u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 10u)], global2[_wgslsmith_index_u32(u_input.d, 10u)])), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.d, 10u)], global2[_wgslsmith_index_u32(func_3(), 10u)]), select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(32873u, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(76549u, 10u)]), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
    let var_2 = vec4<f32>(-703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f - -292f)))) * -1943f), -1211f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(1703f - _wgslsmith_f_op_f32(f32(-1f) * -2172f)))));
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global3 = func_2(_wgslsmith_clamp_vec4_i32(select(-abs(vec4<i32>(u_input.b.x, global3.a, arg_3.a, arg_3.a)), -vec4<i32>(2147483647i, global3.a, -2147483647i, arg_3.a) | reverseBits(vec4<i32>(-1i, arg_3.a, -27149i, -1737i)), !select(vec4<bool>(global2[_wgslsmith_index_u32(3283u, 10u)], false, true, arg_2), vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 10u)], true, false, false))), reverseBits(-vec4<i32>(1i, 2147483647i, 42522i, 0i)) & vec4<i32>(arg_3.a ^ 1i, global0.a, 43224i, firstLeadingBit(u_input.c)), select(reverseBits(vec4<i32>(41539i, global3.a, global3.a, -69753i)), countOneBits(vec4<i32>(-9391i, 6518i, 46536i, -1i)), all(!vec4<bool>(arg_2, global2[_wgslsmith_index_u32(17917u, 10u)], global2[_wgslsmith_index_u32(u_input.d, 10u)], arg_2)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(u_input.e.x, u_input.d), _wgslsmith_mod_u32(~36029u, reverseBits(arg_0.a)), arg_0.a), _wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(17583u, u_input.d, 16790u), vec3<u32>(4294967295u, 77376u, u_input.d) << (u_input.e % vec3<u32>(32u))) << (~_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(0u, 42190u, arg_0.a)) % vec3<u32>(32u))), !(!global2[_wgslsmith_index_u32(arg_0.a, 10u)]));
    global2 = array<bool, 10>();
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(arg_0.a), ~func_3(), ~(u_input.d << (4294967295u % 32u))) >> (~_wgslsmith_sub_u32(_wgslsmith_mult_u32(42349u, arg_0.a), ~72558u) % 32u), 1u);
    var var_1 = vec2<bool>(arg_2 == select(global2[_wgslsmith_index_u32(~31889u, 10u)], true, all(vec4<bool>(arg_2, true, arg_2, global2[_wgslsmith_index_u32(93552u, 10u)]))), arg_2);
    var var_2 = countOneBits(min(max(abs(64852u), min(66735u, 63829u)), u_input.d)) & _wgslsmith_sub_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(7203u, arg_0.a, arg_0.a), vec3<u32>(u_input.e.x, arg_0.a, u_input.d))), _wgslsmith_add_u32(arg_0.a, _wgslsmith_sub_u32(4294967295u, func_3())));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    var var_0 = arg_0;
    let var_1 = func_2(select(~vec4<i32>(0i, 1i, u_input.a, u_input.c), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, -1i, -30778i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, global0.a, u_input.b.x))), true) & (_wgslsmith_div_vec4_i32(vec4<i32>(8631i, 2147483647i, global3.a, -8120i), vec4<i32>(0i, -1i, arg_1.a, -2147483647i) << (vec4<u32>(u_input.e.x, 4294967295u, 107713u, 0u) % vec4<u32>(32u))) << (max(~vec4<u32>(arg_0.a, 33939u, u_input.d, var_0.a), vec4<u32>(u_input.e.x, var_0.a, 93160u, 36426u)) % vec4<u32>(32u))), vec3<u32>(u_input.e.x, var_0.a, var_0.a), global2[_wgslsmith_index_u32(4294967295u, 10u)]);
    let var_2 = !select(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(60339u, 10u)], global2[_wgslsmith_index_u32(u_input.d, 10u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(4522u, 10u)], global2[_wgslsmith_index_u32(2577u, 10u)], false))), vec3<bool>(!global2[_wgslsmith_index_u32(u_input.e.x, 10u)] || true, true, true), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 10u)], global2[_wgslsmith_index_u32(32473u, 10u)], false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 10u)], true, true), true), vec3<bool>(true, true, true), true));
    return Struct_2(_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.yy));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 10>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, _wgslsmith_f_op_f32(round(565f)), 292f, _wgslsmith_f_op_f32(896f * 1044f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(808f, 1000f, -1000f, -459f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, 1025f, 313f, -982f)))))));
    var var_2 = Struct_2(reverseBits(-_wgslsmith_mod_i32(u_input.a, global0.a) & (firstTrailingBit(u_input.b.x) | -51799i)));
    var_2 = Struct_2(~44776i);
    var var_3 = func_5(func_4(Struct_1(_wgslsmith_mult_u32(2577u, firstLeadingBit(u_input.e.x))), Struct_2(-11029i), 1i != -func_1(vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.b.x), u_input.b, 40088i, Struct_1(18889u)), Struct_2(-firstLeadingBit(1i))), func_2(vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, var_2.a)), 1i, _wgslsmith_sub_i32(var_2.a, -16362i), global3.a), vec3<u32>(99u, 13663u, 1u), global2[_wgslsmith_index_u32(78571u, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

