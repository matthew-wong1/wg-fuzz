struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(vec3<u32>(4647u, 16425u, 3172u)), 1u, vec2<u32>(4294967295u, 1u), Struct_1(vec3<u32>(1u, 0u, 25884u)), vec3<i32>(5088i, 22652i, 1i)), Struct_3(Struct_1(vec3<u32>(0u, 61380u, 4294967295u)), 85277u, vec2<u32>(0u, 4294967295u), Struct_1(vec3<u32>(11173u, 4294967295u, 8056u)), vec3<i32>(15668i, 10170i, -36366i)));

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 0u, 0u)), 7362u, vec2<u32>(1u, 0u), Struct_1(vec3<u32>(684u, 1u, 55818u)), vec3<i32>(-29357i, 0i, 2147483647i));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(2377u, 1u, 24782u));

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32) -> bool {
    return false;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<u32>(countOneBits(~u_input.b.x), global1.a.x, 20753u)), global2.d, _wgslsmith_clamp_u32(((6586u ^ arg_0.x) ^ (4294967295u | global2.b)) | _wgslsmith_mod_u32(arg_0.x, _wgslsmith_div_u32(global3.a.x, global3.a.x)), global1.a.x, ~_wgslsmith_sub_u32(global3.a.x, abs(arg_0.x))), Struct_1(min(global3.a, countOneBits(arg_0))), ~global3.a);
    global2 = global0[_wgslsmith_index_u32(abs(~18959u), 2u)];
    let var_1 = reverseBits(u_input.b);
    return _wgslsmith_add_u32(28676u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(global3.a.x, var_0.a.a.x) << (~16988u % 32u), global1.a.x));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(~u_input.b.x);
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(~7950u), 2u)];
    global1 = var_1.a;
    global1 = var_1.a;
    let var_2 = global0[_wgslsmith_index_u32(func_3(var_1.a.a, -_wgslsmith_sub_i32(-(var_1.e.x | u_input.e.x), _wgslsmith_mod_i32(0i, i32(-1i) * -52282i))), 2u)];
    return global0[_wgslsmith_index_u32(~abs(11098u), 2u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_3 {
    global4 = ~global2.e.yx;
    global1 = func_1().d;
    var var_0 = ~vec2<i32>(-58304i, u_input.c);
    let var_1 = min(_wgslsmith_mod_vec3_i32(vec3<i32>(-global4.x, global4.x, 8541i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(arg_2.e.x, -24727i, -2147483647i) ^ vec3<i32>(47556i, var_0.x, 37976i))) | vec3<i32>(-22224i, global4.x, _wgslsmith_div_i32(41618i, var_0.x)), global2.e);
    global0 = array<Struct_3, 2>();
    return Struct_3(func_1().d, 1u, _wgslsmith_div_vec2_u32(reverseBits(~global2.c), arg_2.c), Struct_1(vec3<u32>(min(0u, arg_2.b), 4294967295u, ~4294967295u) ^ abs(vec3<u32>(global2.d.a.x, 79391u, global3.a.x))), vec3<i32>(~arg_2.e.x, 53467i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-465f, -1785f, -178f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(572f, -712f, 243f))), vec3<bool>(true, true, true)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1175f, 2439f))), _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(867f, -1717f) + _wgslsmith_f_op_f32(f32(-1f) * -1841f)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 46168u) & ~global3.a.x, min(10274u >> (global2.d.a.x % 32u), global2.b)), 4294967295u, 1u, _wgslsmith_sub_u32(global1.a.x, _wgslsmith_div_u32(global1.a.x, global3.a.x | 4294967295u))), func_1());
    global4 = vec2<i32>(21249i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, u_input.c), global2.e.x, 2147483647i));
    let var_0 = Struct_3(global2.d, _wgslsmith_clamp_u32(global2.c.x, ~26203u, global3.a.x), vec2<u32>(_wgslsmith_add_u32(36720u, _wgslsmith_sub_u32(u_input.b.x, global2.a.a.x)), 1u), Struct_1(_wgslsmith_clamp_vec3_u32(u_input.b.wyw | u_input.b.wyy, vec3<u32>(~u_input.b.x, 1u, _wgslsmith_sub_u32(global1.a.x, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(31368u, global3.a.x, 4294967295u), vec3<u32>(14882u, u_input.d, u_input.b.x)), global3.a))), vec3<i32>(30132i, _wgslsmith_mod_i32(u_input.e.x, firstTrailingBit(-25141i)), _wgslsmith_mod_i32(global4.x, 0i) >> (_wgslsmith_dot_vec2_u32(global1.a.xx, u_input.b.wy) % 32u)));
    let var_1 = ~(~_wgslsmith_add_i32(_wgslsmith_div_i32(reverseBits(u_input.e.x), -1i), _wgslsmith_dot_vec2_i32(var_0.e.xx, ~global2.e.zy)));
    global1 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(319f - 770f), _wgslsmith_f_op_f32(1040f * 1323f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(978f)) * _wgslsmith_f_op_f32(min(-2072f, -915f))))), _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(var_0.d.a.x, global2.b)), global1.a.yz), func_1().e, ~(~vec4<i32>(u_input.e.x, -84080i, select(var_0.e.x, var_0.e.x, true), u_input.a)));
}

