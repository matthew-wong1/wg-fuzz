struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(1068f, -1877f, 431f), vec3<i32>(-16125i, 39016i, -35392i)), Struct_1(vec3<f32>(-1000f, 931f, -362f), vec3<i32>(40429i, -29289i, 1i)), Struct_1(vec3<f32>(-1087f, 637f, 1188f), vec3<i32>(i32(-2147483648), 9982i, 0i)), Struct_1(vec3<f32>(926f, -561f, -295f), vec3<i32>(-11741i, 0i, 2147483647i)), Struct_1(vec3<f32>(-435f, -1080f, -736f), vec3<i32>(-48079i, -11560i, 0i)), Struct_1(vec3<f32>(594f, 1729f, 1277f), vec3<i32>(1i, -1i, 25451i)), Struct_1(vec3<f32>(1779f, -1297f, 2555f), vec3<i32>(-1i, -14734i, 10901i)));

var<private> global1: vec2<u32> = vec2<u32>(16003u, 0u);

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: u32;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(-_wgslsmith_mult_vec2_i32(~(arg_1.a | arg_3.b.zy), u_input.b));
    let var_1 = -6318i;
    var var_2 = Struct_1(arg_3.a, reverseBits(arg_3.b));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(select(_wgslsmith_div_i32(var_0.a.x, 1i), 14672i, arg_0), _wgslsmith_add_i32(u_input.a.x, var_0.a.x)), var_0.a.x);
    var var_4 = select(select(!vec4<bool>(any(vec4<bool>(arg_0, false, arg_0, false)), !arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)), true), select(vec4<bool>(19696i <= var_3, false, false, all(vec2<bool>(false, true))), select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, false), !vec4<bool>(arg_0, arg_0, arg_0, true)), select(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, true, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, arg_0, true), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0)))), !(!(!vec4<bool>(false, false, arg_0, true)))), vec4<bool>(false, all(vec3<bool>(arg_0, arg_2.x >= arg_2.x, true)), arg_0, any(vec3<bool>(true, true, arg_0)) | arg_0), vec4<bool>(false, false, all(select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, arg_0, arg_0), arg_0 & arg_0)), ((73632u <= arg_2.x) == (46652u != arg_2.x)) | all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))));
    return true;
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_1, 7>();
    var var_0 = select(vec3<bool>(4984u > ~global1.x, true, u_input.a.x > -1i), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), false), func_3(false, Struct_2(u_input.a.zx), _wgslsmith_sub_vec4_u32((vec4<u32>(global1.x, 19332u, 1u, global1.x) & vec4<u32>(0u, global1.x, 25u, global1.x)) | ~vec4<u32>(4294967295u, 1u, global1.x, global1.x), abs(vec4<u32>(26783u, 4294967295u, 15111u, 41338u))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 2288u)), ~vec2<u32>(global1.x, 1u)), 7u)]));
    let var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(global1.x, 7u)];
    global0 = array<Struct_1, 7>();
    return select(select(var_0.yx, select(select(select(var_0.yz, var_0.xy, var_1), vec2<bool>(false, true), vec2<bool>(var_1, false)), vec2<bool>(any(vec2<bool>(var_0.x, var_1)), any(vec4<bool>(var_1, var_0.x, true, true))), var_0.x), select(var_0.zy, select(!vec2<bool>(false, var_0.x), !var_0.zz, !var_0.yz), false)), select(vec2<bool>((var_2.b.x >= var_2.b.x) && true, true), var_0.zz, all(!select(vec3<bool>(var_1, var_0.x, var_1), vec3<bool>(var_1, var_0.x, false), vec3<bool>(var_0.x, var_1, true)))), -14285i >= -(~var_2.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.b.x, -2147483647i, -1i), vec4<i32>(-1i, -29503i, -2147483647i, -32029i))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = arg_0.yx;
    let var_1 = vec2<bool>(!arg_2, any(func_2()));
    global1 = vec2<u32>(_wgslsmith_add_u32(arg_0.x >> (~4294967295u % 32u), ~arg_0.x), _wgslsmith_dot_vec2_u32(~var_0, var_0)) & (arg_0.wy | select(var_0, ~arg_0.wy, func_2().x));
    global4 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, ~countOneBits(global1.x), _wgslsmith_dot_vec2_u32(select(select(arg_0.wy, var_0, arg_2), vec2<u32>(arg_1, arg_0.x), !arg_2), _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_1, 0u)), vec2<u32>(global1.x, 84293u)))), reverseBits(min(~arg_0.x, global1.x)));
    let var_2 = !arg_2;
    return Struct_2(vec2<i32>(-1i, ~u_input.a.x) ^ vec2<i32>(-u_input.a.x, u_input.a.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = func_1(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(16555u, global1.x, global1.x), vec3<u32>(global1.x, 0u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 13082u, global1.x), vec3<u32>(global1.x, global1.x, 1u), vec3<u32>(global1.x, 1u, 0u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 767u, 74493u), vec3<u32>(4294967295u, 4294967295u, global1.x))), countOneBits(~global1.x), _wgslsmith_add_u32(1u, global1.x), 4294967295u), countOneBits(global1.x), true);
    let var_2 = 1191f;
    var var_3 = ~countOneBits(countOneBits(~(~vec2<u32>(global1.x, global1.x))));
    global1 = min(~(~vec2<u32>(4294967295u, _wgslsmith_sub_u32(global1.x, 68915u))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u) << (vec2<u32>(var_3.x, var_3.x) % vec2<u32>(32u)), vec2<u32>(var_3.x, 40584u), vec2<u32>(0u, 0u)) >> (min(vec2<u32>(var_3.x, global1.x), vec2<u32>(global1.x, 1u) << (vec2<u32>(var_3.x, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~global1.x, 7u)];
    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-193f, var_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.a.x))))), func_1(~(vec4<u32>(global1.x, global1.x, global1.x, global1.x) & vec4<u32>(21043u, 15785u, global1.x, 22464u)), global1.x, false));
    var var_2 = ~(~(~vec4<u32>(0u, global1.x, 25635u, 30468u)) | max(vec4<u32>(global1.x, max(global1.x, global1.x), 0u, ~global1.x), vec4<u32>(302u, _wgslsmith_mod_u32(global1.x, global1.x), 38006u, global1.x)));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, ~_wgslsmith_add_u32(~var_2.x, var_2.x)), vec3<u32>(1u, ~max(17025u, 4294967295u), global1.x) ^ var_2.wwy);
    let var_4 = abs(~_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(22634i, u_input.b.x, u_input.b.x), var_0.b, select(u_input.a.yzw, var_0.b, true)), ~abs(u_input.a.yzw)));
    global2 = array<vec3<f32>, 10>();
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 2147483647i, _wgslsmith_sub_i32(var_4.x, -3048i));
}

