struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<u32>, 26>;

var<private> global2: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> i32 {
    global0 = arg_0;
    let var_0 = Struct_4(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.a.x), 2147483647i, i32(-1i) * -26823i), reverseBits(_wgslsmith_mult_vec3_i32(global0.d.a.xwx, vec3<i32>(global0.e.c, 0i, -2147483647i)) << (global0.d.d.xwz % vec3<u32>(32u)))), arg_3, 0i, Struct_2(-firstTrailingBit(vec4<i32>(u_input.a.x, -9111i, 58551i, arg_0.b.a.b.c)), arg_3.a.b, vec3<bool>(!select(arg_0.b.a.b.e.x, arg_3.a.c.x, arg_3.a.b.e.x), _wgslsmith_f_op_f32(global0.b.a.b.d * 166f) >= _wgslsmith_f_op_f32(1747f - -1803f), 2147483647i == firstLeadingBit(u_input.a.x)), select(max(abs(vec4<u32>(18112u, arg_2.x, 4294967295u, 1u)), vec4<u32>(1u, arg_2.x, arg_0.b.a.b.b.x, arg_3.a.d.x)), global0.d.d, !(!vec4<bool>(arg_0.b.a.b.e.x, arg_3.a.c.x, global0.d.b.e.x, false))), reverseBits(-arg_3.a.a.zzx)), Struct_1(~1i, ~select(vec4<u32>(1u, arg_3.a.b.b.x, arg_2.x, 4294967295u) ^ arg_3.a.d, select(vec4<u32>(2851u, 21981u, 0u, 1u), vec4<u32>(arg_0.e.b.x, arg_0.b.a.d.x, 4294967295u, 1u), true), select(vec4<bool>(false, arg_0.b.a.b.e.x, false, global0.e.e.x), vec4<bool>(arg_3.a.b.e.x, false, arg_0.e.e.x, false), false)), arg_0.e.c, _wgslsmith_f_op_f32(sign(arg_3.a.b.d)), !select(!vec3<bool>(false, true, arg_0.d.c.x), !vec3<bool>(global0.d.c.x, true, true), true)));
    var var_1 = global0.b;
    var var_2 = 86555u;
    global0 = Struct_4(select(arg_3.a.e, select(firstTrailingBit(u_input.a.wyy), vec3<i32>(~2147483647i, var_0.b.a.a.x, ~u_input.a.x), vec3<bool>(all(vec2<bool>(true, true)), all(var_0.e.e.zz), true)), !vec3<bool>(any(global0.d.b.e.yx), !var_1.a.b.e.x, !arg_3.a.b.e.x)), Struct_3(Struct_2(-(~vec4<i32>(-15222i, -13511i, global0.d.e.x, global0.e.a)), var_1.a.b, select(select(arg_0.b.a.c, arg_0.e.e, var_0.e.e), vec3<bool>(true, true, true), true), firstLeadingBit(vec4<u32>(0u, global0.b.a.b.b.x, var_0.b.a.d.x, 9164u)), _wgslsmith_mod_vec3_i32(vec3<i32>(41976i, var_0.a.x, 48648i), u_input.a.zwy))), arg_0.e.a, Struct_2(select(arg_0.d.a, -vec4<i32>(44707i, var_0.a.x, u_input.a.x, -2147483647i), true) >> (select(vec4<u32>(4294967295u, arg_2.x, arg_0.b.a.b.b.x, arg_0.d.d.x) << (var_1.a.d % vec4<u32>(32u)), vec4<u32>(arg_3.a.d.x, 1u, var_0.d.d.x, 4294967295u), !var_1.a.c.x) % vec4<u32>(32u)), Struct_1(global0.a.x, vec4<u32>(~arg_2.x, _wgslsmith_clamp_u32(10778u, var_1.a.b.b.x, arg_2.x), 0u, ~var_1.a.b.b.x), ~(57521i ^ var_1.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)), arg_3.a.b.e), select(select(vec3<bool>(var_1.a.b.e.x, false, var_1.a.c.x), !var_1.a.b.e, vec3<bool>(var_1.a.c.x, var_0.d.b.e.x, arg_0.b.a.b.e.x)), select(select(vec3<bool>(arg_0.d.b.e.x, global0.e.e.x, arg_3.a.b.e.x), var_0.b.a.c, var_0.d.c.x), var_0.d.c, select(global0.b.a.b.e, var_0.d.c, false)), var_1.a.b.d >= _wgslsmith_f_op_f32(var_1.a.b.d - arg_3.a.b.d)), vec4<u32>(reverseBits(var_1.a.d.x), _wgslsmith_clamp_u32(1u, ~4294967295u, ~arg_2.x), 6644u, arg_0.e.b.x), global0.a), Struct_1(_wgslsmith_div_i32(-1i, global0.b.a.b.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.a.d.x, arg_2.x), ~arg_0.e.b.ww) % 32u), vec4<u32>(global0.e.b.x, 1u, ~(~arg_3.a.d.x), 3537u), -1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.a.b.d, _wgslsmith_f_op_f32(arg_0.b.a.b.d * global0.e.d), all(vec4<bool>(true, true, var_1.a.c.x, arg_0.e.e.x)))), arg_3.a.b.d)), vec3<bool>(-488f > _wgslsmith_f_op_f32(-arg_1.x), false, false)));
    return arg_3.a.e.x;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = global0.d.b;
    var var_1 = global0.b.a;
    global1 = array<vec4<u32>, 26>();
    let var_2 = u_input.a.zxx;
    global0 = Struct_4(~(-reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.c, var_0.a), global0.b.a.a.xzx))), Struct_3(global0.d), 2147483647i, Struct_2(var_1.a, Struct_1(abs(1i), vec4<u32>(0u, abs(38066u), var_0.b.x, ~global0.e.b.x), -2147483647i, -727f, vec3<bool>(!var_1.b.e.x, any(var_1.b.e), global0.b.a.c.x && true)), vec3<bool>(!(var_0.b.x > 0u), global0.d.b.e.x, var_0.e.x), min(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(106740u, 2857u, 1u, var_1.b.b.x)), var_1.d), global0.e.b | select(var_1.b.b, global0.d.b.b, vec4<bool>(false, global0.e.e.x, global0.b.a.c.x, var_0.e.x))), vec3<i32>(func_3(Struct_4(vec3<i32>(48362i, var_0.c, 49394i), global0.b, -1i, global0.d, Struct_1(-2147483647i, global0.d.d, var_1.e.x, -832f, var_1.b.e)), vec2<f32>(arg_0.x, global0.b.a.b.d), vec2<u32>(58517u, var_0.b.x), Struct_3(Struct_2(vec4<i32>(19029i, 0i, 48706i, var_0.c), Struct_1(var_2.x, global1[_wgslsmith_index_u32(6492u, 26u)], 4660i, var_0.d, vec3<bool>(var_1.b.e.x, var_1.c.x, var_0.e.x)), vec3<bool>(true, true, true), vec4<u32>(var_1.d.x, global0.b.a.d.x, var_1.d.x, 12403u), u_input.a.wyy))), select(-2147483647i, 0i, var_1.c.x), _wgslsmith_sub_i32(0i, u_input.a.x)) >> (global0.d.d.zxx % vec3<u32>(32u))), global0.d.b);
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> vec3<bool> {
    var var_0 = !vec4<bool>(global0.e.e.x, true, any(vec2<bool>(any(vec2<bool>(false, global0.b.a.b.e.x)), true)), arg_1.a.b.e.x);
    var_0 = !(!select(vec4<bool>(true, any(vec2<bool>(false, false)), 4294967295u == arg_1.a.b.b.x, var_0.x), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(global0.e.e.x, var_0.x, false, true), all(vec4<bool>(global0.e.e.x, false, false, true))), !(!vec4<bool>(var_0.x, global0.b.a.c.x, false, false))));
    return !(!(!select(vec3<bool>(global0.b.a.b.e.x, global0.d.c.x, true), !arg_1.a.b.e, func_2(vec3<f32>(-640f, -1220f, global0.e.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d.e.xz;
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    global0 = Struct_4(vec3<i32>((global0.a.x ^ (-44943i ^ u_input.a.x)) >> (0u % 32u), -35568i, _wgslsmith_mod_i32(~u_input.a.x, ~global0.a.x)), Struct_3(Struct_2(global0.b.a.a, global0.e, select(!global0.e.e, func_1(vec3<u32>(global0.d.d.x, global0.e.b.x, global0.b.a.b.b.x), global0.b, u_input.a.x, u_input.a.x), 20708u < global0.d.b.b.x), global0.e.b, min(abs(vec3<i32>(2147483647i, var_0.x, var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(global0.c, 0i, 19162i))))), global0.d.e.x ^ _wgslsmith_mult_i32(global0.e.a, ~u_input.a.x), Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.a, _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(global0.c, 1136i, 15053i, u_input.a.x))), abs(u_input.a) ^ abs(vec4<i32>(-32892i, var_0.x, -2889i, u_input.a.x))), global0.b.a.b, vec3<bool>(true, true, !global0.d.b.e.x), vec4<u32>(~16390u, 41520u, 0u, global0.d.d.x << ((global0.d.d.x ^ 4294967295u) % 32u)), vec3<i32>(1i, -2311i, -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.c, u_input.a.x, 53405i), global0.b.a.a.zwy))), global0.e);
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -50313i), ~(-vec2<i32>(2147483647i, -33352i))), _wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec3_i32(-u_input.a.yyy, u_input.a.xzy)), -36166i), Struct_3(Struct_2(global0.b.a.a & countOneBits(global0.d.a), global0.d.b, !vec3<bool>(global0.b.a.c.x, false, true), global1[_wgslsmith_index_u32(0u, 26u)], abs(global0.b.a.e) << (vec3<u32>(global0.b.a.d.x, 4294967295u, global0.d.b.b.x) % vec3<u32>(32u)))), u_input.a.x | ~(~(-1i)), Struct_2(vec4<i32>(_wgslsmith_sub_i32(-55594i, 0i) >> (_wgslsmith_div_u32(global0.b.a.b.b.x, 36468u) % 32u), 0i, select(1i, -987i, global0.d.b.e.x), abs(0i)), global0.b.a.b, global0.b.a.b.e, firstLeadingBit(vec4<u32>(global0.b.a.d.x, 1u, global0.d.d.x, 1u)), vec3<i32>(var_0.x, var_0.x, 2147483647i)), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-11545i, ~global0.d.b.a), vec2<f32>(_wgslsmith_f_op_f32(var_1.d.b.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.d - -1242f) + _wgslsmith_f_op_f32(-var_1.e.d))), 1261f), ~(~_wgslsmith_add_vec3_i32(var_1.d.e, global0.a) | _wgslsmith_div_vec3_i32(~var_1.b.a.e, firstLeadingBit(vec3<i32>(0i, var_1.c, 2147483647i)))), global0.c, vec2<u32>(~_wgslsmith_div_u32(global0.d.b.b.x, var_1.d.b.b.x), 74394u) >> (vec2<u32>(min(~var_1.b.a.d.x, abs(1u)), global0.b.a.d.x) % vec2<u32>(32u)));
}

