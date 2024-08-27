struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-1i, -22350i, -1i, 0i, 1i, 13271i, 48227i, 63375i, -27605i, 1i, 20568i, -24734i, 1i, 1i, 24006i, 2121i, 21832i, 1i, 24967i, 31470i, 2147483647i, -10155i);

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_3 = Struct_3(1u, 1u, 952f, Struct_1(vec3<i32>(31720i, i32(-2147483648), 0i), 384f, 56820u, vec3<bool>(false, false, false)), 5103u);

var<private> global3: f32;

var<private> global4: array<Struct_3, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    global1 = array<Struct_1, 19>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 19u)];
    var var_1 = arg_1;
    global2 = Struct_3(21942u, 1u, _wgslsmith_f_op_f32(trunc(arg_1.c)), Struct_1(vec3<i32>(select(arg_1.d.a.x, -1i, var_1.d.d.x) >> (countOneBits(global2.d.c) % 32u), countOneBits(~u_input.c), ~(-global2.d.a.x)), -465f, ~arg_1.b, vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(!vec4<bool>(false, true, arg_1.d.d.x, false)))), 4294967295u << (~4294967295u % 32u));
    global3 = arg_2.d.b;
    return vec3<bool>(all(global2.d.d) && all(arg_1.d.d.yz), global2.d.d.x, all(select(arg_1.d.d.yx, vec2<bool>(true, select(false, true, false)), !(!arg_2.d.d.x))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_div_i32(23231i, global2.d.a.x), 0i, firstLeadingBit(global0[_wgslsmith_index_u32(1u, 22u)]))), abs(~vec3<i32>(1686i, u_input.e.x, global2.d.a.x))), _wgslsmith_f_op_f32(floor(1146f)), ~72325u, !(!select(vec3<bool>(true, global2.d.d.x, global2.d.d.x), global2.d.d, global2.d.d.x & global2.d.d.x)));
    let var_1 = Struct_1(firstTrailingBit(global2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(482f))))))), 4294967295u, func_3(-1i, Struct_3(reverseBits(global2.d.c), _wgslsmith_mod_u32(4294967295u, var_0.c), _wgslsmith_f_op_f32(-global2.c), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(47011i, 1i, u_input.e.x), vec3<i32>(-25163i, 1i, 12602i)), _wgslsmith_f_op_f32(408f + var_0.b), 85345u, !vec3<bool>(true, global2.d.d.x, global2.d.d.x)), 0u), Struct_3(_wgslsmith_mult_u32(0u, ~u_input.a), countOneBits(u_input.a) & 0u, global2.c, global2.d, 36787u)));
    var var_2 = any(vec3<bool>(true, true, var_1.d.x));
    let var_3 = true;
    let var_4 = 51611i;
    return Struct_3(~(~select(55266u, var_1.c | var_1.c, !var_1.d.x)), global2.d.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global2.c) + -432f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), true))), var_0, _wgslsmith_sub_u32(~global2.a, _wgslsmith_mult_u32(~25599u, abs(global2.a))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    global4 = array<Struct_3, 8>();
    global0 = array<i32, 22>();
    var var_0 = func_2();
    global4 = array<Struct_3, 8>();
    let var_1 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(82471i | (global2.d.a.x & global0[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -17437i), arg_0.a.zz, global2.d.a.zx), u_input.e), -13046i), vec3<i32>(_wgslsmith_div_i32(-1i, -4000i), -_wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a), global2.d.a.x)));
    return Struct_2(true);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<bool> {
    global0 = array<i32, 22>();
    let var_0 = all(vec2<bool>(!select(func_3(u_input.b.x, Struct_3(95508u, u_input.a, 660f, Struct_1(vec3<i32>(global2.d.a.x, 37870i, 62836i), global2.c, 1u, global2.d.d), global2.d.c), Struct_3(u_input.a, u_input.a, global2.c, Struct_1(global2.d.a, -1732f, u_input.a, vec3<bool>(global2.d.d.x, false, true)), u_input.a)).x, all(vec4<bool>(true, true, global2.d.d.x, arg_1.a)), arg_1.a != arg_1.a), true));
    let var_1 = global2.d;
    global1 = array<Struct_1, 19>();
    global0 = array<i32, 22>();
    return !select(select(!vec4<bool>(arg_1.a, arg_1.a, var_0, false), select(!vec4<bool>(true, global2.d.d.x, var_1.d.x, var_1.d.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_1.d.x, true, var_1.d.x), vec4<bool>(arg_1.a, false, var_0, false)), !global2.d.d.x), func_3(global0[_wgslsmith_index_u32(0u, 22u)], func_2(), func_2()).x), vec4<bool>(true, true, true, false), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(func_2().d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(select(1222f, _wgslsmith_f_op_f32(-1448f * global2.d.b), true))))), _wgslsmith_dot_vec2_u32(reverseBits(abs(vec2<u32>(4294967295u, u_input.a))), vec2<u32>(19107u, 0u ^ u_input.a)), vec3<bool>(!arg_0.x, arg_2, false || select(u_input.e.x != u_input.c, true, arg_2)));
    let var_1 = Struct_1(min(~(-var_0.a), vec3<i32>(1i, ~max(var_0.a.x, -2147483647i), _wgslsmith_sub_i32(65803i, ~var_0.a.x))), 1495f, 4294967295u, var_0.d);
    let var_2 = var_1.d.x;
    var var_3 = !func_2().d.d.yz;
    var var_4 = var_1;
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.d.d.x;
    var var_1 = global2.d.d;
    var_1 = vec3<bool>(true, any(!global2.d.d), var_1.x);
    global3 = _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + 1378f)), global2.c)) + -1000f));
    var var_2 = func_5(select(!func_4(vec4<i32>(-54345i, -69597i, global0[_wgslsmith_index_u32(12635u, 22u)], u_input.e.x), func_1(Struct_1(vec3<i32>(13445i, global0[_wgslsmith_index_u32(u_input.a, 22u)], global2.d.a.x), global2.c, 1u, vec3<bool>(global2.d.d.x, false, false)), true)), func_4(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 0i, 21561i, -1i), vec4<i32>(-227i, u_input.d, global2.d.a.x, -352i)), func_1(Struct_1(global2.d.a, 781f, u_input.a, global2.d.d), any(vec2<bool>(false, false)))), true), Struct_2(select(global2.d.d.x, false, _wgslsmith_div_i32(global2.d.a.x, 3122i) != global2.d.a.x)), var_1.x);
    var var_3 = max(~vec4<u32>(0u, 2516u, min(select(0u, u_input.a, global2.d.d.x), 12244u), 0u), vec4<u32>(~(u_input.a ^ ~0u), global2.b, 0u, 4294967295u));
    var_3 = ~vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.c, 113519u), 0u), _wgslsmith_div_u32(var_3.x, ~var_2.c), 1u, _wgslsmith_sub_u32(u_input.a, 1u));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(1u, 23781u) >> (0u % 32u));
}

