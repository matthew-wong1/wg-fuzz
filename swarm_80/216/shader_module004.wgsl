struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(1u, vec2<i32>(0i, 33548i), 727f);

var<private> global2: array<u32, 3>;

var<private> global3: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32) -> i32 {
    var var_0 = any(vec2<bool>(true, true)) && false;
    return _wgslsmith_mod_i32(arg_1, _wgslsmith_add_i32(~arg_1, -(~2147483647i))) & ~select(global1.b.x, 2147483647i, all(vec4<bool>(true, true, false, false)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> vec3<bool> {
    global0 = Struct_1(0u, ~global1.b, 221f);
    var var_0 = 1324f;
    var var_1 = vec3<i32>(-u_input.a.x, global0.b.x, select(14020i, -_wgslsmith_mult_i32(-global1.b.x, -1i), true));
    var_1 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(29167i, _wgslsmith_sub_i32(~0i, func_3(global0.c, -727i)), -global1.b.x), min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global0.b.x), vec3<i32>(1i, -1i, var_1.x)) << (~u_input.b.zzx % vec3<u32>(32u)), vec3<i32>(global1.b.x, min(10818i, 0i), global0.b.x))), -max(_wgslsmith_mod_vec3_i32(~vec3<i32>(-19732i, 47561i, -72164i), vec3<i32>(var_1.x, 48355i, -35026i) << (vec3<u32>(49701u, global2[_wgslsmith_index_u32(arg_1, 3u)], arg_1) % vec3<u32>(32u))), abs(vec3<i32>(1i, -32155i, global1.b.x)) >> (vec3<u32>(u_input.c.x, 1u, u_input.b.x) % vec3<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(u_input.b.x << (abs(4294967295u) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(39072u, u_input.b.x)), u_input.c.x)), vec2<i32>(-1i, reverseBits(13663i)) | global3.xx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-679f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(607f)) + global0.c)) + global0.c));
    return vec3<bool>(all(select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), !any(vec2<bool>(true, true)), true);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(u_input.c.x, global0.a), u_input.b.x)), select(u_input.c.zz, u_input.b.yz ^ u_input.c.xy, select(func_2(vec2<u32>(global0.a, 1u), arg_0).zy, vec2<bool>(true, false), vec2<bool>(true, true)))), max(_wgslsmith_add_vec2_i32(abs(select(global1.b, u_input.a.zx, vec2<bool>(false, false))), ~(global3.yy | global3.xz)), select(~vec2<i32>(global3.x, -2147483647i) << (min(vec2<u32>(arg_0, u_input.b.x), vec2<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 48702u)) % vec2<u32>(32u)), u_input.a.xy, vec2<bool>(func_2(vec2<u32>(global2[_wgslsmith_index_u32(0u, 3u)], global1.a), global0.a).x, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -377f))));
    return Struct_1(~95663u, select(-(vec2<i32>(-1i) * -u_input.a.xy), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, 3274i), vec3<i32>(2147483647i, global3.x, global3.x))), global3.yz), !vec2<bool>(true, func_2(vec2<u32>(u_input.b.x, 0u), 1u).x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1105f, -1264f)) + -204f))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global3 = u_input.a;
    var var_0 = func_2(~vec2<u32>(_wgslsmith_add_u32(global1.a, 0u | arg_0.a), ~global2[_wgslsmith_index_u32(4294967295u << (0u % 32u), 3u)]), global1.a);
    let var_1 = arg_0;
    let var_2 = var_1.a << (global0.a % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, arg_0.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, global1.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, arg_0.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-765f, global0.c) - vec2<f32>(global0.c, global0.c))))))));
    return func_4(0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1525f, 524f, global1.c) * vec3<f32>(var_3.x, 1577f, global1.c)), vec3<f32>(global0.c, -126f, var_1.c), any(vec4<bool>(true, false, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, 2120f, 930f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c, global1.c, global0.c), vec3<f32>(global0.c, global0.c, 864f)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(903f)), -404f, _wgslsmith_f_op_f32(-arg_0.c)))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> bool {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~34057u), ~(global1.a ^ 6062u)), _wgslsmith_add_vec2_u32(~u_input.c.yx, ~vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 3u)]))), vec2<i32>(global1.b.x, -_wgslsmith_mod_i32(global1.b.x, 38683i)) >> (vec2<u32>(global2[_wgslsmith_index_u32(global1.a, 3u)], 15065u) % vec2<u32>(32u)), global0.c);
    let var_0 = func_5(func_4(86432u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, _wgslsmith_f_op_f32(479f + global1.c), -419f), vec3<f32>(_wgslsmith_div_f32(177f, 725f), -107f, _wgslsmith_f_op_f32(f32(-1f) * -505f)), func_2(u_input.c.yz & vec2<u32>(4294967295u, global0.a), 1u)))));
    let var_1 = vec3<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(324f)))))) * func_5(Struct_1(var_0.a, vec2<i32>(-26255i, -40365i) << (u_input.b.zz % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(691f, -631f)))).c), _wgslsmith_f_op_f32(f32(-1f) * -209f));
    global2 = array<u32, 3>();
    let var_2 = abs(min(_wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.b.x, global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), global1.a, select(0u, 4294967295u, arg_0)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, var_0.a, u_input.b.x), u_input.b), ~u_input.b)), 6117u));
    return any(select(vec4<bool>(arg_0, arg_0, true, all(func_2(vec2<u32>(82237u, 10155u), 0u))), vec4<bool>(true, true, any(vec4<bool>(arg_0, false, arg_1.x, false)) == true, arg_1.x & true), vec4<bool>(arg_0, false, false, countOneBits(-2147483647i) != _wgslsmith_div_i32(-100427i, global0.b.x))));
}

fn func_6(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(109403u);
    global0 = func_5(func_5(Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1179f))));
    global0 = func_4(~abs(global0.a), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(global1.c - global1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2346f, 1926f)), -784f, all(arg_0))), global1.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1709f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f + 1617f)), _wgslsmith_f_op_f32(sign(global1.c)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-315f - -1416f), _wgslsmith_f_op_f32(floor(541f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(587f, 260f)) * vec2<f32>(-1987f, 667f))));
    var var_2 = min(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, global3.x, u_input.a.x) << (global0.a % 32u), ~_wgslsmith_add_i32(u_input.a.x, global1.b.x), global0.b.x | (global1.b.x & 2147483647i))), -select(u_input.a, ~(~vec3<i32>(-6670i, -1i, 1i)), select(vec3<bool>(arg_0.x, false, arg_0.x), !vec3<bool>(true, arg_0.x, false), !arg_0.x)));
    return func_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, 0u, 0u, var_0)), max(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global0.a, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 46005u), vec4<u32>(global0.a, global2[_wgslsmith_index_u32(84273u, 3u)], 4294967295u, u_input.c.x))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.a, var_0 | 0u, global2[_wgslsmith_index_u32(1320u, 3u)] & 4294967295u), 3u)]), var_0), 3u)], _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f * global0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), global1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(564f, 392f, var_1.x)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c, 1131f, -444f), vec3<f32>(global0.c, var_1.x, 1241f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-344f, global1.c, var_1.x) + vec3<f32>(global0.c, -1555f, var_1.x)))));
}

fn func_7(arg_0: Struct_1, arg_1: i32) -> StorageBuffer {
    var var_0 = !(!(u_input.c.x <= 0u) | any(vec3<bool>(true, true, true)));
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = var_1;
    global3 = ~vec3<i32>(countOneBits(global1.b.x), 26642i, 2147483647i) ^ u_input.a;
    return StorageBuffer(~vec2<i32>(func_6(vec2<bool>(true, true)).b.x, -_wgslsmith_mod_i32(30325i, global1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(countOneBits(countOneBits(global0.a))), select(~vec2<i32>(0i, -1i) << (u_input.b.yz % vec2<u32>(32u)), global0.b, !all(vec4<bool>(true, true, false, true))), -455f);
    var var_1 = u_input.b;
    let var_2 = var_0;
    let var_3 = Struct_1(~1u, vec2<i32>(-1i) * -select(-global1.b, global3.xy, vec2<bool>(true, true)), _wgslsmith_f_op_f32(var_2.c + var_0.c));
    let x = u_input.a;
    s_output = func_7(func_6(vec2<bool>(true, !func_1(false, vec3<bool>(true, true, true)))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, ~(-vec3<i32>(var_0.b.x, 45377i, u_input.a.x))), i32(-1i) * -var_3.b.x));
}

