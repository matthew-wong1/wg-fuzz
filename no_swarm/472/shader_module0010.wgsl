struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-1659f, Struct_2(vec2<f32>(-1350f, 1259f), 0u), 2209f), Struct_3(893f, Struct_2(vec2<f32>(932f, -1435f), 1u), -161f), Struct_3(1492f, Struct_2(vec2<f32>(-1744f, 927f), 21441u), -451f), Struct_3(491f, Struct_2(vec2<f32>(-180f, -796f), 1u), 2069f), Struct_3(-958f, Struct_2(vec2<f32>(220f, -359f), 5102u), 323f), Struct_3(-1765f, Struct_2(vec2<f32>(253f, -862f), 88763u), -710f), Struct_3(-362f, Struct_2(vec2<f32>(384f, -722f), 1u), -737f), Struct_3(-790f, Struct_2(vec2<f32>(-1620f, 1421f), 0u), 1000f), Struct_3(-1009f, Struct_2(vec2<f32>(1291f, 1107f), 68883u), -518f), Struct_3(-1852f, Struct_2(vec2<f32>(-715f, -1000f), 65260u), -1573f), Struct_3(-519f, Struct_2(vec2<f32>(583f, -693f), 0u), 424f), Struct_3(-2071f, Struct_2(vec2<f32>(-601f, 919f), 4294967295u), -162f), Struct_3(-807f, Struct_2(vec2<f32>(-129f, -978f), 0u), 1026f), Struct_3(590f, Struct_2(vec2<f32>(-1070f, 188f), 37824u), 1000f), Struct_3(1000f, Struct_2(vec2<f32>(783f, 217f), 23553u), 138f), Struct_3(-431f, Struct_2(vec2<f32>(250f, 439f), 39370u), -1492f));

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-351f, -2100f, 444f, -1568f), vec4<f32>(-666f, 1465f, -619f, -590f), vec4<f32>(909f, -1228f, 2278f, -423f), vec4<f32>(823f, 1137f, 2101f, 925f), vec4<f32>(-451f, -1452f, 718f, -266f), vec4<f32>(901f, 1354f, 525f, 551f), vec4<f32>(791f, 296f, -464f, 1168f), vec4<f32>(-615f, -1282f, 920f, -814f), vec4<f32>(869f, -157f, 890f, -1207f), vec4<f32>(-911f, -1362f, 579f, 601f), vec4<f32>(-638f, -1000f, -379f, -543f), vec4<f32>(-363f, 1048f, -337f, -350f), vec4<f32>(-673f, -1156f, -604f, -257f), vec4<f32>(431f, 432f, 925f, 667f), vec4<f32>(305f, 184f, -244f, 1000f), vec4<f32>(-688f, 391f, 178f, 302f), vec4<f32>(966f, 1000f, -782f, 600f), vec4<f32>(-131f, -450f, -899f, -272f), vec4<f32>(256f, 1000f, 1235f, -405f), vec4<f32>(153f, 692f, -636f, 1122f), vec4<f32>(-618f, -462f, 1571f, 1023f), vec4<f32>(-107f, 2444f, -1013f, -1183f), vec4<f32>(-1031f, 1958f, 913f, -1285f), vec4<f32>(-1066f, -588f, 568f, -993f), vec4<f32>(443f, 525f, 1001f, -552f), vec4<f32>(1278f, -796f, 1557f, -1975f), vec4<f32>(3421f, -1179f, 1183f, -2022f), vec4<f32>(-340f, -232f, 1352f, 345f), vec4<f32>(-1324f, -931f, -1000f, -1150f));

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-593f)), _wgslsmith_f_op_f32(f32(-1f) * -837f)))), _wgslsmith_sub_u32(1630u, u_input.a));
    var var_1 = vec2<f32>(220f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(717f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))))));
    var var_2 = global2.x;
    global3 = global2.x;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)))), ~min(u_input.d.x, select(_wgslsmith_div_u32(var_0.b, var_0.b), ~4294967295u, global2.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1145f);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), arg_2))), arg_3);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f + arg_2) - -1107f), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, 914f)), global2.yy))), min(~firstLeadingBit(arg_3), u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(ceil(arg_1.x))) * _wgslsmith_f_op_f32(-1791f - _wgslsmith_f_op_f32(var_0.a.x - arg_2)))));
    var var_2 = arg_1.zz;
    let var_3 = firstTrailingBit(firstLeadingBit(countOneBits(countOneBits(~vec4<u32>(var_1.b.b, var_1.b.b, 19069u, 4294967295u)))));
    var_2 = vec2<f32>(var_1.b.a.x, -449f);
    return vec2<u32>(0u, _wgslsmith_add_u32(~firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(44503u, 1u), vec2<u32>(26977u, 0u)) << (1u % 32u)) | _wgslsmith_mod_u32(var_3.x, arg_3));
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(-_wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -82777i, u_input.e.x, u_input.e.x), vec4<i32>(u_input.b, u_input.e.x, 24949i, u_input.b)), ~(-vec4<i32>(u_input.e.x, u_input.b, u_input.b, -1i))), !select(select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, global2.x, global2.x)), select(select(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, global2.x, true), false), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, false), global2.x), !global2.x), abs(u_input.d.x) >= u_input.a));
    global0 = array<Struct_3, 16>();
    var var_1 = ~vec3<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(func_2(Struct_1(var_0.a, vec3<bool>(global2.x, true, global2.x)), vec3<f32>(-1293f, 183f, 1662f), -229f, u_input.c), max(u_input.d.xx, u_input.d.yy)), vec2<u32>(_wgslsmith_mod_u32(16227u, 47102u), select(u_input.a, u_input.a, global2.x))), ~0u);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-187f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1521f)))))), _wgslsmith_div_u32(4294967295u, var_1.x));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(~var_1.x, var_2.b), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(73925u, 86454u, 73334u)) | u_input.d, reverseBits(~u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.d.x, 23747u), var_1.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 4294967295u, u_input.a), vec3<u32>(4294967295u, 41168u, var_1.x)), _wgslsmith_add_u32(var_1.x, 1u), max(27324u, 61746u)))), 4294967295u);
    return vec2<i32>(firstLeadingBit(var_0.a.x), (-2147483647i | ~(15243i << (u_input.a % 32u))) >> (~u_input.d.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(select(global2.x, !global2.x, true), all(vec2<bool>(global2.x, true)), true);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(878f)), _wgslsmith_f_op_f32(floor(-989f))), abs(58100u));
    global0 = array<Struct_3, 16>();
    var var_2 = var_1.a.x;
    global3 = true;
    let var_3 = _wgslsmith_mult_vec2_i32(~max(~func_1(), vec2<i32>(select(u_input.b, -965i, global2.x), _wgslsmith_sub_i32(u_input.e.x, 40286i))), min(firstLeadingBit(u_input.e), u_input.e));
    var_1 = Struct_2(var_1.a, countOneBits(~(~firstLeadingBit(var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f * var_1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(897f, -752f)), var_0.x | false)))), _wgslsmith_f_op_vec2_f32(-var_1.a), (vec3<u32>(firstLeadingBit(var_1.b), ~var_1.b, ~var_1.b) & reverseBits(vec3<u32>(150431u, 106730u, 62838u))) | ~vec3<u32>(_wgslsmith_mult_u32(59338u, 0u), 1u, ~var_1.b), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4378u, 72792u) | reverseBits(vec3<u32>(u_input.a, u_input.c, u_input.c)), ~vec3<u32>(1u, 73178u, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(22439u, var_1.b, 1u), u_input.d)), ~(~vec4<u32>(_wgslsmith_mult_u32(var_1.b, u_input.d.x), 67595u, ~var_1.b, ~33311u)));
}

