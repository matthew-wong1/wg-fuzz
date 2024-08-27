struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 93621u);

var<private> global1: array<u32, 25> = array<u32, 25>(665u, 77805u, 4889u, 53804u, 0u, 36903u, 1u, 0u, 56505u, 35608u, 18805u, 16022u, 4294967295u, 61139u, 10388u, 19673u, 2988u, 1u, 31431u, 1u, 9866u, 0u, 56798u, 89853u, 0u);

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 25u)];
    global1 = array<u32, 25>();
    var var_1 = Struct_1(any(select(!vec4<bool>(false, true, global2.b.x, global2.b.x), select(vec4<bool>(true, false, true, true), select(vec4<bool>(global2.a, true, false, false), vec4<bool>(true, global2.b.x, false, true), global2.b.x), !vec4<bool>(global2.b.x, global2.a, global2.a, global2.b.x)), !select(vec4<bool>(global2.b.x, false, true, global2.a), vec4<bool>(true, global2.b.x, global2.a, global2.b.x), global2.b.x))), !global2.b);
    var_1 = Struct_1(true, select(!select(select(vec2<bool>(global2.b.x, false), var_1.b, false), vec2<bool>(var_1.b.x, true), vec2<bool>(false, false)), vec2<bool>(var_1.a, select(true, global2.a, true)), var_1.a));
    var_1 = Struct_1(global2.b.x, select(vec2<bool>(u_input.d >= countOneBits(u_input.c), all(!vec4<bool>(false, global2.a, false, false))), var_1.b, !global2.b));
    return !select(select(select(!vec3<bool>(global2.b.x, true, true), vec3<bool>(true, global2.b.x, false), var_1.a), vec3<bool>(!global2.b.x, false, any(vec3<bool>(true, var_1.a, global2.a))), all(vec2<bool>(global2.a, true))), !(!select(vec3<bool>(global2.b.x, global2.b.x, var_1.b.x), vec3<bool>(var_1.b.x, var_1.a, true), true)), select(select(vec3<bool>(var_1.a, true, false), !vec3<bool>(global2.a, var_1.b.x, true), var_1.b.x), vec3<bool>(global0.x > 4294967295u, var_1.b.x, var_1.a), global2.a));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global2 = Struct_1(all(select(!(!vec4<bool>(true, global2.b.x, global2.b.x, global2.b.x)), !vec4<bool>(false, false, global2.a, global2.a), !any(vec3<bool>(global2.a, false, global2.a)))), global2.b);
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    var var_0 = _wgslsmith_mult_i32(~u_input.b.x, -1i);
    var var_1 = Struct_1(all(!func_3(vec3<i32>(1i, u_input.b.x, u_input.b.x))), select(vec2<bool>(true, true), global2.b, vec2<bool>(any(select(vec2<bool>(true, global2.a), vec2<bool>(true, false), global2.b)), true & all(vec4<bool>(global2.a, false, global2.b.x, global2.b.x)))));
    return Struct_1(true, func_3(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -1i, 1i, u_input.a)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, u_input.a)), u_input.b.x >> (~u_input.c % 32u), 0i)).zy);
}

fn func_1() -> i32 {
    global0 = vec2<u32>(reverseBits(91765u), 74050u);
    let var_0 = func_2(vec2<u32>(~max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(53068u, 71785u, 4294967295u), vec3<u32>(1u, 31573u, global0.x))), 0u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2243f) - _wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(1445f - 2184f)))), 432f);
    global1 = array<u32, 25>();
    global2 = func_2(_wgslsmith_mult_vec2_u32(max(~abs(vec2<u32>(u_input.d, global0.x)), vec2<u32>(global1[_wgslsmith_index_u32(~13032u, 25u)], 0u)), ~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(5250u, 79016u)), vec2<u32>(u_input.c, 61807u) << (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(24407u, 25u)]) % vec2<u32>(32u)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec4<i32>(u_input.a, 1i, 2147483647i, 7950i));
    let var_1 = -_wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(-var_0.ww, vec2<i32>(-2147483647i, 1i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.x, u_input.b.x), -vec2<i32>(-37761i, var_0.x) << (~vec2<u32>(41250u, global0.x) % vec2<u32>(32u))));
    let var_2 = !select(!vec2<bool>(global2.a | true, true), global2.b, !any(vec4<bool>(false, false, global2.b.x, global2.a)));
    var var_3 = vec4<i32>(~30670i, -1i | (_wgslsmith_div_i32(reverseBits(-31290i), var_0.x) | var_1.x), u_input.a, 1i);
    let var_4 = _wgslsmith_mult_vec3_i32(min(abs(vec3<i32>(func_1(), var_1.x ^ -25364i, _wgslsmith_mult_i32(var_1.x, var_0.x))), var_3.xxw), abs(select(var_0.zzx, ~var_0.yyw, select(func_3(var_3.zzw), vec3<bool>(var_2.x, var_2.x, global2.b.x), vec3<bool>(var_2.x, var_2.x, var_2.x)))));
    global0 = ~max(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(44262u, 4294967295u) ^ vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)], 53380u), select(vec2<u32>(u_input.c, global0.x), vec2<u32>(global0.x, 0u), false)), ~vec2<u32>(0u, 100237u)), ~vec2<u32>(1u, ~4294967295u));
    let var_5 = Struct_1(true, select(!(!global2.b), select(vec2<bool>(all(vec3<bool>(false, true, global2.b.x)), true), select(!var_2, vec2<bool>(global2.b.x, global2.a), global2.a), true), !select(vec2<bool>(false, true), vec2<bool>(true, global2.b.x), var_2)));
    var var_6 = var_5;
    global0 = countOneBits(select(~((vec2<u32>(global1[_wgslsmith_index_u32(global0.x, 25u)], 4294967295u) ^ vec2<u32>(93063u, u_input.c)) << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 25u)], 25u)], global1[_wgslsmith_index_u32(71334u, 25u)]) % vec2<u32>(32u))), min(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 56934u), vec2<u32>(global0.x, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 35814u), vec2<u32>(4294967295u, 1u))), (vec2<u32>(1280u, global1[_wgslsmith_index_u32(4109u, 25u)]) << (vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.c, 25u)]) % vec2<u32>(32u))) ^ (vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 12338u) << (vec2<u32>(global1[_wgslsmith_index_u32(103408u, 25u)], 4294967295u) % vec2<u32>(32u)))), var_5.b));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, -var_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(552f, 246f), vec2<f32>(-604f, 320f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1264f, 1616f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(910f, 205f), vec2<f32>(-2236f, 288f))))));
}

