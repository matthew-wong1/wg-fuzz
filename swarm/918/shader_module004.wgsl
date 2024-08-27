struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25>;

var<private> global1: array<f32, 24>;

var<private> global2: f32 = 330f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-286f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1546f) - _wgslsmith_f_op_f32(-983f - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(43496u, 24u)])))))));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]), 462f))));
    var_0 = global1[_wgslsmith_index_u32(min(68023u >> (countOneBits(reverseBits(20834u)) % 32u), ~(~(~23646u))) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(47243u, 0u, 5027u), abs(vec3<u32>(1u, 1u, 1u))) % 32u), 24u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(1000f, global1[_wgslsmith_index_u32(~(~0u), 24u)])), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(45619u, 15867u, 1u) >> (~4294967295u % 32u), 24u)], global1[_wgslsmith_index_u32(~min(firstLeadingBit(countOneBits(82196u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 7850u, 85218u, 1u), vec4<u32>(16506u, 15479u, 56248u, 7252u), false), ~vec4<u32>(1u, 0u, 35666u, 4294967295u))), 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(38951u, 24u)])) - global1[_wgslsmith_index_u32(~firstTrailingBit(abs(0u)), 24u)]));
    let var_2 = min(~abs(vec2<u32>(1u, 1u)) & vec2<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(8888u, 3540u), ~vec2<u32>(0u, 39709u))), vec2<u32>(~4294967295u, _wgslsmith_mod_u32(~firstTrailingBit(116128u), 1u)));
    return ~u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    global1 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 24u)])) - -1370f))) * global1[_wgslsmith_index_u32(firstTrailingBit(1u), 24u)]);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 24u)])))))));
    var var_1 = -409f;
    global1 = array<f32, 24>();
    return func_3();
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> f32 {
    var var_0 = arg_0.b;
    var var_1 = Struct_4(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~global0[_wgslsmith_index_u32(arg_0.a, 25u)], -global0[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_div_vec4_i32(vec4<i32>(7869i, -2147483647i, -3842i, -24012i), vec4<i32>(-20872i, 2147483647i, arg_0.c.a, 23192i))), _wgslsmith_mod_vec4_i32(~global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(countOneBits(arg_0.b), 25u)])), func_2(all(vec4<bool>(true, true, true, true)), Struct_1(select(19593i, arg_1, true))), ~(i32(-1i) * -u_input.a.x), -1i), 1i, ~arg_0.a, vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(~51402u, ~arg_0.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b), vec2<u32>(arg_0.b, 0u)), arg_0.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a, 24u)], 1323f) - vec2<f32>(-117f, global1[_wgslsmith_index_u32(4294967295u, 24u)])))))));
    var var_3 = (~(~var_1.a.yxw) << (~(vec3<u32>(48946u, 4294967295u, arg_0.b) << (var_1.d % vec3<u32>(32u))) % vec3<u32>(32u))) | var_1.a.yxy;
    var var_4 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.b, 0u), ~var_1.d.x), var_1.c, Struct_1(_wgslsmith_add_i32(-func_2(true, arg_0.c), u_input.a.x)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b, 4294967295u << (arg_0.b % 32u)), 24u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.x)))))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = u_input.a.x;
    var var_1 = firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(~var_1.x, 4294967295u & var_1.x, Struct_1(-1i)), 0i)));
    var var_3 = firstLeadingBit(vec4<u32>(firstLeadingBit(firstTrailingBit(var_1.x)), var_1.x, 1862u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(17306u, 53325u), vec2<u32>(var_1.x, var_1.x), var_1.zw), ~var_1.zz) & firstLeadingBit(_wgslsmith_clamp_u32(1u, 45607u, 1u))));
    var var_4 = ~select(_wgslsmith_mult_u32(4294967295u, ~abs(4294967295u)), var_3.x, false);
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.xy, arg_0.zx, !vec2<bool>(false, var_2))), vec2<f32>(_wgslsmith_f_op_f32(2074f - -1000f), -1007f)) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -424f), -750f)), _wgslsmith_f_op_f32(func_1(Struct_2(84086u, var_3.x, Struct_1(u_input.a.x)), abs(u_input.a.x))))), Struct_1(firstTrailingBit(u_input.a.x)), var_1.wzx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -173f;
    let var_1 = Struct_1(u_input.a.x);
    global1 = array<f32, 24>();
    var var_2 = func_4(vec3<f32>(-1355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 24u)], 1000f), _wgslsmith_f_op_f32(func_1(Struct_2(44210u, 37255u, Struct_1(-2147483647i)), -22601i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0)))));
    let var_3 = ~_wgslsmith_dot_vec3_u32(var_2.c, var_2.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-462f, -1399f, global1[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, -1228f), vec3<f32>(273f, -215f, 238f), true)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(370f, -444f, 1639f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 1460f, var_2.a.x) + vec3<f32>(1000f, var_2.a.x, 893f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1518f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(step(1207f, -501f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, var_2.b.a, -5598i) >> (~var_2.c % vec3<u32>(32u)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.a, var_1.a, var_2.b.a), vec3<i32>(u_input.a.x, -2147483647i, var_2.b.a)), ~u_input.a, vec3<bool>(false, false, false))) | u_input.a, (_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(4294967295u, var_3), var_2.c.x) << (var_2.c.x % 32u)) | _wgslsmith_clamp_u32(var_3, var_3, var_3), ~(~1u), -((var_1.a >> (var_3 % 32u)) | u_input.a.x) >> (_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_3, 0u)) % 32u));
}

