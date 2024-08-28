struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: bool;

var<private> global2: vec3<u32>;

var<private> global3: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-467f, 453f, 616f), vec3<f32>(1000f, 589f, -1605f), vec3<f32>(-577f, -969f, 644f), vec3<f32>(-1491f, -222f, 657f), vec3<f32>(-2048f, 531f, -566f), vec3<f32>(516f, 448f, -446f), vec3<f32>(-1000f, 581f, -287f), vec3<f32>(212f, 979f, -186f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    let var_0 = !(u_input.a != (select(79254u, 6383u, any(vec3<bool>(false, true, false))) ^ ~(u_input.e >> (54001u % 32u))));
    var var_1 = true || var_0;
    let var_2 = Struct_2(min(vec2<i32>(i32(-1i) * -2147483647i, -u_input.c) ^ select(select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(31087i, 16478i), vec2<bool>(false, var_0)), ~vec2<i32>(u_input.c, u_input.c), !vec2<bool>(var_0, var_0)), _wgslsmith_mult_vec2_i32(-countOneBits(vec2<i32>(u_input.c, 1i)), vec2<i32>(reverseBits(u_input.c), 0i))));
    global1 = !var_0;
    var var_3 = _wgslsmith_mod_vec3_u32(~(~(~abs(vec3<u32>(0u, global2.x, global2.x)))), ~u_input.d.xyx);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(95302u, 8u)] - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 225f, -1000f)) * vec3<f32>(792f, 1145f, -1006f)), global3[_wgslsmith_index_u32(abs(~var_3.x), 8u)]))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_1(arg_1, arg_3.x);
    var var_1 = Struct_1(2878i, 10036i);
    let var_2 = Struct_1(0i, select(-51934i, u_input.c, true));
    var var_3 = Struct_2(arg_3);
    var var_4 = _wgslsmith_sub_vec4_u32(u_input.d, countOneBits(countOneBits(vec4<u32>(~0u, ~27060u, global2.x, 37274u))));
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(628f)), arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), arg_2.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(~(_wgslsmith_sub_i32(1i, 35128i) << (global2.x % 32u)), arg_0.b), arg_0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-1478f * -945f), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(735f, -1823f, 1701f))) - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.e, 8u)])), _wgslsmith_f_op_vec3_f32(func_3())))), countOneBits(~(~(vec2<i32>(0i, u_input.c) | vec2<i32>(0i, var_0))))));
    global1 = !any(vec3<bool>(true, all(vec3<bool>(false, false, true)), false));
    var var_2 = vec2<i32>(-7490i, -(var_0 >> (reverseBits(_wgslsmith_add_u32(1u, 0u)) % 32u)));
    let var_3 = countOneBits(min(61713u, _wgslsmith_sub_u32(global2.x, 1u)));
    return Struct_2(_wgslsmith_div_vec2_i32(~abs(firstLeadingBit(vec2<i32>(13604i, -26154i))), _wgslsmith_mod_vec2_i32(vec2<i32>(~1i, 16207i << (global2.x % 32u)), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_0, arg_0.a)), select(vec2<i32>(10582i, var_2.x), vec2<i32>(24185i, 2147483647i), false)))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    return func_2(Struct_1(u_input.c, 29523i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-u_input.c, -(countOneBits(u_input.c) & firstTrailingBit(u_input.c))));
    let var_1 = func_1((any(vec2<bool>(false, true)) && true) & true, u_input.d.yzz ^ (~u_input.d.wyy >> (~_wgslsmith_add_vec3_u32(u_input.d.xwy, u_input.d.xwx) % vec3<u32>(32u))));
    var var_2 = true;
    var var_3 = any(select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, !(0i > u_input.c)), true));
    let var_4 = Struct_1(abs(u_input.c), ~(-14063i | (-1i >> (u_input.d.x % 32u))));
    var var_5 = true;
    var_2 = all(!vec2<bool>(select(u_input.a != u_input.d.x, all(vec4<bool>(false, false, false, true)), 1i < var_1.a.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f * -350f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(544f * -475f), -267f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-739f, -528f) - -740f), _wgslsmith_f_op_f32(ceil(1539f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(533f, -1234f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(311f, 991f), _wgslsmith_f_op_f32(min(-840f, 816f)))), 279f), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, !all(vec2<bool>(true, false))))), _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.c, 17087i, -2147483647i, var_1.a.x)), -vec4<i32>(u_input.c, 0i, var_0.a.x, u_input.c)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(var_4.a, var_4.a, var_1.a.x, var_4.b)) | -vec4<i32>(-8445i, 0i, var_4.b, var_0.a.x), select(reverseBits(vec4<i32>(-2147483647i, u_input.c, 22726i, var_0.a.x)), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), all(vec4<bool>(false, true, true, false))))), u_input.d.wzz << (~u_input.d.xyz % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3[_wgslsmith_index_u32(u_input.e, 8u)])) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) * _wgslsmith_f_op_f32(f32(-1f) * -1082f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(696f)) + _wgslsmith_f_op_f32(abs(-897f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-742f)) - -1523f))));
}

