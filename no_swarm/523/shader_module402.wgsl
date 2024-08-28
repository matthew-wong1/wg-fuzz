struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32 = 61100u;

var<private> global2: vec4<i32> = vec4<i32>(-80952i, 2147483647i, 22462i, i32(-2147483648));

var<private> global3: i32 = -16086i;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(false, true, true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2172f)) * -262f);
    let var_2 = _wgslsmith_mult_i32(1i, ~20313i);
    let var_3 = _wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(max(vec3<i32>(global2.x, 11760i, global2.x), vec3<i32>(-39147i, -2147483647i, 2147483647i)) | ~vec3<i32>(31291i, var_2, global2.x), global2.wyy)), -select(countOneBits(-global2.wzy), vec3<i32>(var_2, -21118i ^ global2.x, 1i), select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), false))));
    global1 = 0u;
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    let var_0 = ~u_input.a;
    global1 = var_0;
    var var_1 = firstLeadingBit(func_3());
    var var_2 = _wgslsmith_f_op_f32(-186f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-496f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))))));
    let var_3 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(abs(-1556f)))));
    return max(_wgslsmith_add_i32(~global2.x, -2147483647i), global2.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<f32>) -> vec2<i32> {
    let var_0 = any(!vec3<bool>(_wgslsmith_mult_i32(global2.x, -2147483647i) <= func_2(Struct_4(Struct_1(vec3<u32>(arg_0.x, 0u, u_input.a)), Struct_3(Struct_1(vec3<u32>(arg_0.x, 1u, arg_0.x)), Struct_2(arg_0, 4294967295u, true), false)), vec4<f32>(-260f, arg_1.x, arg_1.x, -2581f), true), !(arg_3.x != arg_3.x), true));
    var var_1 = true;
    var var_2 = _wgslsmith_sub_i32(firstTrailingBit(global2.x), 1i);
    var var_3 = Struct_4(Struct_1(vec3<u32>(arg_0.x, ~1u, 38103u << (arg_0.x % 32u)) << (vec3<u32>(arg_0.x, ~u_input.a, u_input.a) % vec3<u32>(32u))), Struct_3(Struct_1(vec3<u32>(arg_0.x, ~arg_0.x, u_input.a)), Struct_2(arg_0, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), arg_0)), true), true));
    var var_4 = -61536i & global2.x;
    return abs(reverseBits(~vec2<i32>(~(-2476i), global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~(global2.ww | global2.xy), func_1(vec2<u32>(u_input.a, 0u), vec2<f32>(-823f, 391f), _wgslsmith_div_f32(982f, 1036f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, -1133f)))), global2.wx >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 76219u), vec2<u32>(9895u, u_input.a), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u)));
    let var_1 = Struct_4(Struct_1(~vec3<u32>(57978u, 75461u, _wgslsmith_mod_u32(11301u, 49902u))), Struct_3(Struct_1(~vec3<u32>(u_input.a, 23850u, 5141u) & min(vec3<u32>(32644u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, 37184u))), Struct_2(~vec2<u32>(u_input.a, 67096u), u_input.a, true), true));
    global1 = ~u_input.a;
    global0 = ~abs(-1i) == _wgslsmith_add_i32(~_wgslsmith_mod_i32(var_0.x, -74020i), global2.x);
    var var_2 = Struct_4(var_1.b.a, var_1.b);
    var_2 = var_1;
    let var_3 = _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(global2.zx, vec2<i32>(-1i) * -var_0)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_div_i32(global2.x, global2.x)), var_0), var_0.x));
    global1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), 1380f, min(func_1(vec2<u32>(43520u, u_input.a) >> (vec2<u32>(var_2.a.a.x, var_2.a.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, 873f)), _wgslsmith_f_op_f32(528f + 408f), vec2<f32>(-623f, 371f)).x & ~(-1i), reverseBits((var_0.x >> (var_2.b.a.a.x % 32u)) << (~38889u % 32u))), var_3.x);
}

