struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(u_input.b.x, abs(~(vec2<i32>(-1i) * -vec2<i32>(14369i, 1i))), 2147483647i | _wgslsmith_sub_i32(-firstTrailingBit(u_input.b.x), _wgslsmith_mod_i32(-61642i, -1i)));
    var var_1 = vec2<bool>(false, true);
    var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1957f, -1094f)))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-444f)), _wgslsmith_f_op_f32(f32(-1f) * -1450f))))));
    let var_2 = 4294967295u << (~(~(u_input.e | ~u_input.e)) % 32u);
    var var_3 = 34401u;
    return Struct_2(var_0, var_1.x && (var_2 == countOneBits(_wgslsmith_mod_u32(var_2, var_2))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<u32>) -> bool {
    var var_0 = func_2();
    let var_1 = max(max(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.a.a, var_0.a.c), vec4<i32>(var_0.a.c, -1i, 2147483647i, u_input.b.x)), countOneBits(-var_0.a.c)), -vec2<i32>(u_input.b.x, ~var_0.a.a)), abs(u_input.b.zx));
    var_0 = func_2();
    var var_2 = ~28266u;
    var_2 = arg_2.x;
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    let var_0 = func_2();
    var var_1 = any(!(!vec2<bool>(arg_0.b, true))) && arg_0.b;
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~(~firstLeadingBit(vec4<u32>(1u, arg_1, 0u, arg_1))), _wgslsmith_add_vec4_u32(countOneBits(max(vec4<u32>(33350u, 0u, 36075u, u_input.c.x), vec4<u32>(1u, 14096u, 16570u, u_input.e))), vec4<u32>(arg_1, u_input.a.x, 34773u, ~1u))), vec4<u32>(4294967295u, ~abs(arg_1), countOneBits(firstTrailingBit(4294967295u)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u), u_input.c), 0u)));
    var var_3 = vec4<u32>(abs(~select(4294967295u, ~arg_1, any(vec2<bool>(false, false)))), 30444u, 21158u, ~(~var_2.x << (1u % 32u)) << (~u_input.e % 32u));
    var var_4 = true;
    return !vec4<bool>(any(select(vec2<bool>(false, var_0.b), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.b), true), !vec2<bool>(var_0.b, true))), var_0.b, true, var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !(!select(!(!vec4<bool>(false, false, false, arg_0.b)), !arg_3, !func_3(arg_0, u_input.e).x));
    var_0 = !select(func_3(func_2(), (u_input.e << (u_input.e % 32u)) << (abs(35396u) % 32u)), !arg_3, -2147483647i == -func_2().a.c);
    let var_1 = u_input.e;
    var_0 = select(func_3(arg_0, 0u << (((31485u & var_1) ^ var_1) % 32u)), !vec4<bool>(func_3(Struct_2(Struct_1(-55852i, u_input.b.xy, arg_0.a.a), arg_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, var_1, 67143u, 14703u), vec4<u32>(var_1, u_input.a.x, var_1, 4294967295u))).x, true, true, true), vec4<bool>(!var_0.x, select(u_input.c.x < 1u, arg_3.x, true) & false, !(!var_0.x), !select(all(vec2<bool>(arg_0.b, false)), any(arg_3), var_0.x)));
    var var_2 = arg_0;
    return Struct_1(abs(_wgslsmith_div_i32(-1i ^ reverseBits(var_2.a.b.x), -u_input.b.x)), _wgslsmith_sub_vec2_i32(arg_0.a.b, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-25526i, arg_1), i32(-1i) * -608i), var_2.a.c << (u_input.e % 32u))), select(var_2.a.b.x, ~2251i, !(arg_3.x && false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(u_input.b.x >= u_input.b.x, true), !all(vec2<bool>(true, true)), ~u_input.a);
    let var_1 = func_4(func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & ~u_input.b.x), u_input.b.zz), u_input.b.x, select(select(select(func_3(Struct_2(Struct_1(u_input.b.x, vec2<i32>(u_input.b.x, u_input.b.x), 2147483647i), false), 4294967295u), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), (u_input.b.x & u_input.b.x) == u_input.b.x), vec4<bool>(true, true, true, true), any(vec4<bool>(0u <= u_input.e, true, false, all(vec2<bool>(true, true))))));
    let var_2 = func_4(Struct_2(var_1, u_input.b.x >= func_4(func_2(), -31866i, -u_input.b.x, vec4<bool>(true, true, false, false)).c), -7032i, _wgslsmith_sub_i32(-33413i, -31003i) & (_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, var_1.b.x, -2147483647i, -3888i)), vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x)) << (~_wgslsmith_sub_u32(46947u, 22776u) % 32u)), !select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !func_3(Struct_2(Struct_1(-1i, vec2<i32>(-12238i, 1i), var_1.a), true), 83638u)));
    let var_3 = _wgslsmith_div_i32(var_2.a, 22854i);
    let var_4 = ~(~(~select(min(vec4<u32>(u_input.e, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.c.x)), vec4<u32>(45829u, 0u, 29077u, u_input.a.x), true)));
    var_0 = any(select(vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))) && false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, u_input.b.x) | _wgslsmith_clamp_i32(var_3, -49935i, u_input.b.x), var_3) << (~var_4.x % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-338f, 1291f, 371f, -633f), vec4<f32>(466f, 930f, 710f, 188f)))))), vec4<f32>(449f, _wgslsmith_f_op_f32(floor(-519f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * 1089f), 217f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f)))), 1207f, ~vec3<u32>(~u_input.c.x, var_4.x, 27857u));
}

