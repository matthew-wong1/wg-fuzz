struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(4294967295u, 1u, 5200u));

var<private> global1: array<vec3<bool>, 24>;

var<private> global2: vec2<f32>;

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = abs(_wgslsmith_mult_vec2_u32(u_input.e.xx, _wgslsmith_clamp_vec2_u32(~u_input.c.wz, ~firstLeadingBit(u_input.c.ww), vec2<u32>(u_input.a, 1u))));
    let var_2 = Struct_4(vec4<f32>(-614f, _wgslsmith_div_f32(_wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(abs(-798f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1009f), global2.x), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1302f, global2.x, -174f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(588f, -177f, global2.x))) - vec3<f32>(-616f, global2.x, global2.x)))));
    let var_3 = 4294967295u | u_input.a;
    var_0 = true;
    return var_2;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_3(Struct_2(u_input.a | _wgslsmith_add_u32(u_input.c.x, abs(u_input.e.x)), min(vec2<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), arg_1.zx)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) - _wgslsmith_f_op_f32(-arg_0));
    let var_2 = Struct_2(~u_input.e.x, -vec2<i32>(-var_0.a.b.x, select(-1i, 28280i, true)) | var_0.a.b);
    let var_3 = Struct_3(var_0.a);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(60234u, 4294967295u), 1u, u_input.c.x) >> (min(u_input.c.xxx, min(select(vec3<u32>(var_0.a.a, var_2.a, var_3.a.a), u_input.e.yzy, vec3<bool>(true, true, true)), countOneBits(vec3<u32>(var_0.a.a, var_3.a.a, u_input.a)))) % vec3<u32>(32u)), u_input.e.zwz);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_3 {
    global0 = array<vec3<u32>, 1>();
    let var_0 = func_2(!global1[_wgslsmith_index_u32(0u, 24u)], vec4<i32>(-1i) * -vec4<i32>(1i, -26183i, ~49779i, u_input.b));
    var var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0, u_input.c.x) << (global0[_wgslsmith_index_u32(u_input.e.x, 1u)] % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 1u, 1u), vec3<u32>(127516u, u_input.e.x, 752u))) << (1u % 32u), _wgslsmith_div_vec2_i32(-reverseBits(vec2<i32>(u_input.b, 1i)), ~(vec2<i32>(0i, 24452i) << (u_input.e.wy % vec2<u32>(32u))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.a))), func_2(select(global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(sign(-555f)), vec4<i32>(var_1.a.b.x, -1i, u_input.d, var_1.a.b.x) | vec4<i32>(43591i, u_input.b, -1566i, 1i)), 24u)], arg_1.yzx, _wgslsmith_mod_u32(var_1.a.a, u_input.c.x) > firstLeadingBit(var_1.a.a)), select(-vec4<i32>(u_input.b, var_1.a.b.x, var_1.a.b.x, u_input.d) << (select(u_input.c, vec4<u32>(62227u, 31768u, arg_0, 1u), arg_1) % vec4<u32>(32u)), vec4<i32>(var_1.a.b.x, var_1.a.b.x, -u_input.d, ~(-1i)), select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(false, true, false, false), arg_1))).b);
    var_1 = Struct_3(Struct_2(1u, _wgslsmith_mod_vec2_i32(~firstTrailingBit(var_1.a.b), vec2<i32>(-2147483647i | var_1.a.b.x, ~var_1.a.b.x))));
    return Struct_3(var_1.a);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = 433f;
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -163f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))), global2.x)));
    var var_1 = arg_3.a;
    global1 = array<vec3<bool>, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1003f, -179f, _wgslsmith_f_op_f32(round(1260f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1567f, _wgslsmith_f_op_f32(abs(-2309f)), -204f))), vec3<bool>(true || any(global1[_wgslsmith_index_u32(6329u, 24u)]), !(global2.x == var_0), true))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1175i;
    var var_1 = vec2<f32>(-1589f, 368f);
    var var_2 = func_4(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-927f, -560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)))), ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.e.x, 1u)], u_input.e.zyw), abs(vec3<u32>(4294967295u, 0u, u_input.c.x)))), func_1(74233u, vec4<bool>(true, true, true, true), Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, 350f, -1000f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, global2.x, var_1.x))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-842f + global2.x)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(ceil(global2.x))), 374f))));
    let var_3 = ~(~abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-773f, -1i, var_2.a.b.x, ~vec4<i32>(var_2.a.b.x, ~var_2.a.b.x, min(u_input.d, -256i) >> (var_3 % 32u), countOneBits(-51267i)));
}

