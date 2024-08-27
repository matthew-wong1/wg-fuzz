struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(40521u, 36709u, 4294967295u, 4294967295u), i32(-2147483648), Struct_1(44450u)), Struct_2(vec4<u32>(0u, 57071u, 4294967295u, 0u), 40700i, Struct_1(0u)), Struct_2(vec4<u32>(4294967295u, 10952u, 1u, 69868u), -10376i, Struct_1(4294967295u)), Struct_2(vec4<u32>(17723u, 74079u, 8051u, 42833u), 1i, Struct_1(1u)));

var<private> global2: array<i32, 18> = array<i32, 18>(0i, -1i, -38092i, 0i, -1i, -1i, 2147483647i, 18450i, 16811i, -47453i, i32(-2147483648), i32(-2147483648), -1i, 20210i, 29753i, 2147483647i, 2147483647i, 3549i);

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), 4u)];
}

fn func_3() -> bool {
    var var_0 = Struct_1(27338u);
    global2 = array<i32, 18>();
    var var_1 = 1115f;
    let var_2 = u_input.a;
    var_0 = func_1().c;
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(func_1());
    var var_1 = select(vec3<bool>(!all(vec3<bool>(false, false, true)), true, true), vec3<bool>(func_3(), all(vec4<bool>(true, true, true, true)), true), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))), false));
    let var_2 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.a.b, ~var_0.a.b, 1i), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(var_0.a.b, global3.x, 1i, 0i))), firstTrailingBit(max(vec4<i32>(firstTrailingBit(u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, var_0.a.b, -51300i), vec3<i32>(20807i, var_0.a.b, u_input.c)), global2[_wgslsmith_index_u32(u_input.a.x, 18u)] >> (u_input.e.x % 32u), ~(-2147483647i)), vec4<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 18u)], reverseBits(43728i), u_input.d ^ 2147483647i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global3.x, global3.x)))));
    global1 = array<Struct_2, 4>();
    global0 = any(vec4<bool>(true, 53767u <= var_0.a.c.a, true, true));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(566u, _wgslsmith_mult_u32(1u, 0u)), 76444u), 4u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = true;
    let var_1 = global3.xz;
    let var_2 = Struct_3(max(-var_1.x, -(~(-arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_f_op_f32(f32(-1f) * -533f)));
    var var_3 = global3.x;
    let var_4 = Struct_3(firstLeadingBit(max(max(2147483647i, -1i), abs(global2[_wgslsmith_index_u32(1u, 18u)])) & _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, var_1.x), -global3.xy)), vec2<f32>(var_2.b.x, -502f));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(544f, 850f) * _wgslsmith_f_op_f32(f32(-1f) * -251f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 197f)))), -650f), -949f);
    global0 = false;
    let var_1 = Struct_4(func_1());
    let var_2 = Struct_1(select(func_4(_wgslsmith_dot_vec2_u32(select(u_input.a.zx, var_1.a.a.ww, false), vec2<u32>(0u, 123337u)), var_1.a.c, func_2()), ~(~(u_input.e.x >> (4294967295u % 32u))), true));
    let var_3 = var_2;
    let var_4 = var_1;
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, 694f), var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1122f, -120f, 1554f), _wgslsmith_f_op_vec3_f32(vec3<f32>(770f, -121f, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -143f, _wgslsmith_f_op_f32(-881f + -549f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-((vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(var_1.a.a.x, 18u)], u_input.d, 52791i, var_1.a.b)) >> (select(~vec4<u32>(var_3.a, 103423u, 1u, 0u), ~vec4<u32>(28621u, var_4.a.c.a, var_1.a.a.x, 0u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1446f) - vec3<f32>(-1071f, var_0.x, 491f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 169f, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, -1154f, var_0.x)) - vec3<f32>(-988f, var_0.x, var_0.x)))), 4294967295u);
}

