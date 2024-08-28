struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(7973u, 22913i, 29936i);

var<private> global1: array<vec2<i32>, 30>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec3<i32> = vec3<i32>(0i, 2875i, 10721i);

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    global4 = abs(max(select(_wgslsmith_dot_vec4_i32(~vec4<i32>(global3.x, global0.c, 7426i, -1i), countOneBits(vec4<i32>(global0.c, -2147483647i, global0.c, 2261i))), global0.c, any(vec3<bool>(true, true, true))), global0.c));
    let var_0 = 7175u;
    var var_1 = Struct_5(select(vec2<i32>(~(~global3.x), global0.b), global3.xx, select(vec2<bool>(all(vec4<bool>(true, true, false, false)), true), vec2<bool>(true, true), _wgslsmith_clamp_i32(u_input.d, 72969i, -2147483647i) == 0i)), 1u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-3176f)), _wgslsmith_f_op_f32(ceil(-324f))), _wgslsmith_f_op_f32(step(-1452f, -746f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1348f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1036f)) + _wgslsmith_f_op_f32(108f * 547f)), 932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(159f))))), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)))), Struct_3(Struct_2(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.c, 0i), vec3<i32>(u_input.d, -38641i, 5884i))), vec2<bool>(any(vec2<bool>(false, false)), true), global2[_wgslsmith_index_u32(abs(min(4294967295u, 31382u)), 3u)], vec3<bool>(true, true, true), countOneBits(global0.a)), select(~var_0 >= (global0.a >> (37479u % 32u)), !all(vec4<bool>(true, false, false, true)), true)));
    let var_2 = reverseBits(~max(u_input.b, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, 1u, 65773u), u_input.e), vec3<u32>(18779u, 0u, 19459u))));
    let var_3 = Struct_4(4294967295u, ~max(firstLeadingBit(-1i), ~(-1i) & var_1.e.a.a), global3.x);
    return !var_1.e.a.d;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_i32(countOneBits(2669i), select(-6105i, global0.c, u_input.d < u_input.d)), vec2<bool>(true, true), Struct_1(true), func_3(), global0.a ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, u_input.b.x, 7597u), vec3<u32>(1u, u_input.e.x, global0.a))), !(!(global3.x != 1154i)) | !func_3().x);
    return _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global3.zz);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = ~global0.a;
    var var_1 = ((min(0u, 45566u) & (min(75083u, var_0) << (53042u % 32u))) > ~arg_1.x) & (!(arg_1.x >= (global0.a | 8620u)) && !(!all(vec4<bool>(false, true, true, true))));
    var var_2 = ~u_input.b.xx;
    let var_3 = Struct_5(countOneBits(_wgslsmith_mult_vec2_i32(arg_0, global3.yy >> (vec2<u32>(u_input.a.x, var_0) % vec2<u32>(32u)))) >> (arg_1.xx % vec2<u32>(32u)), _wgslsmith_dot_vec2_u32(arg_1.xz, ~abs(u_input.e.yx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-705f, -126f, 1796f) - vec3<f32>(160f, -292f, -242f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1859f, -1548f, 1252f), vec3<f32>(-1171f, 1000f, -1009f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(731f, -895f, -1000f) * vec3<f32>(-1260f, 869f, 1393f))))), true, Struct_3(Struct_2(~_wgslsmith_clamp_i32(20892i, global0.c, -24163i), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), global2[_wgslsmith_index_u32(~var_2.x, 3u)], vec3<bool>(true, true, true), 4294967295u), ~max(global0.a, 1u) > ~(global0.a >> (var_2.x % 32u))));
    var var_4 = !var_3.d;
    return StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, i32(-1i) * -2147483647i, -2009i), ~(-vec3<i32>(arg_0.x, arg_0.x, u_input.d))), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 66302u & var_0) | ~var_2.x, select(~39354u, 17922u << ((var_3.e.a.e << (global0.a % 32u)) % 32u), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) + -1000f));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    return func_4((global1[_wgslsmith_index_u32(min(26470u, abs(0u)), 30u)] & (func_2() | global1[_wgslsmith_index_u32(45156u, 30u)])) & global1[_wgslsmith_index_u32(1u, 30u)], min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, ~39624u, global0.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, global0.a, 1u, u_input.a.x), vec4<u32>(u_input.e.x, global0.a, global0.a, u_input.b.x)), 4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 8856u), vec3<u32>(u_input.c, u_input.c, global0.a), false) | abs(u_input.e), abs(u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 0i;
    let x = u_input.a;
    s_output = func_1(Struct_1(false));
}

