struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(7357i, i32(-2147483648));

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<u32>, 2>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = vec2<i32>(max(_wgslsmith_dot_vec2_i32(~u_input.c, -vec2<i32>(global0.x, global0.x)), _wgslsmith_div_i32(-10840i << (u_input.a % 32u), countOneBits(global1.x))) >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 22283u, 0u)), vec3<u32>(~53532u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(10767u, 0u)), ~1u)) % 32u), min(1573i, u_input.b));
    var_0 = ~vec2<i32>(max(_wgslsmith_mod_i32(global1.x, 0i), 2147483647i), select(min(global0.x, 9066i), _wgslsmith_dot_vec2_i32(global1.xx, vec2<i32>(2847i, -17468i)), any(vec2<bool>(true, arg_0)))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u ^ min(u_input.a, 39228u), 1u), _wgslsmith_mult_vec2_u32(~vec2<u32>(52401u, u_input.a), ~vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u));
    var var_1 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>((u_input.a << (4294967295u % 32u)) | 9034u, _wgslsmith_mult_u32(4294967295u, u_input.a), reverseBits(~u_input.a)), global2[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2137f + 319f), _wgslsmith_f_op_f32(407f + -417f))))));
    var var_2 = ~min((vec4<u32>(42276u, 35876u, u_input.a, 53831u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) ^ ~max(vec4<u32>(4294967295u, 0u, 0u, var_1.a.x), vec4<u32>(u_input.a, var_1.a.x, u_input.a, var_1.a.x)), vec4<u32>(~(var_1.a.x >> (u_input.a % 32u)), abs(firstLeadingBit(44179u)), _wgslsmith_add_u32(var_1.a.x, 1u), firstLeadingBit(var_1.a.x)));
    var_1 = Struct_3(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(var_1.a.x, u_input.a) | u_input.a, firstTrailingBit(u_input.a ^ u_input.a), 82602u)), _wgslsmith_f_op_f32(-var_1.b));
    return 1013f <= _wgslsmith_f_op_f32(-1544f + _wgslsmith_f_op_f32(floor(-1597f)));
}

fn func_2() -> bool {
    let var_0 = all(vec4<bool>(false, true || (false != func_3(true)), 18909u > u_input.a, false));
    let var_1 = Struct_1(true);
    global2 = array<vec3<u32>, 2>();
    global2 = array<vec3<u32>, 2>();
    let var_2 = select(-vec4<i32>(10870i, ~_wgslsmith_clamp_i32(global1.x, 2147483647i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(23959i, -10260i, 33149i, u_input.c.x), vec4<i32>(-2147483647i, 2147483647i, global1.x, global1.x)) & -39564i, select(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.x, -1i), global1.yxy), false)), vec4<i32>(-5968i, ~(~(-4784i)), firstLeadingBit(global1.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-u_input.b, reverseBits(global0.x)), ~global0.x)), select(select(!select(vec4<bool>(var_1.a, true, var_0, true), vec4<bool>(var_0, true, var_0, false), var_0), !select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(false, true, var_1.a, true), true), vec4<bool>(true, false, true, u_input.c.x <= 23852i)), !(!(!vec4<bool>(var_0, false, var_0, var_1.a))), vec4<bool>(var_1.a, true, true, var_0)));
    return !all(vec4<bool>(global0.x == 2147483647i, var_0, !any(vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(1u, 4294967295u, 1u) < 37669u));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = !vec4<bool>(!(!(arg_1 >= arg_0.x)), func_2(), (~(-49574i) | global1.x) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.x, 1i), firstLeadingBit(global1.wxz)), all(vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-1i, select(0i, arg_2, var_0.x), ~u_input.b, select(arg_2, 26794i, false))), vec4<i32>(-(~26733i), arg_2, firstTrailingBit(~global0.x), global1.x));
    let var_1 = ~vec4<i32>(min(u_input.c.x ^ global0.x, u_input.b >> (10987u % 32u)) >> (~_wgslsmith_div_u32(0u, u_input.a) % 32u), 2147483647i, u_input.b, u_input.c.x ^ -2147483647i);
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(8650u), 2u)];
    global1 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_1.x, arg_2, -2147483647i, 2147483647i), vec4<i32>(-2698i, _wgslsmith_add_i32(1i, 0i), global0.x >> (0u % 32u), u_input.c.x)) & min(~vec4<i32>(u_input.c.x, 7888i, var_1.x, global1.x), vec4<i32>(global1.x | global0.x, u_input.c.x, global1.x, u_input.b ^ global1.x)));
    return StorageBuffer(vec3<i32>(firstLeadingBit(-16512i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global1.x), global1.xx), -1806i), 2147483647i) | _wgslsmith_sub_vec3_i32(select(vec3<i32>(9952i, global0.x, 1i), -var_1.www, true || var_0.x), firstLeadingBit(~vec3<i32>(u_input.b, arg_2, u_input.b))), vec4<u32>(arg_3.a.x, reverseBits(u_input.a ^ 68753u), _wgslsmith_sub_u32(~4294967295u, min(u_input.a, 4294967295u)), ~4294967295u) & (select(~vec4<u32>(39415u, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 4294967295u, 4294967295u), true) | max(~vec4<u32>(1u, 0u, u_input.a, 1u), firstTrailingBit(vec4<u32>(u_input.a, 3670u, var_2.x, 25401u)))), var_1 << ((vec4<u32>(~u_input.a, 1u, _wgslsmith_add_u32(21773u, var_2.x), ~13494u) ^ ((vec4<u32>(arg_3.a.x, 0u, 5065u, 4294967295u) >> (vec4<u32>(87784u, 35865u, 4294967295u, arg_3.a.x) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(u_input.a, u_input.a, var_2.x, var_2.x)) % vec4<u32>(32u)))) % vec4<u32>(32u)), ~_wgslsmith_sub_u32(arg_3.a.x, var_2.x), ~(~(~vec4<u32>(arg_3.a.x, 45285u, var_2.x, 69013u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a, 4294967295u, ~u_input.a);
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(abs(min(21769u, u_input.a)), 2u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(133f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f) - _wgslsmith_f_op_f32(round(-311f))))));
    var var_2 = _wgslsmith_sub_u32(~8217u, var_0.x);
    let var_3 = vec4<i32>(-1i) * -((_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, u_input.c.x, -3942i, -64733i), vec4<i32>(-2147483647i, global1.x, global0.x, -1i)) << (~vec4<u32>(30805u, var_1.a.x, 14891u, 544u) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.b, u_input.b, u_input.b), vec4<i32>(global1.x, 36256i, global1.x, -21084i) ^ vec4<i32>(-65985i, 37947i, 1i, 0i)));
    var var_4 = Struct_1(false);
    let x = u_input.a;
    s_output = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))) - -110f), var_1.b), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), 19952i, var_1);
}

