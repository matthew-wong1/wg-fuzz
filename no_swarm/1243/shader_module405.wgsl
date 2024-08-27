struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32>;

var<private> global2: vec3<u32>;

var<private> global3: f32;

var<private> global4: array<vec2<bool>, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = 0i;
    let var_1 = arg_2.x;
    global4 = array<vec2<bool>, 10>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)) * _wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(-302f - 1045f)))));
    var var_3 = arg_0;
    return !global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u) ^ (_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 113817u, 23321u), ~10269u) >> (_wgslsmith_dot_vec2_u32(global0.yw >> (u_input.b % vec2<u32>(32u)), max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(36475u, 209u))) % 32u)), 10u)];
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(any(vec3<bool>(arg_0 <= -13763i, arg_1.a, any(func_3(Struct_3(global4[_wgslsmith_index_u32(52515u, 10u)], Struct_1(arg_1.a, false, global0.x), Struct_1(false, false, arg_1.c), arg_1, vec2<f32>(-268f, -1376f)), arg_1.b, global4[_wgslsmith_index_u32(4294967295u, 10u)])))), false, ~u_input.b.x >> ((_wgslsmith_mod_u32(41055u ^ u_input.a, 27597u) & (1954u ^ u_input.a)) % 32u));
    var var_1 = 232f;
    let var_2 = Struct_2(true, arg_1, 2147483647i);
    global4 = array<vec2<bool>, 10>();
    global4 = array<vec2<bool>, 10>();
    return reverseBits(-1i);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> u32 {
    global1 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(0i ^ global1.x, 1i, 53339i) ^ vec3<i32>(min(50543i, -11908i), _wgslsmith_mult_i32(0i, global1.x), func_2(global1.x, Struct_1(arg_2, true, u_input.b.x)))), vec3<i32>(global1.x, -(-27557i >> (u_input.a % 32u)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(43852i, 41861i, 18289i, global1.x), vec4<i32>(global1.x, global1.x, 1i, global1.x)))) >> (global0.zzz % vec3<u32>(32u)));
    global0 = vec4<u32>(10934u, firstTrailingBit(1u), arg_0.x, firstLeadingBit(58218u));
    let var_0 = all(global4[_wgslsmith_index_u32(1u, 10u)]);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(782f, -1261f))));
    global1 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, -2147483647i, -1i), vec4<i32>(global1.x, global1.x, global1.x, -2147483647i))), ~(-vec4<i32>(-2147483647i, -19888i, global1.x, -1i) | select(vec4<i32>(0i, global1.x, -28892i, -1i), vec4<i32>(1i, 2147483647i, 13871i, global1.x), vec4<bool>(arg_2, false, true, true)))), global1.x, _wgslsmith_dot_vec2_i32(global1.zz, _wgslsmith_mult_vec2_i32(select(reverseBits(global1.xz), vec2<i32>(global1.x, -1i), !global4[_wgslsmith_index_u32(0u, 10u)]), vec2<i32>(~global1.x, global1.x))));
    return select(8742u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 57003u), _wgslsmith_mod_vec3_u32(global0.zxy, global0.wyx)) & arg_0.x, all(vec2<bool>(var_0, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~(abs(vec4<u32>(4733u, 56270u, 40570u, global0.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, global0.x, u_input.b.x, global2.x), vec4<u32>(global0.x, 38622u, 0u, global2.x)) % vec4<u32>(32u))), vec4<u32>(u_input.a, 0u, 1u, reverseBits(4294967295u))), func_1(_wgslsmith_mult_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 79965u), global0.yz)), 88229u, select(true, true, false)));
    let var_1 = reverseBits(vec2<i32>(global1.x, abs(~func_2(global1.x, Struct_1(false, false, global2.x)))));
    var var_2 = Struct_4(~var_0.x, -max(~(~global1.yy), var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-296f, -1000f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -151f), -558f)))));
    var var_3 = _wgslsmith_mod_i32(reverseBits(var_2.b.x), var_1.x);
    let var_4 = ~vec4<u32>(~u_input.a, _wgslsmith_mod_u32(countOneBits(44618u >> (var_0.x % 32u)), func_1(~u_input.b, reverseBits(global2.x), false)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(55533u, 4294967295u), u_input.b), 4294967295u), ~4294967295u);
    global0 = var_4;
    var_3 = ~var_1.x;
    let var_5 = select(~vec2<u32>(40978u, ~60015u), vec2<u32>(_wgslsmith_sub_u32(min(_wgslsmith_sub_u32(4294967295u, 52435u), firstLeadingBit(u_input.b.x)), var_0.x & firstTrailingBit(0u)), firstLeadingBit(func_1(min(vec2<u32>(var_2.a, global0.x), vec2<u32>(global2.x, global2.x)), 1u, false))), 698f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f), var_2.c));
    let var_6 = !(!select(vec3<bool>(true, all(vec3<bool>(true, false, true)), 1i < var_2.b.x), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), !all(vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a, 71356u), var_4.xx), vec3<u32>(var_0.x, ~23775u, var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -845f), ~countOneBits(~vec3<u32>(4294967295u, var_0.x, var_0.x)) & min(~vec3<u32>(var_0.x, var_2.a, u_input.a), min(global0.zwy, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global2.x, u_input.b.x), var_4.yxx, vec3<u32>(43707u, 1u, var_2.a)))), var_2.c);
}

