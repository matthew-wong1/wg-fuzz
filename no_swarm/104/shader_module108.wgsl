struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, true, true, true, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, true, true, true, false, true, false, false, true, false, false, true);

var<private> global1: array<u32, 14>;

var<private> global2: i32;

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.a.xx;
    let var_1 = all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], all(arg_0.a.xy), global0[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_mod_u32(7651u, arg_0.d), ~24712u, all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.d, 14u)], 31u)], arg_0.b.a, true, global0[_wgslsmith_index_u32(381u, 31u)])))), 31u)]));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, arg_0.b.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-339f, arg_0.b.b), vec2<f32>(arg_0.c, -943f)))), select(all(arg_0.a.wy), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 0u), 14u)], 31u)], true))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(383f + arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -2210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1690f)))));
    var var_3 = ~1u;
    var var_4 = countOneBits(~(vec3<u32>(0u, 4294967295u, arg_0.d >> (global1[_wgslsmith_index_u32(arg_0.d, 14u)] % 32u)) << (vec3<u32>(1u, _wgslsmith_clamp_u32(14309u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)]), ~arg_0.d) % vec3<u32>(32u))));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_4(vec4<bool>(false, any(vec2<bool>(arg_0, false)) && any(vec2<bool>(false, false)), all(select(vec3<bool>(false, false, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], 31u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 14u)], 31u)]), vec3<bool>(false, arg_3, arg_3))), !all(!vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]))), Struct_2(true, 443f), _wgslsmith_f_op_f32(ceil(362f)), func_3(Struct_4(select(select(vec4<bool>(false, true, arg_3, arg_0), vec4<bool>(false, false, arg_0, false), vec4<bool>(false, true, true, true)), !vec4<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12612u, 14u)], 31u)], arg_3, true), vec4<bool>(arg_3, global0[_wgslsmith_index_u32(13703u, 31u)], false, true)), Struct_2(true, _wgslsmith_f_op_f32(min(600f, -1115f))), _wgslsmith_f_op_f32(1281f * _wgslsmith_f_op_f32(trunc(484f))), 9534u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)] < arg_1.x)), true);
    let var_1 = vec2<bool>(all(!vec3<bool>(any(var_0.a), !arg_0, 24336u >= global1[_wgslsmith_index_u32(0u, 14u)])), all(select(!var_0.a.xy, var_0.a.ww, !arg_0)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-293f, var_0.c, var_0.b.b) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, var_0.c, var_0.c)))))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true, vec2<u32>(arg_1.c, 0u), Struct_1(10656i, vec4<i32>(-1i, 2147483647i, global3.x, u_input.a)), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(false, vec2<u32>(arg_1.c, 49081u), Struct_1(global3.x, vec4<i32>(global3.x, 18817i, u_input.a, 1i)), true)), arg_1.a))));
    let var_1 = true;
    global1 = array<u32, 14>();
    let var_2 = vec2<f32>(1554f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(860f, _wgslsmith_f_op_f32(f32(-1f) * -1095f))));
    return ~vec4<u32>(~4294967295u, firstTrailingBit(func_3(Struct_4(vec4<bool>(arg_1.e.x, var_1, false, false), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 31u)], var_2.x), var_0.x, 3352u, false))), 4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u, 8766u), vec4<u32>(12415u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 14u)], 4294967295u, 0u)) | (~vec4<u32>(13769u, global1[_wgslsmith_index_u32(0u, 14u)], 24269u, 24825u) & _wgslsmith_sub_vec4_u32(func_1(global3.zxy, Struct_3(vec3<f32>(922f, -675f, -791f), 1289f, 1u, -116f, vec2<bool>(true, false))), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], 0u, 102127u, 82522u))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 14u)], 14u)]);
}

