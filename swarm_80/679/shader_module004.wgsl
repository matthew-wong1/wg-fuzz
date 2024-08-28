struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<u32>(13514u, 45282u, 145308u), vec3<i32>(20188i, -1969i, -52432i), Struct_1(true)), Struct_3(vec3<u32>(4294967295u, 46149u, 4294967295u), vec3<i32>(-9806i, 0i, -55427i), Struct_1(false)), Struct_3(vec3<u32>(37722u, 53526u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), -38386i), Struct_1(false)), Struct_3(vec3<u32>(4294967295u, 7210u, 0u), vec3<i32>(29648i, 9349i, -45513i), Struct_1(false)), Struct_3(vec3<u32>(23786u, 0u, 4294967295u), vec3<i32>(20974i, 2147483647i, 1i), Struct_1(true)), Struct_3(vec3<u32>(42441u, 83333u, 12167u), vec3<i32>(24551i, 2147483647i, -1i), Struct_1(false)), Struct_3(vec3<u32>(62456u, 4294967295u, 1u), vec3<i32>(528i, 39256i, 7493i), Struct_1(true)), Struct_3(vec3<u32>(44597u, 6363u, 4294967295u), vec3<i32>(-19176i, 0i, 1i), Struct_1(true)), Struct_3(vec3<u32>(38470u, 4122u, 9009u), vec3<i32>(0i, -2775i, -57255i), Struct_1(false)), Struct_3(vec3<u32>(0u, 105981u, 90950u), vec3<i32>(-48253i, -39991i, -64419i), Struct_1(true)), Struct_3(vec3<u32>(0u, 4294967295u, 35781u), vec3<i32>(0i, 27639i, 1i), Struct_1(false)), Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(-20031i, -36327i, -1i), Struct_1(true)), Struct_3(vec3<u32>(14156u, 12415u, 4294967295u), vec3<i32>(33397i, 2147483647i, 0i), Struct_1(true)), Struct_3(vec3<u32>(1u, 0u, 75322u), vec3<i32>(10859i, 1i, -40935i), Struct_1(true)), Struct_3(vec3<u32>(1u, 77268u, 0u), vec3<i32>(1i, -1065i, -1i), Struct_1(false)), Struct_3(vec3<u32>(4294967295u, 0u, 3578u), vec3<i32>(18911i, -1i, 21847i), Struct_1(false)), Struct_3(vec3<u32>(0u, 1u, 62847u), vec3<i32>(1i, 27963i, i32(-2147483648)), Struct_1(true)));

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, false, false, true), Struct_1(false), 90782i, Struct_1(false));

var<private> global2: Struct_2;

var<private> global3: vec3<u32> = vec3<u32>(0u, 41955u, 0u);

var<private> global4: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-652f, -348f), vec2<f32>(-1956f, -912f), vec2<f32>(1000f, -1295f), vec2<f32>(189f, 1000f), vec2<f32>(-2169f, 807f), vec2<f32>(1163f, -988f), vec2<f32>(-201f, -534f), vec2<f32>(511f, 344f), vec2<f32>(1078f, 810f), vec2<f32>(-1000f, 260f), vec2<f32>(-2117f, 607f), vec2<f32>(687f, -985f), vec2<f32>(1036f, 1460f), vec2<f32>(-1000f, 2017f), vec2<f32>(-357f, 526f), vec2<f32>(856f, 2145f), vec2<f32>(1219f, -1590f), vec2<f32>(164f, 1000f), vec2<f32>(476f, 884f), vec2<f32>(231f, 602f), vec2<f32>(1545f, -536f), vec2<f32>(1013f, 1000f), vec2<f32>(570f, 1250f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global3 = vec3<u32>(75568u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(42021u, global3.x, global3.x)), min(vec3<u32>(firstLeadingBit(123333u), global3.x, 1u), ~vec3<u32>(52520u, global3.x, global3.x))), global3.x);
    global4 = array<vec2<f32>, 23>();
    let var_0 = global1.b;
    global4 = array<vec2<f32>, 23>();
    global1 = Struct_2(global1.a, Struct_1(false), -36558i, global1.b);
    return !(all(global1.a.wy) | !(var_0.a || true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = Struct_2(select(global1.a, vec4<bool>(func_3(), !(!global1.d.a), arg_1.c.a, select(any(global2.a.xz), global1.b.a, true)), vec4<bool>(false, !arg_0.c.a, !(46204u <= global3.x), !all(global2.a.yzz))), Struct_1(global1.d.a), u_input.c.x, Struct_1(false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1444f * -1196f)))), 1180f)));
    global4 = array<vec2<f32>, 23>();
    let var_2 = ~max(vec4<i32>(-1i) * -(u_input.c ^ u_input.c), -max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, 0i, -38922i, u_input.a.x), u_input.c), vec4<i32>(-2147483647i, global2.c, arg_0.b.x, 0i)));
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(sign(global4[_wgslsmith_index_u32(arg_1.a.x, 23u)]));
}

fn func_4(arg_0: vec2<f32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(global3.x, 17u)];
    var var_1 = global0[_wgslsmith_index_u32(81698u, 17u)];
    var var_2 = true;
    var_2 = arg_0.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, 770f)), arg_0.x, true)) * arg_0.x), _wgslsmith_f_op_f32(-836f + _wgslsmith_f_op_f32(round(630f))));
    global4 = array<vec2<f32>, 23>();
    return var_1.b.x;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), 1489f);
    var var_1 = var_0.x;
    global3 = firstLeadingBit(vec3<u32>(~global3.x, 54093u, global3.x));
    let var_2 = global1.a.x;
    var var_3 = -1081f;
    return reverseBits(-func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, var_0.x)), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec3<u32>(global3.x, 4294967295u, 1u), u_input.a, global2.b), Struct_3(vec3<u32>(4006u, 0u, 3059u), u_input.a, arg_0))), true & arg_0.a))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    global4 = array<vec2<f32>, 23>();
    let var_0 = -(~abs(abs(arg_0.wx)) << (~(~(vec2<u32>(global3.x, 9220u) | global3.xz)) % vec2<u32>(32u)));
    var var_1 = -1742f;
    global2 = Struct_2(select(vec4<bool>((global2.c < arg_0.x) || !global1.d.a, false, all(vec3<bool>(false, true, arg_1.b.a)), _wgslsmith_f_op_f32(ceil(291f)) >= _wgslsmith_f_op_f32(trunc(189f))), vec4<bool>(true, true, global2.b.a, all(vec4<bool>(true, global1.b.a, false, false))), true), Struct_1(global2.d.a), _wgslsmith_mod_i32(min(var_0.x, _wgslsmith_dot_vec2_i32(-arg_0.zx, var_0)), _wgslsmith_mod_i32(u_input.a.x, global1.c | 26998i) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(global3.x, 4294967295u), _wgslsmith_div_u32(global3.x, global3.x)) % 32u)), Struct_1(func_3()));
    var var_2 = 44721u;
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xw;
    global4 = array<vec2<f32>, 23>();
    var var_1 = func_5(_wgslsmith_div_vec4_i32(-u_input.c, vec4<i32>(_wgslsmith_clamp_i32(u_input.b ^ global1.c, func_1(Struct_1(true)), -8801i), global2.c, -(~u_input.c.x), ~30058i)), Struct_2(!select(vec4<bool>(true, global1.d.a, true, false), vec4<bool>(true, global1.a.x, false, true), select(vec4<bool>(true, global2.b.a, global2.d.a, true), vec4<bool>(global2.b.a, global1.b.a, true, false), vec4<bool>(false, false, global2.b.a, false))), global2.d, -1i, global1.b));
    let var_2 = global1.a;
    let var_3 = any(!vec4<bool>(any(vec4<bool>(true, true, global1.a.x, true)), var_1.a, false, global1.a.x)) & !(!var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec2_i32(u_input.a.zx, ~vec2<i32>(-28651i, global1.c), firstTrailingBit(vec2<i32>(global2.c, 0i))) >> (select(vec2<u32>(4294967295u, min(global3.x, global3.x)), ~(~vec2<u32>(31333u, global3.x)), vec2<bool>(!global2.b.a, false != var_2.x)) % vec2<u32>(32u)));
}

