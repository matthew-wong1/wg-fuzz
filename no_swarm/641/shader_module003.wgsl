struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 9>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    global2 = global0.e;
    global0 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 5048i, u_input.a.x), ~global0.d), -vec3<i32>(42507i, -16508i, -1i)) | -_wgslsmith_add_i32(-709i, -1i), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(15570i, _wgslsmith_mult_i32(-7596i, 19752i)), global0.b.x), 4728i, abs(abs(_wgslsmith_add_i32(17477i, u_input.a.x)))), global0.e, abs(u_input.a.xwz), global0.e);
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -12550i, _wgslsmith_add_i32(u_input.a.x, 15048i)), firstTrailingBit(((global0.b << (vec4<u32>(global0.e.b.x, global2.b.x, 1u, global2.b.x) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(29804u, 4294967295u, global2.b.x, 1u)) % vec4<u32>(32u))) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -51706i, u_input.a.x, u_input.a.x), u_input.a)), global0.e, ~_wgslsmith_sub_vec3_i32(-vec3<i32>(global0.b.x, -1175i, global0.a), -global0.b.xxz), global0.c);
    global1 = array<bool, 9>();
    return -50024i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_i32(~(-global0.a), _wgslsmith_mult_i32(~(-global0.a), func_3())), ~u_input.a, Struct_1(select(!select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(138u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], true), false), !global2.a, all(vec4<bool>(true, global2.a.x, global2.a.x, true))), vec2<u32>(~(~4294967295u), 1u), global0.c.c), firstLeadingBit(~_wgslsmith_clamp_vec3_i32(abs(u_input.a.yxx), global0.d << (vec3<u32>(69142u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(global0.b.x, 97582i, -61284i) | vec3<i32>(-27584i, u_input.a.x, global0.b.x))), global0.e);
    global2 = var_0.c;
    var var_1 = global2.b;
    return var_0.e;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = func_2();
    let var_1 = Struct_3(Struct_2(-(global0.b.x << (_wgslsmith_div_u32(22973u, 53138u) % 32u)), -max(-vec4<i32>(14763i, global0.a, 16746i, u_input.a.x), vec4<i32>(0i, 19354i, global0.d.x, 0i)), var_0, countOneBits(min(vec3<i32>(u_input.a.x, u_input.a.x, 1i), _wgslsmith_mod_vec3_i32(u_input.a.zzz, vec3<i32>(2147483647i, u_input.a.x, -2147483647i)))), Struct_1(global2.a, vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(13063u, 1u, global0.c.b.x, 4294967295u)), 61704u & var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(666f, 1626f))))), Struct_1(!global0.c.a, ~select(~vec2<u32>(73970u, 47091u), arg_0.xx, global2.a.yy), global2.c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, 2482f)))))))));
    var var_2 = var_1;
    let var_3 = var_1;
    global1 = array<bool, 9>();
    return -10755i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(firstTrailingBit(func_1(~vec4<u32>(global0.e.b.x, 26551u, global2.b.x, global0.c.b.x))), u_input.a, func_2(), global0.d, func_2()), Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(95408u, 9u)], all(global2.a.xx)), global2.b, -648f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.c))), -505f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-427f - global0.e.c), _wgslsmith_f_op_f32(round(1000f))))));
    global1 = array<bool, 9>();
    var var_1 = Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstTrailingBit(84601u), ~var_0.b.b.x, _wgslsmith_div_u32(12779u, global2.b.x)), 9u)], true, false), global2.b, global0.c.c);
    var_0 = Struct_3(var_0.a, Struct_1(global0.e.a, vec2<u32>(~(~85844u), var_0.b.b.x), _wgslsmith_f_op_f32(min(var_0.a.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + var_0.c.x) * 151f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) - _wgslsmith_div_vec2_f32(vec2<f32>(-343f, -1685f), var_0.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.c, var_0.c), vec2<f32>(var_1.c, 1900f), !var_1.a.zy)))));
    let var_2 = _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(~global2.b.x, _wgslsmith_mod_u32(global0.e.b.x, 0u), abs(52425u)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(28312u, 4294967295u, var_0.b.b.x)), abs(vec3<u32>(var_1.b.x, var_1.b.x, global0.c.b.x)))), ~(~abs(~vec3<u32>(var_0.b.b.x, var_1.b.x, 61021u))));
    let var_3 = Struct_2(2147483647i, global0.b, func_2(), vec3<i32>(u_input.a.x, ~u_input.a.x, (~u_input.a.x | (i32(-1i) * -37824i)) | select(global0.b.x >> (28804u % 32u), _wgslsmith_add_i32(global0.d.x, u_input.a.x), false)), Struct_1(!global0.c.a, var_2.xz, -1584f));
    global1 = array<bool, 9>();
    var_0 = Struct_3(var_3, Struct_1(select(vec3<bool>(!global1[_wgslsmith_index_u32(5755u, 9u)], true, global0.c.a.x), vec3<bool>(var_1.a.x, true, true), global2.a), var_0.b.b | var_3.e.b, _wgslsmith_f_op_f32(trunc(func_2().c))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-620f, -646f)) - 475f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(func_2().c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.e.c, 464f)) + var_0.c.x)))));
    global1 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1055f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -751f), 496f, global1[_wgslsmith_index_u32(31596u, 9u)])), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.c)))))), vec3<i32>((_wgslsmith_sub_i32(35667i, -1i) ^ u_input.a.x) & ~1i, u_input.a.x, 1i | func_3()));
}

