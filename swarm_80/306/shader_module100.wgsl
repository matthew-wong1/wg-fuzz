struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    var var_0 = global0.a.x;
    var var_1 = 22313u;
    var var_2 = global0.a.x;
    let var_3 = Struct_3(global0.a, _wgslsmith_div_vec4_i32(vec4<i32>(-(~0i), u_input.a.x, ~max(-34805i, 8580i), global0.c), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(21585i, global0.c), countOneBits(2147483647i), ~0i)), ~(-14234i), _wgslsmith_div_i32(-23521i, ~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.c), vec2<i32>(u_input.b.x, 13442i)))));
    var_1 = u_input.c ^ ~global0.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(139f, arg_1.x))) - arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> Struct_3 {
    return Struct_3(~global0.a, global0.b ^ firstTrailingBit(global0.b), -_wgslsmith_mod_i32(abs(u_input.b.x), -1i) >> (firstTrailingBit(min(~global0.a.x, ~0u)) % 32u), arg_1.x);
}

fn func_3() -> vec3<i32> {
    global1 = 1u > _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 34725u)) ^ vec2<u32>(_wgslsmith_mod_u32(global0.a.x, 69665u), _wgslsmith_dot_vec3_u32(global0.a, global0.a)), ~global0.a.xx);
    return global0.b.ywx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1768f - -1003f))), countOneBits(0i)), global0.b.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1875f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec2<f32>(-1047f, 360f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1047f * -1000f), -2018f)), 642f, (u_input.c != 71973u) && false))), -22890i);
    global0 = Struct_3(~vec3<u32>(~u_input.c ^ u_input.c, global0.a.x, u_input.c), _wgslsmith_mult_vec4_i32(abs(global0.b), var_0.b | var_0.b), min(firstTrailingBit(96422i), 2147483647i), -3651i);
    let var_1 = func_2(Struct_1(1953f, abs(max(_wgslsmith_add_i32(2147483647i, var_0.b.x), select(global0.d, -1i, false)))), -func_3(), 1250f, -_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, -13220i, _wgslsmith_div_i32(global0.b.x, u_input.a.x), 14200i), abs(var_0.b) | var_0.b));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.a.x, var_0.a.x, ~global0.a.x), vec4<u32>(global0.a.x, global0.a.x, u_input.c, 0u)), vec4<u32>(var_0.a.x, var_1.a.x, 1u, func_2(Struct_1(1373f, -91221i), vec3<i32>(var_0.c, u_input.b.x, -2147483647i), 157f, var_0.c).a.x) ^ min(vec4<u32>(var_1.a.x, global0.a.x, var_0.a.x, 67813u) & vec4<u32>(var_0.a.x, 0u, 1u, 105555u), ~vec4<u32>(var_1.a.x, 0u, u_input.c, 0u))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(-1330f, _wgslsmith_f_op_f32(f32(-1f) * -282f), all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)))))), 2147483647i);
    global1 = false;
    let var_4 = vec3<i32>(44907i, _wgslsmith_add_i32(~50825i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_3.b), u_input.b)), i32(-1i) * -(var_3.b & 1i));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, var_3.a, _wgslsmith_sub_vec2_i32(var_1.b.zy, -vec2<i32>(-56273i, firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(exp2(var_3.a)), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.x, -103916i, var_3.b), ~u_input.a), ~vec3<i32>(-1i & var_1.c, 42086i, _wgslsmith_sub_i32(var_0.b.x, 21459i))));
}

