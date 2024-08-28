struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    global0 = array<f32, 25>();
    let var_0 = arg_1;
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -817f);
    return ~(~_wgslsmith_mult_u32(var_0.c.x, arg_0.x));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(min(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 8892i), vec2<i32>(u_input.b.x, 45729i)), vec2<i32>(select(6351i, 35903i, false), 1i)), min(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.b.xz, u_input.a.zz), min(vec2<i32>(u_input.a.x, 50849i), vec2<i32>(0i, u_input.b.x)), select(vec2<i32>(u_input.a.x, 9751i), u_input.a.wx, true)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -u_input.b.x))), !(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(30280u, 25u)], -910f), -439f)) <= global0[_wgslsmith_index_u32(1u, 25u)]));
    let var_2 = false;
    var_0 = 2147483647i;
    var var_3 = vec2<f32>(231f, -885f);
    return var_1;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(reverseBits(u_input.b.yz), true);
    global0 = array<f32, 25>();
    var var_1 = func_2();
    let var_2 = var_0.a.x;
    var var_3 = Struct_2(var_0.a, func_2(), vec4<u32>(~1u, firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(30599u, 0u), reverseBits(41722u), 1u)), 42046u, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 35129u, 4294967295u, 52821u), vec4<u32>(101507u, 796u, 73u, 38124u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4974u, 82484u, 1u), vec3<u32>(1u, 21210u, 29861u)), abs(vec3<u32>(4294967295u, 0u, 0u))), !all(vec4<bool>(var_0.b, var_0.b, var_1.b, false)))));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(abs(4294967295u), var_3.c.x, _wgslsmith_add_u32(28592u, ~var_3.c.x), ~(~0u)), ~(vec4<u32>(~var_3.c.x, ~var_3.c.x, var_3.c.x, 42323u) ^ vec4<u32>(var_3.c.x, countOneBits(var_3.c.x), ~var_3.c.x, var_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(-u_input.b.zy), (_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f * global0[_wgslsmith_index_u32(4294967295u, 25u)]))) & true);
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~firstTrailingBit(~vec3<u32>(98462u, 57658u, 1u)), ~(reverseBits(vec3<u32>(34460u, 34842u, 91789u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1702u, 59189u), vec3<u32>(38657u, 0u, 1u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<u32>(~1u ^ func_1(vec2<u32>(13431u, 6187u), Struct_2(vec2<i32>(var_0.a.x, u_input.b.x), Struct_1(u_input.b.xx, var_0.b), vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(vec3<bool>(false, false, var_0.b), vec2<u32>(38203u, 1u))), 39298u, 1u), abs(vec3<u32>(reverseBits(28803u), 87567u, countOneBits(70502u)))));
    var var_2 = Struct_1(u_input.a.yz, var_0.b);
    var var_3 = var_0.b;
    var_0 = func_2();
    var_0 = Struct_1(reverseBits(vec2<i32>(-var_2.a.x, 1i)), abs(0u) == var_1.x);
    var var_4 = Struct_2(select(-(var_2.a & vec2<i32>(u_input.a.x, var_2.a.x)) ^ var_2.a, (vec2<i32>(0i, u_input.b.x) >> (var_1.zx % vec2<u32>(32u))) >> (var_1.xy % vec2<u32>(32u)), all(select(!vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, true), !vec2<bool>(var_2.b, var_0.b)))), func_2(), abs(func_3()) >> ((vec4<u32>(var_1.x, 537u << (0u % 32u), ~var_1.x, var_1.x << (var_1.x % 32u)) >> (vec4<u32>(firstLeadingBit(1u), 0u, ~var_1.x, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_5 = var_4.b;
    let var_6 = Struct_3(vec3<bool>(true, any(select(select(vec3<bool>(var_2.b, true, var_2.b), vec3<bool>(false, var_2.b, var_0.b), var_2.b), select(vec3<bool>(var_2.b, var_5.b, true), vec3<bool>(true, var_4.b.b, true), vec3<bool>(true, true, false)), !vec3<bool>(var_5.b, var_2.b, var_2.b))), true), func_3().xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, var_6.b.x), 25u)]), firstTrailingBit(~var_4.c.x), vec3<u32>(var_6.b.x, max(~_wgslsmith_mod_u32(var_1.x, 1u), 111412u), var_4.c.x ^ firstTrailingBit(func_3().x)));
}

