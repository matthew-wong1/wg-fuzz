struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(true, !(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true))), (_wgslsmith_mult_u32(u_input.c, ~u_input.c) == ~u_input.d.x) == (abs(18793u) == reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(23410u, u_input.c, u_input.c), u_input.d))));
    var_0 = vec3<bool>(var_0.x, var_0.x, !all(var_0.yy));
    var_0 = select(!(!vec3<bool>(var_0.x, var_0.x, !var_0.x)), vec3<bool>(true, var_0.x, true), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, var_0.x), true))));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zz, ~u_input.a.yz, vec2<i32>(u_input.a.x, 0i)), countOneBits(firstTrailingBit(u_input.b.yx)));
    let var_2 = Struct_2(833f, vec4<i32>(2147483647i, 65704i, reverseBits(_wgslsmith_mod_i32(var_1.x, u_input.a.x)), u_input.b.x), Struct_1(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), !select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, var_0.x)), _wgslsmith_mult_i32(0i, ~(u_input.b.x | var_1.x)), vec2<u32>(select(min(1u, 0u), _wgslsmith_add_u32(u_input.d.x, 1u), var_0.x), u_input.c), vec3<u32>(u_input.d.x, 47471u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, 4294967295u, 42594u, u_input.d.x), vec4<u32>(u_input.c, 4294967295u, 0u, 4294967295u), var_0.x), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 1u)))));
    return var_2.a;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = (firstTrailingBit(vec2<i32>(~(-23478i), _wgslsmith_mod_i32(21124i, u_input.a.x))) >> (_wgslsmith_add_vec2_u32(abs(u_input.d.zz), ~vec2<u32>(u_input.c, u_input.c) << (u_input.d.yy % vec2<u32>(32u))) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -12767i), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(1i, u_input.a.x))) ^ u_input.b.xx);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-679f + 411f), _wgslsmith_f_op_f32(abs(-515f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - 1051f), _wgslsmith_f_op_f32(-1f)), vec3<f32>(1000f, 466f, _wgslsmith_div_f32(-1123f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(106f, 615f))))))));
    var var_2 = !arg_0;
    let var_3 = Struct_2(653f, min(~(vec4<i32>(88420i, var_0.x, var_0.x, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, u_input.b.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -1i, var_0.x, -48196i), _wgslsmith_add_vec4_i32(vec4<i32>(51090i, -2337i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.a.x, -38972i, var_0.x, u_input.a.x)))) ^ vec4<i32>(_wgslsmith_sub_i32(countOneBits(u_input.a.x), -35285i), ~(-34712i), _wgslsmith_div_i32(var_0.x >> (u_input.d.x % 32u), firstLeadingBit(-48794i)), _wgslsmith_clamp_i32(1i, u_input.b.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), Struct_1(!vec4<bool>(!arg_0.x, any(vec4<bool>(true, var_2.x, arg_0.x, var_2.x)), var_2.x, false), vec3<bool>(arg_0.x, true, true), u_input.b.x, u_input.d.zx, select(firstLeadingBit(u_input.d), u_input.d, all(vec2<bool>(true, arg_0.x)))));
    return (any(select(!vec2<bool>(var_2.x, var_3.c.b.x), vec2<bool>(var_2.x, false), arg_0)) || all(var_3.c.a)) && false;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_1(!vec4<bool>(true, (20476u >= u_input.d.x) | true, all(select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, false, false, arg_1))), false), !vec3<bool>(arg_1, true, !func_2(vec2<bool>(arg_1, arg_1))), 17189i, _wgslsmith_mult_vec2_u32(u_input.d.xy, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xy, u_input.d.yz), ~_wgslsmith_sub_vec2_u32(u_input.d.xz, vec2<u32>(u_input.c, 43854u)), ~select(vec2<u32>(u_input.c, 1090u), vec2<u32>(u_input.d.x, u_input.c), arg_1))), (vec3<u32>(6466u, _wgslsmith_mod_u32(0u, 1u), 139910u) & vec3<u32>(23664u, ~u_input.c, u_input.c)) ^ abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.d.x), u_input.d)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1665f, arg_0, 967f) - vec3<f32>(arg_2.x, 472f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, 775f, -1000f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(593f, 732f, arg_2.x), vec3<f32>(-265f, 154f, arg_0), var_0.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, arg_2.x, 844f) - vec3<f32>(arg_0, arg_2.x, 575f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, arg_2.x), vec3<f32>(arg_2.x, arg_2.x, -929f)))))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 214f, -222f)) * vec3<f32>(_wgslsmith_div_f32(568f, -1768f), _wgslsmith_f_op_f32(sign(684f)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, arg_0, arg_0)))))))));
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = Struct_2(450f, vec4<i32>(~1i & u_input.b.x, abs(~(-u_input.b.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.c, 0i), 2147483647i), -1i), abs(~1i) >> (reverseBits(var_0.d.x) % 32u)), Struct_1(!select(vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(true, arg_1, false, false), var_2.a), !(!(!var_2.b)), 58183i, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(57716u, u_input.c), abs(959u)), vec2<u32>(reverseBits(1u), 1u)), abs(var_2.e)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - arg_2.x))) >= _wgslsmith_f_op_f32(692f + _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<bool>(true, false, true, func_1(_wgslsmith_f_op_f32(select(-1000f, -533f, false)), false, _wgslsmith_div_vec2_f32(vec2<f32>(-976f, -345f), vec2<f32>(1297f, 1000f)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), firstTrailingBit(4294967295u) <= (20780u >> (u_input.c % 32u))), select(vec4<bool>(true, func_2(vec2<bool>(false, true)), true, true), vec4<bool>(all(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false))), !any(vec3<bool>(true, true, false)))), vec3<bool>(4294967295u >= (_wgslsmith_div_u32(u_input.d.x, 59717u) | min(4294967295u, 0u)), false, !(any(vec2<bool>(true, true)) && true)), _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), ~abs(reverseBits(u_input.d.yy >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))), abs(~u_input.d));
    var var_1 = any(select(select(vec2<bool>(true, true), !select(var_0.a.wy, var_0.a.xy, var_0.a.zw), vec2<bool>(!var_0.b.x, var_0.b.x)), select(select(select(var_0.b.zz, vec2<bool>(true, var_0.a.x), var_0.b.x), vec2<bool>(var_0.a.x, false), func_1(828f, var_0.b.x, vec2<f32>(-1000f, -321f))), vec2<bool>(false, true), select(!var_0.b.xz, select(vec2<bool>(var_0.a.x, true), var_0.a.yx, var_0.a.x), u_input.a.x >= -2147483647i)), vec2<bool>(!(u_input.c < 9011u), true)));
    let var_2 = Struct_1(var_0.a, vec3<bool>(func_2(var_0.b.zz), all(select(!var_0.a, vec4<bool>(var_0.a.x, false, true, var_0.b.x), false)), all(var_0.b.zx)), -11484i, u_input.d.zz, _wgslsmith_sub_vec3_u32(var_0.e << (vec3<u32>(u_input.c, select(u_input.d.x, var_0.d.x, true), _wgslsmith_mod_u32(var_0.e.x, var_0.e.x)) % vec3<u32>(32u)), ~firstLeadingBit(var_0.e)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(-471f, 120f, true)), -515f, _wgslsmith_f_op_f32(-282f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()));
    var_1 = all(var_0.b.yy);
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, _wgslsmith_div_u32(var_2.e.x, _wgslsmith_sub_u32(u_input.c, abs(var_2.d.x)))), var_0.c);
}

