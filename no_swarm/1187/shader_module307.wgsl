struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, false, true, false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> vec4<u32> {
    return reverseBits(~vec4<u32>(_wgslsmith_mult_u32(5953u, u_input.c), abs(arg_0.a) & arg_0.a, ~(~95574u), ~(u_input.c | 118047u)));
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec4_u32(func_3(Struct_3(u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2269f, 169f) + vec2<f32>(-909f, -2091f)) - vec2<f32>(1000f, 1160f))), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(10557u, 8u)], true, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(16246u, 8u)], false), true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 8u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(9168u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)]), global0[_wgslsmith_index_u32(109181u, 8u)]), all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 8u)]))), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(48846u, 8u)])), vec4<bool>(false, true, false, false)), vec2<i32>(abs(u_input.a), countOneBits(1i)) << ((vec2<u32>(1u, 0u) & (vec2<u32>(8479u, u_input.c) ^ vec2<u32>(0u, u_input.c))) % vec2<u32>(32u))), ~vec4<u32>(u_input.c, max(u_input.c & u_input.c, u_input.c & 28711u), _wgslsmith_mod_u32(~58099u, ~u_input.c), _wgslsmith_mult_u32(~61657u, 1u)));
    var var_1 = 1i;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1438f), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(647f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614f - 863f)))));
    var var_3 = 6696u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1747f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -309f, _wgslsmith_div_f32(1027f, var_4), 231f))) - vec4<f32>(_wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(trunc(-702f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-182f, 636f))), -237f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-967f))))));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    global0 = array<bool, 8>();
    let var_1 = var_0.yz;
    let var_2 = vec2<i32>(79957i, ~u_input.b);
    return Struct_2(Struct_1(vec4<i32>(var_2.x, _wgslsmith_clamp_i32(min(var_2.x, 2147483647i), _wgslsmith_mod_i32(var_2.x, -5547i), -9242i), ~u_input.b, _wgslsmith_div_i32(u_input.b, var_2.x))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    let var_0 = 0u;
    var var_1 = func_1();
    global0 = array<bool, 8>();
    var var_2 = 205f;
    var_1 = func_1();
    var_1 = func_1();
    var var_3 = Struct_5(Struct_4(var_1.a.a.zzx, Struct_3(var_0), select(select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 8u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 8u)], true, global0[_wgslsmith_index_u32(15325u, 8u)])), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 8u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 8u)])), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false, global0[_wgslsmith_index_u32(var_0, 8u)]), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(14358u, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 8u)], false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)]))), ~(~vec3<u32>(0u, 81852u, 4294967295u) >> (~vec3<u32>(var_0, var_0, 4294967295u) % vec3<u32>(32u)))));
    var_3 = Struct_5(Struct_4(var_1.a.a.wyx, Struct_3(_wgslsmith_mult_u32(4294967295u >> (0u % 32u), func_3(var_3.a.b, var_1.b.yx, vec4<bool>(var_3.a.c.x, true, false, true), vec2<i32>(-2147483647i, -77392i)).x)), !var_3.a.c, vec3<u32>(4294967295u, ~var_0 ^ 1u, 87553u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(func_1().b.wz, vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), 407f))))), -1i, firstTrailingBit(~1u), _wgslsmith_mult_vec4_u32(vec4<u32>(23540u, var_0, 4294967295u, 15508u), ~select(~vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u), abs(vec4<u32>(var_3.a.d.x, 21596u, 26649u, 4294967295u)), u_input.a > -29743i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(-var_1.b.x))), 546f));
}

