struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 14> = array<f32, 14>(607f, 1317f, -608f, 1410f, 395f, -327f, -143f, -1421f, 683f, 1399f, 583f, 1180f, -467f, 1000f);

var<private> global2: Struct_2;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 31491i, 1i, 500i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    global0 = Struct_2(Struct_1(vec4<u32>(min(u_input.b.x, 4294967295u) | _wgslsmith_div_u32(global2.b.a.x, 11922u), firstTrailingBit(58102u >> (u_input.b.x % 32u)), global0.b.a.x, 63232u), global0.b.a.wzy), Struct_1(global2.b.a, _wgslsmith_sub_vec3_u32(global2.b.b, countOneBits(~vec3<u32>(4294967295u, 0u, u_input.b.x)))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32((1u & u_input.b.x) & ~56931u, 14u)])) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(31354u, 14u)]))))));
    var var_1 = Struct_3(502f);
    var var_2 = _wgslsmith_sub_vec2_u32(~global0.a.a.ww, _wgslsmith_mult_vec2_u32(u_input.b, min(vec2<u32>(42479u, global0.a.b.x), global0.a.a.xx) & reverseBits(~global2.a.b.xy)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(global0.b.a, firstTrailingBit(global2.b.a)), global2.a.b), global0.b);
    return 1i;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = ~_wgslsmith_clamp_i32(25089i, func_3(global3.x, max(global3.xzy, global3.www)), -2147483647i) == global3.x;
    var var_1 = Struct_3(-564f);
    var var_2 = Struct_3(var_1.a);
    var var_3 = Struct_2(global2.b, Struct_1(~_wgslsmith_div_vec4_u32(~vec4<u32>(61114u, global2.a.b.x, 1u, 41979u), select(global2.a.a, vec4<u32>(45027u, 0u, 0u, 41816u), true)), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(0u, 75417u), _wgslsmith_mod_u32(13870u, u_input.b.x), ~4294967295u))));
    let var_4 = Struct_2(Struct_1(vec4<u32>(1u, 61355u, 4294967295u ^ global0.b.b.x, global2.a.b.x) << (vec4<u32>(global2.a.b.x, 21829u, 49597u, 22185u) % vec4<u32>(32u)), ~vec3<u32>(u_input.b.x, _wgslsmith_add_u32(1u, 59476u), ~40665u)), Struct_1(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 3472u, u_input.b.x, u_input.b.x)), vec4<u32>(15152u, _wgslsmith_clamp_u32(global0.a.b.x, 0u, 3158u), ~4294967295u, global2.a.a.x)), _wgslsmith_clamp_vec3_u32(select(global2.b.a.xyx, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.b.b.x, 1u), vec3<u32>(49517u, 4294967295u, u_input.c)), vec3<bool>(false, false, false)), ~vec3<u32>(global2.b.a.x, u_input.b.x, 38688u), vec3<u32>(select(0u, 35152u, true), var_3.b.b.x, firstTrailingBit(62567u)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1439f, -103f)), _wgslsmith_f_op_f32(select(var_1.a, var_2.a, false)))) + _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_0.x - -1000f))) + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(f32(-1f) * -1091f))), -178f));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1003f, global1[_wgslsmith_index_u32(arg_0.x, 14u)], -1000f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, global1[_wgslsmith_index_u32(u_input.c, 14u)], -242f) - vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)], 437f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 14u)] - 1427f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 14u)])) * _wgslsmith_f_op_f32(-120f + 232f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(246f, global1[_wgslsmith_index_u32(1u, 14u)], -631f, global1[_wgslsmith_index_u32(47470u, 14u)]), vec4<f32>(-141f, global1[_wgslsmith_index_u32(29928u, 14u)], -766f, global1[_wgslsmith_index_u32(global0.a.a.x, 14u)])))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(19100u, 14u)], 355f, global1[_wgslsmith_index_u32(global0.a.a.x, 14u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 14u)], -1267f, global1[_wgslsmith_index_u32(3611u, 14u)])))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(312f, -559f)), global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(reverseBits(global2.b.b.x), 14u)]) + vec3<f32>(-324f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.b.x, 14u)]), -660f))));
    global0 = Struct_2(global2.b, global0.b);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(f32(-1f) * -839f)))) * -593f);
    var_0 = vec3<f32>(952f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 14u)])), 1056f);
    var var_2 = Struct_2(global2.a, Struct_1(~(~vec4<u32>(4294967295u, arg_0.x, 58019u, global0.b.a.x)), abs(abs(global2.a.a.yzy))));
    return Struct_2(Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(var_2.a.a, ~vec4<u32>(global0.a.a.x, 4294967295u, var_2.a.a.x, 1u)), _wgslsmith_sub_vec4_u32(global2.b.a, vec4<u32>(0u, var_2.b.a.x, arg_0.x, 0u))), arg_0), global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global2.a.a.yxw);
    global0 = func_1(vec3<u32>(_wgslsmith_clamp_u32(global0.a.a.x, _wgslsmith_add_u32(u_input.c, ~global2.b.b.x), _wgslsmith_clamp_u32(func_1(vec3<u32>(7835u, u_input.c, u_input.c)).b.a.x, _wgslsmith_dot_vec4_u32(global0.a.a, vec4<u32>(75927u, global0.a.b.x, 26178u, 11204u)), _wgslsmith_div_u32(0u, u_input.b.x))), 70518u, global2.a.a.x));
    var var_0 = vec2<bool>(select(select(!any(vec4<bool>(true, true, true, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), !(global1[_wgslsmith_index_u32(4294967295u, 14u)] > 670f)), all(vec4<bool>(true, true, true, true)), global0.a.b.x == global0.a.b.x), (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b.b.x, global0.b.a.x, 1u), ~vec4<u32>(global0.a.b.x, 1u, 0u, 17746u)) <= 1u) & true);
    global1 = array<f32, 14>();
    let var_1 = Struct_2(global0.a, global0.a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 14u)], 331f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~11939u), max(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.b.x, u_input.b.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(43996u, u_input.c, u_input.c), global0.b.a.xzz)), vec3<u32>(1u, var_1.b.a.x, var_1.a.b.x) >> (~var_1.b.a.wzx % vec3<u32>(32u))), ~(~vec3<u32>(45013u, 0u, global0.a.a.x))));
}

