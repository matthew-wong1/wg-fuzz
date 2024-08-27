struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: array<i32, 31>;

var<private> global2: array<vec2<bool>, 14>;

var<private> global3: array<Struct_2, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(22302u, ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), 8u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(arg_0));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 932f) * var_1.x) * -1511f);
    let var_3 = ~(-2147483647i);
    var var_4 = var_0.d;
    return vec3<f32>(1969f, 218f, -1000f);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = global3[_wgslsmith_index_u32(~abs(abs(1u >> (u_input.c.x % 32u))), 8u)];
    let var_2 = true;
    let var_3 = global3[_wgslsmith_index_u32(var_1.b.x, 8u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(-861f, -1336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f), -1000f)))));
    return abs(~(~1u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(arg_0.a.x << (~4294967295u % 32u), ~global1[_wgslsmith_index_u32(u_input.c.x, 31u)]);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(func_2(arg_0), arg_1), ~6252u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, u_input.c.x, arg_1), ~vec4<u32>(u_input.c.x, 31825u, arg_1, 0u))), firstLeadingBit(u_input.c.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~arg_1, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), select(firstTrailingBit(vec4<u32>(37593u, 44007u, 32287u, u_input.c.x)), vec4<u32>(0u, 4294967295u, 1u, 4294967295u) | vec4<u32>(9756u, arg_1, arg_1, u_input.c.x), vec4<bool>(true, true, true, false)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, 55128u, arg_1, u_input.c.x), vec4<u32>(29105u, 30091u, 3532u, 0u)), select(vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(1u, u_input.c.x, arg_1, arg_1), vec4<bool>(true, false, true, true)))))), 8u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1022f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
    global1 = array<i32, 31>();
    let var_3 = all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(var_2 <= var_2, all(vec3<bool>(true, true, false)), u_input.c.x < u_input.c.x), vec3<bool>(true, false, all(vec2<bool>(false, true)))), any(vec3<bool>(true, true, true))));
    return Struct_1(min(select(select(arg_0.a & var_1.d.a, min(vec4<i32>(-4338i, 5965i, 18828i, arg_0.a.x), var_1.d.a), !var_3), vec4<i32>(firstLeadingBit(u_input.b.x), ~arg_3, -arg_3, var_1.c.a.x >> (62550u % 32u)), !var_3), arg_0.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(!vec4<bool>(true, true, true, any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), -_wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a) >= -23834i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, true), _wgslsmith_f_op_f32(step(611f, 396f)) >= _wgslsmith_f_op_f32(693f + -1000f), true), vec4<bool>(true, true, !select(true, true, false), (arg_1.a.x & u_input.b.x) > 28151i)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), ~arg_0.b.x < ~0u), select(vec4<bool>(all(vec3<bool>(true, false, false)), arg_1.a.x >= arg_0.d.a.x, 1u >= arg_0.b.x, any(vec4<bool>(false, true, false, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) && true));
    let var_1 = max(-vec2<i32>(_wgslsmith_sub_i32(arg_0.a.a.x ^ arg_0.d.a.x, ~u_input.e), arg_1.a.x << (abs(13164u) % 32u)), -vec2<i32>(0i, max(28774i, -global1[_wgslsmith_index_u32(0u, 31u)])));
    let var_2 = reverseBits(~18757u);
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(10591u, 0u, var_2 | arg_0.b.x), _wgslsmith_mod_vec3_u32(arg_0.b.wxx, ~vec3<u32>(1u, 0u, 0u)) >> ((min(vec3<u32>(19823u, 0u, arg_0.b.x), vec3<u32>(0u, arg_0.b.x, 0u)) ^ arg_0.b.wzx) % vec3<u32>(32u))), ~arg_0.b.xyz);
    var var_4 = func_1(Struct_1(-_wgslsmith_div_vec4_i32(arg_1.a, arg_1.a)), var_2, vec2<f32>(537f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(-429f + -808f)) - _wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(floor(2477f))))), var_1.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(global3[_wgslsmith_index_u32(~(~(~u_input.c.x)), 8u)], func_1(Struct_1(vec4<i32>(0i, 1i, u_input.e, 1i)), 26094u, vec2<f32>(-1024f, -994f), global1[_wgslsmith_index_u32(1u, 31u)])), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 5149u), vec2<u32>(u_input.c.x, 4294967295u))), _wgslsmith_mult_u32(1u, ~u_input.c.x), 4294967295u, ~u_input.c.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c.x, 13460u >> (u_input.c.x % 32u), func_2(Struct_1(vec4<i32>(1i, u_input.b.x, u_input.d.x, u_input.d.x))), u_input.c.x), countOneBits(vec4<u32>(872u, u_input.c.x, 14676u, 1u))) % vec4<u32>(32u)), func_4(global3[_wgslsmith_index_u32(6368u, 8u)], func_1(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(6343u, 31u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], -2147483647i, -56859i, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]))), u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(188f, 266f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-920f, 101f))), ~countOneBits(u_input.a))), func_1(Struct_1(func_1(func_4(Struct_2(Struct_1(vec4<i32>(-23687i, 0i, 21146i, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), vec4<u32>(1u, 72415u, u_input.c.x, 5748u), Struct_1(vec4<i32>(81017i, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 0i, global1[_wgslsmith_index_u32(2283u, 31u)], -2147483647i))), Struct_1(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(61761u, 31u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]))), ~u_input.c.x, vec2<f32>(-1599f, 936f), 2147483647i).a), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, -1998f))), -7318i));
    let var_1 = global3[_wgslsmith_index_u32((39208u ^ (u_input.c.x << (~_wgslsmith_mult_u32(1u, u_input.c.x) % 32u))) >> (~firstLeadingBit(1u) % 32u), 8u)];
    global2 = array<vec2<bool>, 14>();
    var var_2 = Struct_2(func_1(func_1(var_1.a, max(countOneBits(var_1.b.x), 4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-477f, -619f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-396f, 2187f), vec2<f32>(1052f, -1000f)))), 39340i), var_0.b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1275f, 1080f), vec2<f32>(-278f, -243f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1376f, 794f), vec2<f32>(274f, -266f), true)), vec2<f32>(-837f, 1513f))))), global1[_wgslsmith_index_u32(abs(1u), 31u)]), vec4<u32>(0u, ~1u, _wgslsmith_dot_vec2_u32(~var_1.b.wy, abs(~u_input.c)), var_1.b.x), func_4(global3[_wgslsmith_index_u32(u_input.c.x, 8u)], var_0.d), Struct_1(var_0.c.a));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.b.xyw, min(vec3<u32>(var_2.b.x >> (41070u % 32u), 27856u, _wgslsmith_add_u32(54245u, 1u)), _wgslsmith_mult_vec3_u32(min(var_2.b.xxz, vec3<u32>(21674u, 1u, 4294967295u)), var_0.b.yyw))) >> (var_2.b.x % 32u), 14u)];
    var var_4 = vec3<i32>(u_input.b.x, ~42404i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(1587f, -1843f, 1079f, -1048f))).x * 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

