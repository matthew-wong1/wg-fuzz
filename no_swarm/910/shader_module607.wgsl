struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    global0 = array<vec3<f32>, 12>();
    var var_0 = arg_0.a;
    var_0 = Struct_1(arg_0.a.a, _wgslsmith_add_i32(var_0.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.x, arg_1.x, arg_0.a.b, arg_0.a.b), firstTrailingBit(arg_1))), arg_0.a.c, -47005i, vec4<bool>(max(1002i ^ arg_0.a.b, -7016i) >= -countOneBits(arg_0.a.d), false, !any(arg_0.a.e), arg_0.a.e.x | true));
    let var_1 = arg_0;
    var_0 = Struct_1(vec3<u32>(~abs(reverseBits(1u)), 4294967295u, ~abs(~arg_0.a.a.x)), -1i, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.c.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.a.c * vec2<f32>(1427f, -292f))))), ~_wgslsmith_clamp_i32(~(-2147483647i), -arg_0.a.b, arg_1.x) >> (abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.a.x, 4294967295u), vec4<u32>(0u, 34505u, arg_2.a.a.x, 4294967295u)))) % 32u), var_1.a.e);
    return false;
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(28271u, 26022u ^ u_input.a, reverseBits(u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(u_input.a, 57862u, u_input.a) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a, 1u))), ~firstTrailingBit(i32(-1i) * -15741i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-2079f, 772f), -771f)), -2147483647i, select(vec4<bool>(select(false, false, false), func_3(Struct_3(Struct_1(vec3<u32>(47886u, u_input.a, u_input.a), -1i, vec2<f32>(1211f, 1000f), -37905i, vec4<bool>(true, false, true, true)), true), vec4<i32>(0i, -1i, 1i, 2147483647i), Struct_3(Struct_1(vec3<u32>(428u, u_input.a, u_input.a), 0i, vec2<f32>(460f, 446f), -23376i, vec4<bool>(true, true, true, true)), true)), true, all(vec4<bool>(false, true, true, true))), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec3<bool>(true, true, false)), true), true)), all(vec3<bool>(true, !all(vec3<bool>(true, false, true)), true)));
    global0 = array<vec3<f32>, 12>();
    return vec2<i32>(-abs(abs(13591i)), var_0.a.b);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = array<vec3<f32>, 12>();
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x << (9686u % 32u), -arg_0.b.x, arg_0.c.x), arg_0.a ^ vec3<i32>(15404i, 14909i, -25854i)), max(~vec3<i32>(1i, 1i, arg_0.a.x), -(vec3<i32>(0i, -8422i, arg_0.c.x) ^ vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))));
    let var_1 = select(select(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(vec2<bool>(u_input.a <= u_input.a, arg_0.c.x != arg_0.c.x), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), all(vec4<bool>(arg_0.b.x == arg_0.a.x, u_input.a == u_input.a, true, true))), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false), (0u < u_input.a) || true), vec2<bool>(true, true)));
    var var_2 = arg_0.b.x;
    let var_3 = arg_0.c;
    return Struct_3(Struct_1(abs(min(select(vec3<u32>(60461u, 4294967295u, 0u), vec3<u32>(10351u, 4294967295u, 11805u), false), ~vec3<u32>(u_input.a, u_input.a, 36526u))), firstLeadingBit(var_3.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, 261f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1297f, -1000f))))), -2147483647i, !vec4<bool>(var_1.x && var_1.x, false, true, true)), true);
}

fn func_1() -> i32 {
    global0 = array<vec3<f32>, 12>();
    var var_0 = func_4(Struct_2(~(-vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec2_i32(func_2(), _wgslsmith_clamp_vec2_i32(vec2<i32>(-22389i, -2147483647i), max(vec2<i32>(1i, -70780i), vec2<i32>(-1454i, 25005i)), firstTrailingBit(vec2<i32>(0i, -1i))), vec2<i32>(-22322i, 1i)), vec3<i32>(1i, 1i, 1i)));
    var var_1 = func_4(Struct_2(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.b, 4869i, var_0.a.d), select(vec3<i32>(2147483647i, var_0.a.d, -35922i), vec3<i32>(1i, var_0.a.d, var_0.a.b), vec3<bool>(true, var_0.a.e.x, false))), firstTrailingBit(abs(vec2<i32>(var_0.a.b, var_0.a.b))), -select(~vec3<i32>(var_0.a.d, var_0.a.d, -2147483647i), vec3<i32>(var_0.a.d, var_0.a.d, var_0.a.d), vec3<bool>(false, false, false))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c.x), -214f), -1141f, var_0.a.c.x);
    var var_3 = select(var_1.a.e.wy, vec2<bool>(var_0.b, !all(vec3<bool>(true, false, var_0.b))), vec2<bool>(!var_0.a.e.x, false));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(41492i, 9163i), vec2<i32>(1i, func_1())), ~(~countOneBits(vec3<i32>(2147483647i, 0i, 4423i))));
    global0 = array<vec3<f32>, 12>();
    var_0 = Struct_2(vec3<i32>(var_0.a.x, var_0.b.x, ~57128i), var_0.c.zx, -var_0.a);
    var var_1 = select(!(!(!func_4(Struct_2(var_0.c, vec2<i32>(31872i, 0i), var_0.c)).a.e)), select(!func_4(Struct_2(vec3<i32>(var_0.b.x, var_0.b.x, var_0.c.x), vec2<i32>(40641i, -21434i), var_0.c)).a.e, select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, func_3(Struct_3(Struct_1(vec3<u32>(22700u, 29751u, 1u), var_0.c.x, vec2<f32>(1311f, 564f), -2147483647i, vec4<bool>(true, false, true, true)), true), vec4<i32>(85846i, -1i, var_0.a.x, var_0.a.x), Struct_3(Struct_1(vec3<u32>(0u, u_input.a, 1u), var_0.b.x, vec2<f32>(-1322f, -308f), -19395i, vec4<bool>(false, true, true, true)), true)), true), any(func_4(Struct_2(vec3<i32>(-1i, var_0.c.x, -2147483647i), var_0.c.xx, var_0.a)).a.e)), true), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, false)), func_4(Struct_2(var_0.c, var_0.c.yy, var_0.a)).a.e, false));
    var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, !all(vec3<bool>(false, true, true)), select(var_1.x, var_1.x, true), func_3(func_4(Struct_2(vec3<i32>(0i, var_0.c.x, 2147483647i), var_0.b, vec3<i32>(2147483647i, 2147483647i, 0i))), ~vec4<i32>(0i, -2147483647i, -1i, 17994i), Struct_3(Struct_1(vec3<u32>(u_input.a, u_input.a, 0u), var_0.c.x, vec2<f32>(-1576f, 559f), var_0.c.x, vec4<bool>(false, false, var_1.x, true)), var_1.x))), true);
    let var_2 = Struct_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.a.x, 2573i, 19690i) >> (~vec3<u32>(u_input.a, 4294967295u, 63935u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(~max(var_0.c, var_0.c), var_0.a, vec3<i32>(func_4(Struct_2(var_0.a, var_0.c.yz, vec3<i32>(var_0.c.x, var_0.c.x, 0i))).a.b, 27921i, 50898i))), var_0.a.xz, select(vec3<i32>(_wgslsmith_add_i32(~2659i, firstTrailingBit(0i)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 2147483647i, -1i), var_0.c)), var_0.a & ~abs(var_0.a), vec3<bool>(true, var_1.x, func_4(Struct_2(vec3<i32>(2147483647i, var_0.a.x, var_0.a.x), var_0.b, var_0.a)).a.e.x)));
    var var_3 = func_4(Struct_2(var_2.a & ~max(vec3<i32>(var_0.b.x, -69466i, var_2.c.x), var_2.a), min(vec2<i32>(firstTrailingBit(-1i), var_0.b.x), select(var_2.a.xz << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), ~var_2.c.zx, all(vec4<bool>(false, true, var_1.x, true)))), -vec3<i32>(var_2.a.x, -var_2.c.x, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(max(~var_0.c, -vec3<i32>(var_0.c.x, 28760i, var_3.a.d)), var_0.a) >> (~vec3<u32>(u_input.a, max(u_input.a, 15114u), ~20590u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.c, var_2.a, vec3<i32>(var_2.b.x, var_3.a.d, var_3.a.d)), _wgslsmith_mult_vec3_i32(var_0.a, var_0.a)) & -(~2147483647i), -37293i, func_2().x), var_3.a.a.x, -vec4<i32>(abs(i32(-1i) * -83756i), var_2.b.x, -1528i, ~reverseBits(-25509i)), abs(vec2<i32>(_wgslsmith_sub_i32(7432i, 5762i), ~var_3.a.b)));
}

