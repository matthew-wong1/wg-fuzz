struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<vec4<bool>, 6>();
    let var_0 = 2147483647i;
    global0 = array<vec4<bool>, 6>();
    var var_1 = Struct_2(Struct_1(22536u, reverseBits(48061u)), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(2147483647i, var_0)), u_input.a), Struct_1(~0u, 0u));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -389f);
    return var_1.a.b;
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = array<vec4<bool>, 6>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0 | func_3(), 6u)];
    var_0 = vec4<bool>(false, var_0.x, true, any(select(vec2<bool>(true, true), !select(vec2<bool>(true, var_0.x), var_0.zx, var_0.ww), any(select(global0[_wgslsmith_index_u32(arg_0, 6u)], vec4<bool>(true, true, var_0.x, var_0.x), true)))));
    var var_1 = Struct_2(Struct_1(~arg_0, 21750u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(13004i, u_input.a)), vec2<i32>(~u_input.a, 1i)), min(u_input.a, -50646i)), Struct_1(min(arg_0, arg_0), ~arg_0));
    var var_2 = countOneBits(~vec2<u32>(var_1.a.b, ~1u));
    return Struct_2(var_1.a, abs(-36966i), Struct_1(77913u, arg_0));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<u32> {
    global0 = array<vec4<bool>, 6>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 464f)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(36941u, arg_1.a.c.a, arg_1.a.a.b), vec3<u32>(arg_1.a.a.a, arg_1.a.a.b, arg_1.a.a.a), vec3<bool>(false, false, var_1.b)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.a.a, arg_3.c.a, var_1.a.c.a), vec3<u32>(var_1.c.a.b, arg_1.a.c.b, 4294967295u)))), vec3<u32>(~_wgslsmith_div_u32(arg_1.c.c.a, arg_3.c.b), arg_3.c.b, arg_1.a.a.a) | vec3<u32>(abs(arg_3.a.b) & 51402u, ~4294967295u, ~arg_3.a.b));
    var var_3 = _wgslsmith_f_op_f32(-arg_2.x);
    return min(var_2.xx, vec2<u32>(_wgslsmith_mod_u32(var_2.x, ~_wgslsmith_mult_u32(arg_3.c.a, arg_3.c.b)), 1u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~arg_0.a, abs(arg_0.a), max(arg_0.a, ~(~arg_0.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1201f, _wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1873f)), _wgslsmith_f_op_f32(866f + 137f))))));
    let var_2 = true;
    var var_3 = select(_wgslsmith_div_vec2_u32(~max(vec2<u32>(39280u, 1u), ~vec2<u32>(57268u, var_0)), func_4(var_2, Struct_3(Struct_2(arg_0, u_input.a, arg_0), var_2 | var_2, Struct_2(Struct_1(0u, var_0), 52268i, Struct_1(1u, var_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx), vec2<f32>(232f, var_1.x)), func_2(1u))), select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_0, 22508u), ~vec4<u32>(var_0, 1u, 22398u, var_0)), _wgslsmith_div_u32(~var_0, 1u)), vec2<u32>(arg_0.b, func_2(func_4(var_2, Struct_3(Struct_2(Struct_1(var_0, arg_0.b), u_input.a, arg_0), true, Struct_2(arg_0, u_input.a, Struct_1(arg_0.b, 44649u))), var_1.xz, Struct_2(Struct_1(37558u, 36766u), -2147483647i, Struct_1(0u, 4294967295u))).x).c.a), select(vec2<bool>(false, true), vec2<bool>(var_1.x > 1208f, true), false)), !any(global0[_wgslsmith_index_u32(~0u, 6u)]));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1140f, var_1.x, -1908f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 534f, -1239f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(459f, -631f, var_1.x), vec3<f32>(-1378f, -494f, -1360f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(-var_1.x)))));
    return func_2(~(var_0 | 80286u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 6>();
    var var_0 = Struct_2(func_1(Struct_1(reverseBits(4294967295u) >> (min(1u, 0u) % 32u), ~(~604u))), u_input.a, func_2(1u).a);
    var var_1 = var_0.a.b;
    global0 = array<vec4<bool>, 6>();
    let var_2 = Struct_2(func_1(Struct_1(1u, _wgslsmith_mult_u32(var_0.c.b, _wgslsmith_add_u32(var_0.c.b, var_0.c.b)))), -abs(u_input.a), func_1(func_2(~var_0.c.a).c));
    var_1 = ~var_0.a.a;
    var var_3 = Struct_3(var_2, false, Struct_2(Struct_1(func_1(var_2.c).b, var_2.c.b), ~(-5850i), func_1(var_0.c)));
    var_1 = var_0.c.a;
    var_3 = Struct_3(func_2(var_2.c.b), !(any(vec3<bool>(var_3.b, var_3.b, var_3.b)) == true), Struct_2(var_0.c, (select(-1i, -31040i, false) >> (~35630u % 32u)) | 1i, Struct_1(42697u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(64336u, var_2.a.b, var_0.a.b, var_0.c.b), vec4<u32>(53339u, var_0.a.a, var_3.c.c.b, 2797u), vec4<u32>(var_2.c.a, var_0.a.b, 34466u, 1u)), ~vec4<u32>(0u, 21172u, 17127u, var_3.c.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-397f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f))), vec2<u32>(10253u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_2.a.b), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.a.a.a, 16608u), vec2<u32>(4294967295u, 26020u)), vec2<u32>(4294967295u, var_3.a.c.b)), vec2<u32>(var_0.a.b, var_3.a.c.b ^ 37992u))), vec4<i32>(-(~(-1597i)), u_input.a, var_2.b, -var_2.b), vec3<i32>(countOneBits(12061i & ~var_3.a.b), ~(-2147483647i), u_input.a));
}

