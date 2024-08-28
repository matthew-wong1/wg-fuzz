struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
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

var<private> global0: u32 = 84190u;

var<private> global1: array<u32, 23>;

var<private> global2: Struct_1 = Struct_1(true, false, vec3<u32>(0u, 18758u, 1u));

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(805f, -1145f, 672f, -1180f)), vec4<f32>(_wgslsmith_f_op_f32(873f - -1304f), -1000f, 1839f, -1440f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.x)))))), var_0.x);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1117f - var_0.x)), _wgslsmith_f_op_f32(-1f))))));
    global0 = _wgslsmith_sub_u32(4294967295u, 4294967295u);
    global0 = ~0u >> (global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(global2.c.x, ~_wgslsmith_clamp_u32(global2.c.x, 60485u, global3.c.x)), 41308u << (~4294967295u % 32u), !(max(global1[_wgslsmith_index_u32(global3.c.x, 23u)], 903u) < _wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], global2.c.x))), 23u)] % 32u);
    return ~global3.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    global0 = 8199u;
    var var_0 = arg_0.zyx;
    var var_1 = Struct_1(true, var_0.x, func_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, global3.a, global2.a), vec3<bool>(global2.b, false, global2.a)), Struct_1(true, !any(arg_0.zxy), ~u_input.b)));
    global3 = Struct_1(true, false, global3.c);
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(u_input.a), 43731i, max(abs(_wgslsmith_div_i32(378i, u_input.a)), u_input.c.x), -30641i), min(-vec4<i32>(-1i | u_input.a, ~(-21809i), 4768i, u_input.a), abs(vec4<i32>(u_input.a, -14613i, -100895i, u_input.c.x)) << (vec4<u32>(~1u, _wgslsmith_sub_u32(4294967295u, 52118u), ~4294967295u, ~u_input.b.x) % vec4<u32>(32u))));
    return Struct_1(!(!(max(global3.c.x, 0u) >= 4294967295u)), true, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(vec4<bool>(1u < _wgslsmith_mult_u32(firstTrailingBit(arg_3.c.x), max(global3.c.x, 72338u)), global3.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_1, 16194i, arg_1), vec4<i32>(u_input.a, arg_1, u_input.c.x, -47727i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_1, u_input.c.x, 18419i), vec4<i32>(arg_1, u_input.c.x, u_input.c.x, u_input.a))) > -1i, !all(!vec4<bool>(global3.a, arg_0.a, arg_3.b, global2.b))), ~vec2<u32>(8847u, 1u));
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> f32 {
    global2 = arg_1;
    var var_0 = func_4(arg_1, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), func_2(!vec4<bool>(global2.b || false, true, any(vec2<bool>(global2.a, global3.b)), !global2.b), reverseBits(global3.c.yy)));
    let var_1 = func_2(!select(!vec4<bool>(global2.b, false, var_0.b, true), vec4<bool>(true, func_2(vec4<bool>(var_0.a, global3.a, true, false), vec2<u32>(global3.c.x, 0u)).a, any(vec4<bool>(arg_1.b, var_0.b, var_0.a, var_0.a)), !var_0.a), _wgslsmith_f_op_f32(333f * arg_2) >= -993f), vec2<u32>(~global3.c.x, _wgslsmith_add_u32(4294967295u, ~(~0u))));
    global0 = ~(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, global2.c.x, 1u), vec4<u32>(68390u, 4294967295u, 1u, 33097u)), abs(vec4<u32>(0u, u_input.b.x, global2.c.x, 14283u))), global3.c.x) & arg_1.c.x);
    var var_2 = Struct_1(true, true, reverseBits(~(~global2.c)) >> (global3.c % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_2)) - -1033f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(func_1(73877u, Struct_1(true, global2.a, vec3<u32>(75433u, u_input.b.x, u_input.b.x)), -182f)))) - -1407f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(910f - -654f) + 1214f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(582f * 1000f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(200f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1755f + 824f), -1222f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(503f)))))));
    global2 = func_4(Struct_1(all(vec2<bool>(false, global2.a)) & any(!vec4<bool>(true, global3.a, true, global3.b)), func_2(!vec4<bool>(false, global2.a, global2.b, false), func_2(select(vec4<bool>(true, false, global2.a, false), vec4<bool>(false, global3.b, global2.b, false), vec4<bool>(false, global2.b, global2.a, true)), vec2<u32>(49271u, u_input.b.x)).c.xz).a, ~vec3<u32>(global2.c.x >> (global3.c.x % 32u), 4294967295u | u_input.b.x, ~4294967295u)), u_input.a >> (1u % 32u), var_0.x, func_4(func_2(!(!vec4<bool>(global2.a, true, global2.b, false)), firstLeadingBit(~global2.c.xx)), ~(-(u_input.a >> (global2.c.x % 32u))), 1991f, Struct_1(true, !global3.b, global3.c)));
    global2 = func_4(func_4(Struct_1(true, true, ~(~u_input.b)), _wgslsmith_clamp_i32(select(reverseBits(u_input.c.x), 0i, global3.a), 16488i, _wgslsmith_add_i32(countOneBits(-2147483647i), abs(24638i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-204f, var_0.x, func_2(vec4<bool>(global2.a, false, true, global2.a), global2.c.yx).b)) * 1f), Struct_1(func_2(select(vec4<bool>(global2.a, global3.b, false, false), vec4<bool>(global2.a, global2.a, true, false), vec4<bool>(global3.b, false, false, global3.b)), _wgslsmith_add_vec2_u32(u_input.b.xx, global3.c.zz)).a, false, global3.c)), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - var_0.x))))), Struct_1(global2.b, true, ~_wgslsmith_mod_vec3_u32(global3.c | global3.c, _wgslsmith_mod_vec3_u32(u_input.b, global2.c))));
    global0 = global2.c.x;
    global0 = _wgslsmith_sub_u32(~(~4294967295u), u_input.b.x);
    let var_1 = min(firstLeadingBit(~global3.c), vec3<u32>(~4294967295u, u_input.b.x >> (u_input.b.x % 32u), 566u));
    global3 = Struct_1(!select(global2.b, any(vec2<bool>(global3.b, global3.b)), true) | true, true, u_input.b);
    let var_2 = func_2(!vec4<bool>(u_input.c.x > u_input.a, _wgslsmith_div_f32(var_0.x, -819f) > var_0.x, global3.b, global3.b), firstLeadingBit(vec2<u32>(1u ^ var_1.x, ~abs(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-252f, _wgslsmith_dot_vec4_i32(~(-(~vec4<i32>(32012i, 0i, u_input.c.x, u_input.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, 35844i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -40580i, 12400i)), countOneBits(22357i), u_input.c.x, ~2147483647i), ~select(vec4<i32>(-23361i, 1i, 8076i, -1i), vec4<i32>(52312i, u_input.a, u_input.c.x, u_input.a), vec4<bool>(var_2.b, false, true, false)))));
}

