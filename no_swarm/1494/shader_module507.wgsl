struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = arg_3.a;
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~var_0.a.a.x & (var_0.a.a.x >> (4294967295u % 32u)), 0i, -39803i), _wgslsmith_sub_vec3_i32(vec3<i32>(5606i, countOneBits(arg_3.c.a.x), u_input.a), vec3<i32>(31i, -1i, 1i))), -715f, 4294967295u);
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.a.a.b)), _wgslsmith_f_op_f32(abs(var_1.b))) * -596f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(791f, arg_3.c.b) - var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.b), var_0.a.b)), 1000f)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 0u)), ~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), abs(u_input.c.x)), _wgslsmith_div_u32(u_input.c.x, u_input.c.x << (0u % 32u)), arg_0.x, Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), -917f, u_input.c.x)), u_input.b.yx, Struct_1(vec3<i32>(u_input.a, u_input.b.x, u_input.a), -362f, 1u), arg_0.x))))));
    let var_1 = Struct_1(vec3<i32>(-abs(~13412i), u_input.a, -abs(u_input.a)), _wgslsmith_f_op_vec4_f32(func_3(max(vec4<u32>(u_input.c.x, min(u_input.c.x, 11159u), firstTrailingBit(u_input.c.x), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x), ~vec4<u32>(59069u, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 92712u, u_input.c.x) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)))), 1u, arg_0.x, Struct_3(Struct_2(Struct_1(vec3<i32>(-11210i, u_input.a, u_input.b.x), -2498f, u_input.c.x)), vec2<i32>(u_input.a, u_input.b.x | 1i), Struct_1(abs(u_input.b), _wgslsmith_f_op_f32(exp2(var_0.x)), u_input.c.x), any(vec4<bool>(false, arg_0.x, false, arg_0.x))))).x, ~u_input.c.x);
    let var_2 = all(!arg_0);
    let var_3 = Struct_2(var_1);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 1374f)) + var_1.b)));
    return Struct_4(~reverseBits(1u), _wgslsmith_add_u32(~(u_input.c.x ^ _wgslsmith_div_u32(var_1.c, var_1.c)), ~(~1u >> (select(var_3.a.c, u_input.c.x, arg_0.x) % 32u))), var_3.a);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-447f))) - -394f)));
    var var_1 = func_2(select(vec4<bool>(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 17982u, arg_2), vec4<u32>(u_input.c.x, u_input.c.x, arg_2, u_input.c.x)) == (4842u >> (u_input.c.x % 32u)), arg_1, all(vec4<bool>(arg_1, arg_0, arg_0, arg_1))), !vec4<bool>(arg_0 || arg_1, arg_1, !arg_0, any(vec4<bool>(arg_1, true, arg_1, arg_1))), !arg_0));
    let var_2 = Struct_4(arg_2, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 71874u, select(u_input.c.x, 48612u, true)), ~(vec3<u32>(1u, u_input.c.x, 70957u) >> (vec3<u32>(4294967295u, var_1.b, u_input.c.x) % vec3<u32>(32u)))), func_2(vec4<bool>(!(u_input.a > 153i), select(arg_0, arg_1, false), !all(vec2<bool>(false, false)), arg_1)).c);
    var var_3 = Struct_2(Struct_1(var_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2951f * 1400f))), var_1.b));
    let var_4 = vec4<u32>(var_3.a.c, 18647u, 116963u, ~((arg_2 ^ 1u) >> (~3070u % 32u)) << (4294967295u % 32u));
    return vec4<bool>(all(select(!(!vec2<bool>(true, arg_0)), !select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), true), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), arg_0), vec2<bool>(arg_0, arg_1), all(vec4<bool>(false, arg_0, false, false))))), arg_1, any(select(select(!vec3<bool>(arg_1, arg_1, arg_0), select(vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_0, arg_1), vec3<bool>(arg_0, arg_0, arg_1)), vec3<bool>(arg_0, arg_1, false)), vec3<bool>(false, var_2.a != 23966u, all(vec4<bool>(true, arg_0, arg_1, false))), select(!vec3<bool>(false, true, arg_0), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, false)), select(true, false, arg_1)))), !any(select(select(vec4<bool>(true, arg_1, false, true), vec4<bool>(true, arg_0, arg_0, true), arg_0), !vec4<bool>(false, true, arg_1, arg_1), any(vec4<bool>(true, arg_1, true, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(false, true, false, select(true, true, u_input.c.x > u_input.c.x)), func_1(true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 121043u, 0u, 43734u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u)) >= 4294967295u), 1u), (i32(-1i) * -1i) != func_2(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))).c.a.x);
    let var_1 = func_2(!select(vec4<bool>(false, all(var_0.wxy), all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), false || var_0.x), vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), !var_0.x, true, true), vec4<bool>(false, false, false, !var_0.x))).c;
    var_0 = vec4<bool>(var_0.x, var_0.x, any(vec4<bool>(any(vec4<bool>(false, var_0.x, var_0.x, true)), false, var_0.x, select(var_0.x, !var_0.x, var_0.x))), all(!func_1(true, any(vec3<bool>(true, true, true)), 0u)));
    var var_2 = any(var_0.zy);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(69126u, 4294967295u), vec2<u32>(u_input.c.x, 3564u)) >> (u_input.c.xy % vec2<u32>(32u))) << (_wgslsmith_div_u32(var_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 4294967295u, u_input.c.x), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c))) % 32u), _wgslsmith_mod_u32(func_2(select(!vec4<bool>(false, var_0.x, true, false), func_1(var_0.x, true, 65177u), vec4<bool>(var_0.x, false, false, var_0.x))).b, _wgslsmith_mult_u32(0u, 64523u << (~u_input.c.x % 32u))));
    let var_4 = Struct_1(vec3<i32>(-2147483647i, ~_wgslsmith_dot_vec2_i32(var_1.a.xx, select(vec2<i32>(50019i, u_input.a), u_input.b.zx, var_0.x)), max(var_1.a.x ^ 9105i, countOneBits(2147483647i)) ^ 1i), 471f, 9439u << (var_3.x % 32u));
    var var_5 = 554f;
    var_0 = select(vec4<bool>(any(!func_1(true, false, u_input.c.x)), true, var_0.x, true), !select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_4.c == 17360u, false, var_0.x && var_0.x), !var_0.x), !(var_0.x || select(true, var_4.a.x != u_input.b.x, all(vec3<bool>(true, var_0.x, false)))));
    var_3 = vec2<u32>(~(1u << (~(var_4.c >> (var_1.c % 32u)) % 32u)), var_4.c >> (var_1.c % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.c.x)), ~21918u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, var_4.b, 1096f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1794f, 150f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-828f, var_4.b, var_1.b) - vec3<f32>(var_1.b, -724f, -518f)))), var_0.zyz)) + vec3<f32>(511f, -1000f, _wgslsmith_f_op_f32(-var_1.b))), vec2<i32>(countOneBits(-1i), -2147483647i), _wgslsmith_clamp_u32(3892u, _wgslsmith_add_u32(109654u, ~countOneBits(u_input.c.x)), reverseBits(var_3.x)));
}

