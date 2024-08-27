struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(2147483647i, 4788i, 7153i, -1i), vec4<i32>(-37687i, 58692i, -9663i, -1i), vec4<i32>(-14144i, i32(-2147483648), 34674i, -81468i), vec4<i32>(31145i, i32(-2147483648), 8688i, 9898i), vec4<i32>(-1i, 1i, 3751i, -4896i), vec4<i32>(22026i, i32(-2147483648), -31078i, 70339i), vec4<i32>(i32(-2147483648), -64201i, 33904i, 1i), vec4<i32>(90078i, -1i, 21667i, 35734i), vec4<i32>(0i, 1i, i32(-2147483648), 4409i), vec4<i32>(-26842i, 0i, i32(-2147483648), -1i), vec4<i32>(-25465i, -2667i, 0i, -17121i), vec4<i32>(42747i, 16313i, 26935i, -1i), vec4<i32>(2147483647i, 0i, 11131i, 6518i), vec4<i32>(2147483647i, -7545i, 8424i, 2147483647i), vec4<i32>(1269i, 0i, 1i, 43596i), vec4<i32>(0i, 1393i, -33493i, -15588i), vec4<i32>(2147483647i, 60273i, 11472i, i32(-2147483648)), vec4<i32>(-1i, -1i, 15250i, -1i));

var<private> global1: Struct_4;

var<private> global2: array<Struct_4, 27>;

var<private> global3: Struct_2 = Struct_2(1413f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec2<f32> {
    global3 = Struct_2(455f);
    global1 = Struct_4(global1.c, !all(global1.e), global1.a, false, vec3<bool>(any(!select(vec4<bool>(true, global1.d, global1.b, global1.e.x), vec4<bool>(false, global1.b, global1.e.x, true), vec4<bool>(global1.b, true, false, true))), global1.e.x && global1.b, all(select(global1.e, !global1.e, vec3<bool>(false, global1.d, global1.d)))));
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(~(-countOneBits(u_input.b)), u_input.b), -(~u_input.b));
    let var_1 = ~(~1u);
    var var_2 = vec2<bool>(any(vec4<bool>((0i << (u_input.d % 32u)) != (i32(-1i) * -1i), all(select(vec2<bool>(global1.d, global1.d), vec2<bool>(true, global1.b), global1.e.x)), all(!global1.e), any(vec3<bool>(true, global1.e.x, false)))), !(!(global1.b && true)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(global1.c.b.a, -485f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, arg_0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c.c, vec2<f32>(-1194f, global3.a))))), global1.a.c);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    return !(!global1.d & global1.d);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_4 {
    let var_0 = any(global1.e.xx) & func_4(_wgslsmith_add_vec3_i32(vec3<i32>(select(5963i, u_input.b, global1.d), 7511i, -u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 22573i, u_input.b), vec3<i32>(u_input.b, 42274i, u_input.b)) | select(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(1i, 16261i, -1i), global1.e)), Struct_3(global1.a.b, global1.c.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-597f, global1.c.a.a), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(global3.a, 908f, global3.a, 636f), arg_0)), false)), arg_1), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.d, 0u, 16059u)), firstLeadingBit(firstLeadingBit(u_input.c))));
    global3 = Struct_2(_wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_1(abs(vec3<i32>(~(~u_input.b), firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(firstLeadingBit(9054u), 18u)], select(global0[_wgslsmith_index_u32(32695u, 18u)], vec4<i32>(-19546i, -18557i, 6637i, -2147483647i), true)))), -(i32(-1i) * -_wgslsmith_add_i32(-1i, 0i)), _wgslsmith_f_op_f32(floor(arg_1)), u_input.b, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(62306u, u_input.c.x), u_input.a.xz))));
    var var_2 = vec4<i32>(var_1.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, u_input.b, var_1.d, var_1.d), -global0[_wgslsmith_index_u32(51427u, 18u)]), -2147483647i), _wgslsmith_mult_i32(abs(-u_input.b), u_input.b)), -21071i, -1i);
    let var_3 = _wgslsmith_f_op_f32(floor(var_1.c));
    return Struct_4(Struct_3(global1.c.a, global1.a.a, vec2<f32>(global1.a.d, _wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.a - arg_1))))), !global1.b, Struct_3(Struct_2(var_3), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1090f + global3.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.c) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, global3.a), vec2<f32>(-1072f, 1016f), var_0))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(global1.a.c, vec2<f32>(var_1.c, arg_1))), _wgslsmith_f_op_vec2_f32(global1.a.c - global1.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c.x) + _wgslsmith_f_op_f32(-global3.a)))), !all(!(!vec2<bool>(global1.e.x, global1.d))), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(616f - arg_1), -1247f) != 107f, var_0 || var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(110f)))) == -814f));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = ~arg_2.b;
    global1 = func_2(_wgslsmith_mod_u32(arg_2.e, 55968u), -398f);
    let var_1 = !vec3<bool>(true, global1.b, true);
    let var_2 = vec3<u32>(firstLeadingBit(u_input.c.x), select(select(4294967295u, 1u, !global1.d), ~min(1u, ~arg_2.e), global1.e.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.xy, u_input.a.xz), u_input.a.yy << (u_input.c.yy % vec2<u32>(32u))), vec2<u32>(u_input.a.x, 4294967295u)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2203f);
    return -22374i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(~(~2147483647i), -599i, 3754i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 2147483647i), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -55681i)))), vec4<i32>(_wgslsmith_div_i32(u_input.b, 1i), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, u_input.b), ~u_input.b), countOneBits(-u_input.b), -func_1(global1.c.a, global1.a.d, Struct_1(vec3<i32>(u_input.b, -1i, -2147483647i), u_input.b, 659f, u_input.b, u_input.d)))));
    let var_1 = vec3<bool>(global1.e.x, true, global1.b);
    global3 = Struct_2(-591f);
    var var_2 = Struct_1(var_0.wyy, firstLeadingBit(var_0.x), global1.a.c.x, u_input.b, ~4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1256f, global1.c.c.x, global3.a, global1.a.a.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-100f, global3.a, 1075f, var_2.c) * vec4<f32>(var_2.c, global1.c.a.a, var_2.c, var_2.c)))) + vec4<f32>(global3.a, _wgslsmith_f_op_f32(max(476f, -1000f)), global1.a.d, global3.a)))));
    global2 = array<Struct_4, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~(((vec2<u32>(26566u, 54438u) | u_input.a.xy) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, var_2.e), u_input.c.yz)) << (firstTrailingBit(u_input.c.xz & u_input.a.xy) % vec2<u32>(32u))));
}

