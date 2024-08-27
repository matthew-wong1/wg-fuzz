struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -1i, -721i), vec2<bool>(false, true), true, true), Struct_1(vec2<bool>(true, false), vec3<i32>(24103i, 2147483647i, 2147483647i), vec2<bool>(false, false), true, true), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 2147483647i, 9610i), vec2<bool>(true, false), true, true), Struct_1(vec2<bool>(true, false), vec3<i32>(44455i, 16192i, -36645i), vec2<bool>(true, true), false, true), Struct_1(vec2<bool>(false, false), vec3<i32>(-3255i, -284i, i32(-2147483648)), vec2<bool>(true, false), false, true), Struct_1(vec2<bool>(false, true), vec3<i32>(15765i, 0i, 12960i), vec2<bool>(false, true), true, false), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 26136i, 2147483647i), vec2<bool>(false, true), false, false), Struct_1(vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 25049i, 42023i), vec2<bool>(true, false), true, false), Struct_1(vec2<bool>(true, true), vec3<i32>(1i, i32(-2147483648), 1i), vec2<bool>(false, true), true, false), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -13143i, 1i), vec2<bool>(true, true), true, false), Struct_1(vec2<bool>(false, true), vec3<i32>(1i, 1i, -29293i), vec2<bool>(true, true), true, false), Struct_1(vec2<bool>(true, false), vec3<i32>(-56854i, 0i, 2147483647i), vec2<bool>(false, false), true, false), Struct_1(vec2<bool>(false, true), vec3<i32>(35415i, 0i, 1i), vec2<bool>(true, true), false, true), Struct_1(vec2<bool>(true, true), vec3<i32>(-43564i, 1i, -35172i), vec2<bool>(false, true), false, false), Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 0i, -49077i), vec2<bool>(false, false), false, false), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, 15901i, 63284i), vec2<bool>(true, false), false, true), Struct_1(vec2<bool>(true, true), vec3<i32>(75708i, -58274i, -9975i), vec2<bool>(true, true), false, true), Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, 2147483647i, 28048i), vec2<bool>(false, false), false, true), Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, i32(-2147483648), 49181i), vec2<bool>(true, true), true, false), Struct_1(vec2<bool>(false, false), vec3<i32>(-71706i, 448i, 72479i), vec2<bool>(false, false), false, false), Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec2<bool>(false, false), true, true), Struct_1(vec2<bool>(false, false), vec3<i32>(-11993i, 76773i, -36466i), vec2<bool>(true, false), false, false), Struct_1(vec2<bool>(true, true), vec3<i32>(0i, 70321i, 2147483647i), vec2<bool>(false, false), false, true), Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 1i, 0i), vec2<bool>(true, false), true, true), Struct_1(vec2<bool>(false, true), vec3<i32>(-17504i, 53699i, -1i), vec2<bool>(false, false), true, true), Struct_1(vec2<bool>(true, true), vec3<i32>(5399i, i32(-2147483648), -8848i), vec2<bool>(false, false), true, false), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, 37021i, 0i), vec2<bool>(true, true), true, false), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -1i, -14596i), vec2<bool>(true, false), false, true));

var<private> global1: array<vec2<i32>, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = 0i;
    global1 = array<vec2<i32>, 14>();
    var var_1 = vec4<bool>(false, true, false, true);
    global1 = array<vec2<i32>, 14>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1124f, 987f, -724f, -275f), vec4<f32>(1345f, 244f, 1000f, -467f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1599f, -457f, -1000f, 323f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -915f) * _wgslsmith_f_op_f32(abs(362f)))), 191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(551f, 1090f, true)))), -206f));
    return select(!(!vec4<bool>(!var_1.x, any(var_1.wx), any(var_1.yw), var_1.x)), select(select(vec4<bool>(true, true, var_1.x, true), !vec4<bool>(var_1.x, true, var_1.x, false), all(var_1.xxx)), select(select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x)), vec4<bool>(false, true, var_1.x, var_1.x), false), !select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x)), !select(select(vec4<bool>(true, true, var_1.x, false), !vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, true | var_1.x, var_1.x, true), var_1.x));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(arg_0, 0i)), _wgslsmith_sub_i32(arg_0, -10895i));
    var_0 = false;
    let var_2 = ~arg_1.yz;
    global0 = array<Struct_1, 28>();
    return Struct_1(select(vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false)), any(vec2<bool>(true, true))), true), vec3<i32>(-2147483647i, arg_0, ~(~arg_0)) & -(-vec3<i32>(1i, arg_0, 1i) << ((arg_1.zxw >> (arg_1.wyy % vec3<u32>(32u))) % vec3<u32>(32u))), !vec2<bool>(any(vec2<bool>(true, true)) || true, true), all(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))), all(func_3()));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 28>();
    let var_0 = func_2(_wgslsmith_sub_i32(3911i, _wgslsmith_add_i32(37180i, -2147483647i)), firstTrailingBit(select(vec4<u32>(33866u, ~4294967295u, ~76176u, 48846u), vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_1.x, 67059u), ~arg_1.x, arg_1.x), arg_3.c.x | (arg_1.x >= arg_1.x))));
    global1 = array<vec2<i32>, 14>();
    let var_1 = Struct_1(select(func_3().xy, select(select(vec2<bool>(arg_3.a.x, false), !arg_3.c, all(vec4<bool>(var_0.a.x, false, var_0.d, var_0.d))), func_3().zz, select(vec2<bool>(var_0.c.x, true), arg_3.c, select(vec2<bool>(var_0.a.x, false), vec2<bool>(true, false), false))), func_2(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, -1581i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -37145i), global1[_wgslsmith_index_u32(arg_1.x, 14u)])), vec4<u32>(~1u, ~37650u, _wgslsmith_mult_u32(arg_1.x, arg_1.x), ~arg_1.x)).c), -vec3<i32>(~arg_3.b.x << (8501u % 32u), -4249i, 1i), var_0.c, _wgslsmith_f_op_f32(select(-1000f, 905f, !all(vec4<bool>(false, var_0.d, var_0.c.x, arg_3.d)))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1635f))))), any(select(!func_3(), !select(vec4<bool>(false, var_0.a.x, true, arg_3.d), vec4<bool>(false, var_0.e, arg_3.d, false), vec4<bool>(false, false, true, arg_3.d)), vec4<bool>(!var_0.a.x, true & arg_3.d, var_0.a.x, all(vec4<bool>(arg_3.c.x, arg_3.c.x, var_0.e, arg_3.d))))));
    var var_2 = global0[_wgslsmith_index_u32(arg_1.x, 28u)];
    return -1024f;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> StorageBuffer {
    global0 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_clamp_u32(countOneBits(1u), ~(~4294967295u), reverseBits(40616u));
    var var_1 = ~(vec2<u32>(var_0, var_0) ^ vec2<u32>(~var_0, var_0 ^ 29234u)) | ~vec2<u32>(71079u, _wgslsmith_mod_u32(~var_0, ~7463u));
    var_1 = vec2<u32>(664u, 1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_div_vec2_f32(arg_1, arg_1), vec2<bool>(true, true)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(arg_1)), ~22978u, _wgslsmith_f_op_vec2_f32(-arg_1), firstLeadingBit(~(~vec4<u32>(13901u, 40723u, 4294967295u, var_1.x))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 14>();
    global1 = array<vec2<i32>, 14>();
    global0 = array<Struct_1, 28>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-440f))) >= 859f, var_0.c.x, var_0.a.x);
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = func_4(u_input.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-148f)) * _wgslsmith_f_op_f32(f32(-1f) * -111f)), -752f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, _wgslsmith_f_op_f32(-622f - 982f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b, var_0.b.x, -23576i, u_input.b), vec2<u32>(0u, 0u), var_0.b.x, Struct_1(vec2<bool>(true, var_0.d), vec3<i32>(var_0.b.x, var_0.b.x, u_input.b), vec2<bool>(var_0.d, false), true, var_1.x)))))));
}

