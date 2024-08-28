struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(233f, 322f, -238f, -1000f), vec4<f32>(1000f, -542f, -855f, 1000f));

var<private> global1: vec3<i32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.e.x, 4294967295u)), 2u)])));
    var var_0 = 0u;
    var_0 = ~arg_0.a.x;
    global1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), min(vec3<i32>(i32(-1i) * -u_input.d, ~2147483647i, u_input.b.x), u_input.a), -_wgslsmith_mod_vec3_i32(u_input.a | u_input.a, vec3<i32>(_wgslsmith_div_i32(global1.x, -18583i), 56788i, global1.x & 2147483647i)));
    var_0 = 30667u;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> vec4<f32> {
    global0 = array<vec4<f32>, 2>();
    global0 = array<vec4<f32>, 2>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 244f, -692f) * vec4<f32>(global2.x, global2.x, 1441f, -159f)), vec4<f32>(-1387f, global2.x, global2.x, 1000f)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<u32> {
    global1 = vec3<i32>(global1.x, u_input.d, ~u_input.a.x);
    var var_0 = !(!(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x - global2.x)) == 1000f));
    global2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(u_input.e.yx, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(~2147483647i, -2147483647i))), select(select(vec3<bool>(select(false, false, true), any(vec4<bool>(false, false, false, false)), select(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, all(vec3<bool>(false, false, true)), true)), vec3<bool>(select(func_3(arg_0.a), true, true), 698f == global2.x, any(vec4<bool>(true, true, true, true))), !(_wgslsmith_mult_i32(global1.x, -21601i) > _wgslsmith_sub_i32(-209i, arg_0.a.c))), true, arg_0));
    let var_1 = ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-13446i, u_input.a.x, -530i, global1.x), -vec4<i32>(28375i, global1.x, global1.x, -29946i)), -vec4<i32>(global1.x, global1.x, 1i, 2147483647i) & ~vec4<i32>(2147483647i, -6742i, global1.x, 9167i)), vec4<i32>(_wgslsmith_add_i32(26775i, arg_0.a.c), -global1.x, _wgslsmith_clamp_i32(-1i, u_input.b.x, global1.x), u_input.b.x) | ~(~vec4<i32>(18792i, 0i, global1.x, 2147483647i)));
    var var_2 = arg_0;
    return ~arg_1;
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = var_0;
    let var_2 = Struct_1(func_2(Struct_2(Struct_1(~u_input.e.wy, u_input.d, -8452i)), u_input.e.zz), u_input.a.x, 0i);
    let var_3 = !vec2<bool>(func_3(Struct_1(_wgslsmith_mod_vec2_u32(u_input.e.zx, vec2<u32>(u_input.e.x, u_input.c)), 2147483647i, -60076i)), var_0);
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.e.yy, ~(~vec2<u32>(var_2.a.x, u_input.c)), vec2<u32>(44835u, _wgslsmith_dot_vec2_u32(var_2.a, var_2.a))), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 136215u) << (countOneBits(~u_input.e.zy) % vec2<u32>(32u))) & ~(~var_2.a.x);
    return _wgslsmith_f_op_f32(global2.x * -152f);
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    global1 = _wgslsmith_mult_vec3_i32(~u_input.a, ~(-u_input.a)) << (max(u_input.e.zzx, ~vec3<u32>(reverseBits(0u), ~1u, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)))) % vec3<u32>(32u));
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, abs(firstLeadingBit(13592u)), _wgslsmith_clamp_u32(~(~3338u), 4294967295u, 0u), u_input.e.x ^ 10603u), u_input.e);
    global0 = array<vec4<f32>, 2>();
    let var_1 = ~select(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 103813u, var_0.x, u_input.c), ~vec4<u32>(56659u, 0u, var_0.x, var_0.x)), u_input.e, true);
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 51199u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 0u), var_1.yz)), countOneBits(countOneBits(vec2<u32>(var_1.x, 4294967295u)))), i32(-1i) * -u_input.b.x, ~_wgslsmith_clamp_i32(0i >> (_wgslsmith_add_u32(var_0.x, 13406u) % 32u), i32(-1i) * -52987i, _wgslsmith_div_i32(arg_2, u_input.a.x) << (select(0u, var_1.x, true) % 32u)));
    return Struct_2(var_2);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global1 = select(vec3<i32>(-firstLeadingBit(arg_0.a.b), -arg_1.a.c, 0i), select(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(global1.x, arg_0.a.b, 1i))), select(0i, _wgslsmith_mult_i32(1i, arg_1.a.c), true), ~(~24822i)), ~abs(reverseBits(u_input.a)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~arg_0.a.b != 36295i)), false);
    let var_0 = arg_1.a;
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), -1166f < _wgslsmith_f_op_f32(1300f - global2.x)), false), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), select(vec3<bool>(false, true, all(vec2<bool>(true, true))), vec3<bool>(select(true, true, false), false, true), true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), !(arg_1.a.b != arg_1.a.b)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_5(var_1.x, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c, 2u)]), _wgslsmith_sub_i32(~_wgslsmith_add_i32(-20010i, arg_0.a.b), -21732i)).a.a.x, _wgslsmith_dot_vec3_u32(u_input.e.ywx, select(vec3<u32>(var_0.a.x, 86916u << (arg_0.a.a.x % 32u), ~1u), vec3<u32>(arg_0.a.a.x, 1u, arg_1.a.a.x), true))), 2u)];
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-27947i, ~global1.x, 1i)), (u_input.a ^ vec3<i32>(arg_0.a.c, arg_0.a.b, var_0.b)) ^ u_input.a), -(~(~_wgslsmith_div_i32(arg_0.a.c, global1.x))), u_input.b.x, 0i << (var_0.a.x % 32u));
    return Struct_1(~var_0.a, firstLeadingBit(var_0.b), reverseBits(global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) * -197f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f + global2.x) * global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.x)), global2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-358f * 1303f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1025f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(430f)), 149f))));
    let var_1 = func_6(func_5(u_input.c >= u_input.e.x, vec4<f32>(-382f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * var_0.x), global2.x), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.d, global1.x)), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 27295i, global1.x)))), Struct_2(Struct_1(~select(u_input.e.zy, vec2<u32>(u_input.e.x, 20221u), vec2<bool>(true, true)), -2147483647i, 1i)));
    let var_2 = var_1;
    var var_3 = firstTrailingBit(-vec4<i32>(var_2.c, select(-17474i | global1.x, 14580i, all(vec2<bool>(true, true))), -18424i, 1i));
    let var_4 = vec4<i32>(~u_input.b.x, _wgslsmith_add_i32(firstLeadingBit(~30561i), (_wgslsmith_add_i32(52028i, -1i) << (_wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(var_1.a.x, 0u)) % 32u)) << (((var_2.a.x & u_input.e.x) >> (var_1.a.x % 32u)) % 32u)), ~(_wgslsmith_sub_i32(-44800i, u_input.b.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(71692i, 2147483647i, var_2.c), u_input.a)) | -(~(-var_2.b)), -_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(var_3.xz, vec2<i32>(var_3.x, 6174i), vec2<i32>(u_input.a.x, 4907i))), vec2<i32>(-var_1.c, _wgslsmith_clamp_i32(-10723i, -1i, var_3.x))));
    var var_5 = select(vec3<bool>(all(vec2<bool>(true, true)), !all(vec2<bool>(true, true)), !(all(vec3<bool>(true, true, false)) & true)), vec3<bool>(true, true, true), true);
    var_3 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i) * -var_4), vec4<i32>(-(~(-2777i)), -12037i, var_4.x, ~(-2147483647i) | firstTrailingBit(var_2.c)) | _wgslsmith_mod_vec4_i32(-vec4<i32>(13339i, -2147483647i, 1i, var_1.c) & select(var_4, vec4<i32>(21613i, -13143i, -22266i, 18069i), var_5.x), _wgslsmith_sub_vec4_i32(min(var_4, var_4), ~var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-u_input.a >> (u_input.e.zwx % vec3<u32>(32u)))), -(_wgslsmith_mult_vec4_i32(max(vec4<i32>(-23530i, 2147483647i, u_input.d, 4873i), var_4), var_4) | min(vec4<i32>(2147483647i, 0i, -37161i, var_4.x), vec4<i32>(var_2.b, -2147483647i, global1.x, 0i))));
}

