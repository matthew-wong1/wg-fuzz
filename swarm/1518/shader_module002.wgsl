struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(891f, Struct_2(Struct_1(1i, -594f, 58040i, vec3<f32>(645f, -421f, -392f), vec4<u32>(27960u, 16801u, 1u, 0u))), 0u, vec3<f32>(-1000f, 310f, -691f), -537f), Struct_4(-1015f, Struct_2(Struct_1(-9821i, 1000f, 8072i, vec3<f32>(-1030f, -1745f, 1458f), vec4<u32>(1u, 0u, 0u, 90082u))), 0u, vec3<f32>(-795f, -1007f, -522f), -607f), Struct_4(-324f, Struct_2(Struct_1(-3185i, -420f, -18329i, vec3<f32>(-962f, -821f, 918f), vec4<u32>(4294967295u, 6971u, 102430u, 30903u))), 8646u, vec3<f32>(-1000f, -547f, -447f), -655f), Struct_4(-402f, Struct_2(Struct_1(40083i, 1317f, -44846i, vec3<f32>(308f, 984f, 1011f), vec4<u32>(26542u, 42172u, 4294967295u, 100038u))), 1u, vec3<f32>(-555f, -1659f, 1028f), 1529f), Struct_4(-554f, Struct_2(Struct_1(7273i, -1000f, -1i, vec3<f32>(-545f, 635f, 1000f), vec4<u32>(0u, 0u, 1u, 31931u))), 13538u, vec3<f32>(-1194f, 368f, 1225f), -2596f), Struct_4(-917f, Struct_2(Struct_1(2147483647i, -2604f, -7181i, vec3<f32>(280f, -999f, 3025f), vec4<u32>(64925u, 0u, 0u, 5100u))), 1u, vec3<f32>(-1474f, 669f, -496f), 401f), Struct_4(-1214f, Struct_2(Struct_1(2147483647i, 1202f, 14185i, vec3<f32>(-1177f, -252f, 113f), vec4<u32>(908u, 4294967295u, 76872u, 25695u))), 1u, vec3<f32>(-1676f, 1884f, -1733f), 402f), Struct_4(-799f, Struct_2(Struct_1(2147483647i, 1016f, -1i, vec3<f32>(460f, -1558f, 627f), vec4<u32>(0u, 4294967295u, 16033u, 1u))), 20961u, vec3<f32>(371f, 1172f, 311f), -1000f), Struct_4(-1044f, Struct_2(Struct_1(-59i, 419f, 32705i, vec3<f32>(919f, -1027f, 792f), vec4<u32>(61327u, 79113u, 1u, 1u))), 33700u, vec3<f32>(1288f, -1455f, 946f), 1000f), Struct_4(1401f, Struct_2(Struct_1(-3609i, -1000f, 55016i, vec3<f32>(-731f, -950f, -239f), vec4<u32>(0u, 51408u, 4294967295u, 0u))), 18351u, vec3<f32>(-1722f, -1000f, -365f), -944f), Struct_4(457f, Struct_2(Struct_1(6902i, 1046f, 44099i, vec3<f32>(-1674f, -371f, -712f), vec4<u32>(4294967295u, 4294967295u, 0u, 1u))), 13443u, vec3<f32>(-747f, 1000f, 291f), 768f), Struct_4(-872f, Struct_2(Struct_1(-1i, 1413f, 0i, vec3<f32>(-565f, -1850f, -701f), vec4<u32>(4294967295u, 72759u, 4294967295u, 66960u))), 1u, vec3<f32>(-830f, 1420f, 1061f), -221f), Struct_4(216f, Struct_2(Struct_1(2390i, -864f, 25076i, vec3<f32>(559f, -829f, 240f), vec4<u32>(33972u, 109052u, 68828u, 42117u))), 1u, vec3<f32>(-785f, 164f, -404f), -1000f), Struct_4(-699f, Struct_2(Struct_1(14061i, -1105f, -8284i, vec3<f32>(925f, 1479f, 172f), vec4<u32>(42043u, 0u, 4294967295u, 0u))), 0u, vec3<f32>(760f, -471f, 365f), 887f));

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 4>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(round(1f));
    var var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(~abs(~57629u)), 14u)];
    let var_1 = _wgslsmith_f_op_f32(-198f + var_0.b.a.d.x);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1001f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.d.x), _wgslsmith_div_f32(var_0.e, -1632f))), arg_0.b.b), _wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-865f)) - 216f))));
    let var_3 = global0[_wgslsmith_index_u32(arg_1.x, 14u)];
    return ~var_3.b.a.e.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(1i, Struct_1(abs(_wgslsmith_div_i32(u_input.a, u_input.a | 2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(152f, 292f, false))), -516f)), 2147483647i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1351f, 950f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, -1000f, 1000f))), vec4<u32>(countOneBits(func_3(Struct_3(u_input.a, Struct_1(-25617i, -355f, u_input.a, vec3<f32>(-779f, -188f, 1000f), vec4<u32>(4294967295u, 4294967295u, 1u, 0u))), vec3<u32>(1u, 1u, 84060u), vec3<i32>(30149i, 0i, u_input.a), vec4<f32>(845f, 1104f, -1000f, -527f))), ~abs(4294967295u), _wgslsmith_mod_u32(1u, 34845u) >> (_wgslsmith_mod_u32(0u, 4508u) % 32u), ~abs(4294967295u))));
    var var_1 = Struct_1(reverseBits(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(996f))))), _wgslsmith_mult_i32(var_0.a, var_0.b.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(693f)) * 163f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.b)) * -344f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) + var_0.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.d, vec3<f32>(var_0.b.b, -1448f, var_0.b.b), global3.x)), vec3<f32>(244f, var_0.b.b, 580f)))), var_0.b.e);
    global0 = array<Struct_4, 14>();
    return var_0.b;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_4, 14>();
    return Struct_2(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = func_1();
    let var_2 = 26469u;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-901f, _wgslsmith_f_op_f32(func_1().a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.b)) * -146f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, _wgslsmith_f_op_f32(-727f - var_1.a.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_3, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 230f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -903f)))));
    var var_5 = global3.x;
    global1 = _wgslsmith_f_op_f32(round(var_4.x));
    global1 = 693f;
    var var_6 = 3557u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e.wyx, -2388i, ~(~_wgslsmith_add_vec2_u32(var_1.a.e.yw, var_1.a.e.xy)) >> (vec2<u32>(0u, ~reverseBits(22389u)) % vec2<u32>(32u)));
}

