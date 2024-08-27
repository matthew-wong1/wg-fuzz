struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-62128i, 12667i, -1i, 0i);

var<private> global1: Struct_3 = Struct_3(-1015f);

var<private> global2: vec3<u32> = vec3<u32>(1u, 35697u, 0u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1288f, global1.a) - vec2<f32>(-1321f, -708f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a, global1.a), vec2<f32>(global1.a, -544f))))))), ~(-u_input.c.x));
    global0 = max(vec4<i32>(0i, u_input.c.x, -_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(global0.x, 0i)), global0.x), select(_wgslsmith_div_vec4_i32(vec4<i32>(-8758i, u_input.c.x, -19860i, -2147483647i), vec4<i32>(14879i, 2147483647i, -1i, 1i)), ~vec4<i32>(0i, u_input.c.x, -1i, var_0.b), any(vec4<bool>(true, true, true, true)))) >> (u_input.d % vec4<u32>(32u));
    global2 = u_input.d.xwx;
    global1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(877f, global1.a))) + var_0.a.x))));
    global2 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, select(1u, max(4294967295u, u_input.d.x), true), abs(~82732u)), ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, global2.x, u_input.d.x), u_input.d.zyy))) ^ (firstTrailingBit(abs(u_input.d.yxy)) << (_wgslsmith_mult_vec3_u32(~select(vec3<u32>(27679u, global2.x, 23149u), u_input.d.yyw, true), vec3<u32>(1u, ~global2.x, global2.x & global2.x)) % vec3<u32>(32u)));
    return -(~vec4<i32>(var_0.b << (_wgslsmith_mult_u32(global2.x, 14990u) % 32u), ~_wgslsmith_mod_i32(-1i, -15824i), -_wgslsmith_add_i32(-14074i, 2147483647i), 2147483647i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = reverseBits(func_3());
    var var_0 = select(u_input.a.x, u_input.c.x, arg_1.b.x);
    let var_1 = global2.x;
    let var_2 = arg_1;
    let var_3 = arg_0.b.x;
    return arg_1.b.x != arg_0.b.x;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global0 = select(abs(vec4<i32>(~(global0.x & -24372i), ~(~3004i), -_wgslsmith_div_i32(-3171i, 1i), u_input.b.x)), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -(i32(-1i) * -1i)), -9109i, -11786i, global0.x), select(!func_2(Struct_1(-1000f, vec4<bool>(false, true, true, false)), Struct_1(global1.a, vec4<bool>(false, true, true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec2<bool>(false, true)))), false));
    global1 = Struct_3(global1.a);
    let var_0 = Struct_3(global1.a);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -359f))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 108f) * var_0.a))), _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.b.x, 5259i) & vec2<i32>(global0.x, -2147483647i)), vec2<i32>(firstLeadingBit(50981i), 1i)) << (firstLeadingBit(4294967295u) % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(1059f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.a)))))), !(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, false)))));
    return ~((global0.x << (1u % 32u)) >> (1u % 32u));
}

fn func_4(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global1.a)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), all(vec2<bool>(false, false))), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1271f - _wgslsmith_f_op_f32(floor(1121f)))))), !vec4<bool>(true && !var_0.b.x, true, 1u < ~u_input.d.x, !var_0.b.x || var_0.b.x));
    let var_2 = var_0.b.x;
    let var_3 = false;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(global1.a + 736f)) - 350f)), select(vec4<bool>(var_0.b.x, var_1.b.x, func_2(Struct_1(var_1.a, vec4<bool>(var_0.b.x, var_1.b.x, false, false)), Struct_1(var_0.a, vec4<bool>(true, true, var_0.b.x, true))), var_3), select(select(select(vec4<bool>(true, var_3, var_1.b.x, true), var_0.b, true), var_0.b, all(var_1.b)), select(var_1.b, vec4<bool>(true, true, var_0.b.x, var_3), var_1.b), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, var_3, true, var_0.b.x), vec4<bool>(var_1.b.x, var_0.b.x, false, var_1.b.x), vec4<bool>(var_0.b.x, false, false, var_3)), var_3)), var_0.b));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.d.zxy ^ (u_input.d.xyx << (vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), u_input.d.x, firstLeadingBit(firstLeadingBit(51688u))) % vec3<u32>(32u)));
    var var_0 = func_4(-func_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(3482u, global2.x), _wgslsmith_sub_vec2_u32(vec2<u32>(14574u, 1u), vec2<u32>(global2.x, global2.x)), ~vec2<u32>(4294967295u, u_input.d.x))));
    global1 = Struct_3(_wgslsmith_f_op_f32(-global1.a));
    let var_1 = !vec4<bool>(any(select(!var_0.b.zxz, func_4(-33475i).b.yxw, vec3<bool>(var_0.b.x, false, false))), all(select(select(var_0.b.xy, vec2<bool>(true, var_0.b.x), var_0.b.yw), vec2<bool>(true, true), !var_0.b.wz)), !all(vec3<bool>(true, false, true)), !(_wgslsmith_f_op_f32(-global1.a) == _wgslsmith_f_op_f32(-var_0.a)));
    var var_2 = vec3<u32>(~global2.x, u_input.d.x, min(4294967295u, 26202u) << (_wgslsmith_mult_u32(global2.x, ~4294967295u) % 32u));
    var var_3 = ~vec4<u32>(~(~(0u >> (var_2.x % 32u))), 0u, u_input.d.x, _wgslsmith_mod_u32(var_2.x, select(14843u, global2.x, true)) << (firstLeadingBit(var_2.x) % 32u));
    global0 = abs(min(_wgslsmith_add_vec4_i32(min(vec4<i32>(-24964i, 2147483647i, -5663i, -12535i), vec4<i32>(2147483647i, -2147483647i, 40397i, global0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 46217i), vec4<i32>(-69010i, 11743i, 1i, global0.x))), ~func_3())) ^ _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, global0.x, u_input.a.x, 33200i), _wgslsmith_mult_vec4_i32(vec4<i32>(-37390i, u_input.a.x, global0.x, 21980i), vec4<i32>(u_input.a.x, global0.x, 0i, 3831i)))), func_3());
    let x = u_input.a;
    s_output = StorageBuffer(-196f, ~(~global2.xx), -58442i);
}

