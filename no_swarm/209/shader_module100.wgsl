struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), 184f, -107f, vec2<i32>(1i, 0i));

var<private> global2: array<u32, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = u_input.d.x;
    let var_1 = Struct_1(arg_2.a, global1.c, -483f, arg_3.d);
    return arg_3.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c + arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -393f), any(vec4<bool>(global1.a.x, global1.a.x, true, true)))))))), max(vec2<i32>(global1.d.x, ~(arg_0.d.x >> (33494u % 32u))), select(~global1.d, ~vec2<i32>(-1i, global1.d.x) >> (select(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100121u, 24u)], 24u)], 24u)]), u_input.d.yw, vec2<bool>(global1.a.x, true)) % vec2<u32>(32u)), select(false, arg_0.a.x, global1.a.x) | global1.a.x)));
    let var_0 = global1.d.x;
    let var_1 = ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a, 24u)], 4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 96615u), vec2<u32>(35719u, u_input.d.x)), 24u)])) ^ global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.wyz << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)], global2[_wgslsmith_index_u32(0u, 24u)], 0u) ^ u_input.d.xyz, abs(vec3<u32>(u_input.a, 24905u, global2[_wgslsmith_index_u32(3553u, 24u)])), vec3<u32>(u_input.d.x, 4294967295u, 12311u)) % vec3<u32>(32u)), vec3<u32>(0u, 19470u, _wgslsmith_mult_u32(countOneBits(global2[_wgslsmith_index_u32(1u, 24u)]), 1u))), 24u)];
    var var_2 = countOneBits(min(~_wgslsmith_add_vec2_u32(u_input.d.xx, vec2<u32>(global2[_wgslsmith_index_u32(var_1, 24u)], 1u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(23144u, 13668u), vec2<u32>(13371u, 812u)))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, 1u), ~_wgslsmith_div_u32(4294967295u, 1u)), ~(~(~u_input.d.xx)));
    global2 = array<u32, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(arg_1.x))) + arg_1.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global0 = array<Struct_1, 15>();
    global2 = array<u32, 24>();
    global1 = Struct_1(vec3<bool>(select(any(select(global1.a, global1.a, global1.a)), all(global1.a.yz), select(all(vec3<bool>(global1.a.x, global1.a.x, true)), any(vec4<bool>(false, global1.a.x, global1.a.x, true)), true)), global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c - global1.b), _wgslsmith_f_op_f32(global1.c - global1.c), func_2(vec3<bool>(global1.a.x, arg_1, arg_1), u_input.c, Struct_1(vec3<bool>(arg_1, arg_1, false), -545f, global1.c, global1.d), global0[_wgslsmith_index_u32(4294967295u, 15u)]))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_f32(1000f * global1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1272f + global1.b)), false)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.b.x, ~global1.d.x), vec2<i32>(56737i, 2147483647i) & min(vec2<i32>(u_input.c, -64004i), vec2<i32>(u_input.b.x, -1i))), _wgslsmith_sub_vec2_i32(~(-global1.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 1i), global1.d, ~vec2<i32>(global1.d.x, 1i))), vec2<i32>(-28626i, ~_wgslsmith_sub_i32(u_input.c, global1.d.x))));
    let var_0 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_1 = Struct_1(select(var_0.a, global1.a, all(vec3<bool>(false, false, true))), -835f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(38631u, 15u)], _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.c), vec3<f32>(global1.c, -409f, global1.b)))))))), global1.d);
    return -44496i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = abs(u_input.b);
    let var_2 = arg_1;
    let var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b - var_3.b), _wgslsmith_f_op_f32(ceil(arg_1.c)))) * 1903f)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 24u)], 24u)], _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, 54035u, 42277u)), firstLeadingBit(u_input.d))), vec2<u32>(~global2[_wgslsmith_index_u32(arg_2, 24u)], 19796u)), countOneBits(arg_2)), 15u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    global2 = array<u32, 24>();
    let var_0 = _wgslsmith_mult_u32(11909u, u_input.a & _wgslsmith_dot_vec3_u32(u_input.d.www, u_input.d.xwz));
    global2 = array<u32, 24>();
    var var_1 = -25070i;
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -u_input.b.yz, -countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-15687i, u_input.b.x), vec2<i32>(arg_0.d.x, u_input.b.x)), ~vec2<i32>(0i, 1i))));
    return _wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(2458u, 8433u, 69405u, 4294967295u) & _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(1u, var_0, var_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)])), u_input.d)) & (global2[_wgslsmith_index_u32(var_0, 24u)] >> (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~1u), u_input.d.x), 15u)];
    var var_1 = global0[_wgslsmith_index_u32(func_5(func_4(vec4<i32>(func_1(vec3<u32>(global2[_wgslsmith_index_u32(7701u, 24u)], 33439u, 4294967295u), var_0.a.x) >> (~44934u % 32u), 22556i, abs(u_input.b.x), 3203i), global0[_wgslsmith_index_u32(~(~(~global2[_wgslsmith_index_u32(0u, 24u)])), 15u)], ~4294967295u), Struct_1(!vec3<bool>(global1.a.x, global1.a.x, true), func_4(~(~vec4<i32>(u_input.b.x, var_0.d.x, -33099i, -3443i)), global0[_wgslsmith_index_u32(1u, 15u)], ~_wgslsmith_div_u32(u_input.d.x, 1u)).b, global1.b, var_0.d | global1.d), -2147483647i >= ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, var_0.d.x, global1.d.x), ~u_input.b), Struct_1(var_0.a, 764f, 1381f, -vec2<i32>(u_input.b.x, u_input.c))), 15u)];
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - global1.c) - _wgslsmith_f_op_f32(step(var_1.c, var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(f32(-1f) * -1707f)))));
    let var_4 = 81275u;
    global0 = array<Struct_1, 15>();
    let var_5 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(-1514f, u_input.a, var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b, var_3.x), _wgslsmith_f_op_f32(1802f * var_1.c))), 1f, -1094f)), _wgslsmith_mod_i32(func_1(vec3<u32>(firstLeadingBit(var_5), ~var_5, var_5), var_1.a.x), var_0.d.x));
}

