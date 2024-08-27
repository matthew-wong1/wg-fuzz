struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 50956i, 15332i);

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> vec3<u32> {
    global0 = vec3<i32>(-(~(~arg_2) | 1i), arg_1, ~reverseBits(~(~arg_2)));
    global1 = u_input.b.x <= min(u_input.b.x, u_input.a);
    global0 = ~(-(~(-(vec3<i32>(global0.x, arg_1, global0.x) & vec3<i32>(1i, global0.x, -1i)))));
    let var_0 = arg_0;
    var var_1 = arg_0;
    return vec3<u32>(~arg_0.c.a, _wgslsmith_mod_u32(u_input.a, 0u), arg_0.c.a);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2343f - 367f))), u_input.b, Struct_1(_wgslsmith_mod_u32(abs(u_input.a), min(1u, 79833u)), vec4<bool>(arg_1.a.c.b.x, arg_1.a.c.b.x, arg_1.a.b.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.c.a, 1u, 0u, 0u), vec4<u32>(arg_2.b.x, 80999u, arg_2.b.x, arg_1.a.c.a)), !arg_1.a.c.b.x)));
    global1 = true;
    global1 = arg_1.a.c.b.x;
    global0 = _wgslsmith_mult_vec3_i32(-arg_1.c.yyx, vec3<i32>(arg_0 >> (~(~arg_2.c.a) % 32u), -1i, abs(0i)));
    global0 = vec3<i32>(-(~0i), ~1i, _wgslsmith_mult_i32(arg_1.c.x, arg_1.c.x));
    return _wgslsmith_dot_vec2_i32(-firstTrailingBit(arg_1.c.wx), _wgslsmith_mod_vec2_i32(countOneBits(max(global0.xy & vec2<i32>(5356i, arg_0), min(arg_1.c.xw, vec2<i32>(-20036i, arg_0)))), -(~_wgslsmith_sub_vec2_i32(global0.zx, vec2<i32>(global0.x, -1024i)))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    global0 = vec3<i32>(global0.x, i32(-1i) * -min(global0.x | global0.x, global0.x), func_4(min(global0.x, ~global0.x), Struct_3(Struct_2(-194f, u_input.b, Struct_1(1u, vec4<bool>(false, arg_0, arg_0, true))), vec3<f32>(146f, 1565f, -408f), vec4<i32>(-2147483647i, global0.x, global0.x, global0.x), arg_1.x), Struct_2(arg_1.x, func_3(Struct_2(-1000f, u_input.b, Struct_1(u_input.b.x, vec4<bool>(arg_0, false, arg_0, arg_0))), -2147483647i, global0.x), Struct_1(39397u, vec4<bool>(arg_0, false, true, arg_0)))) << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zz, vec2<u32>(21696u, 70524u)), vec2<u32>(140019u & u_input.b.x, ~30665u)) % 32u));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(214f))), ~(~func_3(Struct_2(-1238f, u_input.b, Struct_1(65414u, vec4<bool>(true, arg_0, arg_0, true))), i32(-1i) * -1i, global0.x)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a, u_input.a), abs(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x))) | max(_wgslsmith_div_u32(1u, u_input.a), ~768u), vec4<bool>(any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, true))), true, false, true)));
    global0 = vec3<i32>(countOneBits(51014i), global0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.x, 3914i, -28558i, global0.x)), abs(vec4<i32>(1i, global0.x, global0.x, global0.x) & vec4<i32>(global0.x, global0.x, global0.x, 33423i))), i32(-1i) * -1107i));
    var_0 = Struct_2(_wgslsmith_f_op_f32(739f - 806f), u_input.b, var_0.c);
    let var_1 = !arg_0;
    return ~4294967295u;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec2<u32>(~_wgslsmith_clamp_u32(1u, u_input.b.x, _wgslsmith_add_u32(19991u, 1u)) << (~52989u % 32u), min(_wgslsmith_mult_u32(u_input.a, ~(~50605u)), func_2(1i >= (0i | global0.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(trunc(-173f))))));
    var var_1 = var_0.x;
    var_0 = min(vec2<u32>(reverseBits((u_input.a ^ var_0.x) & min(u_input.b.x, 24211u)), ~75276u), ~vec2<u32>(31090u, 61979u));
    let var_2 = Struct_1(var_0.x, vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), false, true));
    var_1 = 1u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1390f, -630f)) + _wgslsmith_f_op_f32(select(243f, -477f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(628f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(-47952i < ~global0.x) | false;
    let var_0 = -608f;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec2<i32>(global0.x, 60351i) >> ((u_input.b.xy | u_input.b.zz) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, -1i)), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.b.x, 22251u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 8950u, 0u, 19115u), vec4<u32>(u_input.a, 36613u, 0u, 44253u)), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), vec4<bool>(true, false, true, true))), reverseBits(~abs(global0.x & global0.x)), ~firstLeadingBit(u_input.b));
}

