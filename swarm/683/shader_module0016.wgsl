struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i);

var<private> global1: array<i32, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<bool> {
    return vec3<bool>(true, !select(true, true, true) && true, true);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(arg_1.a, vec2<bool>(true, true));
    global0 = Struct_2(abs(0i));
    let var_1 = select(arg_2.xy, select(func_2(2833f, u_input.b, Struct_2(32809i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(292f, 1000f)))))).xz, !select(vec2<bool>(true, true), arg_1.b, true), var_0.b), var_0.b);
    var var_2 = Struct_1(!select(vec3<bool>(!var_0.b.x, var_1.x, true), !select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(arg_1.b.x, true, arg_2.x), vec3<bool>(false, true, arg_2.x)), select(!vec3<bool>(arg_1.b.x, arg_2.x, arg_2.x), !arg_2, false)), vec2<bool>(true, !arg_2.x));
    var var_3 = firstLeadingBit(min(4294967295u, ~arg_0.x));
    return Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.d.x, firstLeadingBit(u_input.d.x)), u_input.d.xy & _wgslsmith_sub_vec2_i32(vec2<i32>(-7002i, u_input.c.x), u_input.c.zy)), max(u_input.c.xx, u_input.d.xw)));
}

fn func_1() -> Struct_3 {
    var var_0 = true;
    global0 = func_3(_wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.b), (u_input.b << (1u % 32u)) & ~u_input.b, ~firstTrailingBit(5989u), ~u_input.a.x), ~(u_input.a & u_input.a)), Struct_1(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), func_2(848f, 21109u, Struct_2(99162i), vec2<f32>(2180f, 144f)), true), vec2<bool>(true, true)), select(vec3<bool>(false, select(true, true, true), select(all(vec4<bool>(true, false, true, false)), func_2(782f, u_input.a.x, Struct_2(-2147483647i), vec2<f32>(-1361f, -426f)).x, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, !select(true, true, true))));
    let var_1 = Struct_3(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    var var_2 = _wgslsmith_f_op_f32(1140f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-901f)) - -966f) * _wgslsmith_f_op_f32(f32(-1f) * -1090f)))));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-519f * -999f) - 220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f - -861f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1395f * _wgslsmith_f_op_f32(abs(-257f)))))));
    return var_1;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global0 = Struct_2(global1[_wgslsmith_index_u32(1u, 15u)]);
    var var_0 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, !arg_0.a.x, arg_0.a.x), func_1().a.x), !func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), 1190f), 1u, func_3(~vec4<u32>(88572u, u_input.b, u_input.a.x, 0u), Struct_1(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec2<bool>(false, true)), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -277f))))).zz);
    let var_1 = func_1();
    let var_2 = Struct_1(arg_0.a, select(vec2<bool>(var_1.a.x, !all(var_1.a.xz)), select(select(var_1.a.xz, !var_1.a.zx, vec2<bool>(arg_0.a.x, true)), vec2<bool>(u_input.b > u_input.a.x, true), any(var_1.a)), func_1().a.yz));
    global0 = Struct_2(-(-17370i >> (u_input.b % 32u)));
    return func_3(~(~vec4<u32>(4294967295u, ~4294967295u, _wgslsmith_mult_u32(1u, 0u), firstTrailingBit(u_input.a.x))), var_2, !(!vec3<bool>(false, !var_0.a.x, var_1.a.x | false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(9773i);
    let var_0 = firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, ~abs(global1[_wgslsmith_index_u32(89801u, 15u)])), -1i, 22056i));
    let var_1 = all(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true))));
    global1 = array<i32, 15>();
    global0 = func_4(func_1());
    global1 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1507f - 229f) - 750f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(128f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1367f))))), ~(vec4<i32>(-var_0, global1[_wgslsmith_index_u32(u_input.a.x, 15u)] << (u_input.a.x % 32u), -17801i, -var_0) >> (vec4<u32>(u_input.a.x | 0u, ~7739u, u_input.a.x >> (u_input.a.x % 32u), u_input.a.x) % vec4<u32>(32u))));
}

