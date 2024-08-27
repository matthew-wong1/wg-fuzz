struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(51787i, 1i, 0i)), Struct_2(vec3<i32>(-5742i, -16638i, 57442i)), Struct_2(vec3<i32>(-14451i, 41269i, 16268i)), Struct_2(vec3<i32>(-8442i, 34050i, -6506i)), Struct_2(vec3<i32>(0i, -8831i, -44192i)), Struct_2(vec3<i32>(43716i, 2147483647i, 2147483647i)), Struct_2(vec3<i32>(-1i, 0i, -23854i)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_2(vec3<i32>(-30263i, 2147483647i, i32(-2147483648))), Struct_2(vec3<i32>(-37584i, 1434i, 1i)), Struct_2(vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_2(vec3<i32>(52300i, -55912i, i32(-2147483648))), Struct_2(vec3<i32>(31400i, -1i, 901i)), Struct_2(vec3<i32>(1i, 33463i, 21069i)), Struct_2(vec3<i32>(-12604i, 1i, 1i)), Struct_2(vec3<i32>(6899i, 12443i, 19905i)), Struct_2(vec3<i32>(0i, 1i, 15087i)), Struct_2(vec3<i32>(1i, -16501i, 37199i)), Struct_2(vec3<i32>(14010i, 0i, -21890i)), Struct_2(vec3<i32>(-1420i, 1i, -20353i)), Struct_2(vec3<i32>(29190i, -61137i, -6595i)), Struct_2(vec3<i32>(-21627i, 9690i, 35249i)));

var<private> global1: array<f32, 29>;

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 22>();
    let var_0 = min(22451u, 50825u);
    var var_1 = 0i;
    let var_2 = select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), true);
    global1 = array<f32, 29>();
    return firstTrailingBit(_wgslsmith_add_u32(u_input.c, (max(u_input.c, var_0) ^ 4294967295u) << (0u % 32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec3<u32> {
    var var_0 = Struct_4(~_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1, -arg_3.x), arg_1));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 22u)];
    global1 = array<f32, 29>();
    var var_2 = Struct_4(arg_2);
    global0 = array<Struct_2, 22>();
    return vec3<u32>(_wgslsmith_add_u32(~(~func_3()), u_input.b.x), _wgslsmith_add_u32(u_input.b.x, ~4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 0u), ~u_input.b)), 0u | u_input.c));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(abs(countOneBits(1u)), u_input.c, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a, 1418u, max(34891u, u_input.a)) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), func_2(vec4<f32>(global1[_wgslsmith_index_u32(arg_1.a, 29u)], arg_1.b.c, arg_1.b.c, arg_1.b.a), -32519i, arg_1.b.b.x, vec3<i32>(-27155i, arg_1.b.b.x, 1i))), max(vec3<u32>(arg_1.a, 1u, arg_1.a), ~countOneBits(vec3<u32>(6181u, u_input.c, arg_1.c.x)))));
    global0 = array<Struct_2, 22>();
    return arg_0;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    let var_0 = ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-16084i, 46955i), vec2<i32>(arg_0.a, -14458i)), arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 14844i), vec2<i32>(-27924i, arg_0.a)), -arg_0.a), vec4<i32>(firstLeadingBit(-2531i), arg_0.a ^ arg_0.a, -5856i >> (arg_2 % 32u), arg_0.a), firstLeadingBit(vec4<i32>(arg_0.a, arg_0.a, 1i, -8760i) >> (vec4<u32>(0u, u_input.c, 4294967295u, arg_2) % vec4<u32>(32u)))));
    let var_1 = global0[_wgslsmith_index_u32(6563u, 22u)];
    let var_2 = vec2<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), abs(~(-_wgslsmith_mod_vec2_i32(var_0.yz, vec2<i32>(2147483647i, var_0.x)))), -455f);
    var var_4 = Struct_3(_wgslsmith_div_u32(4294967295u, u_input.b.x), global2[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(1u, arg_2), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 29u)], -1257f, arg_1.x, 888f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(349f, 1000f, var_3.a, arg_1.x)))), func_1(func_1(Struct_4(9557i), Struct_3(4294967295u, Struct_1(-210f, vec2<i32>(32708i, arg_0.a), -147f), u_input.b)), Struct_3(arg_2, global2[_wgslsmith_index_u32(arg_2, 7u)], u_input.b)).a, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1.a.x, var_3.b.x)), vec2<i32>(var_1.a.x, -2147483647i)), -var_0.zwz).x), 7u)], countOneBits(reverseBits(select(u_input.b, u_input.b, vec2<bool>(true, var_2.x)))));
    return var_4.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 7u)];
    let var_1 = firstLeadingBit(20752u);
    global1 = array<f32, 29>();
    var var_2 = ~_wgslsmith_mod_u32(u_input.a, 0u);
    var var_3 = -vec3<i32>(firstLeadingBit(var_0.b.x), -(~(-27315i)), 1i) & -vec3<i32>(func_4(func_1(Struct_4(var_0.b.x), Struct_3(0u, Struct_1(-2776f, var_0.b, var_0.c), u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_1, 29u)], global1[_wgslsmith_index_u32(1u, 29u)])), var_1), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 1095i, var_0.b.x), vec3<i32>(var_0.b.x, 1i, -2147483647i)), vec3<i32>(0i, 37160i, -2147483647i) & vec3<i32>(10603i, -1i, var_0.b.x)), ~0i);
    var var_4 = abs(var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(737f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2146f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -957f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-255f, var_0.a, var_0.c), vec3<f32>(1039f, global1[_wgslsmith_index_u32(43738u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)])) - vec3<f32>(1740f, var_0.c, -1288f)))), _wgslsmith_sub_i32(0i, -32581i), ~u_input.b.x, ~(~(vec4<u32>(u_input.b.x, var_1, 30696u, var_1) << (vec4<u32>(9375u, 13797u, var_1, 94397u) % vec4<u32>(32u))) << (vec4<u32>(abs(var_1), 33327u << (var_1 % 32u), ~var_1, var_1) % vec4<u32>(32u))));
}

