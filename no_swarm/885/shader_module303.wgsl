struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-629f, 1684f, -1767f, 1196f, -906f, 696f, 452f, -963f, 1708f, 751f, 115f, -963f);

var<private> global1: array<Struct_1, 12>;

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(1u, 0u, 4294967295u), -19366i, 873f, vec4<i32>(-9174i, 1i, 105302i, 37822i));

var<private> global3: array<u32, 26>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<f32, 12>();
    var var_0 = firstLeadingBit(vec3<i32>((select(23655i, 2147483647i, arg_0.x) & _wgslsmith_sub_i32(global2.c, 1i)) >> ((arg_1.b.x << (1u % 32u)) % 32u), 51356i, -16738i));
    var var_1 = Struct_1(all(vec4<bool>(false, true, _wgslsmith_sub_u32(1u, 1u) < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, global2.b.x, u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 26u)], 0u, u_input.b, 19691u)), arg_0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1.b.x, 0u, 59074u, u_input.b), vec4<u32>(0u, 5436u, 1u, arg_1.b.x)), vec4<u32>(global2.b.x, global3[_wgslsmith_index_u32(1u, 26u)], arg_1.b.x, global2.b.x)), 26u)], 4294967295u, global2.b.x), _wgslsmith_div_vec3_u32(~firstLeadingBit(arg_1.b), ~abs(arg_1.b)), vec3<u32>(global3[_wgslsmith_index_u32(1u << ((u_input.b | arg_1.b.x) % 32u), 26u)], _wgslsmith_mult_u32(39201u, global2.b.x), _wgslsmith_clamp_u32(0u, abs(global2.b.x), global3[_wgslsmith_index_u32(arg_1.b.x, 26u)]))), _wgslsmith_clamp_i32(-_wgslsmith_div_i32(-2147483647i, u_input.d.x) | ~(-arg_1.c), 2147483647i, 0i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.d, _wgslsmith_f_op_f32(round(arg_1.d)))))), abs(global2.e) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(7533u, 1u, u_input.b, 0u) << (vec4<u32>(0u, 22222u, 30122u, arg_1.b.x) % vec4<u32>(32u))), ~(vec4<u32>(1u, global2.b.x, 1u, 51904u) & vec4<u32>(1u, global3[_wgslsmith_index_u32(arg_1.b.x, 26u)], arg_1.b.x, arg_1.b.x))) % vec4<u32>(32u)));
    var var_2 = arg_1.d;
    var_0 = vec3<i32>(_wgslsmith_div_i32(global2.c, select(-40483i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 60523i), global2.e.zxx), _wgslsmith_sub_i32(global2.e.x, 1i) != firstLeadingBit(global2.e.x))), var_0.x, abs(var_1.c));
    return select(vec2<bool>(global2.d > global0[_wgslsmith_index_u32(23515u, 12u)], !arg_0.x || true), arg_0, var_1.a);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = Struct_1(all(select(vec2<bool>(true, false), func_3(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.b, 12u)]), true)) && all(!(!vec3<bool>(arg_0.a, false, true))), ~vec3<u32>(u_input.b, u_input.b, 18664u), ~global2.e.x >> (_wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_0.b.x, global2.b.x, 13186u, global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<u32>(61597u, u_input.b, u_input.b, arg_0.b.x), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(45457u, arg_0.b.x, 63105u, u_input.b), vec4<u32>(0u, 1u, global2.b.x, global3[_wgslsmith_index_u32(global2.b.x, 26u)])) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.b.x, 0u, u_input.b), vec4<u32>(u_input.b, 45461u, global3[_wgslsmith_index_u32(u_input.b, 26u)], global3[_wgslsmith_index_u32(arg_0.b.x, 26u)]))) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(33985u, global3[_wgslsmith_index_u32(1u, 26u)], u_input.b, u_input.b), vec4<u32>(arg_0.b.x, 14317u, 60223u, global3[_wgslsmith_index_u32(arg_0.b.x, 26u)])), 12u)]) - -2297f), _wgslsmith_add_vec4_i32(select(global2.e, ~abs(vec4<i32>(1i, u_input.a, 15921i, global2.c)), global2.a), ~_wgslsmith_add_vec4_i32(vec4<i32>(global2.e.x, global2.e.x, u_input.d.x, arg_0.e.x), arg_0.e) << (reverseBits(vec4<u32>(arg_0.b.x, 0u, 39460u, 4294967295u) >> (vec4<u32>(26470u, 4294967295u, global2.b.x, arg_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(trunc(1000f));
    var var_3 = _wgslsmith_mult_u32(~24423u, 4294967295u >> (global3[_wgslsmith_index_u32(u_input.b, 26u)] % 32u));
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) + -1000f), -869f));
    return Struct_1(true, ~var_1.b, -(~reverseBits(reverseBits(global2.e.x))), _wgslsmith_f_op_f32(max(-778f, var_1.d)), _wgslsmith_div_vec4_i32(~arg_0.e, _wgslsmith_mod_vec4_i32(abs(var_1.e >> (vec4<u32>(3429u, arg_0.b.x, 1u, u_input.b) % vec4<u32>(32u))), var_1.e)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1((true || global2.a) || global2.a, ~abs(global2.b), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.d))) - _wgslsmith_f_op_f32(-global2.d)), vec4<i32>(40181i, global2.c, u_input.d.x, 1i)));
    global1 = array<Struct_1, 12>();
    var var_1 = !vec4<bool>(func_3(select(vec2<bool>(true, true), select(vec2<bool>(false, global2.a), vec2<bool>(true, global2.a), vec2<bool>(var_0.a, global2.a)), vec2<bool>(false, false)), Struct_1(true, max(vec3<u32>(0u, 37883u, 0u), global2.b), 2147483647i, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], 12u)], var_0.d)), -vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, -51602i))).x, true, false, true);
    global0 = array<f32, 12>();
    global2 = global1[_wgslsmith_index_u32(7332u, 12u)];
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    var var_0 = !(!any(select(!vec2<bool>(global2.a, false), vec2<bool>(true, arg_0.a), vec2<bool>(true, true))));
    global2 = func_1();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(53557u >> (global2.b.x % 32u), 12u)] - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d, -1750f))), 702f, _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1359f))))));
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.e.yww | u_input.c.zxz, ~u_input.c.zzz), -1i) >= -_wgslsmith_add_i32(~global2.c, 1i), ~(~arg_0.b), firstTrailingBit(_wgslsmith_add_i32(12406i, -16033i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)))), ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, arg_0.e.x, arg_0.e.x, arg_0.c)), -arg_0.e), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.e, global2.e), select(vec4<i32>(2147483647i, arg_0.c, global2.c, -36654i), arg_0.e, vec4<bool>(false, false, arg_0.a, arg_0.a)), vec4<i32>(-24191i, 3899i, -2147483647i, 2147483647i) << (vec4<u32>(4294967295u, 19454u, 4294967295u, global2.b.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global0 = array<f32, 12>();
    let var_1 = u_input.d;
    let var_2 = func_4(func_1());
    global2 = Struct_1((-2017f != _wgslsmith_f_op_f32(-func_1().d)) & false, vec3<u32>(64468u, ~0u, u_input.b), -19593i, _wgslsmith_f_op_f32(f32(-1f) * -783f), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a | 34626i, _wgslsmith_mod_i32(var_1.x, var_1.x)), u_input.a), global2.e.x, _wgslsmith_mod_i32(16543i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(54957i, u_input.d.x, var_2.c, 1i)) << (var_2.b.x % 32u)), global2.e.x));
    let var_3 = _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -_wgslsmith_div_i32(45670i, -2147483647i), global2.c, -_wgslsmith_mult_i32(1i, 6075i)), -global2.e << (vec4<u32>(global2.b.x, 26174u, ~40053u, u_input.b) % vec4<u32>(32u)));
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-486f + 2543f), 59608u >> (reverseBits(u_input.b) % 32u), select(var_2.e.xy, var_1, global2.a) | select(_wgslsmith_div_vec2_i32(vec2<i32>(-80053i, var_1.x), vec2<i32>(u_input.c.x, global2.e.x)), func_1().e.xx, !global2.a));
}

