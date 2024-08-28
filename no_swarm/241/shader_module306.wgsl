struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = ~(~vec2<i32>(0i, 1i << (firstLeadingBit(global3.x) % 32u)));
    let var_1 = Struct_1(select(vec2<bool>(true, true), !vec2<bool>(false, any(vec3<bool>(false, true, false))), !(var_0.x >= u_input.a)), 0i, ~global1.wwz);
    var var_2 = select(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global3.x, global3.x, global3.x, 45090u)), vec4<u32>(0u, global3.x >> (66101u % 32u), abs(4294967295u), _wgslsmith_div_u32(global3.x, global3.x))), 23u)], vec3<bool>(select(select(var_1.a.x, var_1.a.x, true), true, false), !var_1.a.x && true, (0i > global1.x) & !var_1.a.x), global0[_wgslsmith_index_u32(~global3.x, 23u)]), vec3<bool>(true, (all(var_1.a) && all(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x))) & true, _wgslsmith_mult_i32(-62506i, var_1.b << (1u % 32u)) > -1i), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(2614u, 0u, 4294967295u)), vec3<u32>(global3.x, global3.x, global3.x) << (~vec3<u32>(global3.x, 20448u, 94885u) % vec3<u32>(32u))) < min(global3.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 50408u, 51543u), vec3<u32>(global3.x, 0u, 1u))));
    global3 = _wgslsmith_mod_vec2_u32(~(~select(vec2<u32>(0u, global3.x), vec2<u32>(1u, 47721u), var_1.a.x)) & vec2<u32>(_wgslsmith_add_u32(25295u, ~35982u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, global3.x, 37027u, global3.x), vec4<u32>(global3.x, global3.x, global3.x, 0u)), vec4<u32>(1u, global3.x, 23517u, 5818u))), _wgslsmith_sub_vec2_u32(select(~(vec2<u32>(4294967295u, 64945u) | vec2<u32>(1u, global3.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(13440u, global3.x), vec2<u32>(global3.x, global3.x)), 3892u), !(!var_2.x)), vec2<u32>(93560u, ~countOneBits(1u))));
    global0 = array<vec3<bool>, 23>();
    return vec4<u32>(~(min(_wgslsmith_sub_u32(4294967295u, 12975u), ~global3.x) & 12251u), ~101198u, firstLeadingBit(1840u), ~global3.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: f32) -> vec3<i32> {
    global0 = array<vec3<bool>, 23>();
    global3 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, 511u, 4294967295u) ^ vec4<u32>(1u, global3.x, global3.x, 0u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 1u, 75670u, 53302u), vec4<u32>(1u, global3.x, 4294967295u, 0u)), func_3()))), global3.x & 11818u);
    global3 = ~vec2<u32>(30737u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(89989u, 1u, 55645u, 47162u) | vec4<u32>(global3.x, 43865u, global3.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 21101u, global3.x, global3.x), vec4<u32>(39191u, global3.x, global3.x, 26983u), vec4<u32>(1u, global3.x, global3.x, global3.x))));
    var var_0 = u_input.a > _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_sub_i32(-3607i, global1.x), 21648i);
    global2 = array<Struct_1, 10>();
    return vec3<i32>(global1.x, countOneBits(u_input.a), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, global1.x, select(u_input.a, global1.x, false)), u_input.a)));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = array<Struct_1, 10>();
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), _wgslsmith_add_i32(-2147483647i, global1.x) != global1.x), u_input.a, func_2(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(248f, 691f))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global3.x, global3.x) | vec3<u32>(global3.x, global3.x, 32402u), vec3<u32>(35090u, global3.x, 4294967295u), ~vec3<u32>(76708u, 1u, global3.x)) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(abs(global3.x), 10u)]);
    global3 = max(_wgslsmith_mult_vec2_u32(max(~vec2<u32>(67501u, 0u), ~vec2<u32>(global3.x, 90567u)), vec2<u32>(53392u, global3.x)) & vec2<u32>(1u, ~(~global3.x)), ~select(vec2<u32>(_wgslsmith_mod_u32(global3.x, 40289u), abs(global3.x)), max(countOneBits(vec2<u32>(403u, global3.x)), ~vec2<u32>(global3.x, global3.x)), !var_0.b.a.x));
    let var_1 = global3.x & ~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 1u), firstTrailingBit(global3.x));
    let var_2 = !vec3<bool>(false, true, all(var_0.a.a) | all(!vec3<bool>(true, var_0.a.a.x, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 841f));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(abs(arg_1));
    global2 = array<Struct_1, 10>();
    var var_1 = Struct_1(arg_3.yy, -(~0i), global1.yyx);
    var var_2 = global2[_wgslsmith_index_u32(0u, 10u)];
    let var_3 = max(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(31115u, 10194u) << (vec2<u32>(78026u, global3.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_add_u32(global3.x, global3.x), global3.x)) >> (abs(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, global3.x), vec2<u32>(54537u, global3.x)))) % vec2<u32>(32u)), func_3().wz);
    return Struct_2(global2[_wgslsmith_index_u32(~firstLeadingBit(abs(1u)), 10u)], Struct_1(select(select(select(var_2.a, arg_2.yx, vec2<bool>(var_2.a.x, true)), !var_1.a, select(vec2<bool>(var_1.a.x, arg_3.x), arg_2.xz, false)), select(arg_3.yx, vec2<bool>(false, arg_2.x), arg_3.yx), false), 2147483647i, var_2.c));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global2 = array<Struct_1, 10>();
    let var_0 = arg_1;
    let var_1 = global3.x;
    let var_2 = -426f;
    var var_3 = var_2;
    return func_4(global1.x, _wgslsmith_f_op_f32(-var_2), vec3<bool>(!func_4(1i, _wgslsmith_f_op_f32(-var_2), vec3<bool>(true, var_0.b.a.x, arg_0), !vec3<bool>(false, arg_0, arg_0)).b.a.x, !var_0.a.a.x, !(!(global3.x == 4294967295u))), select(select(vec3<bool>(-1i < u_input.a, !arg_1.a.a.x, any(arg_1.b.a)), global0[_wgslsmith_index_u32(global3.x, 23u)], global0[_wgslsmith_index_u32(global3.x, 23u)]), !select(vec3<bool>(true, false, arg_1.a.a.x), !global0[_wgslsmith_index_u32(4294967295u, 23u)], global3.x > 0u), !vec3<bool>(true, arg_0 && arg_1.a.a.x, true))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~0u, 10u)];
    global2 = array<Struct_1, 10>();
    let var_1 = Struct_2(func_5(!(!var_0.a.x), func_4(-2147483647i, _wgslsmith_f_op_f32(func_1(global1.x)), global0[_wgslsmith_index_u32(28328u, 23u)], select(global0[_wgslsmith_index_u32(1u, 23u)], vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 64195u), vec2<u32>(23611u, global3.x)), 23u)]))), func_4(u_input.a, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-711f * _wgslsmith_div_f32(-510f, 773f))), !select(!vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, true, true), !var_0.a.x), select(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3.x, global3.x), 23u)], select(global0[_wgslsmith_index_u32(global3.x, 23u)], vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(global3.x, 23u)]), !global0[_wgslsmith_index_u32(16910u, 23u)])).a);
    global3 = ~vec2<u32>(1u, ~global3.x);
    var var_2 = _wgslsmith_dot_vec4_i32(countOneBits(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, var_0.b, var_0.c.x, var_1.a.c.x), vec4<i32>(var_0.c.x, global1.x, -42516i, u_input.a)) ^ -vec4<i32>(global1.x, 1748i, 1i, u_input.a))), -vec4<i32>(-2147483647i, -global1.x, u_input.a, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), 1i);
}

