struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(1538f, 1000f), vec2<f32>(1412f, -1562f), vec2<f32>(415f, -1418f), vec2<f32>(977f, -1512f), vec2<f32>(-454f, 2094f), vec2<f32>(271f, 628f), vec2<f32>(534f, 487f), vec2<f32>(1118f, 2409f), vec2<f32>(-285f, -413f), vec2<f32>(439f, 1748f), vec2<f32>(-568f, 697f), vec2<f32>(-818f, 949f), vec2<f32>(880f, 723f), vec2<f32>(329f, -617f), vec2<f32>(301f, 2494f), vec2<f32>(256f, -124f), vec2<f32>(1463f, 978f), vec2<f32>(1840f, -1245f), vec2<f32>(-1685f, 1112f), vec2<f32>(-310f, 367f), vec2<f32>(-1164f, -896f), vec2<f32>(789f, -1410f), vec2<f32>(547f, -1000f), vec2<f32>(-248f, -228f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_1(~(-(~firstLeadingBit(vec3<i32>(u_input.b.x, -1i, 1i)))), any(vec2<bool>(any(vec2<bool>(true, false)), true)) | !any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 24u)]), arg_0);
    var var_1 = var_0;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x))), var_0.c.x, 267f);
    let var_3 = true;
    let var_4 = Struct_1(_wgslsmith_div_vec3_i32(~vec3<i32>(var_1.d.x, u_input.a.x, firstTrailingBit(arg_0.x)), var_0.a), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(select(var_0.c.x, var_2.x, false))), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(0i, u_input.a.x)), min(vec2<i32>(~var_0.a.x, _wgslsmith_div_i32(1i, u_input.b.x)), u_input.b.zy)));
    return var_4.d.x;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<Struct_1, 24>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 24u)];
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~1u), 1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(55655u, 40566u, 66652u, 10180u), vec4<u32>(4294967295u, 0u, 43793u, 0u)))), ~(~vec3<u32>(max(4294967295u, 0u), countOneBits(0u), _wgslsmith_sub_u32(14710u, 1u))));
    let var_2 = arg_0.c.x;
    let var_3 = -30988i;
    return _wgslsmith_div_vec3_i32(~(~countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, 10714i), vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i), u_input.b))), reverseBits(firstTrailingBit(~arg_0.a)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a.x;
    var var_1 = arg_1.a.x;
    let var_2 = Struct_1(func_4(Struct_1(vec3<i32>(~arg_1.a.x, -1i, 0i), arg_1.b, arg_0, vec2<i32>(func_3(u_input.a), _wgslsmith_dot_vec3_i32(arg_1.a, u_input.b)))), arg_1.b, arg_0, select(arg_1.a.yz, vec2<i32>(_wgslsmith_sub_i32(-2147483647i, 1i) | abs(u_input.a.x), arg_1.d.x ^ min(u_input.b.x, 19806i)), true));
    global1 = array<Struct_1, 24>();
    let var_3 = 1i;
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(arg_1, 24u)]))), arg_0);
    global0 = array<vec2<u32>, 4>();
    let var_1 = func_2(global2[_wgslsmith_index_u32(~abs(10382u), 24u)], global1[_wgslsmith_index_u32(~arg_1, 24u)]);
    var var_2 = func_2(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-var_1.c.x)), Struct_1(select(abs(u_input.b), countOneBits(vec3<i32>(var_1.a.x, u_input.b.x, u_input.b.x)), vec3<bool>(var_1.b, !var_1.b, all(vec3<bool>(var_1.b, true, var_0.b)))), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.c), func_2(vec2<f32>(arg_0.c.x, arg_0.c.x), Struct_1(vec3<i32>(arg_0.d.x, var_0.a.x, 30815i), var_0.b, var_0.c, vec2<i32>(u_input.b.x, 2147483647i))).c, true)) - vec2<f32>(969f, _wgslsmith_div_f32(-1249f, -755f))), _wgslsmith_sub_vec2_i32(u_input.a >> (global0[_wgslsmith_index_u32(~arg_1, 4u)] % vec2<u32>(32u)), min(reverseBits(vec2<i32>(u_input.a.x, 5065i)), _wgslsmith_mod_vec2_i32(var_0.a.xx, vec2<i32>(var_0.a.x, -1i))))));
    var_2 = global1[_wgslsmith_index_u32(arg_1, 24u)];
    return _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], firstTrailingBit(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)]), global0[_wgslsmith_index_u32(reverseBits(arg_1 | 1u), 4u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 23320u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 40448u, 0u), vec4<u32>(0u, 0u, 39560u, 1u)) ^ ~vec4<u32>(138090u, 4294967295u, 1u, 1u), vec4<u32>(~4294967295u, abs(21729u), ~1u, abs(1u))), min(vec4<u32>(~_wgslsmith_add_u32(1890u, 1u), _wgslsmith_clamp_u32(1u, 50371u, _wgslsmith_mult_u32(1u, 1u)), 27971u, 1u), vec4<u32>(~1u, func_1(Struct_1(u_input.b, true, vec2<f32>(-2754f, 868f), vec2<i32>(u_input.a.x, -40969i)), _wgslsmith_mod_u32(1u, 1u), true), ~_wgslsmith_div_u32(1u, 1u), ~(~0u))), true);
    let var_1 = Struct_1(u_input.b, true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-609f - _wgslsmith_f_op_f32(min(1494f, -919f))), -1252f))), ~(~countOneBits(u_input.b.yx | vec2<i32>(-1i, u_input.b.x))));
    let var_2 = vec4<i32>(max(~func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -20611i), vec2<i32>(-5504i, 2147483647i), var_1.d)), -1i), 1i, ~(-var_1.d.x), 2147483647i);
    var var_3 = !(!vec3<bool>(-463f > _wgslsmith_f_op_f32(abs(var_1.c.x)), false, var_1.c.x >= _wgslsmith_f_op_f32(-var_1.c.x)));
    var_0 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~4214u, _wgslsmith_div_u32(1u, 4247u)), vec2<u32>(var_0.x, 1u)), 1u, func_1(func_2(_wgslsmith_f_op_vec2_f32(floor(var_1.c)), Struct_1(var_1.a, true, global2[_wgslsmith_index_u32(4294967295u, 24u)], vec2<i32>(var_2.x, 10690i))), var_0.x, true), countOneBits(var_0.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.xzw, var_0.zzw), 24u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, -898f) - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, var_0.x), 24u)])))));
    let var_5 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(var_0.x << (var_0.x % 32u), ~var_0.x) << (var_0.x % 32u)), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec3_u32(~var_0.yyx, ~vec3<u32>(var_0.x, var_0.x, 14436u)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0.x, 1u, var_0.x)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, var_0.x), var_0.zzw), var_0.zxx, var_1.b))), 514f, vec4<f32>(_wgslsmith_f_op_f32(2343f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_5.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.c.x, -2924f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) - _wgslsmith_f_op_f32(var_1.c.x - 507f))), var_5.c.x, _wgslsmith_f_op_f32(exp2(var_5.c.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c.x, var_5.c.x, var_5.c.x, var_5.c.x) + vec4<f32>(var_1.c.x, var_5.c.x, var_4.x, 155f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.c.x, var_1.c.x, var_1.c.x, 1379f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, var_4.x, var_4.x, var_5.c.x))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c.x)))));
}

