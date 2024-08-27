struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-1i, 40288i, 16123i, -35503i), 95805u);

var<private> global1: array<bool, 19>;

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-38217i, 1i, i32(-2147483648)), vec3<i32>(15401i, 1i, 0i), vec3<i32>(21165i, 1i, 16767i), vec3<i32>(-69079i, -24437i, 2147483647i), vec3<i32>(0i, 4804i, -1i), vec3<i32>(-8351i, 1i, -42510i), vec3<i32>(i32(-2147483648), 29254i, 30613i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(1i, 89917i, i32(-2147483648)), vec3<i32>(2147483647i, -56654i, 12164i), vec3<i32>(20437i, -1i, 9018i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-10945i, 2147483647i, -32022i), vec3<i32>(0i, 11030i, 1i), vec3<i32>(-1i, 2755i, 42898i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-2668i, 1i, 34754i), vec3<i32>(15088i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 50734i, -1431i), vec3<i32>(i32(-2147483648), 30453i, -9371i), vec3<i32>(49559i, -15665i, -1i), vec3<i32>(3307i, 10212i, 27279i), vec3<i32>(54576i, 22172i, i32(-2147483648)), vec3<i32>(-9487i, 40865i, -4794i), vec3<i32>(-1i, 2450i, i32(-2147483648)), vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(0i, -23109i, 1i), vec3<i32>(4741i, -15010i, 13249i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    global1 = array<bool, 19>();
    let var_0 = arg_2;
    global2 = array<vec3<i32>, 29>();
    global0 = var_0;
    global2 = array<vec3<i32>, 29>();
    return u_input.b;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~43340u, func_1(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(42564u, 19u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0.b, 19u)], true, false), Struct_1(vec4<i32>(-1i, 8327i, -2147483647i, global0.a.x), u_input.d.x)), ~global0.b, 14498u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 74846u, 49935u), _wgslsmith_add_vec4_u32(u_input.d, u_input.d), ~vec4<u32>(global0.b, u_input.d.x, 1u, u_input.d.x))), ~(~(u_input.d | u_input.c))) >> (u_input.d % vec4<u32>(32u));
    global2 = array<vec3<i32>, 29>();
    let var_1 = Struct_1(-global0.a, abs(u_input.c.x));
    return !global1[_wgslsmith_index_u32(u_input.c.x, 19u)];
}

fn func_3() -> f32 {
    var var_0 = Struct_1(global0.a, ~28952u);
    var var_1 = ~(~abs(1u));
    var var_2 = global1[_wgslsmith_index_u32(var_0.b, 19u)];
    let var_3 = all(select(select(vec2<bool>(true, 0i > global0.a.x), vec2<bool>(true, true), false), select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 19u)]), vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.b, 19u)])), !(!vec2<bool>(global1[_wgslsmith_index_u32(21081u, 19u)], false)), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b >> (4294967295u % 32u), 19u)], global1[_wgslsmith_index_u32(~0u, 19u)])), (-41791i <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 1i, global0.a.x), var_0.a.yyz)) & true));
    global0 = Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x << (45416u % 32u), ~global0.a.x, -1i), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global0.a.x, u_input.a.x, -1i, 2147483647i)), vec4<i32>(global0.a.x, 0i, countOneBits(var_0.a.x), _wgslsmith_mod_i32(global0.a.x, 0i)))), _wgslsmith_add_u32(var_0.b, ~(_wgslsmith_mod_u32(0u, var_0.b) | global0.b)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1063f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, 59795u);
    var var_1 = ~func_1(vec2<bool>(true, !all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 19u)]))), !(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 19u)], true))), Struct_1(_wgslsmith_add_vec4_i32(var_0.a << (vec4<u32>(var_0.b, 1u, 0u, u_input.d.x) % vec4<u32>(32u)), ~global0.a), 94886u));
    global1 = array<bool, 19>();
    var var_2 = Struct_1(global0.a, _wgslsmith_dot_vec4_u32(select(countOneBits(u_input.c) & vec4<u32>(u_input.b, 1u, 26543u, 4294967295u), ~vec4<u32>(global0.b, 23508u, var_0.b, 31057u), vec4<bool>(false & global1[_wgslsmith_index_u32(0u, 19u)], all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, true, true)), func_2(), true)), vec4<u32>(global0.b, firstLeadingBit(abs(u_input.b)), ~(~var_0.b), 4294967295u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -356f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1956f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(680f, -855f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) * -810f), _wgslsmith_f_op_f32(trunc(593f)))) + vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-800f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var var_4 = -var_0.a.yyy;
    var_2 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(var_0.a.x, firstTrailingBit(0i & var_2.a.x)), ~44842i, var_4.x | _wgslsmith_mod_i32(var_2.a.x, -24822i), ~(var_2.a.x | 74824i) | (u_input.e | _wgslsmith_mod_i32(-56128i, global0.a.x))), max(max(reverseBits(32969u & global0.b), max(17615u & global0.b, 0u)), var_0.b));
    var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(select(var_0.b, 13333u, var_3.x > var_3.x), var_0.b) << ((24050u << ((_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.d.xy) | 0u) % 32u)) % 32u), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_i32(reverseBits(max(select(var_4.x, 1i, true), 0i)), _wgslsmith_mult_i32(var_0.a.x, u_input.a.x & -16083i)));
}

