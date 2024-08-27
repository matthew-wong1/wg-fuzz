struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<bool>(false, true, false), 4294967295u, vec3<f32>(-1387f, 677f, -198f)), Struct_1(vec3<bool>(true, true, true), 4294967295u, vec3<f32>(-810f, -1000f, 927f)), Struct_1(vec3<bool>(false, false, false), 27092u, vec3<f32>(-2054f, -2397f, 447f)), Struct_1(vec3<bool>(false, false, true), 4294967295u, vec3<f32>(-1112f, -501f, 1000f)), Struct_1(vec3<bool>(true, true, true), 4294967295u, vec3<f32>(806f, -151f, -1801f)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<f32>(1075f, 387f, -1944f)), Struct_1(vec3<bool>(false, true, true), 1u, vec3<f32>(-446f, -270f, -358f)), Struct_1(vec3<bool>(true, true, true), 81848u, vec3<f32>(-624f, -1319f, -863f)), Struct_1(vec3<bool>(true, false, true), 41610u, vec3<f32>(-445f, 758f, -924f)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<f32>(680f, 1000f, 1000f)), Struct_1(vec3<bool>(false, false, true), 56314u, vec3<f32>(-425f, -152f, 1000f)), Struct_1(vec3<bool>(false, false, false), 28597u, vec3<f32>(-830f, -1000f, 773f)), Struct_1(vec3<bool>(true, true, true), 23037u, vec3<f32>(-432f, -1000f, 348f)), Struct_1(vec3<bool>(true, false, true), 86584u, vec3<f32>(-972f, -627f, -731f)), Struct_1(vec3<bool>(true, false, false), 44242u, vec3<f32>(-284f, 1007f, -300f)), Struct_1(vec3<bool>(false, false, false), 1u, vec3<f32>(1000f, -1144f, 752f)), Struct_1(vec3<bool>(true, false, true), 67179u, vec3<f32>(-649f, 965f, 1550f)), Struct_1(vec3<bool>(false, false, true), 4294967295u, vec3<f32>(-1202f, 366f, -1140f)), Struct_1(vec3<bool>(true, false, true), 44203u, vec3<f32>(1000f, 1271f, -1000f)), Struct_1(vec3<bool>(true, true, true), 0u, vec3<f32>(-994f, -164f, 552f)), Struct_1(vec3<bool>(true, false, false), 1u, vec3<f32>(-548f, -1315f, -488f)));

var<private> global1: i32 = -7881i;

var<private> global2: Struct_3 = Struct_3(true, vec2<i32>(1i, -1i), 0i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = arg_0.wyx;
    let var_1 = reverseBits(~(~(~u_input.c)));
    global0 = array<Struct_1, 21>();
    var var_2 = var_1.xz ^ u_input.c.xw;
    global0 = array<Struct_1, 21>();
    return select(select(select(select(!vec3<bool>(false, global2.a, false), vec3<bool>(false, false, global2.a), select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(true, global2.a, true), vec3<bool>(false, global2.a, global2.a))), select(!vec3<bool>(true, global2.a, global2.a), vec3<bool>(global2.a, true, true), !vec3<bool>(true, global2.a, false)), select(select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(false, false, false), vec3<bool>(global2.a, false, true)), !vec3<bool>(global2.a, true, true), vec3<bool>(global2.a, global2.a, false))), vec3<bool>(!global2.a, (u_input.c.x != var_1.x) | false, !(false || global2.a)), select(vec3<bool>(var_2.x != 4294967295u, false, global2.a), vec3<bool>(true, true, true), !(!vec3<bool>(true, global2.a, true)))), vec3<bool>(false && (countOneBits(-42649i) < u_input.a), global2.a, all(select(select(vec2<bool>(true, true), vec2<bool>(global2.a, true), true), !vec2<bool>(global2.a, false), any(vec4<bool>(false, false, global2.a, global2.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(610f + arg_1) - 479f))) < arg_1);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(!select(select(!vec3<bool>(global2.a, false, global2.a), !vec3<bool>(false, global2.a, false), global2.a), select(!vec3<bool>(global2.a, global2.a, global2.a), func_3(vec4<i32>(u_input.a, -2147483647i, u_input.b, 2147483647i), 1127f, vec4<i32>(u_input.b, 22651i, global2.c, 0i)), false), vec3<bool>(true, true, true)), select(82731u, 0u, !func_3(vec4<i32>(-42295i, -5043i, global2.b.x, 4942i), _wgslsmith_f_op_f32(-998f * 290f), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.b.x, u_input.b, -1i, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.b, -1i))).x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, _wgslsmith_f_op_f32(-1146f * -145f), _wgslsmith_f_op_f32(round(-693f)))));
    var var_1 = Struct_3(global2.a, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-41102i, global2.c), _wgslsmith_clamp_i32(2147483647i, u_input.b, global2.c)) << (1u % 32u), -abs(-725i)), 2147483647i);
    let var_2 = var_0;
    var var_3 = var_0.a.yz;
    var var_4 = 15422u | var_2.b;
    return Struct_3(global2.a || true, global2.b, _wgslsmith_add_i32(43830i, global2.c));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = abs(-8891i) >= u_input.b;
    global0 = array<Struct_1, 21>();
    var var_1 = func_2();
    var_1 = func_2();
    global0 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f) * _wgslsmith_f_op_f32(-1716f + _wgslsmith_f_op_f32(-643f + 1000f))))));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = vec2<f32>(arg_0.a, arg_0.a);
    global1 = 2147483647i;
    let var_1 = Struct_5(-191f, arg_0.b, u_input.c.xx);
    var var_2 = arg_0;
    global1 = firstLeadingBit(1i);
    return Struct_3(true & global2.a, vec2<i32>(global2.c << (14145u % 32u), u_input.a), 2147483647i | u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(max(0u, 1u)))), _wgslsmith_clamp_u32(u_input.c.x, 29958u, u_input.c.x) << (~(u_input.c.x | u_input.c.x) % 32u), ~u_input.c.yw));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(vec4<i32>(1303i, var_0.c, -24034i, -2147483647i), -vec4<i32>(global2.c, -38831i, var_0.b.x, u_input.b)) ^ abs(vec4<i32>(~u_input.b, var_0.c, _wgslsmith_sub_i32(u_input.b, u_input.a), 1i)), -var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1409f, 593f, -918f), vec3<f32>(1829f, -255f, -1417f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(927f, -289f, 464f))))), vec3<f32>(_wgslsmith_div_f32(-823f, -378f), -666f, -1246f)))), abs(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-1i, global2.b.x, u_input.b, u_input.a)), ~select(vec4<i32>(1i, u_input.b, var_0.c, global2.b.x), vec4<i32>(u_input.a, global2.b.x, 39111i, -1i), vec4<bool>(true, var_0.a, global2.a, global2.a)))), var_0.b);
}

