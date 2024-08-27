struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 11989u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = arg_0;
    let var_0 = global1.x;
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, true, u_input.d == 2147483647i)), true, true, !all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))), !(!vec4<bool>(any(vec4<bool>(true, true, true, true)), false, global2.a.x <= 41982u, true)), !((global0.x >= firstLeadingBit(1i)) & false));
    global1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a.x, min(4294967295u, arg_0.a.x), 43327u, ~(~global1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(max(firstLeadingBit(57550u), ~global2.a.x), 1u, countOneBits(1u), _wgslsmith_sub_u32(global1.x, u_input.e.x) ^ (u_input.c ^ u_input.a.x)), vec4<u32>(_wgslsmith_mult_u32(1u, ~0u), _wgslsmith_mod_u32(~arg_0.a.x, 12175u), arg_0.a.x, _wgslsmith_clamp_u32(u_input.c, ~arg_0.a.x, ~4294967295u))));
    let var_2 = min(-(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-16894i, u_input.d, global0.x)), vec3<i32>(global0.x, u_input.d, -2718i)) | firstLeadingBit(vec3<i32>(u_input.d, global0.x, 2147483647i) >> (vec3<u32>(13512u, 24682u, arg_0.a.x) % vec3<u32>(32u)))), vec3<i32>(abs(u_input.d >> (arg_0.a.x % 32u)), 43710i, _wgslsmith_clamp_i32(global0.x, global0.x | 0i, _wgslsmith_mult_i32(-2147483647i, 0i))));
    return true;
}

fn func_2() -> Struct_3 {
    global2 = Struct_1(reverseBits(global2.a));
    global0 = vec3<i32>(-1i) * -(abs(abs(vec3<i32>(u_input.d, u_input.d, -28794i))) >> (firstLeadingBit(~vec3<u32>(1u, global2.a.x, global2.a.x)) % vec3<u32>(32u)));
    var var_0 = select(vec4<bool>(!(global0.x >= -2147483647i), true, select(global2.a.x <= u_input.b.x, true, true) == func_3(Struct_1(global2.a)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), select(vec4<bool>(true, true, (7388u != u_input.b.x) & false, any(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, all(vec2<bool>(true, true)), 0i == u_input.d, true), vec4<bool>(all(vec2<bool>(true, false)), u_input.d >= u_input.d, true, true), false), true), select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, true, 0u != u_input.b.x), !vec4<bool>(true, all(vec2<bool>(false, false)), false, true)));
    var var_1 = _wgslsmith_f_op_f32(-2367f + -1195f);
    var var_2 = ~(~_wgslsmith_sub_u32(firstTrailingBit(abs(global2.a.x)), ~0u));
    return Struct_3(!(!vec4<bool>(var_0.x, false, true, var_0.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(814f, 1371f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1253f + _wgslsmith_f_op_f32(-404f * -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1043f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f + 150f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1859f)))) * _wgslsmith_f_op_f32(ceil(984f))));
    var var_2 = vec3<bool>(true, true, !any(vec4<bool>(true, true, true, true)));
    global0 = -reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 1i, u_input.d), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -9678i, u_input.d), vec3<i32>(46584i, u_input.d, -7288i), vec3<i32>(global0.x, -42462i, -1625i)))));
    var var_3 = false;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1257f, _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(131f - -1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1986f, -708f, 487f) + vec4<f32>(-826f, -337f, 916f, 702f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-103f, 2647f, -215f, 1212f), vec4<f32>(606f, 617f, 769f, -178f), true)))))))));
    let var_2 = Struct_2(any(vec2<bool>(false, var_0.a.x)), Struct_1(vec2<u32>(u_input.a.x, 4294967295u)), ~vec4<u32>(4294967295u, global2.a.x, firstLeadingBit(~8014u), (global2.a.x | global1.x) | ~global2.a.x), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u & u_input.b.x, 18114u), _wgslsmith_sub_vec2_u32(~global2.a, global1.yz), global1.yy)));
    var_0 = Struct_3(var_0.a);
    var var_3 = Struct_3(vec4<bool>((_wgslsmith_f_op_f32(f32(-1f) * -844f) != _wgslsmith_f_op_f32(step(-460f, -731f))) || (_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -16935i), vec2<i32>(global0.x, u_input.d)) <= 2147483647i), any(vec3<bool>(true, true, var_2.a)), var_2.a, true));
    var_0 = Struct_3(!(!(!vec4<bool>(var_2.a, var_3.a.x, var_2.a, var_0.a.x))));
    let var_4 = countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.x, global0.x, -53856i, global0.x), firstLeadingBit(vec4<i32>(-1i, 0i, u_input.d, 1i))), firstTrailingBit(-vec4<i32>(-1966i, global0.x, global0.x, u_input.d)))) | abs(global0.x);
    let var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.a, vec4<f32>(-1252f, var_1.x, var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x)))), var_1.ywx);
}

