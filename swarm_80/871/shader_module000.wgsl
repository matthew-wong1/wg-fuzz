struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(16948i, 20173i, -1i, 0i), vec4<i32>(0i, i32(-2147483648), 1i, -12173i), vec4<i32>(40978i, 43503i, -1i, 0i), vec4<i32>(2147483647i, 5474i, 13248i, -1107i), vec4<i32>(8532i, -1i, 43885i, 34653i), vec4<i32>(59395i, 5437i, 1i, 2147483647i), vec4<i32>(19828i, 1827i, 2147483647i, 3350i), vec4<i32>(i32(-2147483648), -21405i, 2147483647i, 2147483647i), vec4<i32>(1i, 39034i, -1i, -42258i), vec4<i32>(-23394i, i32(-2147483648), 7072i, -1357i));

var<private> global2: array<Struct_2, 27>;

var<private> global3: vec4<f32> = vec4<f32>(-622f, -1315f, -1639f, 263f);

var<private> global4: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(0i, 0i, -48257i, 9513i)), ~vec4<i32>(-1i, 14896i, -1i, -2147483647i)), _wgslsmith_clamp_vec3_u32(u_input.a.wyy, u_input.a.yzy, firstTrailingBit(min(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b, 55781u, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -485f)), (vec3<i32>(~0i, i32(-1i) * -2147483647i, 1i) >> ((u_input.a.wxy | firstLeadingBit(u_input.a.wyx)) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(33492u, 1u, u_input.a.x)), vec3<u32>(~16255u, u_input.a.x, 1u)) % vec3<u32>(32u)), select(true, true, false));
    let var_1 = var_0.b.yz;
    let var_2 = -1246f;
    var var_3 = abs(min(~(~vec3<i32>(-33274i, 4471i, -5718i)), _wgslsmith_sub_vec3_i32(vec3<i32>(35005i, 11851i, var_0.b.x) >> (vec3<u32>(var_0.a.b.x, u_input.b, var_0.a.b.x) % vec3<u32>(32u)), select(select(var_0.b, vec3<i32>(var_0.a.a, -1i, var_0.a.a), var_0.c), vec3<i32>(-2147483647i, -38522i, 1794i) ^ var_0.b, vec3<bool>(var_0.c, var_0.c, var_0.c)))));
    let var_4 = var_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1609f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> f32 {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x)))) * 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), 167f))))), -744f, _wgslsmith_f_op_f32(-global3.x));
    let var_0 = vec4<bool>(arg_1.x, !arg_1.x, false, true);
    var var_1 = global2[_wgslsmith_index_u32(45458u >> (arg_0.x % 32u), 27u)];
    let var_2 = 4294967295u;
    global4 = firstLeadingBit(~u_input.b);
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1() -> f32 {
    let var_0 = max(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, 0u), ~u_input.a.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), vec4<u32>(1u, 34849u, u_input.b, u_input.a.x)))), 10u)], global1[_wgslsmith_index_u32(14888u, 10u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 5u)], ~(~vec2<u32>(0u, 16154u))))));
    let var_2 = -383f;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(26849u, 37941u, 53420u), u_input.a.x), 10u)];
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, global3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = abs(~_wgslsmith_add_u32(~80393u, u_input.b));
    let var_2 = Struct_3(Struct_1(-1i, countOneBits(vec3<u32>(var_1, u_input.b, var_1)) >> (~_wgslsmith_add_vec3_u32(u_input.a.zwy, vec3<u32>(u_input.b, var_1, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - var_0) + _wgslsmith_f_op_f32(abs(global3.x))))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i, 0i, -2147483647i)) >> (~u_input.a.xxy % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(24489i), firstTrailingBit(-42164i), _wgslsmith_clamp_i32(25515i, -1i, -1i)), vec3<i32>(12653i, -7593i >> (var_1 % 32u), ~0i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(21430i, 6927i, -45703i), vec3<i32>(21234i, -2147483647i, 2147483647i)), ~(-7068i), ~25796i), countOneBits(firstLeadingBit(vec3<i32>(29272i, -18782i, -1i))))), all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), !all(vec4<bool>(true, false, true, false)))));
    let var_3 = Struct_1(-select(var_2.a.a, var_2.b.x, 1726f >= _wgslsmith_div_f32(var_0, -936f)), vec3<u32>(var_1, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 15596u), 8835u) | (~0u | _wgslsmith_div_u32(var_1, u_input.b)), var_2.a.b.x), var_2.a.c);
    global2 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.b.x << (var_3.b.x % 32u)));
}

