struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -257f;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(7671u, 1u, 0u), vec2<u32>(78019u, 4294967295u), 1000f);

var<private> global2: u32 = 28067u;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    global0 = global1.c;
    global2 = ~(~reverseBits(firstLeadingBit(4294967295u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -114f);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = 591f;
    var var_1 = arg_2;
    var_1 = arg_0;
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(max(~arg_2.b & ~arg_2.a.yx, ~(vec2<u32>(global1.b.x, 4294967295u) & vec2<u32>(arg_2.a.x, 1u))), vec2<u32>(0u, ~arg_2.b.x)), ~global1.a.yy, arg_2.a.zx);
    global1 = arg_2;
    return var_1.a.x;
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = any(vec2<bool>(true, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))));
    global2 = func_2(Struct_1(_wgslsmith_div_vec3_u32(max(global1.a, vec3<u32>(global1.b.x, global1.b.x, global1.a.x)), max(vec3<u32>(global1.a.x, global1.b.x, global1.b.x), global1.a)), firstLeadingBit(abs(vec2<u32>(4294967295u, global1.b.x))), 614f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -1108f, global1.c)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.c, global1.c, global1.c)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2399f, global1.c, -465f))), Struct_1(select(_wgslsmith_mod_vec3_u32(global1.a, global1.a), vec3<u32>(global1.b.x, global1.a.x, 6249u), vec3<bool>(true, true, true)), _wgslsmith_mult_vec2_u32(global1.b, vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c))))) >> (global1.a.x % 32u);
    var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(func_1(61816u, vec4<bool>(true, true, true, true))));
    var var_2 = global1.c;
    return firstLeadingBit(reverseBits(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_2(Struct_1(~vec3<u32>(~7803u, abs(78428u), ~34327u), global1.a.zy, -1439f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(65966u, vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_f32(-global1.c), 128f), Struct_1(vec3<u32>(~global1.a.x, 1u, _wgslsmith_div_u32(global1.b.x, global1.b.x) >> (1u % 32u)), min(global1.a.xy, ~abs(vec2<u32>(1u, global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c)))));
    let var_0 = global1.c;
    global2 = countOneBits(~72282u);
    var var_1 = firstLeadingBit(-reverseBits(func_3(vec3<i32>(-43428i, 2147483647i, 53111i))) | vec3<i32>(countOneBits(_wgslsmith_add_i32(u_input.a, u_input.b)), firstTrailingBit(reverseBits(2147483647i)), 1i));
    let var_2 = Struct_1(vec3<u32>(~max(global1.b.x >> (96993u % 32u), firstTrailingBit(global1.a.x)), global1.a.x, ~global1.b.x), global1.a.zx, _wgslsmith_f_op_f32(min(-1709f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1174f - _wgslsmith_f_op_f32(-global1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1569f - -519f))))));
    let var_3 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(4294967295u, 1u, var_2.b.x, var_2.a.x))), vec4<u32>(78695u, 1u, ~(_wgslsmith_mod_u32(var_2.b.x, var_2.a.x) & _wgslsmith_mod_u32(global1.a.x, var_2.a.x)), var_2.b.x));
    let var_4 = var_2;
    var_1 = select(~reverseBits(vec3<i32>(var_1.x, 2147483647i, -34770i)) ^ _wgslsmith_div_vec3_i32(func_3(vec3<i32>(var_1.x, -72843i, var_1.x)) << ((var_4.a >> (vec3<u32>(1u, 95438u, 88810u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<i32>(2147483647i, var_1.x, var_1.x))), ~max(-vec3<i32>(2147483647i, 2147483647i, u_input.a), firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, var_1.x))) ^ vec3<i32>(0i, var_1.x, 1i), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec3<bool>(false, false, false)))), firstLeadingBit(~u_input.a) <= _wgslsmith_mult_i32(-u_input.b, var_1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(-1637f, var_2.b, ~_wgslsmith_add_vec4_u32(var_3, var_3));
}

