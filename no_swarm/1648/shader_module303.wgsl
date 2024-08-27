struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_5;

var<private> global2: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(4294967295u), Struct_4(75494u), Struct_4(72572u), Struct_4(4294967295u), Struct_4(0u), Struct_4(0u), Struct_4(164u), Struct_4(1u), Struct_4(4294967295u), Struct_4(1u), Struct_4(1u), Struct_4(66503u), Struct_4(0u), Struct_4(28064u), Struct_4(28992u), Struct_4(0u), Struct_4(4294967295u), Struct_4(4294967295u), Struct_4(1u), Struct_4(24505u), Struct_4(7016u), Struct_4(0u), Struct_4(4294967295u), Struct_4(10610u), Struct_4(1u), Struct_4(26184u), Struct_4(20561u), Struct_4(29175u), Struct_4(44409u), Struct_4(75031u), Struct_4(4294967295u));

var<private> global3: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-2722f, -313f, 1320f, -216f), vec4<f32>(-509f, 747f, -892f, -575f), vec4<f32>(197f, 1184f, 506f, -1410f), vec4<f32>(1396f, 221f, -1055f, -396f), vec4<f32>(912f, 138f, -1581f, -476f), vec4<f32>(-452f, -1220f, -1000f, -1234f), vec4<f32>(1000f, -1530f, -818f, 1648f), vec4<f32>(209f, 215f, -732f, -362f), vec4<f32>(814f, -157f, -111f, 1262f), vec4<f32>(1869f, 1471f, -1247f, 847f), vec4<f32>(-540f, 234f, 722f, 577f), vec4<f32>(664f, -916f, -1190f, -1360f), vec4<f32>(132f, 340f, 1470f, -762f), vec4<f32>(889f, 1751f, -2297f, 509f), vec4<f32>(-277f, 802f, -433f, -1357f), vec4<f32>(-509f, -1526f, -821f, 591f), vec4<f32>(-230f, -423f, -1032f, 1444f), vec4<f32>(154f, 916f, 1200f, 1000f), vec4<f32>(510f, 464f, 630f, 1000f), vec4<f32>(333f, -128f, -1000f, 569f), vec4<f32>(-821f, -1619f, 420f, 1325f), vec4<f32>(-262f, -1890f, 177f, -1780f), vec4<f32>(125f, -372f, 412f, -352f), vec4<f32>(1726f, 788f, -514f, -884f), vec4<f32>(-1865f, -1726f, -425f, -1000f), vec4<f32>(244f, 2277f, -117f, -1081f), vec4<f32>(-264f, -1132f, 634f, -772f), vec4<f32>(872f, 1270f, 461f, -513f), vec4<f32>(-1138f, -923f, 995f, 2286f), vec4<f32>(-458f, 129f, -354f, -348f), vec4<f32>(1189f, 158f, 1628f, -385f));

var<private> global4: array<bool, 24> = array<bool, 24>(true, false, false, false, true, false, true, false, false, true, false, false, false, true, true, false, false, false, false, true, false, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    global2 = array<Struct_4, 31>();
    global4 = array<bool, 24>();
    var var_0 = 5229u;
    let var_1 = Struct_2(1036f, !(!(u_input.b <= global1.a.a.x) && (~1u == ~u_input.c.x)), vec2<bool>(true, true), max(2147483647i, global1.a.c));
    let var_2 = !vec4<bool>(true, all(select(!vec2<bool>(true, var_1.c.x), select(var_1.c, var_1.c, global4[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<bool>(var_1.c.x, var_1.c.x))), var_1.c.x, (false | global4[_wgslsmith_index_u32(~u_input.a, 24u)]) & select(true, true, all(var_1.c)));
    return vec3<bool>(var_2.x, any(!(!(!var_2.zw))), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> vec4<bool> {
    var var_0 = global1.b.x;
    let var_1 = u_input.c;
    global4 = array<bool, 24>();
    var var_2 = global3[_wgslsmith_index_u32(global0.a, 31u)];
    var var_3 = _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 0u, min(25930u, arg_3)) ^ min(_wgslsmith_mod_vec3_u32(var_1, vec3<u32>(arg_3, global0.a, 77942u)), var_1)) >> (~29385u % 32u);
    return !(!vec4<bool>(func_3().x, all(!vec4<bool>(true, true, arg_1, false)), arg_1, global4[_wgslsmith_index_u32(~countOneBits(var_1.x), 24u)]));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.b))));
    let var_1 = !select(!func_4(func_3(), false, Struct_4(global0.a), _wgslsmith_sub_u32(global0.a, u_input.a)), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(49959u, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)], true)), func_4(func_3(), _wgslsmith_mod_i32(u_input.b, -26388i) <= _wgslsmith_dot_vec2_i32(global1.a.a.yz, vec2<i32>(u_input.b, -1i)), Struct_4(25895u), 85224u | u_input.a));
    let var_2 = ~firstLeadingBit(~u_input.a);
    var var_3 = -1000f;
    var var_4 = reverseBits(firstLeadingBit(~(~countOneBits(vec3<u32>(0u, var_2, u_input.a)))));
    return Struct_3(_wgslsmith_mult_vec4_i32(abs(countOneBits(abs(var_0.a.a))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.a.x, -26355i, 0i, global1.a.a.x), vec4<i32>(-2147483647i, -2147483647i, 0i, 0i) >> (vec4<u32>(4294967295u, 0u, 0u, var_4.x) % vec4<u32>(32u)), vec4<i32>(-5430i, -2147483647i, global1.a.c, 0i))), _wgslsmith_div_f32(-1202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_mult_i32(abs(464i) >> (~reverseBits(var_4.x) % 32u), _wgslsmith_mod_i32(~u_input.b & global1.a.c, max(_wgslsmith_mod_i32(global1.a.a.x, -21469i), u_input.b))));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.b.x, -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.b))))))));
    let var_1 = Struct_5(func_2(), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, -1067f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-745f)))));
    var var_2 = var_1;
    global3 = array<vec4<f32>, 31>();
    global3 = array<vec4<f32>, 31>();
    return Struct_2(var_0, !(global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(u_input.c.x, 30399u)), 24u)] | true), func_3().zz, global1.a.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(110218u, u_input.a), u_input.c.x) >> (u_input.a % 32u);
    global4 = array<bool, 24>();
    var var_1 = global1.a;
    var var_2 = _wgslsmith_add_vec2_i32(~arg_3.xy, -(vec2<i32>(var_1.a.x, -2147483647i) & vec2<i32>(arg_0.d, arg_0.d))) & vec2<i32>(-2147483647i, firstLeadingBit(~(-9065i)));
    let var_3 = func_3().x;
    return Struct_5(global1.a, _wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(global1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1(Struct_4(_wgslsmith_add_u32(0u, 0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, u_input.c.x), vec2<u32>(48945u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(6413u, 31u)]))))), false, _wgslsmith_mult_vec4_i32(select(global1.a.a, select(global1.a.a, abs(global1.a.a), !vec4<bool>(false, false, global4[_wgslsmith_index_u32(4294967295u, 24u)], false)), !select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(40064u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)], true), vec4<bool>(true, true, true, true), vec4<bool>(global4[_wgslsmith_index_u32(39322u, 24u)], false, true, global4[_wgslsmith_index_u32(32828u, 24u)]))), _wgslsmith_mod_vec4_i32(global1.a.a, vec4<i32>(global1.a.a.x, u_input.b, 0i, u_input.b)) << (vec4<u32>(global0.a >> (global0.a % 32u), ~4294967295u, 7888u, min(4294967295u, 0u)) % vec4<u32>(32u))));
    global3 = array<vec4<f32>, 31>();
    global3 = array<vec4<f32>, 31>();
    global3 = array<vec4<f32>, 31>();
    var var_0 = 90916u;
    let var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(global1.a.a.x, ~_wgslsmith_mod_i32(~u_input.b, u_input.b ^ u_input.b), true | (u_input.c.x == var_1.x)), vec4<u32>(_wgslsmith_div_u32(21816u, max(~u_input.c.x, 4294967295u)), 1u, 1u & ~global0.a, abs(global0.a)), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(trunc(-1000f))), ~27055u);
}

