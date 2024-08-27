struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(41999i, -1i, 21905i), true, true);

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<f32>(-731f, -878f, 352f, -792f), -423f), Struct_3(vec4<f32>(-725f, -1188f, -1474f, -861f), 1000f), Struct_3(vec4<f32>(-230f, 230f, -1478f, -1213f), 320f), Struct_3(vec4<f32>(-907f, -189f, -693f, -627f), 291f), Struct_3(vec4<f32>(1188f, 467f, 1556f, -149f), -228f), Struct_3(vec4<f32>(1121f, 360f, 252f, -1158f), -2551f), Struct_3(vec4<f32>(-251f, -461f, -738f, 452f), -1110f), Struct_3(vec4<f32>(-1342f, -657f, 1076f, -357f), -111f), Struct_3(vec4<f32>(468f, 342f, -861f, -1000f), -485f), Struct_3(vec4<f32>(457f, 921f, -1208f, 2594f), 284f), Struct_3(vec4<f32>(-1100f, 104f, 1000f, 164f), 1632f), Struct_3(vec4<f32>(-1025f, 953f, 727f, -2302f), 301f), Struct_3(vec4<f32>(530f, 458f, -1460f, -153f), -1578f), Struct_3(vec4<f32>(-554f, -185f, -1000f, 422f), -242f), Struct_3(vec4<f32>(-1180f, -1000f, 1000f, 226f), 1451f), Struct_3(vec4<f32>(-1067f, 1980f, -305f, -206f), 1881f), Struct_3(vec4<f32>(1265f, -217f, -2000f, -222f), -1558f), Struct_3(vec4<f32>(-1289f, 286f, -418f, -370f), 104f), Struct_3(vec4<f32>(-954f, 522f, 125f, -616f), -494f), Struct_3(vec4<f32>(-147f, 383f, 320f, 428f), 385f), Struct_3(vec4<f32>(-1000f, 582f, 603f, -256f), -359f), Struct_3(vec4<f32>(1897f, -605f, 355f, 866f), 633f), Struct_3(vec4<f32>(731f, 1175f, -462f, 1633f), -940f), Struct_3(vec4<f32>(1279f, 1000f, -1870f, -574f), 634f));

var<private> global2: array<i32, 21> = array<i32, 21>(11790i, -1i, i32(-2147483648), 0i, -1i, -1i, i32(-2147483648), -1733i, -1i, i32(-2147483648), -1360i, 27156i, 42820i, 2147483647i, 2147483647i, 1i, 8545i, 1i, -1i, i32(-2147483648), 56762i);

var<private> global3: array<f32, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> i32 {
    global1 = array<Struct_3, 24>();
    let var_0 = Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x ^ 4294967295u, max(firstLeadingBit(arg_0.x), arg_1), _wgslsmith_dot_vec3_u32(~u_input.e.zzw, vec3<u32>(32610u, 65358u, arg_1))), _wgslsmith_div_vec3_u32(~max(u_input.e.yyx, u_input.e.xxw), vec3<u32>(arg_1 & 85962u, _wgslsmith_div_u32(arg_1, 1u), ~26667u))), Struct_1(select(-(~global0.a), vec3<i32>(-2147483647i, 5430i, -arg_2), !select(vec3<bool>(global0.c, true, global0.b), vec3<bool>(global0.b, true, global0.b), global0.c)), (_wgslsmith_add_u32(arg_1, 29022u) ^ u_input.a.x) < 6252u, false));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_0.a.x, 1u)])), _wgslsmith_f_op_f32(select(-1154f, 1713f, global0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1864f, 733f)))))))));
    let var_2 = 81031u;
    global1 = array<Struct_3, 24>();
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-8854i, -24231i) << (1u % 32u), _wgslsmith_mod_i32(-9308i, 32531i << (u_input.d % 32u))) & ~(-52161i >> (arg_1 % 32u)), -2147483647i, ~global0.a.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(_wgslsmith_sub_i32(u_input.b, reverseBits(global0.a.x << (82257u % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1020f, 1363f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 1u)]))), 456f)), select(!(!(!vec4<bool>(true, global0.b, global0.c, true))), !(!select(vec4<bool>(global0.b, false, global0.c, global0.b), vec4<bool>(global0.c, global0.b, global0.b, global0.b), global0.b)), global0.b));
    global2 = array<i32, 21>();
    global2 = array<i32, 21>();
    let var_1 = Struct_2(select(min(var_0.a, func_3(vec2<u32>(4294967295u, 10410u), _wgslsmith_dot_vec2_u32(u_input.c, u_input.a.yx), 7600i)), var_0.a, var_0.c.x), var_0.b, vec4<bool>(!(false != global0.b), true, true, var_0.c.x));
    var var_2 = -abs(_wgslsmith_div_i32(var_0.a, _wgslsmith_mod_i32(-9857i, -1i))) > 4691i;
    return u_input.c.x;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global0 = Struct_1(-vec3<i32>(37721i, 48401i, global2[_wgslsmith_index_u32(func_2(), 21u)]), arg_0.x, !select(any(select(arg_0.zxw, arg_0.ywz, true)), all(arg_0.wxx), true));
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(646f, global3[_wgslsmith_index_u32(17003u, 1u)])));
    global1 = array<Struct_3, 24>();
    var var_1 = -1000f;
    global2 = array<i32, 21>();
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_1 {
    global2 = array<i32, 21>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2 << (arg_2 % 32u), 2284u), vec2<u32>(~55619u, u_input.a.x)) ^ 1u, firstLeadingBit(4294967295u)), 21u)];
    var var_1 = u_input.e;
    var var_2 = all(arg_1.c.xz) && (global0.a.x != -1105i);
    let var_3 = Struct_1(vec3<i32>(51099i, 19136i, 0i), all(arg_1.c), !(var_1.x == ((var_1.x & u_input.d) | 1u)));
    return var_3;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = global0.a ^ global0.a;
    let var_1 = Struct_4(u_input.a.wxx, arg_1);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, global3[_wgslsmith_index_u32(countOneBits(0u), 1u)])) + vec2<f32>(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(firstTrailingBit(13680u), 1u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(func_2(), 1u)] * _wgslsmith_f_op_f32(521f - 1982f)))), -392f));
    let var_3 = Struct_4(_wgslsmith_sub_vec3_u32(var_1.a ^ u_input.e.zzz, firstLeadingBit(u_input.a.wwy) & u_input.a.ywx), Struct_1(~(global0.a >> (vec3<u32>(57857u, 45695u, 50503u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, 1u, 34864u), vec3<u32>(var_1.a.x, 9285u, 44815u)) % vec3<u32>(32u)), true != any(!vec2<bool>(true, arg_1.c)), false));
    let var_4 = countOneBits(var_3.a.x);
    return Struct_2(var_3.b.a.x << (arg_2 % 32u), 933f, !(!(!(!vec4<bool>(false, global0.b, true, var_3.b.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a | _wgslsmith_mod_vec3_i32(min(vec3<i32>(_wgslsmith_mod_i32(2147483647i, global0.a.x), _wgslsmith_div_i32(global0.a.x, global2[_wgslsmith_index_u32(u_input.e.x, 21u)]), 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 13843i, global0.a.x), vec3<i32>(global2[_wgslsmith_index_u32(1u, 21u)], -2147483647i, -26229i) & vec3<i32>(1i, -29377i, u_input.b), -global0.a)), global0.a);
    var var_1 = func_5(48536i, func_4(true, Struct_2(firstTrailingBit(var_0.x >> (0u % 32u)), global3[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(global0.b && true, func_1(vec4<bool>(global0.c, global0.b, global0.c, false)), true, true)), ~_wgslsmith_sub_u32(abs(u_input.d), max(u_input.d, u_input.e.x)), !global0.c), ~54493u);
    var_1 = func_5(2147483647i, Struct_1(vec3<i32>(-_wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.d, 21u)]), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, global2[_wgslsmith_index_u32(1u, 21u)]), var_0.zx), -var_1.a), ~(-5361i)), !func_5(global0.a.x, func_4(false, Struct_2(var_0.x, -377f, var_1.c), 34084u, false), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(56127u, 46968u, 1u, u_input.c.x))).c.x, false), _wgslsmith_sub_u32(u_input.c.x, ~(~0u)));
    let var_2 = global1[_wgslsmith_index_u32(0u, 24u)];
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 1006f, var_1.b, 1189f) * vec4<f32>(var_1.b, var_1.b, var_2.b, -217f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-220f, 673f, -181f, var_1.b))) - vec4<f32>(734f, var_1.b, 523f, var_1.b))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(188f, 539f, true)))), 457f, _wgslsmith_f_op_f32(trunc(-629f)), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.e.x, u_input.e.x), 1u)]), vec4<bool>(true, false, false, !var_1.c.x))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 6759u) & vec3<u32>(u_input.d, 32155u, u_input.d), abs(vec3<u32>(0u, 16141u, u_input.d))), vec3<u32>(select(func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), u_input.e.wx), true), 16918u, u_input.e.x)), u_input.e.yw);
}

