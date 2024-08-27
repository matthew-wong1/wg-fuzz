struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(40046u, 1u, 0u, 57815u, 4294967295u, 18551u, 21357u, 45040u, 25329u, 0u, 49126u, 12215u, 19926u, 0u, 0u, 40318u, 35332u, 70847u, 10712u, 2443u, 86605u);

var<private> global1: array<u32, 2> = array<u32, 2>(56063u, 0u);

var<private> global2: vec4<f32> = vec4<f32>(-1278f, 440f, -107f, -3116f);

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<i32>(1i, 62059i, 0i, 0i), vec4<i32>(-36255i, -1i, i32(-2147483648), 2147483647i), vec2<u32>(1u, 51709u), true, true));

var<private> global4: vec2<i32> = vec2<i32>(-17314i, -121i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_2);
    var var_1 = _wgslsmith_sub_i32(-global3.a.a.x, ~(-43310i));
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.wz, reverseBits(countOneBits(-global3.a.b.wx))), -_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(arg_1.b.a.yz, u_input.d.zw), -(~2147483647i)));
    var var_2 = vec2<u32>(~(~_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(vec3<u32>(584u, 86958u, 0u), vec3<u32>(93617u, arg_1.b.c.x, 4294967295u)))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_3.a), global3.a.c >> (arg_1.b.c % vec2<u32>(32u))), global3.a.c), vec2<u32>(1u, (global3.a.c.x | global3.a.c.x) >> (13863u % 32u))));
    var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~var_2.x << (16198u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.b.c.x, arg_3.a, 0u) << (~vec4<u32>(arg_1.b.c.x, var_2.x, u_input.c.x, 57820u) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a.c.x, global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_3.a, var_2.x), vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 21u)], 21u)], 4294967295u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(40978u, 0u), select(u_input.c.yz, global3.a.c, arg_1.a)), countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(6362u, 2u)], u_input.c.x)), _wgslsmith_sub_vec2_u32(arg_1.b.c, select(global3.a.c, u_input.c.xy, arg_1.a))) | arg_1.b.c);
    return vec2<bool>(!(~(~arg_1.b.b.x) == _wgslsmith_div_i32(8922i, reverseBits(arg_1.b.b.x))), true);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<bool> {
    return vec4<bool>(all(select(!func_3(global2.x, arg_0, vec4<f32>(global2.x, 2377f, 1000f, global2.x), Struct_2(global3.a.c.x)), !vec2<bool>(arg_0.b.e, true), arg_0.a)), global3.a.d, arg_0.b.e, arg_0.a.x || true);
}

fn func_1() -> StorageBuffer {
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, 647f))) >= 650f, true, all(!select(vec3<bool>(false, global3.a.d, true), vec3<bool>(global3.a.e, global3.a.e, true), false)), select(true, true, ~u_input.a <= _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 0u)));
    var_0 = select(select(vec4<bool>(true, var_0.x, false, select(all(vec3<bool>(var_0.x, true, false)), false, !var_0.x)), !select(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(global3.a.d, false, global3.a.e, var_0.x), vec4<bool>(false, global3.a.e, var_0.x, global3.a.d)), func_2(Struct_4(var_0.xx, global3.a), Struct_1(u_input.d, global3.a.b, global3.a.c, false, var_0.x), vec4<i32>(55179i, 5222i, 31302i, -1i)), any(var_0.zzw)), false), vec4<bool>((all(vec3<bool>(true, var_0.x, global3.a.e)) || false) && true, abs(select(global3.a.c.x, u_input.c.x, true)) > global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1u), u_input.a), 2u)], true, true), !vec4<bool>(var_0.x, var_0.x, !global3.a.d, true));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(round(global2.xy)), global3.a.c, _wgslsmith_mod_u32(~_wgslsmith_add_u32(global3.a.c.x, 26407u), ~_wgslsmith_add_u32(firstTrailingBit(4294967295u), reverseBits(70706u))), _wgslsmith_sub_i32(min(u_input.d.x, select(global3.a.b.x, _wgslsmith_add_i32(global3.a.b.x, -4690i), var_0.x)), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

