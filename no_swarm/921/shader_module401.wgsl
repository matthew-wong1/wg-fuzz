struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(2147483647i, 55149i), vec2<i32>(43470i, -1i), vec2<i32>(-38959i, 0i));

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 11> = array<f32, 11>(-439f, 1030f, -367f, 748f, -1380f, 807f, 441f, 1514f, 1381f, -828f, -759f);

var<private> global3: array<vec3<bool>, 23>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    global0 = array<vec2<i32>, 3>();
    global3 = array<vec3<bool>, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, 914f, arg_0.b.x))))), vec2<f32>(-710f, arg_1.x), global1.x, _wgslsmith_sub_vec2_u32(~vec2<u32>(firstTrailingBit(17663u), arg_0.c), select(vec2<u32>(~u_input.b.x, 60322u), global1.xy, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)), arg_0.b, u_input.a ^ _wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(u_input.b)), vec2<u32>((86952u >> (_wgslsmith_add_u32(global1.x, 1u) % 32u)) | ~abs(40204u), 28684u));
    let var_2 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(max(~vec3<i32>(2147483647i, 4378i, u_input.c), ~vec3<i32>(u_input.c, u_input.c, 6346i)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-35046i, 3690i, u_input.c), vec3<i32>(u_input.c, u_input.c, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-2147483647i, 11323i, -2147483647i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.c, u_input.c, u_input.c), vec3<i32>(-26179i, u_input.c, ~(-593i)) & max(-vec3<i32>(u_input.c, u_input.c, 1i), min(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, -2147483647i)))), firstTrailingBit(abs(-firstTrailingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)))));
    return ~_wgslsmith_sub_vec4_u32(u_input.b, abs(u_input.b));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = func_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -100f, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1098f, global2[_wgslsmith_index_u32(global1.x, 11u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_div_f32(708f, global2[_wgslsmith_index_u32(0u, 11u)]))), global1.x ^ ~4294967295u, ~(countOneBits(vec2<u32>(u_input.b.x, global1.x)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global1.x), u_input.b.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 11u)], 1112f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], arg_0))))));
    global0 = array<vec2<i32>, 3>();
    let var_1 = !any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))));
    global2 = array<f32, 11>();
    let var_2 = min(u_input.b, max(min(u_input.b, vec4<u32>(0u, global1.x, 39829u, var_0.x)) ^ vec4<u32>(_wgslsmith_mult_u32(0u, 0u), select(95920u, global1.x, var_1), ~u_input.a, var_0.x), var_0));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = false;
    let var_1 = vec4<bool>(all(select(vec4<bool>(true, true, u_input.c == 5053i, true), vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.x, 11u)] - -875f)))), false, any(select(global3[_wgslsmith_index_u32(global1.x, 23u)], vec3<bool>(true, false, true), select(false, false, true))), (~firstTrailingBit(u_input.c) ^ max(~u_input.c, ~u_input.c)) == _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 105876i, 22454i) ^ vec3<i32>(2147483647i, 0i, u_input.c), -vec3<i32>(14570i, u_input.c, u_input.c)), reverseBits(vec3<i32>(16589i, u_input.c, -2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(-arg_1.a.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f * -293f));
    global0 = array<vec2<i32>, 3>();
    var_0 = var_2;
    return vec4<bool>(!var_1.x, (true && all(!global3[_wgslsmith_index_u32(23835u, 23u)])) && any(select(var_1.wzw, select(var_1.zxz, var_1.xxz, vec3<bool>(var_2, var_1.x, false)), !var_1.x)), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1031f - _wgslsmith_div_f32(484f, 1579f)), _wgslsmith_div_f32(587f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_1.d.x, 11u)], 221f, var_1.x))))) >= -2419f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(63461u | global1.x), u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.wyx << (u_input.b.zyz % vec3<u32>(32u)), u_input.b.zzz)), u_input.b.yyy), select(u_input.b.zww >> (~u_input.b.yyy % vec3<u32>(32u)), (vec3<u32>(40306u, u_input.b.x, global1.x) ^ vec3<u32>(global1.x, global1.x, 75515u)) >> (select(u_input.b.xwx, vec3<u32>(56987u, u_input.a, global1.x), true) % vec3<u32>(32u)), vec3<bool>(all(vec4<bool>(false, true, false, true)), all(global3[_wgslsmith_index_u32(global1.x, 23u)]), true)) << (~vec3<u32>(8098u, 4294967295u, ~u_input.a) % vec3<u32>(32u)));
    var var_0 = -2100f;
    global1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.b.zyz, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) ^ vec3<u32>(min(u_input.a, global1.x), 40052u, 25538u)) >> (vec3<u32>(min(4294967295u, ~_wgslsmith_mult_u32(27913u, u_input.b.x)), 41795u, 1u) % vec3<u32>(32u));
    let var_1 = any(select(!vec4<bool>(15799u > global1.x, true, true, false), select(func_1(vec2<u32>(global1.x, 4294967295u) & vec2<u32>(0u, 1u), Struct_1(vec3<f32>(121f, global2[_wgslsmith_index_u32(global1.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<f32>(-150f, global2[_wgslsmith_index_u32(1u, 11u)]), 1u, global1.zy)), vec4<bool>(true, true, true, func_1(global1.yx, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(16964u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], -393f), vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 11u)], -462f), 4294967295u, global1.yx)).x), true), vec4<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false)), true, any(global3[_wgslsmith_index_u32(~22609u, 23u)]), func_2(-1568f))));
    let var_2 = _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.a, 11u)]));
    global2 = array<f32, 11>();
    var var_3 = -2147483647i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1287f, -875f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -775f, var_2))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, -194f, -1928f) + vec3<f32>(var_2, 811f, var_2)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 11u)])))), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, reverseBits(global1.x)), 1u), vec2<u32>(reverseBits(0u), ~select(global1.x, ~u_input.b.x, func_1(vec2<u32>(25516u, 4294967295u), Struct_1(vec3<f32>(var_2, -900f, 1556f), vec2<f32>(-1178f, var_2), global1.x, global1.zx)).x)));
    var var_5 = vec2<i32>(select(_wgslsmith_dot_vec2_i32(select(global0[_wgslsmith_index_u32(~0u, 3u)], max(vec2<i32>(u_input.c, u_input.c), global0[_wgslsmith_index_u32(1u, 3u)]), !var_1), global0[_wgslsmith_index_u32(global1.x & 4294967295u, 3u)]), _wgslsmith_add_i32(-42282i, ~31101i), false), _wgslsmith_sub_i32(24617i, -48788i));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.yw, _wgslsmith_mod_u32(global1.x, ~func_3(Struct_1(vec3<f32>(var_2, -1068f, 604f), vec2<f32>(var_4.b.x, 632f), 4294967295u, vec2<u32>(1129u, var_4.d.x)), _wgslsmith_div_vec2_f32(vec2<f32>(806f, var_2), var_4.a.yz)).x), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_4.d.x), var_4.d.x) & abs(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.a))), 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

