struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<f32>) -> i32 {
    global0 = array<bool, 2>();
    let var_0 = -vec4<i32>(4751i, 1i, 1i, global2.d.x);
    var var_1 = select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(7590u, 2u)], select(false, global2.a.c, global0[_wgslsmith_index_u32(1u, 2u)]), true)), select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(global2.a.a.x, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], false, global0[_wgslsmith_index_u32(25970u, 2u)]), vec4<bool>(global2.c.x, global2.c.x, global0[_wgslsmith_index_u32(18345u, 2u)], global2.c.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 2u)], true, global0[_wgslsmith_index_u32(56862u, 2u)], global0[_wgslsmith_index_u32(global2.a.a.x, 2u)]))), !vec4<bool>(false, true, true, global2.c.x), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)] & false, -1000f <= arg_2)), true);
    var_1 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, arg_1.x), 2u)], true, true, false);
    var var_2 = select(13027i, abs(-2147483647i), true);
    return _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d | 2147483647i, 1i), -(vec2<i32>(global2.d.x, 10355i) << (vec2<u32>(1u, 14066u) % vec2<u32>(32u))))), 16261i);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = 0u | firstTrailingBit(reverseBits(~0u) >> (_wgslsmith_sub_u32(~u_input.a, 87665u) % 32u));
    let var_1 = vec4<bool>(!(global2.a.b.x >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1132f)), _wgslsmith_f_op_f32(-global2.a.b.x)))), (global2.c.x & global2.a.c) == global2.a.c, false, !(!((global2.b < -19823i) == global0[_wgslsmith_index_u32(~4294967295u, 2u)])));
    global2 = Struct_3(global2.a, -31326i, select(!vec3<bool>(global2.c.x && var_1.x, global2.a.b.x <= global2.a.b.x, true), !var_1.xwz, global2.c), vec3<i32>(reverseBits(func_3(-global2.d.yy, max(vec3<u32>(41464u, arg_0, arg_0), vec3<u32>(arg_0, 1u, 0u)), -131f, global2.a.b.zx)), ~(_wgslsmith_add_i32(u_input.d, 79473i) << (_wgslsmith_add_u32(0u, 18013u) % 32u)), global2.b));
    global1 = array<vec2<bool>, 16>();
    let var_2 = -2343f;
    return abs(~_wgslsmith_add_u32(_wgslsmith_sub_u32(~19530u, ~global2.a.a.x), global2.a.a.x & 37360u));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0.x));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2, u_input.c.x), ~(u_input.a ^ _wgslsmith_clamp_u32(0u, u_input.b, 4294967295u)));
    let var_2 = ~(u_input.d << (_wgslsmith_div_u32(func_2(~4294967295u), u_input.b) % 32u));
    global1 = array<vec2<bool>, 16>();
    global2 = Struct_3(Struct_2(max(u_input.c, ~vec4<u32>(11950u, var_1, 0u, var_1)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global2.a.b, vec3<f32>(var_0, arg_0.x, -333f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-344f, -159f, arg_0.x) * arg_0), select(select(vec3<bool>(global2.c.x, global2.c.x, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(arg_2, 2u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_1, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global2.a.c)), global2.c, select(global2.c, global2.c, vec3<bool>(false, global0[_wgslsmith_index_u32(global2.a.a.x, 2u)], true))))), global2.a.c), abs(~(-79437i)), global2.c, ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~global2.d, ~global2.d, global2.d), global2.d));
    return select(_wgslsmith_mult_vec4_i32(vec4<i32>(~17875i, var_2, arg_1, -14840i), ~vec4<i32>(_wgslsmith_mult_i32(global2.b, var_2), u_input.d >> (global2.a.a.x % 32u), var_2, _wgslsmith_div_i32(global2.b, 11574i))), min(vec4<i32>(~_wgslsmith_sub_i32(global2.d.x, arg_1), arg_1, -arg_1, -_wgslsmith_clamp_i32(global2.d.x, 6698i, -1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.d.x, var_2), global2.d.zy & global2.d.yz), firstLeadingBit(func_3(global2.d.yy, vec3<u32>(arg_2, var_1, var_1), 1523f, arg_0.yx)), _wgslsmith_add_i32(_wgslsmith_sub_i32(36567i, var_2), 1i), 2147483647i)), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_3(global2.a, u_input.d, global2.c, vec3<i32>(u_input.d, ~(~_wgslsmith_dot_vec3_i32(arg_0.xwx, vec3<i32>(-23694i, u_input.d, 2147483647i))), ~global2.b ^ -(~(-9442i))));
    var_0 = Struct_3(var_0.a, -(~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(19565i, global2.d.x))), !vec3<bool>(false, false, any(!vec4<bool>(false, true, global2.a.c, global2.c.x))), _wgslsmith_add_vec3_i32(vec3<i32>(max(4717i, -1108i), _wgslsmith_mod_i32(u_input.d, -2147483647i), 21236i), ~(~vec3<i32>(-20582i, 0i, global2.d.x))) & select(vec3<i32>(~arg_0.x, 5185i, 0i), vec3<i32>(-arg_0.x, -7990i, 3473i), true));
    var_0 = Struct_3(Struct_2(vec4<u32>(1u & ~arg_1.x, arg_1.x, u_input.b, _wgslsmith_mod_u32(abs(arg_1.x), ~117070u)), _wgslsmith_f_op_vec3_f32(-global2.a.b), global0[_wgslsmith_index_u32(global2.a.a.x, 2u)]), max(-_wgslsmith_div_i32(u_input.d | arg_0.x, ~(-11647i)), i32(-1i) * -(-11481i >> (arg_1.x % 32u))), !vec3<bool>(any(select(global2.c.zy, var_0.c.yy, global2.c.x)), global2.c.x, false && var_0.a.c), -(global2.d | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, arg_0.x, -1i), firstLeadingBit(vec3<i32>(0i, arg_0.x, 0i)), var_0.d)));
    let var_1 = ~(((var_0.b >> (64836u % 32u)) << (u_input.b % 32u)) << (global2.a.a.x % 32u));
    let var_2 = global2.a.a;
    return _wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(0i, reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global2.d, global2.d), vec3<i32>(u_input.d, arg_0.x, var_0.d.x))), firstTrailingBit(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~_wgslsmith_mult_vec3_i32(~(global2.d >> (u_input.c.ywy % vec3<u32>(32u))), select(global2.d, -vec3<i32>(global2.d.x, global2.b, global2.b), false)), _wgslsmith_add_vec3_i32(func_4(func_1(vec3<f32>(global2.a.b.x, -489f, -815f), u_input.d, 4294967295u), ~vec3<u32>(u_input.b, global2.a.a.x, 0u)), vec3<i32>(1i, 1i, ~global2.b)) << (reverseBits(~firstLeadingBit(global2.a.a.zzx)) % vec3<u32>(32u)));
    global0 = array<bool, 2>();
    global1 = array<vec2<bool>, 16>();
    let var_1 = select(~abs(min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, u_input.d), vec4<i32>(u_input.d, global2.d.x, var_0.x, global2.b)), ~vec4<i32>(u_input.d, 14808i, -1i, 0i))), abs(max(max(_wgslsmith_add_vec4_i32(vec4<i32>(38635i, 2147483647i, -2147483647i, -1i), vec4<i32>(u_input.d, 0i, -1i, 0i)), min(vec4<i32>(global2.d.x, 1i, global2.d.x, -2147483647i), vec4<i32>(var_0.x, 44646i, -1i, global2.d.x))), (vec4<i32>(0i, -1i, 48988i, u_input.d) << (vec4<u32>(0u, 36946u, 0u, 17287u) % vec4<u32>(32u))) | -vec4<i32>(global2.d.x, u_input.d, u_input.d, 45672i))), vec4<bool>(global2.a.c, !any(select(vec4<bool>(global0[_wgslsmith_index_u32(24456u, 2u)], true, false, global2.c.x), vec4<bool>(global0[_wgslsmith_index_u32(global2.a.a.x, 2u)], global0[_wgslsmith_index_u32(13012u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global2.c.x), global2.c.x)), !(!(true && global2.a.c)), global0[_wgslsmith_index_u32(1u, 2u)]));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f * global2.a.b.x)) + 529f), 230f), _wgslsmith_div_f32(328f, global2.a.b.x), _wgslsmith_f_op_f32(abs(717f)), _wgslsmith_f_op_f32(floor(global2.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global2.a.b.x)), _wgslsmith_f_op_f32(global2.a.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + var_2.x)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x), ~vec4<u32>(u_input.a, 1028u, 4294967295u, u_input.b))), select(-1i, global2.b, !(4294967295u < u_input.c.x) || all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false, global0[_wgslsmith_index_u32(global2.a.a.x, 2u)], global2.c.x))));
}

