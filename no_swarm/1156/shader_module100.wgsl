struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 23087u), i32(-2147483648));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(32604i, vec2<i32>(1i, 30275i)), Struct_1(47275i, vec2<i32>(1i, 0i)), Struct_1(56243i, vec2<i32>(i32(-2147483648), 0i)), Struct_1(1642i, vec2<i32>(-64452i, 20936i)), Struct_1(14625i, vec2<i32>(i32(-2147483648), -2558i)), Struct_1(-21038i, vec2<i32>(i32(-2147483648), -23262i)), Struct_1(-1i, vec2<i32>(1i, 44405i)), Struct_1(-5624i, vec2<i32>(i32(-2147483648), 39107i)), Struct_1(-27872i, vec2<i32>(19826i, -49069i)), Struct_1(0i, vec2<i32>(2147483647i, -1i)), Struct_1(0i, vec2<i32>(1457i, 13416i)), Struct_1(-46026i, vec2<i32>(26486i, -15413i)), Struct_1(-21898i, vec2<i32>(0i, 1i)), Struct_1(-1i, vec2<i32>(1i, 18304i)), Struct_1(7337i, vec2<i32>(0i, 1i)), Struct_1(-62485i, vec2<i32>(2147483647i, -59951i)), Struct_1(2147483647i, vec2<i32>(51058i, 55919i)), Struct_1(47049i, vec2<i32>(-1i, 10959i)), Struct_1(-1i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(3000i, vec2<i32>(1i, i32(-2147483648))), Struct_1(-25280i, vec2<i32>(i32(-2147483648), 0i)), Struct_1(25427i, vec2<i32>(i32(-2147483648), 1i)));

var<private> global3: Struct_1 = Struct_1(1i, vec2<i32>(-1i, -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~(global1.a.x << (u_input.c % 32u)), 22u)];
    var var_1 = Struct_3(u_input.e.yx, Struct_1(17467i, abs(vec2<i32>(var_0.b.x, global3.b.x)) ^ vec2<i32>(global3.b.x, ~global3.b.x)), -32031i, vec4<bool>(global0.x, any(select(!vec4<bool>(true, global0.x, true, false), vec4<bool>(false, false, true, false), !vec4<bool>(global0.x, false, global0.x, true))), true, ((0u != u_input.c) && global0.x) & true), -2147483647i);
    var var_2 = !select(!vec3<bool>(false, any(vec4<bool>(true, false, false, var_1.d.x)), var_1.d.x), !vec3<bool>(true, true, var_1.d.x), vec3<bool>(global0.x, !any(vec4<bool>(global0.x, true, false, global0.x)), false));
    let var_3 = false;
    let var_4 = var_1.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -691f))), true)) * -502f);
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var_0 = true != all(!vec3<bool>(global0.x, !global0.x, 0u < u_input.c));
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.e.x, ~(~global1.a.x))), 22u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(-322f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -1162f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)) + 318f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2424f)), _wgslsmith_f_op_f32(step(-2239f, -100f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1372f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1000f)) * _wgslsmith_f_op_f32(trunc(370f))))));
    let var_3 = !vec3<bool>(select(!global0.x, !global0.x && true, global0.x), true, any(vec3<bool>(true, !global0.x, false & global0.x)));
    return Struct_2(_wgslsmith_mod_vec2_u32(u_input.e.yx, global1.a & (global1.a >> ((vec2<u32>(global1.a.x, u_input.e.x) ^ vec2<u32>(0u, global1.a.x)) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, global3.a, -1i, -1i)) >> (~abs(vec4<u32>(38461u, 4294967295u, global1.a.x, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(~global1.b, var_1.b.x, _wgslsmith_mult_i32(i32(-1i) * -42269i, _wgslsmith_mod_i32(0i, global3.a)), u_input.d)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    global1 = func_2();
    global1 = Struct_2(~(~vec2<u32>(u_input.c, arg_2.a.x)) >> (vec2<u32>(firstTrailingBit(firstTrailingBit(global1.a.x)), _wgslsmith_sub_u32(~5424u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 5926u, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, global1.a.x, arg_2.a.x)))) % vec2<u32>(32u)), _wgslsmith_mult_i32(global1.b, ~(-1i)));
    var var_0 = Struct_3(~vec2<u32>(_wgslsmith_sub_u32(u_input.c, global1.a.x ^ 4294967295u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.a.x, u_input.c, 47110u), arg_2.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a.x, arg_2.a.x), 22u)], arg_1.x, vec4<bool>(global0.x, any(vec2<bool>(global0.x, !global0.x)), true, true), -arg_2.b);
    global3 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c, 23470u), 22u)];
    var var_1 = 705f;
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<bool>(true, select(!arg_0.x, true, (~global1.a.x << (abs(global1.a.x) % 32u)) < global1.a.x));
    global0 = !vec2<bool>(var_0.x, false && select(true, true, any(vec2<bool>(global0.x, arg_2.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1943f, 1921f, arg_1.x, _wgslsmith_f_op_f32(func_3())) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(ceil(-299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)))))));
    var var_2 = func_2();
    var var_3 = abs(-(~vec4<i32>(global3.b.x, func_2().b, global1.b, firstLeadingBit(-10569i))));
    return Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, global1.a.x), vec2<u32>(var_2.a.x, 4294967295u), !global0.x), func_2().a, max(var_2.a ^ vec2<u32>(5224u, var_2.a.x), max(vec2<u32>(15418u, global1.a.x), var_2.a))), firstTrailingBit(~(u_input.e.xy & vec2<u32>(var_2.a.x, var_2.a.x)))), ~_wgslsmith_add_i32(-6600i << (1u % 32u), 979i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(vec2<bool>(_wgslsmith_mult_u32(u_input.c, global1.a.x) >= select(4294967295u, 4294967295u, true), !global0.x), select(vec2<bool>(func_1(vec2<f32>(1819f, 228f), vec2<i32>(2147483647i, 2147483647i), Struct_2(u_input.e.yz, -104544i), vec3<f32>(-694f, 1385f, -312f)), global0.x), vec2<bool>(true, all(vec4<bool>(global0.x, global0.x, false, true))), select(global0.x, global0.x, global0.x | true)), _wgslsmith_clamp_u32(u_input.c, ~4294967295u, 1u) <= ~u_input.e.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-940f, _wgslsmith_f_op_f32(560f - 241f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-384f + -168f), 192f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(460f)))))), vec4<bool>(true, _wgslsmith_clamp_i32(abs(34129i), 1i, 2866i) > ~global1.b, all(select(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, true, false, false), global0.x), vec4<bool>(global0.x, true, global0.x, false), global0.x)), global0.x), ~min(global1.b, ~(u_input.d & u_input.a.x)));
    let var_1 = var_0.a;
    let var_2 = func_2();
    var_0 = Struct_2(vec2<u32>(abs(_wgslsmith_clamp_u32(~var_1.x, ~var_0.a.x, _wgslsmith_sub_u32(4294967295u, 0u))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(10103u, var_0.a.x, 4294967295u, 0u), vec4<u32>(global1.a.x, global1.a.x, 0u, 1u)), ~vec4<u32>(4294967295u, u_input.e.x, 46587u, var_2.a.x), ~vec4<u32>(13506u, var_0.a.x, u_input.e.x, 1u)), min(~vec4<u32>(global1.a.x, 4294967295u, var_0.a.x, 23500u), reverseBits(vec4<u32>(var_0.a.x, 7985u, 42838u, global1.a.x))))), -global3.b.x);
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 353f, 643f, -1819f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-1046f)), _wgslsmith_f_op_f32(1000f * 149f), _wgslsmith_f_op_f32(1612f * 735f), _wgslsmith_f_op_f32(floor(-1588f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(787f, 342f, 139f, 985f)))))))), ~(~countOneBits(min(var_2.b, u_input.d))), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b << (53962u % 32u), global3.a, global1.b, ~70065i), abs(~vec4<i32>(var_2.b, -1i, 0i, 1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-934f - -112f), 1415f, -171f, 1100f), vec4<f32>(_wgslsmith_f_op_f32(min(1238f, 744f)), -1016f, -1000f, 1f))));
}

