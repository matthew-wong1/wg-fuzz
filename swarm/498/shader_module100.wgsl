struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: vec2<u32> = vec2<u32>(24676u, 24969u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, select(global1.x, arg_2.c, false)), ~vec2<u32>(4294967295u, 1u)));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_add_i32(-u_input.b, 2147483647i);
    var var_3 = _wgslsmith_sub_u32(~arg_2.c, var_0.x);
    var var_4 = _wgslsmith_mod_vec4_i32(-(~vec4<i32>(1i, arg_2.a, -1i, global0[_wgslsmith_index_u32(32820u, 25u)]) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c, arg_0, global1.x, u_input.a), vec4<u32>(28675u, 1u, 119674u, global1.x)) % vec4<u32>(32u))), ~(~select(vec4<i32>(2147483647i, var_1.b, -12503i, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], arg_2.a, var_1.b, 81437i), false))) >> (abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(15674u, u_input.a, 89155u, arg_0), vec4<u32>(1u, 1u, u_input.a, 60888u)) << (~vec4<u32>(var_0.x, var_0.x, arg_2.c, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_0.x << (4294967295u % 32u), countOneBits(4294967295u), abs(u_input.a), ~44713u), vec4<bool>(true, true, true, true))) % vec4<u32>(32u));
    return min(~(~(~(~arg_0))), _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, var_0.x), vec4<u32>(arg_2.c, global1.x, 0u, 0u))) & abs(vec4<u32>(73408u, arg_2.c, 1u, arg_0)), firstLeadingBit(abs(~vec4<u32>(global1.x, var_0.x, 4294967295u, arg_0)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    var var_0 = !(!(!arg_1));
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -785f);
    let var_3 = Struct_2(firstTrailingBit(i32(-1i) * -32562i), 1i, ~34063u);
    var var_4 = var_3;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(func_3(u_input.a, vec3<i32>(~(-2147483647i), 41823i << (global1.x % 32u), countOneBits(var_4.b)), var_3), 25u)], var_3.b, abs(var_3.a)), _wgslsmith_mod_vec3_i32((min(vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 25u)], 69306i), vec3<i32>(-35955i, 0i, var_4.b)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(var_3.c, 25u)], -1i), vec3<i32>(27108i, -1i, var_3.a))) ^ (firstLeadingBit(vec3<i32>(6016i, -2147483647i, global0[_wgslsmith_index_u32(global1.x, 25u)])) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 6078u, global1.x), vec3<u32>(global1.x, 1u, global1.x)) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, var_4.b) >> (vec3<u32>(4294967295u, 4294967295u, 37187u) % vec3<u32>(32u)), max(vec3<i32>(var_3.b, u_input.b, var_3.a), vec3<i32>(var_3.b, 27199i, 57997i)), -vec3<i32>(u_input.b, -1i, var_3.a))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = Struct_2(abs(0i), 1481i, ~u_input.a);
    let var_1 = -vec4<i32>(global0[_wgslsmith_index_u32(var_0.c, 25u)], func_2(Struct_1(_wgslsmith_f_op_f32(-1367f * 1258f)), vec4<bool>(arg_0 && true, arg_0, true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-353f, -1509f)), _wgslsmith_f_op_f32(885f + -1000f), arg_0 != arg_0))), max(-1494i, abs(-1i)), _wgslsmith_clamp_i32(~u_input.b, u_input.b, -u_input.b));
    global1 = countOneBits(~vec2<u32>(~global1.x, ~11598u)) << ((vec2<u32>(1u, _wgslsmith_clamp_u32(~11746u, _wgslsmith_add_u32(42454u, 1u), reverseBits(4294967295u))) << (countOneBits(~(~vec2<u32>(var_0.c, 57221u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c | _wgslsmith_mod_u32(var_0.c, global1.x >> (global1.x % 32u)), ~func_3(_wgslsmith_sub_u32(global1.x, global1.x), abs(var_1.wxz), Struct_2(-37648i, var_0.a, 1u)), _wgslsmith_mod_u32(5827u, _wgslsmith_mod_u32(var_0.c, global1.x)), 1u), vec4<u32>(var_0.c, abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(2859u, 4294967295u), vec2<u32>(global1.x, 5738u)))), 1u & _wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(44775u, var_0.c), _wgslsmith_sub_u32(u_input.a, 112586u), countOneBits(0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 1u), 4294967295u, countOneBits(var_0.c), abs(global1.x)), vec4<u32>(4294967295u, ~9033u, 1u, select(global1.x, u_input.a, false))) << (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 28941u), firstTrailingBit(4294967295u)), ~firstTrailingBit(u_input.a), _wgslsmith_mult_u32(global1.x, select(u_input.a, 27643u, arg_0)), 25811u) % vec4<u32>(32u)));
    var_2 = vec4<u32>(var_2.x, u_input.a, 56738u, global1.x | 0u);
    return 37485u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -26401i;
    let var_1 = func_1(false);
    let var_2 = Struct_2(u_input.b, abs(u_input.b >> (0u % 32u)), 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(-1152f * _wgslsmith_f_op_f32(-1960f + 419f));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(624f, ~var_1, -2147483647i, _wgslsmith_mult_vec2_i32(vec2<i32>(~13515i, u_input.b), select(~vec2<i32>(var_2.b, 15024i), ~vec2<i32>(u_input.b, -39897i), all(vec2<bool>(false, true)))) << (~(~select(vec2<u32>(var_1, 7291u), vec2<u32>(u_input.a, var_2.c), vec2<bool>(true, false))) % vec2<u32>(32u)), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(~(var_1 ^ global1.x), 25u)], global0[_wgslsmith_index_u32(46081u, 25u)]) | _wgslsmith_sub_i32(var_2.a, -2147483647i));
}

