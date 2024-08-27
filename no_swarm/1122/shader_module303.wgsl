struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    global0 = select(select(!vec3<bool>(!global0.x, any(vec4<bool>(global0.x, global0.x, false, global0.x)), global0.x), vec3<bool>(true, global0.x, false), !select(!vec3<bool>(global0.x, false, false), !vec3<bool>(false, true, global0.x), global0.x)), vec3<bool>(!global0.x, global0.x, false), !select(!vec3<bool>(global0.x, false, false), select(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, false, global0.x), true), select(vec3<bool>(global0.x, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, global0.x)), any(vec3<bool>(global0.x, false, global0.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 24484i, -2147483647i, u_input.c), vec4<i32>(57702i, u_input.a, u_input.a, 1i)) == ~15804i));
    var var_0 = vec3<i32>(-u_input.a, ~0i, ~42424i);
    var var_1 = Struct_2(vec4<i32>(u_input.a, -1i, ~27901i << (abs(u_input.b & u_input.b) % 32u), min(var_0.x, var_0.x) ^ reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, u_input.c, var_0.x), vec4<i32>(u_input.a, -27147i, u_input.c, 33794i)))), Struct_1(~u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -459f, -1899f, 1412f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, _wgslsmith_f_op_f32(-217f - -1808f), _wgslsmith_f_op_f32(f32(-1f) * -464f), -1928f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1293f, 369f, -437f, 785f) - vec4<f32>(1337f, -514f, -664f, -1845f))))), Struct_1(2147483647i));
    let var_2 = Struct_1(var_1.b.a);
    let var_3 = Struct_1(var_1.a.x);
    return vec3<bool>(select(_wgslsmith_add_u32(1u, max(u_input.b, u_input.d.x)) >= ~select(4294967295u, 32926u, global0.x), false, false), any(select(select(!vec3<bool>(global0.x, false, false), !vec3<bool>(false, global0.x, true), true), !select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(false, true, global0.x)), vec3<bool>(true, true, true))), (_wgslsmith_add_i32(abs(var_3.a), ~var_2.a) >> (13653u % 32u)) <= 18655i);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_3 {
    global0 = !select(func_3(), select(!select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, false, false), vec3<bool>(arg_0.x, global0.x, global0.x)), vec3<bool>(all(vec4<bool>(arg_0.x, true, arg_0.x, false)), global0.x, false), vec3<bool>(arg_0.x, true, !global0.x)), arg_0.x);
    let var_0 = _wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(u_input.a, 99887i, -53000i, u_input.a)) ^ vec4<i32>(u_input.c, -u_input.c, -arg_1.a, u_input.a), ~countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a, 1i, 1i, u_input.c), vec4<i32>(arg_1.a, -64029i, -20098i, arg_1.a), vec4<i32>(u_input.c, u_input.c, arg_1.a, u_input.a) << (vec4<u32>(90751u, 11411u, 0u, 41539u) % vec4<u32>(32u)))));
    global0 = vec3<bool>(true, true, true);
    global0 = func_3();
    global0 = select(select(func_3(), select(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !vec3<bool>(arg_0.x, arg_0.x, false), !vec3<bool>(false, true, arg_0.x)), arg_0.x), !(!(!vec3<bool>(false, global0.x, arg_0.x))), !(!global0.x));
    return Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3 * 732f))), -133f))), Struct_2(abs(firstTrailingBit(var_0)), arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1583f, _wgslsmith_f_op_f32(step(arg_3, 248f)), _wgslsmith_f_op_f32(round(1570f)), _wgslsmith_f_op_f32(min(arg_3, arg_3)))), arg_1), vec3<bool>(func_3().x | (true | all(vec3<bool>(true, global0.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1109f * arg_3), _wgslsmith_div_f32(-1955f, -1811f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(-arg_3)), abs(~var_0.x) == _wgslsmith_mult_i32(-arg_1.a, firstLeadingBit(2147483647i))), Struct_2(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.c, 17203i), var_0), var_0), 0i, -14721i), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -853f, -907f, -1963f)) + vec4<f32>(arg_3, 573f, 1210f, -531f))), arg_1));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> i32 {
    global0 = arg_0.c;
    global0 = vec3<bool>(all(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false | global0.x)) | select(all(vec3<bool>(true, true, true)), !func_2(vec2<bool>(true, false), Struct_1(arg_0.d.a.x), u_input.d.x, arg_0.b.c.x).c.x, any(vec3<bool>(global0.x, false, true))), func_2(func_2(vec2<bool>(245f < arg_0.b.c.x, func_2(global0.xy, arg_0.d.d, 1u, 757f).c.x), Struct_1(_wgslsmith_add_i32(31659i, -1i)), _wgslsmith_div_u32(countOneBits(u_input.d.x), ~u_input.b), -837f).c.zz, arg_0.d.d, 9056u, _wgslsmith_f_op_f32(f32(-1f) * -396f)).c.x, !arg_0.c.x);
    let var_0 = select(arg_0.d.b.a, u_input.a, arg_0.d.d.a >= ~(-u_input.c));
    global0 = select(arg_0.c, !(!(!(!arg_0.c))), select(vec3<bool>(true, true, all(vec2<bool>(arg_0.c.x, arg_0.c.x))), vec3<bool>(global0.x, true, false), arg_0.c.x));
    var var_1 = 37482u;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.a.wwz, func_2(arg_0.c.xx, Struct_1(_wgslsmith_add_i32(var_0, -13445i)), select(countOneBits(4294967295u), arg_1.x, true), arg_0.d.c.x).b.a.xzx), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, -1i, 0i), arg_0.d.a.wxz));
}

fn func_1() -> Struct_3 {
    global0 = !vec3<bool>(true, true, any(!(!vec2<bool>(global0.x, true))));
    let var_0 = vec3<i32>(_wgslsmith_add_i32(max(u_input.a, _wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(7167i, 1i)))), ~select(u_input.a, u_input.c & u_input.a, !global0.x)), 40425i, func_4(func_2(global0.zx, Struct_1(u_input.c), ~u_input.b, -151f), vec3<u32>(firstLeadingBit(u_input.b), select(u_input.b, 41210u, true), _wgslsmith_sub_u32(u_input.b, u_input.d.x))) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c) ^ min(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(u_input.c, 1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(163f, -671f, -371f) - vec3<f32>(-111f, 945f, -322f))))))));
    let var_2 = reverseBits(select(_wgslsmith_div_vec2_u32(max(abs(vec2<u32>(u_input.d.x, u_input.d.x)), ~u_input.d), vec2<u32>(7119u, 65714u << (1u % 32u))), _wgslsmith_mod_vec2_u32(~max(u_input.d, vec2<u32>(u_input.b, u_input.b)), ~(~vec2<u32>(22087u, u_input.d.x))), func_2(global0.yz, func_2(!global0.xy, Struct_1(u_input.a), reverseBits(u_input.b), _wgslsmith_f_op_f32(var_1.x * var_1.x)).b.b, ~1u, _wgslsmith_f_op_f32(step(-1597f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))).c.xx));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-1000f, var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x)), 1145f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 179f, var_1.x, 105f)))), vec4<f32>(-1013f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), -1927f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -1000f), 3550f, -946f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, -2385f))) * vec4<f32>(var_1.x, 1497f, var_1.x, var_1.x))))));
    return Struct_3(var_3, Struct_2(countOneBits(max(vec4<i32>(u_input.a, 2147483647i, u_input.a, var_0.x), vec4<i32>(var_0.x, u_input.a, -1i, var_0.x) >> (vec4<u32>(u_input.d.x, 41443u, var_2.x, var_2.x) % vec4<u32>(32u)))), Struct_1(_wgslsmith_add_i32(15591i, ~(-440i))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + var_3.x), _wgslsmith_div_f32(var_1.x, var_1.x)), Struct_1(u_input.a)), vec3<bool>(true, select(all(vec4<bool>(global0.x, true, global0.x, false)), global0.x, true) | all(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, global0.x))), !all(!vec4<bool>(global0.x, true, global0.x, global0.x))), Struct_2(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -19194i, var_0.x, var_0.x), vec4<i32>(2147483647i, var_0.x, u_input.a, -14413i))), Struct_1(~var_0.x), var_3, func_2(!global0.yy, Struct_1(reverseBits(1i)), _wgslsmith_mult_u32(max(15054u, 0u), ~var_2.x), -773f).d.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<bool>(true, false, false);
    let var_2 = var_0.b.c.ywy;
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), u_input.d), vec2<u32>(~u_input.d.x | u_input.b, 1u));
    global0 = var_1;
    var var_4 = ~(abs(~(~vec4<u32>(u_input.d.x, 32445u, 0u, 0u))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, var_3.x, u_input.d.x), vec4<u32>(~var_3.x, 21045u, u_input.b, max(4294967295u, 33150u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + var_2.x)), var_0.d.a.xyy, _wgslsmith_f_op_f32(-var_0.d.c.x));
}

