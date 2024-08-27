struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: Struct_4;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> bool {
    let var_0 = 385f;
    var var_1 = true;
    let var_2 = global2.a;
    global1 = Struct_2(true);
    let var_3 = false;
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> bool {
    global1 = Struct_2(all(select(!select(arg_0.ywz, vec3<bool>(true, false, global2.a.d.x), vec3<bool>(global2.a.c, false, false)), arg_0.wzz, !select(arg_0.xwx, vec3<bool>(global2.a.c, global1.a, arg_0.x), arg_0.yzz))));
    global0 = array<vec2<u32>, 25>();
    let var_0 = Struct_4(Struct_1(firstTrailingBit(abs(~1u)), vec2<i32>(abs(global2.a.b.x), global2.a.b.x) << (vec2<u32>(0u, _wgslsmith_mod_u32(1u, 4294967295u)) % vec2<u32>(32u)), 26709i > countOneBits(_wgslsmith_sub_i32(global2.a.b.x, -28178i)), vec2<bool>(global2.a.c, all(vec4<bool>(arg_0.x, true, true, global2.a.c)) | true), arg_2.x >> (arg_2.x % 32u)));
    global1 = Struct_2(!any(select(!arg_0.wzy, select(arg_0.zww, vec3<bool>(true, global2.a.c, true), arg_0.xxz), arg_0.x)));
    var var_1 = var_0;
    return false;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<vec2<u32>, 25>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(vec4<i32>(-1i, abs(global2.a.b.x), global2.a.b.x, countOneBits(global2.a.b.x)))), -(~(~vec4<i32>(u_input.a.x, u_input.a.x, global2.a.b.x, -5461i)) >> (vec4<u32>(arg_0.a.x << (1142u % 32u), ~global2.a.e, _wgslsmith_mod_u32(u_input.b, arg_0.a.x), ~global2.a.e) % vec4<u32>(32u))));
    global2 = Struct_4(global2.a);
    let var_2 = Struct_3(all(vec4<bool>(!any(vec3<bool>(arg_1, global2.a.c, false)), true, func_3(select(vec4<bool>(false, global2.a.c, arg_2, false), vec4<bool>(arg_2, false, arg_2, false), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1006f, -281f, -1602f)), firstTrailingBit(vec3<u32>(global2.a.e, 1u, global2.a.e))), arg_2)));
    return Struct_1(var_0.a.x, ~min(u_input.a, u_input.a), true, select(vec2<bool>(!(4294967295u == var_0.a.x), (4294967295u != arg_0.a.x) && (global1.a & false)), vec2<bool>(func_2(), !global2.a.d.x), true), 22857u);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_5 {
    let var_0 = true;
    var var_1 = 4294967295u;
    var var_2 = ~(~select(vec4<u32>(abs(61027u), func_4(Struct_5(global0[_wgslsmith_index_u32(u_input.b, 25u)]), true, true, vec3<bool>(arg_0.c, true, global1.a)).a, func_4(Struct_5(global0[_wgslsmith_index_u32(39232u, 25u)]), arg_0.c, true, vec3<bool>(arg_0.c, false, global2.a.d.x)).a, ~arg_0.e), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global2.a.a, 14006u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 4294967295u, 81651u)), var_0));
    global1 = Struct_2(select(!all(!vec2<bool>(true, arg_0.c)), true, !global2.a.c));
    global1 = Struct_2(global1.a);
    return Struct_5(~_wgslsmith_mod_vec2_u32(reverseBits(~var_2.xz), global0[_wgslsmith_index_u32(1u, 25u)]));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = -(u_input.a << (~global0[_wgslsmith_index_u32(u_input.b, 25u)] % vec2<u32>(32u)));
    var var_1 = -(~vec3<i32>(1i, i32(-1i) * -global2.a.b.x, select(_wgslsmith_mod_i32(var_0.x, -13860i), -21265i >> (global2.a.e % 32u), var_0.x > -53215i)));
    global0 = array<vec2<u32>, 25>();
    let var_2 = ~u_input.a.x;
    let var_3 = func_5(func_4(Struct_5(global0[_wgslsmith_index_u32(global2.a.a, 25u)]), func_2(), func_3(vec4<bool>(any(vec3<bool>(global1.a, global1.a, arg_0.x)), false, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-599f, -1080f, 695f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, 1851f, -560f))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 50457u), global0[_wgslsmith_index_u32(u_input.b, 25u)]), global2.a.e, abs(0u))), arg_0.yyw), -259f);
    return -911f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(-855f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(773f * -673f) + -1180f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1442f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(2299f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-536f * 1266f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec4<bool>(global1.a, false, global2.a.d.x, false))))))));
    var var_1 = abs(_wgslsmith_mult_vec2_i32(global2.a.b, func_4(Struct_5(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(62063u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])), !(false & global2.a.c), false, vec3<bool>(true, select(global1.a, global2.a.d.x, true), global2.a.d.x)).b));
    var var_2 = global1.a;
    let var_3 = global2.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -129f)), -189f, _wgslsmith_f_op_f32(var_0.x - -850f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -700f))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(-455f, _wgslsmith_div_f32(var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(vec3<i32>(-63934i, -1i, var_1.x))), select(firstLeadingBit(var_3.b), -(~(-vec2<i32>(var_1.x, -41936i))), !func_4(func_5(global2.a, 1000f), true, -654f > var_0.x, vec3<bool>(true, true, true)).c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-2921f - -729f), _wgslsmith_f_op_f32(761f * var_0.x), var_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(782f, -400f, var_0.x, -1207f), vec4<f32>(var_0.x, 667f, var_0.x, 1232f), vec4<bool>(var_3.c, false, global2.a.c, global2.a.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-726f, var_0.x, -369f, -1001f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, var_0.x, var_0.x, var_0.x)))), ~u_input.b);
}

