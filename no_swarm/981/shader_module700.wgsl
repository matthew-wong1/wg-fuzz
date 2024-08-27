struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-494f, -1i, 16930u);

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(-1238f, i32(-2147483648), 20312u), 0u, vec3<i32>(0i, -27241i, 0i)), Struct_3(Struct_1(-2517f, 21304i, 1u), 1u, vec3<i32>(i32(-2147483648), 1i, -13815i)), Struct_3(Struct_1(607f, 2147483647i, 26095u), 39124u, vec3<i32>(-1i, 34020i, -1i)), Struct_3(Struct_1(-1307f, 0i, 0u), 3670u, vec3<i32>(48152i, 0i, 2147483647i)), Struct_3(Struct_1(310f, 1i, 1u), 1572u, vec3<i32>(-1i, -14210i, -14401i)), Struct_3(Struct_1(-810f, i32(-2147483648), 65073u), 0u, vec3<i32>(0i, -64077i, 1i)), Struct_3(Struct_1(-961f, 35065i, 8407u), 0u, vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_3(Struct_1(-1470f, -15889i, 41105u), 20013u, vec3<i32>(19713i, 1i, -9371i)), Struct_3(Struct_1(692f, 0i, 0u), 46745u, vec3<i32>(-6186i, 1925i, -41493i)), Struct_3(Struct_1(-703f, 52311i, 14008u), 43384u, vec3<i32>(1i, -25348i, 2317i)), Struct_3(Struct_1(580f, i32(-2147483648), 9003u), 38763u, vec3<i32>(171i, -15604i, 22152i)), Struct_3(Struct_1(176f, -18168i, 55407u), 40752u, vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_3(Struct_1(-976f, -66205i, 25288u), 4294967295u, vec3<i32>(-24257i, -43667i, 0i)), Struct_3(Struct_1(-513f, 1i, 46326u), 4294967295u, vec3<i32>(-10019i, -51048i, 6890i)), Struct_3(Struct_1(1054f, 19112i, 53304u), 2454u, vec3<i32>(-29849i, -16357i, -1i)), Struct_3(Struct_1(117f, 3110i, 32770u), 0u, vec3<i32>(-7802i, 20800i, -20958i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_add_u32(abs(global0.c), u_input.a)), 16u)];
    var var_2 = ~(abs(-min(vec4<i32>(global0.b, 28321i, var_1.c.x, 1i), vec4<i32>(global0.b, 2147483647i, global0.b, var_1.a.b))) >> (min(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, u_input.a, 4294967295u, arg_2.x), vec4<u32>(43943u, var_1.b, global0.c, global0.c)), vec4<u32>(280u, var_1.b, _wgslsmith_div_u32(var_1.b, global0.c), _wgslsmith_sub_u32(global0.c, 55121u))) % vec4<u32>(32u)));
    let var_3 = var_1.a;
    global1 = array<Struct_2, 23>();
    return !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1709f)))), true, false, true);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_3(!func_2(true, vec3<i32>(global0.b, -global0.b, global0.b), _wgslsmith_div_vec2_u32(vec2<u32>(13536u, arg_0), vec2<u32>(25308u, arg_0)) ^ ~vec2<u32>(global0.c, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a))))), _wgslsmith_mod_i32(~0i, ~select(global0.b, global0.b, true)), abs(global0.c)));
    var var_1 = true;
    var var_2 = min(-global0.b, _wgslsmith_add_i32(global0.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -10495i, -2147483647i, 0i), -vec4<i32>(2147483647i, -6696i, -16455i, 1i)))));
    let var_3 = global0.b;
    global2 = array<Struct_3, 16>();
    return Struct_1(var_0.a, ~(~2147483647i), select(reverseBits(1u), u_input.a, all(!func_2(false, vec3<i32>(-10960i, global0.b, global0.b), vec2<u32>(global0.c, 4294967295u)).zyz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~(0u & u_input.a));
    global0 = func_3(func_2(all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, 1i, -79813i), vec3<i32>(global0.b, global0.b, global0.b)), ~vec3<i32>(0i, 26655i, global0.b)) << (firstLeadingBit(vec3<u32>(8151u, global0.c, 9211u)) % vec3<u32>(32u)), vec2<u32>(func_3(vec4<bool>(false, true, true, false), Struct_1(global0.a, 0i, 0u)).c >> (abs(1u) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(27552u, 0u, 1u), ~vec3<u32>(66436u, global0.c, u_input.a)))), func_1(0u));
    global1 = array<Struct_2, 23>();
    let var_0 = vec2<u32>(u_input.a, u_input.a);
    var var_1 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec4<bool>(false, true, false, true))), vec2<bool>(75651u != var_0.x, 0u < var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.x, var_0.x, 0u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(global0.a, -1599f)), _wgslsmith_f_op_f32(-global0.a), global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.a, global0.a), -1724f, _wgslsmith_div_f32(global0.a, global0.a)))));
}

