struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(1u);
    var var_2 = vec2<bool>(!all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(any(vec2<bool>(false, true)), true)));
    let var_3 = Struct_3(Struct_2(u_input.a.x, vec2<bool>(select(false, var_2.x, true), var_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1345f * -153f)))))), select(vec2<bool>(true, select(!var_2.x, true, true)), select(vec2<bool>(select(var_2.x, false, false), var_2.x), !vec2<bool>(var_2.x, false), var_2.x), vec2<bool>(false && select(var_2.x, true, false), true)), select(vec4<bool>(true, true & all(vec3<bool>(var_2.x, var_2.x, true)), true, true), !select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(true, true, var_2.x, var_2.x), var_2.x), var_2.x));
    var_1 = Struct_4(~_wgslsmith_dot_vec2_u32(~arg_1.yy, ~(~vec2<u32>(4294967295u, 43735u))));
    return var_3;
}

fn func_3(arg_0: Struct_5) -> vec4<u32> {
    let var_0 = ~0u;
    let var_1 = Struct_3(Struct_2(69389u, arg_0.b.a.b, arg_0.b.a.c), vec2<bool>(any(vec2<bool>(all(arg_0.b.c.zxw), true)), !(1u >= var_0) && any(func_2(vec3<i32>(arg_0.a.x, arg_0.a.x, 19202i), u_input.a).c.wzz)), select(!(!(!vec4<bool>(arg_0.b.a.b.x, arg_0.b.a.b.x, false, arg_0.b.a.b.x))), arg_0.b.c, vec4<bool>(true, false, true, !arg_0.b.a.b.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.c) - var_1.a.c), vec3<bool>(false, !(_wgslsmith_mult_i32(17618i, arg_0.a.x) == ~arg_0.a.x), ~firstLeadingBit(65497i) == arg_0.a.x));
    let var_3 = vec2<u32>(var_0 | ~arg_0.b.a.a, var_1.a.a);
    let var_4 = func_2(vec3<i32>(reverseBits(abs(-1i) << (u_input.a.x % 32u)), abs(-countOneBits(arg_0.a.x)), _wgslsmith_mult_i32(-arg_0.a.x, arg_0.a.x)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(var_3.x, _wgslsmith_dot_vec2_u32(~u_input.a.wz, u_input.a.zz), 1u, _wgslsmith_dot_vec3_u32(u_input.a.xxx, firstTrailingBit(u_input.a.xyz))))).c;
    return min(_wgslsmith_mod_vec4_u32(firstLeadingBit(reverseBits(countOneBits(vec4<u32>(var_0, var_1.a.a, var_0, u_input.a.x)))), ~vec4<u32>(var_0 >> (var_0 % 32u), 0u, ~u_input.a.x, max(46997u, 0u))), ~(countOneBits(vec4<u32>(var_0, u_input.a.x, 95630u, 0u)) ^ ~max(u_input.a, u_input.a)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    let var_0 = ~(~abs(vec4<u32>(1u, 42962u, arg_0, 1u)) ^ func_3(Struct_5(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 34385i), vec2<i32>(-2147483647i, -1i)), func_2(vec3<i32>(0i, -2147483647i, 1i), u_input.a))));
    var var_1 = vec4<bool>(false, func_2(vec3<i32>(select(_wgslsmith_sub_i32(-62997i, 1i), 0i, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(-27721i, 22259i, -97449i), ~vec3<i32>(0i, 29298i, 0i)), -2147483647i), select(~vec4<u32>(arg_1.x, arg_0, var_0.x, 1u), _wgslsmith_mod_vec4_u32(~var_0, var_0), all(vec2<bool>(true, false)) != true)).b.x, !(~(arg_1.x << (arg_0 % 32u)) > _wgslsmith_mult_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_1.x), var_0.xx))), true);
    let var_2 = arg_0 & u_input.a.x;
    var_1 = !vec4<bool>(any(var_1.yx), !(false == select(var_1.x, false, var_1.x)), select(var_1.x, var_1.x, true) & var_1.x, 20188u != var_0.x);
    var_1 = vec4<bool>(var_1.x, any(!select(var_1.xz, vec2<bool>(true, true), !var_1.x)), var_1.x && (all(!vec4<bool>(true, var_1.x, false, true)) || true), !(!(!var_1.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 1429f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(step(1000f, 2646f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1005f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1245f) * 1000f)))), _wgslsmith_f_op_f32(min(412f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-923f, _wgslsmith_f_op_f32(abs(-1000f))), 1815f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(reverseBits(0u) << (abs(u_input.a.x) % 32u), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 0u), ~u_input.a.wzx)))));
    let var_1 = reverseBits(max(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-13339i, -52906i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, -2147483647i), vec2<i32>(1i, 5030i), vec2<bool>(false, true)), -vec2<i32>(-23753i, -23989i))) << (u_input.a.xw % vec2<u32>(32u)));
    let var_2 = !any(select(select(func_2(vec3<i32>(-3622i, var_1.x, var_1.x), vec4<u32>(1821u, u_input.a.x, 0u, 18570u)).c.xyz, vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, true)))));
    let var_3 = Struct_4(4294967295u);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(round(-563f))))), _wgslsmith_f_op_f32(floor(1000f))));
    var var_5 = 1i;
    let var_6 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec3<u32>(var_3.a >> (_wgslsmith_mult_u32(29142u, func_2(vec3<i32>(var_1.x, -2147483647i, 2147483647i), u_input.a).a.a) % 32u), 3539u, max(~55829u, ~var_3.a)));
}

