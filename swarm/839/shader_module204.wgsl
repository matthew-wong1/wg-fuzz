struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, true), 1000f), Struct_1(vec2<bool>(true, true), -353f), Struct_1(vec2<bool>(false, false), 213f), Struct_1(vec2<bool>(false, true), -451f), Struct_1(vec2<bool>(true, false), 1416f), Struct_1(vec2<bool>(true, false), -789f), Struct_1(vec2<bool>(true, true), 2075f), Struct_1(vec2<bool>(false, true), 318f), Struct_1(vec2<bool>(false, false), -1245f), Struct_1(vec2<bool>(false, false), 361f), Struct_1(vec2<bool>(false, false), 299f), Struct_1(vec2<bool>(false, false), -135f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec2<bool> {
    return select(vec2<bool>((true | (-205f >= global1.x)) & false, !(any(vec4<bool>(false, true, false, false)) && true)), vec2<bool>(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), true | !(-2024f != global1.x)), !all(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, false)));
}

fn func_3() -> bool {
    var var_0 = true;
    let var_1 = 1u;
    let var_2 = Struct_1(select(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), true), vec2<bool>(!(-1495f <= global1.x), false), true), _wgslsmith_f_op_f32(sign(-450f)));
    global0 = _wgslsmith_mult_u32(~((u_input.b & (var_1 << (u_input.b % 32u))) & ~(~u_input.b)), 71977u);
    var_0 = !all(select(!(!vec3<bool>(var_2.a.x, var_2.a.x, true)), !(!vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), true));
    return all(!select(!(!vec4<bool>(false, true, var_2.a.x, var_2.a.x)), vec4<bool>(all(vec3<bool>(var_2.a.x, var_2.a.x, true)), false, any(var_2.a), !var_2.a.x), vec4<bool>(true, true || var_2.a.x, false, !var_2.a.x)));
}

fn func_4(arg_0: bool) -> vec2<u32> {
    let var_0 = Struct_3(select(!vec3<bool>(select(arg_0, arg_0, false), false, any(vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(arg_0, true, true), (_wgslsmith_f_op_f32(f32(-1f) * -167f) > global1.x) && !arg_0), ~(~max(reverseBits(vec2<u32>(u_input.b, 38629u)), abs(vec2<u32>(0u, u_input.c)))), vec2<bool>((_wgslsmith_f_op_f32(global1.x * global1.x) == global1.x) & any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), true), true, global1.yz);
    global2 = array<Struct_1, 4>();
    var var_1 = any(!vec3<bool>(select(true, true, false), arg_0, any(vec3<bool>(true, true, true))));
    global3 = array<Struct_1, 12>();
    var var_2 = Struct_2(Struct_1(var_0.a.zx, -1652f), var_0.e, global2[_wgslsmith_index_u32(~var_0.b.x, 4u)], 4294967295u);
    return var_0.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<u32> {
    global2 = array<Struct_1, 4>();
    var var_0 = arg_1.a;
    var var_1 = !vec3<bool>(arg_2.x, all(vec2<bool>(var_0.x, arg_2.x)), !(true == (arg_2.x && var_0.x)));
    var_0 = select(vec2<bool>(true, true), func_2(), select(func_2(), !(!arg_2), arg_1.a.x));
    var var_2 = Struct_2(Struct_1(vec2<bool>((arg_1.a.x | var_1.x) | (false | arg_1.a.x), !any(vec3<bool>(arg_1.a.x, true, true))), arg_0.x), _wgslsmith_f_op_vec2_f32(-global1.xx), arg_1, ~u_input.c);
    return ~_wgslsmith_add_vec2_u32(~(firstTrailingBit(vec2<u32>(var_2.d, 0u)) & reverseBits(vec2<u32>(30070u, u_input.b))), ~func_4(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<bool>(true, true, false), _wgslsmith_div_vec2_u32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), Struct_1(vec2<bool>(true, true), 1305f), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 18591u), vec2<u32>(countOneBits(0u), _wgslsmith_mult_u32(u_input.c, 0u)))), !vec2<bool>(false, func_2().x), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(1250f + -467f))))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, var_0.e.x))), _wgslsmith_f_op_vec2_f32(sign(global1.yx)))) + global1.xz);
    let var_3 = (firstTrailingBit(u_input.a.x) >> (1u % 32u)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(var_1.b & var_0.b), vec2<u32>(var_1.b.x >> (var_1.b.x % 32u), var_1.b.x)), ~(~firstLeadingBit(var_1.b.x))) % 32u);
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(188f, -847f, global1.x, var_1.e.x), vec4<f32>(var_1.e.x, 237f, var_1.e.x, 1301f), false))))), var_3, _wgslsmith_mod_vec4_i32(u_input.a, ~vec4<i32>(var_3, var_3, _wgslsmith_sub_i32(var_3, 65029i), min(43915i, var_3))), -10501i, abs(min(19118i, -64493i)));
}

