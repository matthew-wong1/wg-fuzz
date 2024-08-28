struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(15537i, 16311i), vec2<i32>(16634i, -1i), vec2<i32>(-18587i, -1i), vec2<i32>(48454i, 1i), vec2<i32>(i32(-2147483648), 15345i), vec2<i32>(1i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-37937i, 36782i), vec2<i32>(6295i, i32(-2147483648)), vec2<i32>(-2528i, i32(-2147483648)), vec2<i32>(2147483647i, 13634i), vec2<i32>(-50299i, 40022i), vec2<i32>(1i, 21052i), vec2<i32>(1i, -19896i), vec2<i32>(-650i, 1i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(-865f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2134f, -398f)) - -499f), _wgslsmith_div_f32(-182f, 346f), all(!arg_0.b.xz))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1150f * -666f)))));
    let var_2 = arg_3.c;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -444f), -264f)))));
    global1 = array<vec2<i32>, 15>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~arg_2.wzz & ~(~arg_2.xzx), vec3<u32>(max(9106u, _wgslsmith_clamp_u32(arg_1.c, arg_1.c, 0u)), _wgslsmith_dot_vec3_u32(countOneBits(u_input.c.xxy), vec3<u32>(arg_1.c, 1u, arg_2.x)), min(arg_1.c, u_input.c.x)), u_input.c.ywx), ~min(arg_2.wzz, ~vec3<u32>(arg_2.x, arg_1.c, 4294967295u) & arg_2.xyx));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5) -> bool {
    global0 = array<Struct_4, 21>();
    global0 = array<Struct_4, 21>();
    let var_0 = ~abs(~u_input.c.x);
    global1 = array<vec2<i32>, 15>();
    global0 = array<Struct_4, 21>();
    return arg_2.b != !all(!vec4<bool>(false, arg_0.a, arg_1.b.x, false));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = Struct_5(vec3<bool>(all(select(var_0.b, vec4<bool>(arg_2.b.x, var_0.b.x, true, var_0.b.x), select(var_0.b, vec4<bool>(false, arg_0.b, arg_0.b, arg_0.a.b.x), vec4<bool>(true, var_0.b.x, true, true)))), all(select(vec2<bool>(true, arg_0.b), select(arg_2.b.yz, arg_0.c.b.yz, vec2<bool>(arg_2.b.x, false)), vec2<bool>(arg_2.b.x, false))), arg_1.c.b.x), func_4(Struct_1(arg_0.c.b.x, arg_1.a.b.yw, func_3(var_0, Struct_1(false, arg_2.b.wz, 46465u), vec4<u32>(3515u, u_input.c.x, 4294967295u, 1u), arg_0)), Struct_1(true, vec2<bool>(var_0.b.x, false), firstTrailingBit(4294967295u)), Struct_5(!arg_1.c.b.wyz, 4894i <= arg_0.a.a.x, arg_0.a.b)) || true, arg_2.b);
    let var_2 = ~43841u;
    global1 = array<vec2<i32>, 15>();
    global0 = array<Struct_4, 21>();
    return _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f + -487f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-966f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(arg_0.yyw, vec4<bool>(true, false, true, true)), false, Struct_2(vec3<i32>(2147483647i, arg_0.x, -14903i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(u_input.a.wyz, vec4<bool>(false, true, false, false)), false, Struct_2(arg_0.wxw, vec4<bool>(true, false, false, true))), Struct_2(u_input.a.yyx, vec4<bool>(false, false, false, false)))))))));
    let var_1 = -1657f;
    var var_2 = vec2<i32>(u_input.d, -1i);
    global0 = array<Struct_4, 21>();
    global1 = array<vec2<i32>, 15>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_1(vec4<i32>(1i, -58007i, -27676i, u_input.d), min(u_input.d >> (4294967295u % 32u), countOneBits(u_input.a.x))), -1407i, -13997i & -_wgslsmith_sub_i32(58759i, u_input.a.x), ((u_input.a.x | 8722i) | u_input.a.x) >> (16167u % 32u)), select(u_input.a, abs(abs(vec4<i32>(1i, u_input.d, u_input.a.x, u_input.a.x))), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer((abs(u_input.c << (u_input.c % vec4<u32>(32u))) << (vec4<u32>(69180u, ~u_input.c.x, 28433u, min(u_input.c.x, 4294967295u)) % vec4<u32>(32u))) << ((vec4<u32>(30358u, var_0, u_input.b, var_0) | abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 73552u, var_0, u_input.c.x), vec4<u32>(4294967295u, var_0, var_0, u_input.b)))) % vec4<u32>(32u)), vec2<u32>(~max(17072u, var_0) << (1875u % 32u), 1u), var_1.x, -var_1.wyz, max(~(~func_3(Struct_2(var_1.yxy, vec4<bool>(false, false, true, true)), Struct_1(false, vec2<bool>(true, true), 20177u), vec4<u32>(4294967295u, u_input.c.x, u_input.b, var_0), Struct_3(Struct_2(var_1.xzz, vec4<bool>(true, true, false, false)), true, Struct_2(var_1.yzy, vec4<bool>(true, true, true, true))))), _wgslsmith_dot_vec2_u32(u_input.c.wz, ~vec2<u32>(u_input.b, u_input.c.x) | vec2<u32>(10036u, u_input.c.x))));
}

