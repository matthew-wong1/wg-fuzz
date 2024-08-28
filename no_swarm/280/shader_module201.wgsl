struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<f32, 29>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = 191f;
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global1.c, 29u)], global3.a.x), global3.a), global1.a), all(global3.e.zy) && global1.e.x)), 280f, global3.c, global1.d, select(vec3<bool>(any(!vec2<bool>(global3.e.x, false)), false, any(select(vec2<bool>(global3.e.x, true), global1.e.yx, global3.e.x))), vec3<bool>(~global1.c <= _wgslsmith_sub_u32(72571u, u_input.a), true, true), !(select(true, global3.e.x, false) == (0i >= global3.d))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(758f, arg_0)), _wgslsmith_f_op_f32(select(-1409f, global2[_wgslsmith_index_u32(u_input.a, 29u)], global3.e.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(1810f)), -2281f)))), global3.a.x, ~select(u_input.a, 26707u, false), global1.d, global1.e);
    var var_1 = select(!(!(!select(vec4<bool>(true, global3.e.x, true, true), vec4<bool>(global1.e.x, true, true, global1.e.x), vec4<bool>(true, global1.e.x, global3.e.x, global1.e.x)))), vec4<bool>(global1.e.x, global1.e.x, all(select(vec3<bool>(global1.e.x, global3.e.x, true), select(vec3<bool>(global1.e.x, false, global3.e.x), global3.e, global1.e), true)), !select(var_0 > global3.b, global3.e.x, true)), false);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(global3.a.x)), -999f), global1.b, global1.c, ~min(global3.d, reverseBits(~global3.d)), vec3<bool>(!var_1.x, 471f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), false));
    return global1.c;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = ~_wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(global3.d, 1161i, u_input.d.x)) | max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 16432i, u_input.c), vec3<i32>(global3.d, -18103i, global1.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.d, 2147483647i, global3.d), vec3<i32>(global1.d, u_input.c, 8784i))), ~(vec3<i32>(-29987i, -16708i, -11026i) & vec3<i32>(u_input.d.x, global3.d, 3579i)) >> (u_input.b.wwy % vec3<u32>(32u)));
    var var_2 = vec3<u32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1118f * global2[_wgslsmith_index_u32(1u, 29u)]))))), (firstTrailingBit(global3.c | u_input.a) >> (0u % 32u)) & min(~global3.c & _wgslsmith_div_u32(global3.c, 4294967295u), u_input.a), _wgslsmith_dot_vec2_u32(u_input.b.yw, countOneBits(~(~u_input.b.xz))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global3.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + _wgslsmith_f_op_f32(f32(-1f) * -1326f)), u_input.b.x, _wgslsmith_mult_i32(select(1i, 41227i, select(true, true, global1.e.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, var_1.x) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global1.d, -1i), u_input.d), vec2<i32>(abs(673i), 1i))), !(!select(!vec3<bool>(true, global1.e.x, global3.e.x), global3.e, true)));
    let var_4 = var_1.zz;
    return Struct_1(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) - _wgslsmith_f_op_f32(f32(-1f) * -957f)), ~var_2.x, min(_wgslsmith_clamp_i32(i32(-1i) * -global3.d, -26295i << (1u % 32u), _wgslsmith_dot_vec3_i32(var_1, _wgslsmith_mult_vec3_i32(var_1, vec3<i32>(global3.d, global3.d, 20224i)))), _wgslsmith_mult_i32(-2147483647i, global1.d)), select(vec3<bool>(~0i != var_1.x, false, !global3.e.x), var_3.e, select(!(!global1.e), !select(global3.e, global3.e, true), vec3<bool>(!global3.e.x, var_3.e.x, var_3.e.x))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(global3.d, ~25833i), 5906i), _wgslsmith_add_i32(max(-(u_input.c | arg_2.d), ~(-2147483647i)), (i32(-1i) * -1i) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d, global3.d, arg_2.d, 2147483647i), vec4<i32>(u_input.d.x, global1.d, 11247i, global1.d)) << (~66847u % 32u))), -_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(-2147483647i, -1i)));
    let var_1 = func_2();
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.d, global3.d, 13952i), vec3<i32>(-2147483647i, u_input.c, 13799i)), -var_1.d), 15820i), u_input.c, global1.d, firstLeadingBit(var_1.d) & -_wgslsmith_dot_vec3_i32(vec3<i32>(-43801i, var_1.d, 0i), vec3<i32>(1i, -24237i, 0i))) >> ((vec4<u32>(min(64773u, 4294967295u), 33154u, ~(~60399u), _wgslsmith_add_u32(countOneBits(4294967295u), arg_2.c)) ^ ~(~u_input.b)) % vec4<u32>(32u));
    global3 = func_2();
    let var_3 = -vec3<i32>(-var_0 | abs(1i), global1.d, -2147483647i);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(i32(-1i) * -1i), 1i >> (var_1.c % 32u)), var_3.yx);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = any(!(!vec3<bool>(global3.e.x, global1.c != 4294967295u, true)));
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(func_4(arg_0.e.x, false, func_2()), func_4(!any(vec4<bool>(global1.e.x, true, global1.e.x, global1.e.x)), any(vec2<bool>(arg_0.e.x, arg_0.e.x)), Struct_1(global1.a, -426f, ~48913u, 0i, select(vec3<bool>(global1.e.x, global1.e.x, global3.e.x), vec3<bool>(arg_0.e.x, true, false), global3.e)))), ~arg_1, ~_wgslsmith_dot_vec2_i32(vec2<i32>(32744i, global3.d), vec2<i32>(-28628i, 1i) | (vec2<i32>(2147483647i, arg_0.d) ^ u_input.d)));
    var var_1 = vec2<bool>(true, true);
    global0 = global3.e.x;
    let var_2 = vec4<bool>(all(func_2().e.zx), true, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -56462i, -25697i, global3.d), vec4<i32>(11719i, arg_1, -2147483647i, var_0), false) >> (_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), reverseBits(~vec4<i32>(0i, u_input.d.x, 24233i, var_0))) <= reverseBits(_wgslsmith_clamp_i32(arg_0.d | arg_1, ~45237i, -27534i)), arg_0.e.x);
    return arg_0.c;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(arg_3.a.x)), _wgslsmith_f_op_f32(203f + arg_1.x)), _wgslsmith_f_op_f32(step(arg_3.b, 261f)), max(arg_0.x << (42349u % 32u), ~17208u), 1i, vec3<bool>(any(select(vec4<bool>(false, arg_3.e.x, true, global1.e.x), select(vec4<bool>(false, global1.e.x, global3.e.x, true), vec4<bool>(false, true, arg_3.e.x, arg_3.e.x), vec4<bool>(false, arg_3.e.x, false, false)), true)), any(vec4<bool>(false, all(vec4<bool>(true, false, arg_3.e.x, global1.e.x)), true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global3.a, global2[_wgslsmith_index_u32(~global1.c, 29u)], 1u, u_input.c, global1.e);
    global0 = any(vec3<bool>(~1i == (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), u_input.d) | ~global1.d), true == global3.e.x, any(vec3<bool>(global1.e.x, var_0.e.x | global1.e.x, true))));
    global3 = func_5(u_input.b.zzx ^ vec3<u32>(_wgslsmith_clamp_u32(func_1(Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(var_0.c, 29u)], global2[_wgslsmith_index_u32(global1.c, 29u)]), global1.b, u_input.a, 2147483647i, var_0.e), u_input.c), var_0.c, var_0.c), u_input.a | ~4294967295u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2398f - global1.b))), global1.a.x, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), -1000f)) + vec4<f32>(1000f, _wgslsmith_f_op_f32(-global1.a.x), var_0.b, 376f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(578f))), var_0);
    global2 = array<f32, 29>();
    var var_1 = global3.e.xy;
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(select(vec4<u32>(4457u, 0u, 4294967295u, var_0.c) ^ u_input.b, firstLeadingBit(vec4<u32>(4294967295u, 0u, 0u, global1.c)), vec4<bool>(true, var_1.x, var_1.x, false)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 556f, _wgslsmith_f_op_f32(124f * 1111f), _wgslsmith_div_f32(319f, 118f))))), -vec3<i32>(global3.d, 19172i | global3.d, u_input.d.x));
}

