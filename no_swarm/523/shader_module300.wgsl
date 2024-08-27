struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -1i, -8019i);

var<private> global1: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(675f, -2248f, 817f), vec3<f32>(1092f, -178f, 2262f), vec3<f32>(1727f, 1235f, 1158f), vec3<f32>(-686f, -510f, -132f), vec3<f32>(-1792f, -211f, -612f), vec3<f32>(-1646f, 775f, 942f), vec3<f32>(-459f, 804f, -708f), vec3<f32>(1392f, -127f, -120f), vec3<f32>(-690f, -1190f, 613f), vec3<f32>(907f, -118f, 1451f), vec3<f32>(125f, 698f, 222f), vec3<f32>(101f, 1129f, -1032f), vec3<f32>(222f, -1267f, 711f), vec3<f32>(-1000f, 1006f, 323f), vec3<f32>(1066f, 1228f, -417f), vec3<f32>(1348f, -1927f, -1929f), vec3<f32>(-1197f, -771f, 1009f), vec3<f32>(-893f, 542f, 1523f), vec3<f32>(1423f, 272f, -305f));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec2<f32>(1424f, 743f), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, 28405i), vec3<f32>(419f, 270f, -1657f), vec2<f32>(-1759f, -2356f), vec3<u32>(0u, 4294967295u, 4294967295u)), vec3<u32>(1u, 0u, 25159u)), Struct_2(vec2<f32>(1380f, 277f), Struct_1(vec4<i32>(2147483647i, -61332i, 34211i, 1i), vec3<f32>(110f, -1000f, 933f), vec2<f32>(-1792f, -1536f), vec3<u32>(8539u, 1u, 4294967295u)), vec3<u32>(0u, 27089u, 4294967295u)));

var<private> global3: f32;

var<private> global4: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-798f, -754f), vec2<f32>(2740f, 636f), vec2<f32>(-1286f, -1046f), vec2<f32>(1670f, 804f), vec2<f32>(667f, -395f), vec2<f32>(-442f, -1000f), vec2<f32>(-1396f, -1001f), vec2<f32>(1889f, 1296f), vec2<f32>(1519f, -423f), vec2<f32>(608f, 1000f), vec2<f32>(-854f, 265f), vec2<f32>(2303f, 488f), vec2<f32>(1000f, 1697f), vec2<f32>(1000f, 1000f), vec2<f32>(1594f, 1324f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec3<u32> {
    global2 = Struct_3(Struct_2(global2.b.b.c, Struct_1(arg_0.b.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(89521u, 19u)]))), vec2<f32>(_wgslsmith_f_op_f32(step(1421f, -605f)), _wgslsmith_f_op_f32(-global2.b.b.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(35782u, 4294967295u, 4294967295u), vec3<u32>(14582u, arg_1.x, arg_0.a.b.d.x))), vec3<u32>(arg_0.a.b.d.x, _wgslsmith_add_u32(arg_0.a.b.d.x, ~38480u), 0u)), arg_0.a);
    var var_0 = Struct_1(vec4<i32>(30967i, arg_3.x, -87291i, arg_2.x), vec3<f32>(arg_0.b.a.x, -600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.a.x, arg_0.a.a.x, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, _wgslsmith_div_f32(arg_0.b.b.c.x, global2.a.a.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a.x, arg_0.b.a.x) * vec2<f32>(407f, 1351f)), _wgslsmith_div_vec2_f32(vec2<f32>(-476f, arg_0.a.a.x), global4[_wgslsmith_index_u32(60332u, 15u)]), true)))), arg_0.a.c);
    let var_1 = -548f;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(653f, 458f)) - -561f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x))))), global2.a.b, vec3<u32>(~global2.a.c.x << (max(arg_0.b.b.d.x, 1u << (u_input.b % 32u)) % 32u), abs(u_input.c.x | arg_0.a.c.x), ~(~(~u_input.b))));
    global2 = arg_0;
    return max(vec3<u32>(reverseBits(var_2.b.d.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2.b.c.yy, arg_0.b.c.zz), max(u_input.c, arg_0.b.b.d.yy)) ^ arg_0.b.b.d.x, abs(reverseBits(~var_0.d.x))), arg_0.b.c);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.a + vec2<f32>(global2.a.b.b.x, global2.b.b.c.x))))), global2.b.b, abs(firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(u_input.b, 0u), 4294967295u, countOneBits(u_input.c.x)))));
    let var_1 = vec4<bool>(false, true, true, true);
    global2 = Struct_3(global2.a, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(572f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-608f, global2.a.a.x), _wgslsmith_f_op_f32(floor(-113f)))), Struct_1(vec4<i32>(5561i << (global2.b.c.x % 32u), global2.a.b.a.x | global0.x, 2147483647i ^ u_input.a, global2.b.b.a.x), var_0.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(240f, global2.a.b.b.x)), func_3(Struct_3(Struct_2(var_0.a, var_0.b, var_0.c), global2.b), vec2<u32>(32252u, u_input.b), global2.b.b.a.www, vec2<i32>(global0.x, 2147483647i)) >> (min(vec3<u32>(1u, 24783u, 22645u), var_0.b.d) % vec3<u32>(32u))), global2.a.b.d));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f)));
    let var_2 = 914f;
    return var_1;
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(abs(~(~(-1i))));
    var var_1 = ~(~select(vec4<u32>(abs(u_input.c.x), ~4294967295u, 25829u, ~8273u), min(vec4<u32>(global2.a.c.x, global2.a.b.d.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(u_input.b, 56219u, 4294967295u, 137664u), ~vec4<u32>(global2.b.b.d.x, u_input.b, 98551u, 14248u)), vec4<bool>(true, var_0.x | var_0.x, true, 1u == global2.b.c.x)));
    let var_2 = !(!(!var_0.x));
    global0 = ~global2.a.b.a.wwx;
    var var_3 = Struct_3(global2.b, global2.a);
    return Struct_4(Struct_3(global2.b, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-135f, global2.b.a.x), vec2<f32>(var_3.a.b.c.x, var_3.a.b.b.x), vec2<bool>(var_0.x, var_2))) * var_3.b.a), var_3.b.b, vec3<u32>(32886u, ~24123u, var_3.b.b.d.x))), func_2(2147483647i).x, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = -109f;
    var var_1 = _wgslsmith_mod_vec3_u32(abs(countOneBits(vec3<u32>(21089u, 1u, 0u))), ~(~(var_0.a.a.b.d | global2.b.c))) | (((firstLeadingBit(global2.b.c) ^ firstLeadingBit(var_0.a.a.c)) & ~countOneBits(vec3<u32>(52042u, 12159u, u_input.b))) << (global2.a.c % vec3<u32>(32u)));
    global2 = var_0.a;
    global2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.a.b.b.d, vec3<u32>(0u, u_input.b, ~0u)), global2.b.b.d));
}

