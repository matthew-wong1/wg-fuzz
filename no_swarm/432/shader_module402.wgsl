struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-268f, -1397f, -634f, -133f, -352f, -284f, -708f, 1614f, 1000f, -931f, -577f, 1725f, -1159f, 1000f, -1000f, -1000f);

var<private> global1: i32;

var<private> global2: i32 = 30007i;

var<private> global3: Struct_4 = Struct_4(vec4<u32>(34274u, 1u, 25975u, 4294967295u), 25280u, vec3<u32>(4294967295u, 1554u, 1u), vec2<bool>(true, true));

var<private> global4: vec2<f32> = vec2<f32>(-491f, -204f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.d.x, 4294967295u)), 16u)]), 477f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], _wgslsmith_f_op_f32(847f * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global3.a.x, 16u)]))))), _wgslsmith_f_op_f32(-global4.x))));
    global3 = Struct_4(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(global3.a.x, u_input.b.x, global3.c.x, u_input.c) ^ global3.a), abs(abs(~vec4<u32>(u_input.e.x, global3.c.x, global3.a.x, 67007u)))), global3.a.x, u_input.e.zxz, select(!select(!global3.d, vec2<bool>(global3.d.x, global3.d.x), select(vec2<bool>(true, global3.d.x), vec2<bool>(global3.d.x, true), false)), !select(global3.d, select(global3.d, vec2<bool>(false, global3.d.x), global3.d.x), true), any(!vec4<bool>(global3.d.x, global3.d.x, global3.d.x, global3.d.x))));
    var var_1 = (_wgslsmith_mod_u32(~4294967295u, global3.b) & 23149u) << (u_input.b.x % 32u);
    var var_2 = u_input.a.x;
    var var_3 = select(!vec4<bool>(-917f <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12616u, 16u)]), global3.d.x, !any(vec4<bool>(false, global3.d.x, false, true)), any(vec4<bool>(false, global3.d.x, false, true))), vec4<bool>(true, true, any(!select(vec3<bool>(global3.d.x, global3.d.x, true), vec3<bool>(true, false, true), vec3<bool>(false, global3.d.x, false))), false), false);
    return !all(vec4<bool>(u_input.a.x <= u_input.a.x, false, -713f > _wgslsmith_f_op_f32(609f * var_0.x), var_3.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = vec2<bool>(func_3(), all(vec3<bool>(true == (global3.d.x || global3.d.x), 4294967295u >= global3.b, true)));
    let var_1 = _wgslsmith_sub_u32(u_input.c, arg_3.x);
    global0 = array<f32, 16>();
    var var_2 = Struct_4(u_input.b, min(arg_3.x, 44330u) << (u_input.d.x % 32u), ~select(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.x, var_1, 4294967295u), global3.a.zyx)), ~(global3.a.xwz | global3.c), select(vec3<bool>(global3.d.x, false, var_0.x), select(vec3<bool>(global3.d.x, true, var_0.x), vec3<bool>(false, true, true), vec3<bool>(true, var_0.x, false)), !global3.d.x)), var_0);
    global1 = arg_1;
    return vec4<bool>(func_3(), 3176u > firstLeadingBit(_wgslsmith_dot_vec4_u32(~arg_3, ~vec4<u32>(18224u, 12426u, var_2.a.x, 56704u))), all(vec4<bool>(select(var_0.x, var_0.x, global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -960f) < _wgslsmith_f_op_f32(global4.x - global4.x), var_0.x, var_0.x)), var_0.x);
}

fn func_1() -> vec4<u32> {
    global0 = array<f32, 16>();
    global2 = u_input.a.x;
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~(~(~0u))), 16u)];
    global3 = Struct_4(~select(vec4<u32>(4294967295u, 9414u, 40926u, 4294967295u), u_input.e, func_2(u_input.a.wxz, u_input.a.x, 871f, vec4<u32>(u_input.c, global3.b, global3.b, 36303u))) | u_input.e, reverseBits(~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 97945u)) | ~(select(u_input.c, 33711u, global3.d.x) | countOneBits(global3.c.x)), ~min(global3.c, vec3<u32>(4294967295u, 0u, _wgslsmith_dot_vec2_u32(global3.c.zz, global3.c.xx))), select(!vec2<bool>(!global3.d.x, global3.d.x), select(!(!global3.d), select(func_2(u_input.a.zzw, u_input.a.x, global4.x, vec4<u32>(22634u, global3.b, 351u, u_input.c)).zz, global3.d, select(global3.d, vec2<bool>(global3.d.x, false), false)), select(!global3.d, select(global3.d, global3.d, global3.d.x), select(global3.d, vec2<bool>(global3.d.x, true), global3.d.x))), false));
    return global3.a & firstTrailingBit(_wgslsmith_div_vec4_u32(global3.a, vec4<u32>(41349u, 1u, 0u, 1u)) >> ((global3.a ^ abs(global3.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_4) -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -595f, arg_1.x, -2137f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], arg_0, -163f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, global4.x, 1095f, 283f), vec4<f32>(-299f, global0[_wgslsmith_index_u32(53773u, 16u)], global4.x, 249f)))))))), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f - _wgslsmith_f_op_f32(step(-1454f, arg_0))) * -336f) + _wgslsmith_f_op_f32(arg_0 * global0[_wgslsmith_index_u32(~abs(0u), 16u)])), _wgslsmith_add_vec3_i32(select(vec3<i32>(-20695i, 58628i, arg_2) | u_input.a.xyw, -vec3<i32>(-42564i, -1i, arg_2), func_2(u_input.a.xzw, u_input.a.x, -646f, u_input.b).xyz) << (vec3<u32>(_wgslsmith_clamp_u32(9610u, 33611u, global3.b), 4294967295u, ~0u) % vec3<u32>(32u)), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 59569i), vec3<i32>(u_input.a.x, 1i, arg_2))), vec2<u32>(firstLeadingBit(16531u), _wgslsmith_sub_u32(1u, global3.c.x)));
    let var_1 = Struct_1(arg_2, _wgslsmith_f_op_f32(max(894f, _wgslsmith_f_op_f32(arg_0 - global4.x))), !any(select(vec3<bool>(true, false, var_0.b.d.x), vec3<bool>(var_0.b.d.x, true, var_0.b.d.x), false)) || true, _wgslsmith_clamp_vec2_u32(reverseBits(abs(~vec2<u32>(u_input.c, arg_3.b))), abs(abs(_wgslsmith_mod_vec2_u32(u_input.d, u_input.d))), vec2<u32>(select(var_0.e.x, 2298u, global3.d.x), select(firstTrailingBit(u_input.e.x), min(41494u, 19063u), !var_0.b.d.x))));
    global1 = var_1.a;
    let var_2 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), global3.d.x, vec2<u32>(var_0.b.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, u_input.e.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(9434u, var_0.e.x, 0u, global3.a.x), countOneBits(vec4<u32>(var_0.b.b, 54722u, 46930u, 18813u))))));
    let var_3 = Struct_4(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_3.a, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 12132u), firstLeadingBit(vec4<u32>(1u, var_1.d.x, 0u, 1u))), min(arg_3.a, vec4<u32>(4294967295u, 0u, arg_3.b, 0u) << (vec4<u32>(global3.c.x, 47235u, var_1.d.x, var_0.b.c.x) % vec4<u32>(32u)))) | vec4<u32>(108237u, u_input.e.x, var_1.d.x, ~firstLeadingBit(0u)), ~_wgslsmith_mod_u32(83329u, var_2.d.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32((vec3<u32>(55322u, 4294967295u, var_2.d.x) & global3.a.wyx) | vec3<u32>(var_1.d.x, var_1.d.x, 1u), ~vec3<u32>(36314u, u_input.b.x, 70605u) | ~arg_3.a.xxw), ~_wgslsmith_div_vec3_u32(vec3<u32>(28131u, var_1.d.x, 75136u), vec3<u32>(var_1.d.x, u_input.e.x, global3.b))), vec2<bool>(!var_1.c, true));
    return Struct_3(var_0.d.xx);
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = min(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(21040u, global3.c.x, global3.b), ~u_input.e.yxx), ~(~vec3<u32>(u_input.b.x, 21783u, u_input.c))) | vec3<u32>(global3.a.x & _wgslsmith_div_u32(u_input.d.x, global3.a.x), global3.a.x, global3.b), countOneBits(global3.c));
    var var_1 = true;
    global1 = countOneBits(i32(-1i) * -30005i);
    let var_2 = min(~u_input.a, u_input.a);
    var_1 = !all(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global3.d.x, false, global3.d.x), vec4<bool>(global3.d.x, true, global3.d.x, global3.d.x)));
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(func_5(func_4(global4.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(62552u, 16u)]), -592f), -6342i, Struct_4(func_1(), ~u_input.e.x, vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec2<bool>(false, true))))), ~(~(~4294967295u)) == global3.c.x, _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(firstTrailingBit(global3.c.x)), u_input.b.x), vec2<u32>(_wgslsmith_clamp_u32(min(1u, 4294967295u), 49855u, ~4294967295u), 1u)));
    let var_1 = i32(-1i) * -2147483647i;
    global0 = array<f32, 16>();
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d.x, 16u)]);
    let var_3 = vec2<i32>(var_1 << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, ~73992u, _wgslsmith_mult_u32(0u, u_input.e.x), min(u_input.c, 1u)), min(~global3.a, ~vec4<u32>(u_input.c, global3.b, 16637u, var_0.d.x))) % 32u), -select(min(0i, -2147483647i) ^ var_1, 0i, !(-16515i > u_input.a.x)));
    var var_4 = Struct_4(vec4<u32>(80987u, firstLeadingBit(83777u), 1u, 15121u), u_input.d.x, global3.a.wxx, select(!(!vec2<bool>(var_0.c, false)), vec2<bool>(all(vec2<bool>(true, true)), global3.d.x == true), !func_2(countOneBits(vec3<i32>(2147483647i, u_input.a.x, var_1)), abs(2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.a).wz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(max(var_0.d.x, ~global3.c.x), u_input.b.x), ~(~global3.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + -1000f) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.d.x, 16u)]))), -516f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), -1000f)), global4.x))), global3.c.xx);
}

