struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.b;
    global0 = array<Struct_2, 3>();
    let var_1 = arg_2.b;
    var var_2 = _wgslsmith_add_u32(min(max(~(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(6310u, 1567u, 29422u, 0u))), ~_wgslsmith_clamp_u32(0u, 1u, 0u) >> (1u % 32u)), min(reverseBits(_wgslsmith_div_u32(41620u, 16836u)), ~(~2729u)) << (firstTrailingBit(_wgslsmith_sub_u32(1u, 1u)) % 32u));
    var var_3 = min(firstLeadingBit(vec3<i32>(reverseBits(abs(20543i)), -abs(1i), u_input.c)), abs(~vec3<i32>(~var_0.c.x, _wgslsmith_clamp_i32(3522i, var_1.c.x, var_1.a.x), -20100i)));
    return var_0.c.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_add_i32(-40919i, 1i) ^ (max(u_input.a.x, u_input.e) ^ _wgslsmith_mod_i32(u_input.b, 0i)), -(func_3(arg_0.x, true, Struct_2(arg_0.x, Struct_1(vec4<i32>(u_input.e, u_input.e, 50754i, u_input.d.x), false, vec2<i32>(u_input.b, u_input.d.x)), vec2<i32>(u_input.b, u_input.c))) << (~65382u % 32u)), 1i, ~_wgslsmith_mult_i32(4521i, 23865i)), (-u_input.b > -1i) & (true & all(vec4<bool>(arg_0.x, false, arg_0.x, false))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.b), vec3<i32>(-2147483647i, u_input.e, u_input.c)), reverseBits(-2147483647i)) >> (~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 27617u), select(vec2<u32>(4294967295u, 52367u), vec2<u32>(1728u, 1u), arg_0.xz)) % vec2<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(~1u, 3u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~firstTrailingBit(52560u), ~(0u << (1u % 32u)), 49241u, ~_wgslsmith_sub_u32(0u, 0u))), vec4<u32>(39663u >> (reverseBits(firstTrailingBit(0u)) % 32u), 1u, ~0u, ~0u)), 3u)];
    global0 = array<Struct_2, 3>();
    var var_3 = 1u;
    return Struct_1(var_1.b.a, false, -vec2<i32>(~var_2.b.a.x | max(-1i, 1i), _wgslsmith_clamp_i32(12849i, 1i, var_2.b.c.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_1(func_2(vec4<bool>(all(!vec3<bool>(arg_0.b, arg_0.b, false)), true, true, any(vec3<bool>(false, arg_0.b, arg_0.b)))).a, true, ~(-arg_0.a.zx));
    var var_1 = 7210u;
    var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(~4294967295u), firstLeadingBit(firstTrailingBit(33773u))), 1u) & (_wgslsmith_mod_u32(~firstLeadingBit(1u), 19962u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(26396u, 0u) >> (select(vec2<u32>(4294967295u, 109213u), vec2<u32>(0u, 31773u), arg_0.b) % vec2<u32>(32u))) % 32u));
    global0 = array<Struct_2, 3>();
    return Struct_2(false, var_0, vec2<i32>(min(u_input.e, arg_0.c.x), abs(-37223i << (1u % 32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = func_4(func_2(select(vec4<bool>(!arg_2.x, true, false, true), vec4<bool>(arg_2.x, any(vec4<bool>(false, true, arg_2.x, false)), arg_2.x || arg_2.x, !arg_2.x), true)));
    let var_1 = func_2(vec4<bool>(var_0.a | any(select(vec3<bool>(arg_2.x, var_0.a, arg_2.x), arg_2.xzz, var_0.b.b)), var_0.a, !var_0.b.b, arg_2.x));
    let var_2 = arg_2.wx;
    var var_3 = -2147483647i;
    let var_4 = Struct_1(~vec4<i32>(select(-22550i, -2147483647i << (arg_3.x % 32u), !arg_2.x), arg_0.x, var_1.a.x, ~(-20847i)), var_0.a, vec2<i32>(-6967i & var_0.b.a.x, abs(-(~var_1.a.x))));
    return arg_3.yzz;
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 174f;
    let var_1 = func_4(func_4(arg_3).b).b;
    var var_2 = vec3<u32>(1u, _wgslsmith_div_u32(abs(~0u), 37748u << ((1u & _wgslsmith_sub_u32(arg_2.x, 12158u)) % 32u)), ~(~_wgslsmith_clamp_u32(~4294967295u, ~105731u, ~arg_2.x)));
    let var_3 = select(vec2<bool>(!arg_3.b, var_1.b), select(select(select(vec2<bool>(false, false), vec2<bool>(arg_1, true), 16696i >= u_input.b), !(!vec2<bool>(false, arg_3.b)), !(!vec2<bool>(false, var_1.b))), !(!(!vec2<bool>(arg_3.b, true))), vec2<bool>(any(select(vec4<bool>(false, true, arg_3.b, false), vec4<bool>(var_1.b, arg_1, false, arg_1), false)), false)), false);
    var_2 = vec3<u32>(_wgslsmith_sub_u32(~(~arg_2.x), ~(~1u)), abs(max(~(arg_2.x ^ 732u), ~countOneBits(4294967295u))), 16605u);
    return func_2(!vec4<bool>(-u_input.d.x == _wgslsmith_mult_i32(u_input.e, 2147483647i), var_1.b, all(vec2<bool>(true, var_1.b)), _wgslsmith_f_op_f32(1575f * var_0) != _wgslsmith_f_op_f32(-var_0)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(abs(~arg_1.x), 3u)];
    let var_1 = -arg_0.b.a;
    var var_2 = true;
    var var_3 = arg_2.c.x ^ ~func_2(!vec4<bool>(var_0.a, var_0.b.b, false, arg_0.b.b)).a.x;
    var var_4 = vec2<bool>(true, func_2(select(!vec4<bool>(arg_2.a, false, true, true), select(select(vec4<bool>(true, var_0.a, true, var_0.b.b), vec4<bool>(var_0.b.b, var_0.a, arg_2.a, true), vec4<bool>(true, var_0.b.b, arg_0.b.b, false)), vec4<bool>(var_0.b.b, false, false, true), true), !select(vec4<bool>(true, true, true, arg_0.b.b), vec4<bool>(arg_2.b.b, var_0.b.b, var_0.a, false), vec4<bool>(var_0.a, arg_0.a, arg_0.b.b, arg_2.b.b)))).b);
    return StorageBuffer(u_input.d.x, -2147483647i, 0i, abs(arg_0.b.c) & ~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.b, -2147483647i)), arg_2.b.c >> (vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1534f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, -259f))) + -252f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_2(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), Struct_1((vec4<i32>(-1i, -22969i, u_input.d.x, -34943i) & vec4<i32>(u_input.d.x, 40246i, u_input.a.x, u_input.d.x)) | ~vec4<i32>(46148i, u_input.a.x, u_input.b, u_input.c), true, min(u_input.d, u_input.d | vec2<i32>(-1i, u_input.a.x))), u_input.d), firstTrailingBit(abs(~(~vec4<u32>(8999u, 4294967295u, 20908u, 1u)))), Struct_2(true, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1831f, -1224f, 1353f, 571f)), true, countOneBits(func_1(vec4<i32>(u_input.e, -5979i, u_input.b, u_input.c), vec3<u32>(13054u, 1u, 93478u), vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 0u, 1491u, 39324u))), Struct_1(-vec4<i32>(u_input.b, 13999i, -1i, u_input.e), true, u_input.a)), u_input.d));
}

