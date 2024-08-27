struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-arg_0), Struct_2(Struct_1(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), -1038f != arg_0), Struct_1(vec4<bool>(true, true, true, true), true)), u_input.a.xzx << (u_input.a.yxy % vec3<u32>(32u)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var var_2 = _wgslsmith_f_op_f32(arg_0 * var_1.a.a);
    let var_3 = ~vec2<i32>(u_input.b, -2147483647i << (_wgslsmith_mult_u32(countOneBits(var_1.a.c.x), 4226u) % 32u));
    var var_4 = vec3<bool>(any(select(!var_1.a.b.a.a.yzz, vec3<bool>(!var_1.a.b.a.b, true, true && var_1.a.b.b.b), true)), !(!all(select(vec4<bool>(false, true, var_1.a.b.a.a.x, var_1.a.b.b.a.x), vec4<bool>(var_1.a.b.b.a.x, true, var_1.a.b.a.b, var_1.a.b.a.b), var_1.a.b.a.a))), -867f <= arg_0);
    return select(~select(-vec4<i32>(-1i, -9514i, var_3.x, var_3.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 21818i, -9306i, var_3.x), vec4<i32>(0i, u_input.b, 2147483647i, var_3.x)), !vec4<bool>(var_1.a.b.b.a.x, var_1.a.b.b.a.x, false, false)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, arg_1.x, 94784u, 1u), vec4<u32>(u_input.a.x, global0.x, 0u, 0u)), max(vec4<u32>(var_1.a.c.x, 7920u, 1u, global0.x), vec4<u32>(4294967295u, 1u, var_1.a.c.x, 0u))), countOneBits(u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 42102u, var_1.a.c.x, var_1.a.c.x), vec4<u32>(37744u, u_input.a.x, 118742u, 76339u))) % vec4<u32>(32u)), vec4<i32>(-1i) * -firstTrailingBit(max(vec4<i32>(u_input.b, u_input.b, var_3.x, var_1.a.d), vec4<i32>(u_input.b, -9288i, u_input.b, var_1.a.d))), vec4<bool>(any(vec4<bool>(arg_1.x <= global0.x, true, true, false)), var_4.x, var_1.a.b.a.b, var_4.x));
}

fn func_2() -> vec4<bool> {
    let var_0 = ~(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), u_input.a.xy) ^ countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, -2147483647i))));
    let var_1 = i32(-1i) * -abs(-45262i);
    let var_2 = global0.yx;
    global0 = vec4<u32>(global0.x, global0.x, 109810u, ~(~(~global0.x)) >> (~u_input.a.x % 32u));
    var var_3 = any(!vec3<bool>(true, select(true, any(vec2<bool>(true, false)), true), any(vec3<bool>(true, true, false))));
    return vec4<bool>(any(vec3<bool>(var_2.x >= u_input.a.x, _wgslsmith_sub_i32(0i, 2593i) > _wgslsmith_clamp_i32(2147483647i, -1i, -2147483647i), true)), ~1u <= global0.x, select(all(vec3<bool>(true, true, true)), true, true | all(vec4<bool>(false, true, false, true))) & true, select(true | select(true, any(vec3<bool>(false, false, false)), any(vec2<bool>(false, true))), (-23655i >= _wgslsmith_add_i32(var_0.x, -38254i)) | !any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, true)) & any(vec2<bool>(true, true))));
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(func_2(), false);
    global1 = _wgslsmith_f_op_f32(floor(-1000f));
    var var_1 = Struct_5(Struct_3(-627f, Struct_2(Struct_1(var_0.a, !var_0.a.x), var_0), u_input.a.wwx, -31742i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_2 = ~abs(abs(abs(var_1.a.c)));
    var var_3 = 26013u;
    return !var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1338f)), 757f)) + 518f) + _wgslsmith_f_op_f32(422f - 676f));
    global1 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -346f)), !(!arg_1.b)))));
    let var_1 = Struct_4(~_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -63165i, 12993i, 0i), vec4<i32>(25346i, 38981i, u_input.b, 29964i)), u_input.b, u_input.b), var_0, firstTrailingBit(39367u));
    var var_2 = _wgslsmith_mult_i32(func_3(var_0, global0.wx).x, ~(~((var_1.a >> (global0.x % 32u)) >> (~72295u % 32u))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f + var_0)), -1085f)), var_0));
    return Struct_2(arg_0, Struct_1(vec4<bool>(true, !(arg_0.b & arg_0.a.x), any(arg_0.a.xyw), -607f >= _wgslsmith_f_op_f32(-var_0)), !(any(vec3<bool>(true, false, false)) && arg_1.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = true;
    var var_1 = arg_3;
    var var_2 = u_input.a;
    var var_3 = Struct_4(~2147483647i, 256f, _wgslsmith_div_u32(global0.x, 6490u));
    let var_4 = true;
    return StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.a, abs(u_input.a)), ~_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_3.a, u_input.b), vec3<i32>(-33378i, 1i, u_input.b))), reverseBits(abs(vec3<i32>(1i >> (var_3.c % 32u), -2147483647i, max(0i, var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(Struct_1(!func_1(), true), Struct_1(func_2(), all(vec4<bool>(true, true, true, true)))), _wgslsmith_add_i32(u_input.b, abs(abs(u_input.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(584f - -1246f), _wgslsmith_f_op_f32(-1449f + -260f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-360f - 571f))), _wgslsmith_f_op_f32(select(-349f, _wgslsmith_f_op_f32(ceil(-1000f)), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-781f + 1357f) + _wgslsmith_f_op_f32(f32(-1f) * -208f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(885f, -124f, -588f, 1439f)))))), !(!(!func_1())));
}

