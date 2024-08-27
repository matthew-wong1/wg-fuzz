struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(4294967295u, 10501i), Struct_3(49092u, -1i), Struct_3(93279u, 68434i), Struct_3(0u, i32(-2147483648)), Struct_3(4092u, 1i), Struct_3(0u, 59375i), Struct_3(1u, -11753i), Struct_3(41759u, 24177i), Struct_3(30607u, -44605i), Struct_3(19749u, 2147483647i), Struct_3(41550u, i32(-2147483648)), Struct_3(1u, -35547i), Struct_3(0u, 0i), Struct_3(0u, 45650i), Struct_3(61778u, -1i), Struct_3(1u, -52680i), Struct_3(65071u, -1i), Struct_3(22918u, 1i), Struct_3(105397u, -16267i), Struct_3(91266u, i32(-2147483648)), Struct_3(1u, 0i), Struct_3(1u, 1i), Struct_3(1748u, 745i), Struct_3(24922u, -28725i), Struct_3(1u, i32(-2147483648)), Struct_3(0u, 38866i), Struct_3(4294967295u, 2147483647i), Struct_3(4294967295u, 16643i));

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 31>;

var<private> global3: array<bool, 5>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    var var_1 = arg_3.a.a;
    var var_2 = Struct_1(~select(~arg_3.d.yzw, vec3<i32>(firstTrailingBit(arg_3.d.x), arg_3.a.a.x | 29248i, _wgslsmith_div_i32(var_0.a.a.x, 1i)), true), any(arg_0.xz));
    let var_3 = arg_0.x;
    var var_4 = var_2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f * -1000f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(190f))))) + 910f));
}

fn func_2(arg_0: vec3<u32>) -> vec4<u32> {
    global3 = array<bool, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16229u, 31u)], 5u)], false, global3[_wgslsmith_index_u32(70628u, 5u)], true), Struct_1(vec3<i32>(u_input.a.x, 21378i, 2147483647i), global1.x), 1u, Struct_2(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), global1.x), false, global3[_wgslsmith_index_u32(1u, 5u)], vec4<i32>(-2147483647i, u_input.a.x, -1i, u_input.a.x), global2[_wgslsmith_index_u32(0u, 31u)]))) + -1744f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -1041f)))));
    global1 = !vec3<bool>(all(vec2<bool>(true, true)), !(all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 5u)], global3[_wgslsmith_index_u32(arg_0.x, 5u)], false)) && (u_input.a.x < 1i)), true);
    var var_1 = global0[_wgslsmith_index_u32(24767u, 28u)];
    global3 = array<bool, 5>();
    return ~firstLeadingBit(~vec4<u32>(~51673u, 1u, ~var_1.a, firstLeadingBit(4294967295u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, ~66658u, 118836u) & ~abs(vec3<u32>(u_input.c, u_input.b, u_input.b)), vec3<u32>(~_wgslsmith_sub_u32(u_input.c, 31747u), global2[_wgslsmith_index_u32(~u_input.b, 31u)], 87065u)));
    var_1 = ~vec4<u32>(~var_1.x | firstLeadingBit(_wgslsmith_sub_u32(57234u, u_input.b)), ~_wgslsmith_mod_u32(1u, ~35952u), func_2(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], u_input.c, global2[_wgslsmith_index_u32(131231u, 31u)])).x, ~u_input.b);
    global1 = vec3<bool>(global3[_wgslsmith_index_u32(max(69514u, 34040u) >> (func_2(abs(firstTrailingBit(vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4538u, 31u)], 31u)], 31u)], u_input.b)))).x % 32u), 5u)], true, global1.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-712f, _wgslsmith_f_op_f32(f32(-1f) * -937f)))));
    return firstLeadingBit(~var_1.xzy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    let var_0 = Struct_3(u_input.c, ~_wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), global1.xz), ~vec2<i32>(u_input.a.x, u_input.a.x)) ^ (-2147483647i & _wgslsmith_sub_i32(~u_input.a.x, 29476i)));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(func_1() << (select(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 31u)], 4294967295u, 1u), vec3<u32>(var_0.a, var_0.a, 59175u), false) % vec3<u32>(32u))), vec3<u32>(u_input.c, _wgslsmith_mult_u32(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(859u, var_0.a, 2610u), vec3<u32>(0u, 24347u, 0u))), 27189u), vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(61938u, 31u)], 4294967295u), u_input.b, _wgslsmith_sub_u32(u_input.c, u_input.b)) ^ (vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21557u, 31u)], 31u)]) << (vec3<u32>(u_input.b, var_0.a, global2[_wgslsmith_index_u32(u_input.b, 31u)]) % vec3<u32>(32u)))), firstTrailingBit(vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 36909u)));
    var var_2 = var_0.a;
    var_2 = _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, max(u_input.c, u_input.b), 39474u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], 0u, 36762u), vec3<u32>(4294967295u, u_input.c, 4294967295u) & vec3<u32>(65534u, var_0.a, 1u), vec3<u32>(0u, 60034u, var_0.a) | vec3<u32>(8983u, 43369u, u_input.b))));
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-(~var_0.b & -17451i), 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x | 65662i, 1i), reverseBits(u_input.a.x | 1i)), -abs(vec2<i32>(u_input.a.x, 16217i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1365f)), _wgslsmith_f_op_f32(f32(-1f) * -668f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(859f + -540f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(661f, 164f)) * -622f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(f32(-1f) * -510f), any(vec4<bool>(global1.x, global3[_wgslsmith_index_u32(u_input.c, 5u)], global3[_wgslsmith_index_u32(51911u, 5u)], global1.x))))))));
}

