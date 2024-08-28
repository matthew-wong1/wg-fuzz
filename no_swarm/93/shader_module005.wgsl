struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1110f, 1039f, -1175f, 1558f);

var<private> global1: array<u32, 1> = array<u32, 1>(1u);

var<private> global2: array<Struct_1, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_2(vec4<bool>(true, 0u > reverseBits(~global3.c.x), true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1), arg_2.xzy))), max(i32(-1i) * -u_input.c, 0i), _wgslsmith_add_vec2_u32(global3.c, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global3.c, vec2<u32>(global3.c.x, 45168u)) | vec2<u32>(global3.a, 0u), ~(~vec2<u32>(461u, 17656u)))));
    var var_1 = select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, !(global3.a > 21438u)), vec4<bool>(all(var_0.a.xzy), var_0.a.x, !all(var_0.a.wyz), all(!var_0.a)), (true & all(var_0.a.xxy)) && var_0.a.x), var_0.a, var_0.a.x);
    global0 = arg_2;
    global1 = array<u32, 1>();
    let var_2 = select(u_input.a, ~select(~(~vec2<u32>(33911u, u_input.a.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global3.c, u_input.b.zy), u_input.a, vec2<u32>(55840u, global1[_wgslsmith_index_u32(var_0.d.x, 1u)]) >> (vec2<u32>(var_0.d.x, 4294967295u) % vec2<u32>(32u))), var_0.a.x), var_1.x);
    return ~var_2.x;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = ~firstTrailingBit(~global3.c ^ vec2<u32>(1u | global3.a, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(arg_0, 1u)])));
    global3 = global2[_wgslsmith_index_u32(reverseBits(max(26141u, abs(4294967295u))), 20u)];
    global3 = Struct_1(~global3.a >> (arg_0 % 32u), vec4<i32>(_wgslsmith_mult_i32(-u_input.c << (global1[_wgslsmith_index_u32(func_3(vec2<f32>(-601f, -412f), vec3<f32>(global0.x, -515f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, -852f)), 1u)] % 32u), u_input.c), -1i, u_input.c, _wgslsmith_sub_i32(u_input.c, ~(-2147483647i))), _wgslsmith_clamp_vec2_u32(reverseBits(var_0), ~u_input.b.yx, u_input.b.zz), select(countOneBits(0i), -max(57541i, u_input.c), any(vec4<bool>(true, false, true, false)) || true) | ~global3.d);
    var var_1 = ~(~(-vec2<i32>(-2477i, -u_input.c)));
    var var_2 = Struct_1(14676u, -global3.b, abs(vec2<u32>(4294967295u, global3.c.x)), max(-_wgslsmith_sub_i32(global3.b.x, global3.b.x), -17218i));
    return ~(~select(4294967295u, max(global3.c.x, var_0.x), all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, -1029f, true)), -1050f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)));
    var var_1 = Struct_2(!select(select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, false, true)), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)), all(var_0)), select(vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), true), var_0.x & var_0.x), global0.zxy, arg_1.b.x, arg_2.yy);
    let var_2 = _wgslsmith_f_op_f32(min(var_1.b.x, -1457f));
    var var_3 = Struct_1(arg_2.x, select(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-58013i, arg_0.x, arg_0.x, -3009i), vec4<i32>(var_1.c, -2147483647i, 31291i, u_input.c)), vec4<i32>(var_1.c, arg_1.d, u_input.c, 1i)), arg_1.b, var_1.a.x), min(vec2<u32>(0u, _wgslsmith_mult_u32(~arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, arg_2.x, 0u, arg_1.c.x), arg_2))), vec2<u32>(var_1.d.x, arg_2.x)), countOneBits(global3.d));
    var var_4 = max(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2.zzy, u_input.b), 0u, 40581u), _wgslsmith_div_vec3_u32(~reverseBits(select(vec3<u32>(14503u, 0u, var_1.d.x), vec3<u32>(58804u, global3.c.x, var_3.a), true)), u_input.b));
    return countOneBits(~arg_1.b << (vec4<u32>(1u, ~arg_2.x ^ _wgslsmith_add_u32(var_3.a, arg_2.x), 0u, ~var_3.a) % vec4<u32>(32u)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = Struct_1(1u, _wgslsmith_div_vec4_i32(func_4(vec4<i32>(_wgslsmith_mult_i32(global3.b.x, global3.d), 1i, min(12493i, -22238i), global3.b.x), global2[_wgslsmith_index_u32(func_2(~global1[_wgslsmith_index_u32(global3.a, 1u)]), 20u)], vec4<u32>(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(98159u, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c.x, 1u)], 1u)], 1u)], 1u)]), 874u, func_3(global0.wy, vec3<f32>(-614f, global0.x, -1114f), vec4<f32>(-505f, 1392f, 1648f, -423f)))), -(~(-global3.b))), u_input.b.zz, global3.d);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-270f)) + _wgslsmith_f_op_f32(f32(-1f) * -2154f)), arg_0)), arg_0, false));
    var var_2 = var_0.c;
    let var_3 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_0)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), any(vec2<bool>(true, true)) | true, false, any(vec2<bool>(true, true))), global0.zzx, firstLeadingBit(-u_input.c), max(global3.c, abs(global3.c)) | (~_wgslsmith_sub_vec2_u32(var_0.c, global3.c) | ~(~vec2<u32>(var_2.x, var_0.c.x))));
    let var_4 = ~abs(~_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.b.xy), _wgslsmith_sub_vec2_u32(vec2<u32>(23388u, 5208u), var_3.d), abs(var_0.c)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 20>();
    let var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(floor(-107f))) + -517f), global0.x));
    global3 = Struct_1(~29253u, vec4<i32>(~_wgslsmith_div_i32(_wgslsmith_div_i32(var_0, u_input.c), firstLeadingBit(-17015i)), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0, u_input.c, u_input.c, var_0)), ~global3.b), _wgslsmith_sub_i32(func_4(~global3.b, Struct_1(u_input.b.x, global3.b, global3.c, -2147483647i), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], 70227u, 30271u, global1[_wgslsmith_index_u32(17967u, 1u)])).x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0, u_input.c), global3.b.x, -2147483647i)), 0i), ~select(~u_input.a, max(~vec2<u32>(64529u, 48257u), abs(u_input.b.yx)), all(vec4<bool>(true, false, true, true))), func_1(global0.x) >> ((25882u ^ ~global3.a) % 32u));
    let var_1 = -1609f;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-379f, 430f))))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) - -1798f)))));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(select(var_0, _wgslsmith_mod_i32(global3.d, -var_0), false), global3.b.x), ~countOneBits(0i) | ~(~_wgslsmith_mult_i32(2147483647i, u_input.c)));
    let var_3 = vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, 16116u < global3.a), vec4<bool>(true, true, true, true))), !(-5061i <= _wgslsmith_dot_vec4_i32(vec4<i32>(51110i, u_input.c, -14991i, 1i), vec4<i32>(global3.d, u_input.c, -87707i, global3.b.x))), any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 1u)] > 1u, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.yw << (select(vec2<u32>(func_2(1u), u_input.a.x >> (73700u % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 1u)], 22862u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)])), !select(var_3.wx, vec2<bool>(false, false), true)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(-1486f)), countOneBits(1u), ~_wgslsmith_add_i32(var_0 | -1i, ~(-2147483647i)) ^ var_0, global3.c.x);
}

