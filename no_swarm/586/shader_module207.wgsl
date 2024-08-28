struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = all(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, false)))), !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true, true && !(1992f != var_0.x)));
    var var_2 = !(!(!vec4<bool>(u_input.a >= 1u, var_1, false, true)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1828f, 2138f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    return -u_input.b;
}

fn func_2() -> vec4<bool> {
    global0 = array<vec2<f32>, 3>();
    var var_0 = Struct_2(vec2<i32>(u_input.c, firstTrailingBit(func_3())), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 75863i, u_input.b), vec4<i32>(0i, u_input.b, u_input.c, -21819i), vec4<i32>(453i, u_input.b, u_input.b, -10625i)), abs(vec4<i32>(-19802i, u_input.c, 23094i, u_input.b)), true) & vec4<i32>(_wgslsmith_mod_i32(-1i, -28649i), reverseBits(u_input.c), u_input.b, u_input.b), global1[_wgslsmith_index_u32(13360u, 15u)]);
    var var_1 = _wgslsmith_div_vec3_i32(var_0.b.wxx, min(vec3<i32>(-var_0.b.x ^ u_input.b, ~(var_0.b.x >> (58299u % 32u)), countOneBits(i32(-1i) * -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, var_0.b.x), u_input.b, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, 12300i, u_input.c) << (vec3<u32>(16432u, 25740u, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-40815i, u_input.b, -1i), vec3<i32>(u_input.c, var_0.b.x, 18124i), var_0.b.yxz)))));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-299f, _wgslsmith_f_op_f32(floor(-2143f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)))));
    let var_3 = ~reverseBits(var_1.x);
    return !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_2(~(~_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c, 7197i), min(vec2<i32>(u_input.c, -4322i), vec2<i32>(u_input.c, u_input.b)))), min(firstLeadingBit(-vec4<i32>(u_input.c, u_input.c, 43162i, 1i)), -vec4<i32>(-40435i, u_input.c, u_input.b, 38709i)) & vec4<i32>(u_input.c, 2147483647i, 1i, u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u | u_input.a, ~(~(~u_input.a)), _wgslsmith_mult_u32(23989u, u_input.a)), 15u)]);
    let var_2 = Struct_2(vec2<i32>(u_input.c, var_1.a.x), vec4<i32>(46463i, abs(0i), 269i, ~(~(u_input.b & var_1.a.x))), Struct_1(522f));
    let var_3 = var_2.c.a;
    global0 = array<vec2<f32>, 3>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(vec2<bool>(true, false)));
    global0 = array<vec2<f32>, 3>();
    var var_1 = func_1();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(2695f)), _wgslsmith_f_op_f32(493f * var_1.c.a))), func_1().c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(725f - var_1.c.a) + -1474f), -657f, 793f);
    var var_3 = _wgslsmith_clamp_u32(~_wgslsmith_add_u32(abs(max(u_input.a, u_input.a)), u_input.a), _wgslsmith_mod_u32(u_input.a, ~u_input.a), u_input.a);
    let var_4 = Struct_2(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_1.b.x, var_1.a.x | -1i)), -var_1.a & (vec2<i32>(-1i) * -var_1.a)), var_1.b, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(firstTrailingBit(41862u)), ~(~24676u)) >> (~abs(~u_input.a) % 32u), 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_div_i32(reverseBits(~(-26761i)), var_4.a.x), _wgslsmith_f_op_vec2_f32(var_2.yw + var_2.zx));
}

