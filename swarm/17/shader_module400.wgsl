struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<i32>(-57464i, 708i), Struct_1(vec4<u32>(21381u, 444u, 6095u, 0u)), true), Struct_2(vec2<i32>(2147483647i, 55575i), Struct_1(vec4<u32>(4294967295u, 35246u, 0u, 11459u)), true), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(vec4<u32>(4294967295u, 28931u, 103308u, 17453u)), false), Struct_2(vec2<i32>(0i, 3964i), Struct_1(vec4<u32>(4294967295u, 49859u, 28871u, 4294967295u)), false), Struct_2(vec2<i32>(-53730i, 0i), Struct_1(vec4<u32>(4294967295u, 47025u, 49514u, 4294967295u)), false), Struct_2(vec2<i32>(i32(-2147483648), -31249i), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), true), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<u32>(53046u, 4294967295u, 4294967295u, 0u)), false), Struct_2(vec2<i32>(-21920i, i32(-2147483648)), Struct_1(vec4<u32>(37203u, 4294967295u, 4294967295u, 4294967295u)), false), Struct_2(vec2<i32>(-1i, -1059i), Struct_1(vec4<u32>(0u, 1332u, 1u, 1u)), true), Struct_2(vec2<i32>(41752i, -18696i), Struct_1(vec4<u32>(64114u, 21870u, 4177u, 4294967295u)), true), Struct_2(vec2<i32>(-22893i, -23986i), Struct_1(vec4<u32>(1u, 0u, 37230u, 4294967295u)), false), Struct_2(vec2<i32>(2147483647i, 6531i), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 57859u)), false), Struct_2(vec2<i32>(-1i, 0i), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 17073u)), true), Struct_2(vec2<i32>(-25991i, -1i), Struct_1(vec4<u32>(1u, 22211u, 0u, 4294967295u)), true), Struct_2(vec2<i32>(22571i, -2871i), Struct_1(vec4<u32>(0u, 24449u, 65008u, 1u)), false), Struct_2(vec2<i32>(9926i, i32(-2147483648)), Struct_1(vec4<u32>(34208u, 31519u, 1u, 17797u)), false), Struct_2(vec2<i32>(-6576i, 0i), Struct_1(vec4<u32>(84946u, 0u, 4294967295u, 48397u)), true), Struct_2(vec2<i32>(i32(-2147483648), 21522i), Struct_1(vec4<u32>(67036u, 68203u, 0u, 4294967295u)), false), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec4<u32>(2774u, 0u, 50302u, 62729u)), false), Struct_2(vec2<i32>(-1i, 1i), Struct_1(vec4<u32>(22015u, 67216u, 0u, 30112u)), true), Struct_2(vec2<i32>(0i, 1i), Struct_1(vec4<u32>(4294967295u, 24015u, 1u, 68416u)), true), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 89141u)), false));

var<private> global1: u32 = 1279u;

var<private> global2: f32 = -185f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> i32 {
    global1 = ~u_input.b;
    global0 = array<Struct_2, 22>();
    global1 = u_input.b;
    global1 = 8459u;
    let var_0 = Struct_2(select(_wgslsmith_sub_vec2_i32(vec2<i32>(0i >> (u_input.b % 32u), -53472i), _wgslsmith_div_vec2_i32(u_input.c, u_input.c) | (vec2<i32>(-2147483647i, u_input.c.x) | u_input.c)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-16203i, u_input.a), u_input.c), _wgslsmith_sub_vec2_i32(u_input.c, u_input.c)), ~u_input.c << (countOneBits(vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(63867i, u_input.a), ~(-1i))), arg_1.yy), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)), 39220u, 1u), vec4<u32>(~u_input.b, 62928u, max(u_input.b, 9261u), ~u_input.b))), any(!(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))));
    return ~u_input.c.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_1(vec4<u32>(arg_2.b.a.x, select(~u_input.b, 4294967295u, arg_2.c), ~(_wgslsmith_clamp_u32(arg_2.b.a.x, 0u, u_input.b) >> (~arg_2.b.a.x % 32u)), select(1u, arg_2.b.a.x, any(select(vec4<bool>(false, false, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec4<bool>(true, arg_2.c, true, arg_2.c))))));
    global1 = 35124u;
    global1 = reverseBits(40872u);
    var var_1 = vec3<bool>(select(true, true, true), any(select(select(select(vec3<bool>(false, true, arg_2.c), vec3<bool>(true, arg_2.c, arg_2.c), arg_2.c), select(vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(arg_2.c, true, false), vec3<bool>(arg_2.c, false, arg_2.c)), u_input.c.x == arg_3), select(select(vec3<bool>(arg_2.c, false, arg_2.c), vec3<bool>(true, false, false), arg_2.c), vec3<bool>(arg_2.c, arg_2.c, arg_2.c), select(vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(true, arg_2.c, arg_2.c), vec3<bool>(arg_2.c, arg_2.c, arg_2.c))), _wgslsmith_f_op_f32(abs(606f)) == _wgslsmith_f_op_f32(sign(arg_0.x)))), true | select(any(select(vec4<bool>(arg_2.c, arg_2.c, false, arg_2.c), vec4<bool>(arg_2.c, false, false, arg_2.c), arg_2.c)), any(vec3<bool>(arg_2.c, arg_2.c, false)) != any(vec2<bool>(false, false)), !(!arg_2.c)));
    global1 = 4294967295u;
    return Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-337f - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(arg_0.x, -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))))), ~var_0.a.x, ~vec4<i32>(arg_3, ~(-arg_1), -1i, ~(-arg_2.a.x)));
}

fn func_1(arg_0: u32) -> f32 {
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1712f + 884f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) * _wgslsmith_f_op_f32(trunc(-249f)))), _wgslsmith_f_op_f32(-1040f - -643f)), _wgslsmith_f_op_f32(trunc(-589f)), false));
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-919f, -150f, 2552f, -144f)), vec4<f32>(-102f, 646f, 525f, -273f), true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1402f, _wgslsmith_f_op_f32(trunc(-1313f)), -466f, 812f))), _wgslsmith_clamp_i32(firstTrailingBit(reverseBits(-10422i) ^ func_2(vec2<f32>(-1173f, 1000f), vec4<bool>(true, false, false, false), vec3<f32>(336f, -981f, -631f))), i32(-1i) * -_wgslsmith_clamp_i32(u_input.c.x, -12709i, u_input.c.x), _wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, u_input.a, 0i, 2147483647i) | vec4<i32>(-2147483647i, -1i, u_input.a, u_input.a)), vec4<i32>(14341i, ~u_input.a, select(1i, u_input.a, true), -1i))), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-42305i, u_input.c.x), u_input.c) | u_input.c, Struct_1(_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_0, 1u, arg_0, 67590u), vec4<u32>(u_input.b, arg_0, u_input.b, arg_0), vec4<bool>(true, false, false, false)), firstLeadingBit(vec4<u32>(arg_0, u_input.b, 4294967295u, 19563u)))), true), firstLeadingBit(17452i));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a);
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), 1f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1469f)), var_0.a, !select(false, false, false) & true)) - _wgslsmith_f_op_f32(ceil(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<f32>(-144f, var_0.a, var_0.a, -579f)))), -1i, Struct_2(_wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(u_input.a, 0i)), Struct_1(vec4<u32>(108511u, var_0.b, var_0.b, 33650u)), all(vec2<bool>(false, true))), 0i).a)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 22u)];
    let var_1 = var_0.c;
    var var_2 = vec4<u32>(~var_0.b.a.x << (94870u % 32u), 20276u, 4294967295u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(30247u, ~var_0.b.a.x), u_input.b));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f - -2371f)))), _wgslsmith_f_op_f32(func_1(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_2.x, 4294967295u, 0u), var_0.b.a)))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1325f * _wgslsmith_f_op_f32(f32(-1f) * -661f)), -411f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_2.zww, _wgslsmith_sub_vec3_u32((var_0.b.a.xyw | var_2.zyy) | _wgslsmith_sub_vec3_u32(var_0.b.a.xzx, vec3<u32>(var_2.x, u_input.b, var_2.x)), ~(~var_2.zyz))), 189f);
}

