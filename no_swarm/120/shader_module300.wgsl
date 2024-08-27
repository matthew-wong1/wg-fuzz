struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -318f);
    var var_1 = arg_1.xxw;
    var var_2 = 1000f;
    var_1 = select(arg_1.zzz, arg_1.ywx, all(vec3<bool>(true, true, true)) && false);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-362f, 386f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f + 1650f))))));
    return !select(vec4<bool>(all(vec4<bool>(true, true, true, true)), !(var_1.x < arg_2.x), !(arg_1.x == var_1.x), false), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))));
}

fn func_2() -> Struct_3 {
    var var_0 = all(select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true), func_3(Struct_2(Struct_1(global1.b.a, -1i), Struct_1(global1.b.a, global1.a.b)), vec4<i32>(0i, 16624i, 1i, global1.b.b), u_input.a), true), vec4<bool>(false, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, !func_3(Struct_2(Struct_1(global1.b.a, u_input.c), global1.b), vec4<i32>(u_input.c, 8927i, 1i, -25491i), u_input.a).x, all(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true)));
    global1 = Struct_2(Struct_1(global1.a.a, countOneBits(_wgslsmith_div_i32(~1i, min(-1i, 11724i)))), Struct_1(global1.a.a, -global1.a.b));
    let var_1 = any(select(select(func_3(Struct_2(global1.b, Struct_1(global1.b.a, global1.a.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global1.a.b, 2147483647i, global1.b.b), vec4<i32>(1i, -1i, 54088i, -24948i)), select(vec2<i32>(578i, u_input.a.x), vec2<i32>(global1.a.b, u_input.a.x), false)).zww, vec3<bool>(true, true, true), true), !vec3<bool>(all(vec3<bool>(true, true, true)), true, select(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), func_3(Struct_2(Struct_1(global1.b.a, global1.a.b), Struct_1(vec3<u32>(u_input.b, 9108u, 0u), -5899i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2709i, global1.a.b, -2147483647i, global1.b.b), vec4<i32>(4892i, global1.a.b, 1i, 2147483647i)), u_input.a).zyx)));
    var var_2 = 1i;
    return Struct_3(global1.a, Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 43166u, u_input.b), ~global1.b.a, select(global1.a.a, global1.b.a, vec3<bool>(false, var_1, var_1))), u_input.a.x & ~0i), global1.b));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-958f, 524f)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0, -882f, false)), 1380f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-559f, arg_0)), _wgslsmith_f_op_f32(round(-449f))))))));
    var_0 = func_2();
    let var_2 = Struct_3(func_2().b.a, var_0.b);
    let var_3 = func_2().b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1819f, -757f)))))) * arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1018f)), _wgslsmith_f_op_f32(1125f - -1440f))), _wgslsmith_f_op_f32(ceil(222f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f + -1648f)), (global1.a.a.x < 4294967295u) != any(vec4<bool>(false, false, false, false)))), vec2<u32>(0u, 1u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 37016u, 0u), vec4<u32>(4294967295u, 71183u, global1.a.a.x, global1.b.a.x)) ^ ~vec4<u32>(0u, u_input.b, u_input.b, 67138u)))), 1288f, vec3<f32>(1f, 1f, 1f), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(global1.a.a.x, 0u, 2118u, global1.a.a.x)), vec4<u32>(u_input.b, u_input.b, u_input.b | global1.a.a.x, countOneBits(u_input.b))), firstTrailingBit(firstTrailingBit(reverseBits(vec4<u32>(4294967295u, 1u, 0u, 4365u))))));
}

