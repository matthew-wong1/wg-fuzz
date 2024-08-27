struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 6>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_4(abs(vec2<u32>(arg_1.a, _wgslsmith_div_u32(39094u, 1u)) << (vec2<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), ~30092u) % vec2<u32>(32u))));
    let var_1 = !(!select(vec3<bool>(arg_2.x | true, true, arg_2.x), global0.b.e.wyx, select(select(arg_2, arg_1.e.xxy, arg_2.x), arg_1.e.zzw, vec3<bool>(arg_2.x, arg_1.b, false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, global0.a), vec2<f32>(-1000f, global0.a), var_1.xz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1552f, global0.a) - vec2<f32>(519f, global0.a)))))));
    global3 = array<Struct_1, 16>();
    var var_3 = Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.d, arg_0.x), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -6910i) << (var_0.a % vec2<u32>(32u)), arg_1.c >> (vec2<u32>(4294967295u, global0.b.a) % vec2<u32>(32u)))));
    return i32(-1i) * -1i;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    let var_0 = global0.b.b;
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> u32 {
    var var_0 = vec2<bool>(arg_0.b.c.x < ((firstTrailingBit(global0.b.c.x) & func_2(vec3<i32>(-53514i, arg_0.b.d, -39074i), Struct_1(arg_0.b.a, false, vec2<i32>(-2147483647i, 55636i), -26307i, arg_0.b.e), vec3<bool>(false, true, arg_0.b.b))) | _wgslsmith_mod_i32(~arg_0.b.d, func_3(Struct_2(arg_0.a, Struct_1(4294967295u, false, arg_0.b.c, 2147483647i, vec4<bool>(arg_0.b.b, global0.b.e.x, false, global0.b.b))), vec3<u32>(arg_3.a.x, arg_0.b.a, 49801u), Struct_3(global0.b.c), global0.b.e.wx))), any(global0.b.e));
    var var_1 = global3[_wgslsmith_index_u32(global0.b.a, 16u)];
    global3 = array<Struct_1, 16>();
    let var_2 = _wgslsmith_f_op_f32(-123f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-398f, -609f) + 1000f))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * arg_2) - _wgslsmith_f_op_f32(sign(var_2))))), -1198f, _wgslsmith_div_f32(626f, _wgslsmith_f_op_f32(abs(-1000f))));
    return _wgslsmith_div_u32(0u, ~_wgslsmith_div_u32(arg_3.a.x, abs(global0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1267f, Struct_1(global0.b.a, !(func_1(Struct_2(global0.a, global0.b), global0.a, global0.a, Struct_4(vec2<u32>(global0.b.a, global0.b.a))) < ~0u), -vec2<i32>(global0.b.d, -1i), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.c.x, u_input.a.x, -33442i, u_input.a.x), ~vec4<i32>(36001i, global0.b.c.x, u_input.a.x, u_input.a.x))), vec4<bool>(any(global0.b.e.wx), any(!global0.b.e.wz), global0.b.e.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x) != _wgslsmith_div_i32(-9640i, global0.b.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(global0.b.a, var_0.b.a, global0.b.a) << (vec3<u32>(43354u, 27833u, global0.b.a) % vec3<u32>(32u)))), u_input.a.x, global0.a, var_0.b.a ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(57043u, global0.b.a, 4294967295u, var_0.b.a), vec4<u32>(0u, 45564u, global0.b.a, var_0.b.a)), ~vec4<u32>(37618u, var_0.b.a, 10789u, global0.b.a), vec4<u32>(var_0.b.a, 52804u, var_0.b.a, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a, 0u, 4294967295u, 56648u), firstTrailingBit(vec4<u32>(69416u, var_0.b.a, var_0.b.a, var_0.b.a)))), vec4<u32>(reverseBits(1u), global0.b.a, global0.b.a, global0.b.a));
}

