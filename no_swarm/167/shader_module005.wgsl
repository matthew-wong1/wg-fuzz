struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 18>;

var<private> global2: vec3<u32> = vec3<u32>(27327u, 0u, 1u);

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-1000f, -1500f, -279f), -317f, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    return select(all(vec2<bool>(select(arg_1.x, arg_1.x, false), !any(vec2<bool>(false, true)))), (_wgslsmith_div_i32(-51151i, global0.c.x) | arg_0.c.x) != (85438i | (-6693i >> (abs(u_input.a) % 32u))), !arg_1.x);
}

fn func_2() -> u32 {
    let var_0 = select(select(vec4<bool>(true, func_3(Struct_1(0u, global3.a.x, vec2<i32>(-1391i, -2702i), global0.d, global0.e), vec2<bool>(true, false), global1[_wgslsmith_index_u32(select(global3.c, global2.x, false), 18u)]), any(vec2<bool>(true, true)), !select(false, true, true)), vec4<bool>(all(vec3<bool>(false, false, true)), !(u_input.a < global3.c), true, true), false), vec4<bool>(true, any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), true)), !any(vec2<bool>(true, true)), any(vec2<bool>(true, true))), select(vec4<bool>(false, true, true, (global0.c.x == 2147483647i) | any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(global2.x & global3.c, ~41994u) > 16704u));
    global0 = Struct_1(1u, global3.a.x, -(~(-(~vec2<i32>(global0.c.x, global0.c.x)))), abs(max(global0.d, global0.d ^ firstTrailingBit(global0.d))), _wgslsmith_f_op_f32(global0.e * 2137f));
    var var_1 = abs(~(((6147u & global2.x) & abs(30004u)) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.x, 1u), ~21826u) % 32u)));
    var var_2 = Struct_1(firstLeadingBit(4294967295u & _wgslsmith_mult_u32(global0.d.x, global0.d.x)) | (global2.x << (u_input.a % 32u)), -557f, _wgslsmith_add_vec2_i32(~(~vec2<i32>(global0.c.x, global0.c.x)), firstTrailingBit(-global0.c)), global0.d, _wgslsmith_f_op_f32(-global3.b));
    global0 = Struct_1(~(~firstLeadingBit(~62585u)), var_2.e, abs(_wgslsmith_sub_vec2_i32(global0.c, -vec2<i32>(2147483647i, var_2.c.x) ^ firstLeadingBit(vec2<i32>(global0.c.x, var_2.c.x)))), ~(vec3<u32>(0u, _wgslsmith_div_u32(24939u, global3.c), 35027u) ^ var_2.d), 1000f);
    return 9948u;
}

fn func_1() -> vec4<u32> {
    var var_0 = -(max(~(global0.c.x & global0.c.x), reverseBits(~1i)) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.c, _wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x, 2401i), vec2<i32>(global0.c.x, 0i))), global0.c.x | 1i, _wgslsmith_clamp_i32(firstTrailingBit(-67960i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 1i, -2147483647i, global0.c.x), vec4<i32>(0i, global0.c.x, -1i, -1i)), global0.c.x ^ 21469i)));
    let var_1 = ~global0.c;
    var var_2 = ~(~_wgslsmith_clamp_u32(~u_input.a, 51257u, ~reverseBits(21276u)));
    var_0 = 19358i;
    var var_3 = Struct_1(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-416f))), var_1, vec3<u32>(~(max(1u, global2.x) ^ ~62424u), abs(_wgslsmith_sub_u32(~u_input.a, u_input.a)), 35456u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-445f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - global0.b))));
    return max(vec4<u32>(_wgslsmith_div_u32(global0.d.x, global2.x << (_wgslsmith_mult_u32(43717u, 1u) % 32u)), 0u, var_3.d.x, ~(_wgslsmith_add_u32(global0.a, 4294967295u) << (global0.d.x % 32u))), ~(~vec4<u32>(12201u, _wgslsmith_mod_u32(13422u, global3.c), ~u_input.a, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), 594f)) + global3.b), ~((global2.x << (global3.c % 32u)) ^ ~1u));
    var var_1 = ~(~(select(vec4<u32>(16901u, 13198u, global3.c, u_input.a), vec4<u32>(4294967295u, var_0.c, var_0.c, 32699u), vec4<bool>(true, true, true, true)) << ((select(vec4<u32>(u_input.a, 35144u, 20958u, 41440u), vec4<u32>(global3.c, var_0.c, global0.a, 18873u), false) >> (func_1() % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = max(select(vec4<u32>(abs(u_input.a), ~1u, abs(~0u), ~0u << (u_input.a % 32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c, 1u, 1u, global3.c), func_1()) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 104701u, 140265u, 4294967295u), vec4<u32>(4294967295u, var_0.c, var_0.c, var_0.c)), vec4<u32>(53927u, global2.x, 18747u, global2.x)) % vec4<u32>(32u)), !(2255f >= _wgslsmith_f_op_f32(global3.b * global3.b))), ~abs(~vec4<u32>(0u, 38267u, global2.x, var_1.x)));
    global0 = Struct_1(~_wgslsmith_mult_u32(~_wgslsmith_add_u32(global3.c, 0u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.a.x))), firstTrailingBit(global0.c), global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(min(global3.b, _wgslsmith_f_op_f32(f32(-1f) * -1271f)))));
    let var_3 = true;
    let var_4 = vec2<i32>(-global0.c.x, global0.c.x);
    global2 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, global2.x, 1u ^ func_1().x)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(17672u, var_0.c, 125473u)), ~vec3<u32>(0u, global3.c, 53813u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, var_0.c, 158859u), vec3<u32>(0u, 70844u, 39310u)))));
    var_1 = (~var_2 | ~var_2) & firstTrailingBit(select(~vec4<u32>(128371u, 3629u, var_1.x, u_input.a) & var_2, var_2 & vec4<u32>(71278u, u_input.a, var_1.x, global2.x), -global0.c.x <= _wgslsmith_mod_i32(var_4.x, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-vec3<i32>(abs(global0.c.x), ~global0.c.x, 36072i), vec3<i32>(_wgslsmith_sub_i32(-7335i, _wgslsmith_sub_i32(var_4.x, 1i)), var_4.x, 42048i)), vec3<i32>(-(1i << (~4294967295u % 32u)), var_4.x, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), ~global0.c.x)), select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_4.x, var_4.x, global0.c.x), vec3<i32>(var_4.x, var_4.x, global0.c.x)) >> (vec3<u32>(global0.a, 1273u, var_1.x) % vec3<u32>(32u))), ~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.x, -2147483647i, -2147483647i), vec3<i32>(var_4.x, global0.c.x, -60333i), vec3<i32>(20457i, -1i, 48199i))), var_3), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1230f))), _wgslsmith_f_op_f32(ceil(global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(108f, -421f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(global3.a.x - global3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global3.b, var_0.b)))));
}

