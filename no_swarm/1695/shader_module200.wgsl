struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<i32, 8> = array<i32, 8>(27210i, -9563i, i32(-2147483648), 44559i, 45371i, 2147483647i, -52925i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    return false;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f + _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(select(-883f, 161f, false))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))));
    var var_1 = -418f;
    let var_2 = abs(~vec4<i32>(-(u_input.c.x << (0u % 32u)), 0i, 0i, arg_3.x));
    let var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x), 47999u, u_input.b.x);
    let var_4 = arg_2.x;
    return vec2<bool>(any(arg_2.xz), false);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, false), func_3(global0[_wgslsmith_index_u32(93792u ^ u_input.b.x, 19u)], _wgslsmith_f_op_f32(-arg_0), vec3<bool>(false, true, true), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<i32>(17641i, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.a.x, -26602i)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 242f) - vec2<f32>(-1000f, -322f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + _wgslsmith_f_op_f32(sign(-1661f))), arg_0, -904f)));
    let var_2 = select(vec4<bool>(-963f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_1.b.x)), 1i < (global1[_wgslsmith_index_u32(16326u, 8u)] & (global1[_wgslsmith_index_u32(1u, 8u)] << (u_input.b.x % 32u))), u_input.b.x > 10129u, var_0.x), !(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), vec4<bool>(!(!all(vec2<bool>(var_0.x, true))), !all(vec3<bool>(true, true, var_0.x)), func_3(global0[_wgslsmith_index_u32(~4294967295u, 19u)], -1977f, vec3<bool>(true, !var_0.x, var_0.x), -u_input.c).x, !var_0.x));
    let var_3 = -751f;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_3)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.x, 288f)))) + var_1.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x), var_1.a) * _wgslsmith_f_op_vec2_f32(var_1.b.yz - vec2<f32>(arg_0, arg_0))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(round(-1000f))))), vec3<f32>(_wgslsmith_f_op_f32(800f * -127f), _wgslsmith_div_f32(1810f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -295f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3 + var_1.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.b.yz))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_4.a.x)) - _wgslsmith_f_op_vec2_f32(-var_1.b.xy)), var_4.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 8>();
    let var_0 = any(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), vec2<bool>(select(true, any(vec2<bool>(false, false)), -858f < arg_2.a.x), true), vec2<bool>(true, true)));
    var var_1 = global0[_wgslsmith_index_u32(arg_1, 19u)];
    global0 = array<Struct_2, 19>();
    global1 = array<i32, 8>();
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -441f)))));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    let var_0 = u_input.b.x;
    global0 = array<Struct_2, 19>();
    var var_1 = arg_0;
    return var_1.b.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x | (select(~(~u_input.b.x), u_input.b.x, select(func_1(u_input.a), true, true)) | reverseBits(~u_input.b.x & ~52174u)), 19u)];
    global1 = array<i32, 8>();
    var var_1 = 0i;
    global0 = array<Struct_2, 19>();
    var var_2 = Struct_2(vec2<bool>(true, var_0.a.x), true);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_4(vec3<i32>(u_input.a.x, -2147483647i, u_input.d.x) ^ u_input.d.xyz, ~u_input.b.x, func_2(1651f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-func_4(vec3<i32>(13994i, global1[_wgslsmith_index_u32(1589u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), max(u_input.b.x, u_input.b.x), func_2(-1010f)).b))));
    let var_4 = vec3<i32>(-_wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~6527u, ~48228u), 8u)], 1i), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b.zww, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 3117u), u_input.b.xwz, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), 8u)], u_input.d.x) ^ firstTrailingBit(-u_input.c.x & ~(-6827i)), 23786i);
    var var_5 = -_wgslsmith_mod_vec2_i32(-(~var_4.yz), vec2<i32>(15025i, firstLeadingBit(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-40026i, min(~1i, 1i)), var_4.x, 22705i, ~u_input.b.x, var_3.b.x);
}

