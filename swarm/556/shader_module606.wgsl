struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 19578u)), vec2<bool>(false, false), Struct_1(vec3<u32>(39873u, 4294967295u, 10252u)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(15142u, 1785u, 6023u))), Struct_3(Struct_1(vec3<u32>(0u, 9590u, 45768u)), vec2<bool>(true, true), Struct_1(vec3<u32>(15601u, 4294967295u, 3256u)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(4294967295u, 20784u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(0u, 24430u, 14492u)), vec2<bool>(true, false), Struct_1(vec3<u32>(4294967295u, 1u, 74762u)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(80068u, 2247u, 77382u))), Struct_3(Struct_1(vec3<u32>(13700u, 1u, 65069u)), vec2<bool>(false, true), Struct_1(vec3<u32>(0u, 29028u, 0u)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 21298u, 12708u))), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 37708u)), vec2<bool>(false, true), Struct_1(vec3<u32>(28149u, 4294967295u, 0u)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(61394u, 11317u, 40300u)), vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 0u, 4294967295u)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 41511u, 0u))), Struct_3(Struct_1(vec3<u32>(1u, 1u, 1u)), vec2<bool>(true, false), Struct_1(vec3<u32>(64517u, 1u, 0u)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(134068u, 22282u, 34909u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 67666u, 14843u)), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 1u, 96440u)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(13548u, 107599u, 0u))), Struct_3(Struct_1(vec3<u32>(19738u, 3685u, 1u)), vec2<bool>(false, true), Struct_1(vec3<u32>(1u, 21453u, 13238u)), vec3<bool>(false, true, true), Struct_1(vec3<u32>(1u, 4294967295u, 43300u))), Struct_3(Struct_1(vec3<u32>(52073u, 4294967295u, 4294967295u)), vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 20834u, 4294967295u)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 3404u, 0u))), Struct_3(Struct_1(vec3<u32>(79855u, 4294967295u, 0u)), vec2<bool>(false, false), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(18478u, 86874u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(18273u, 4294967295u, 4559u)), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 48357u, 68685u)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(44878u, 74376u, 1u))), Struct_3(Struct_1(vec3<u32>(28035u, 0u, 30946u)), vec2<bool>(false, true), Struct_1(vec3<u32>(1u, 4294967295u, 1u)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(7995u, 4294967295u, 31994u))), Struct_3(Struct_1(vec3<u32>(81256u, 26159u, 27460u)), vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 1u, 1u)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(1u, 11530u, 4294967295u)), vec2<bool>(true, true), Struct_1(vec3<u32>(1944u, 4294967295u, 4294967295u)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(20025u, 0u, 38674u))), Struct_3(Struct_1(vec3<u32>(37845u, 13239u, 43527u)), vec2<bool>(false, true), Struct_1(vec3<u32>(42862u, 0u, 6243u)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(2566u, 61899u, 8215u))), Struct_3(Struct_1(vec3<u32>(1u, 26492u, 4294967295u)), vec2<bool>(false, true), Struct_1(vec3<u32>(38578u, 66646u, 0u)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(15454u, 43093u, 49863u))), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), vec2<bool>(true, false), Struct_1(vec3<u32>(4294967295u, 24490u, 60052u)), vec3<bool>(false, true, true), Struct_1(vec3<u32>(14701u, 33523u, 1u))), Struct_3(Struct_1(vec3<u32>(33319u, 14871u, 1u)), vec2<bool>(false, false), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(59008u, 0u, 259u))), Struct_3(Struct_1(vec3<u32>(8943u, 4294967295u, 38343u)), vec2<bool>(true, false), Struct_1(vec3<u32>(4294967295u, 0u, 0u)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(4294967295u, 0u, 35317u))), Struct_3(Struct_1(vec3<u32>(1u, 23608u, 8528u)), vec2<bool>(true, false), Struct_1(vec3<u32>(43663u, 4294967295u, 4294967295u)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(4294967295u, 0u, 1u))), Struct_3(Struct_1(vec3<u32>(41337u, 29873u, 1u)), vec2<bool>(false, false), Struct_1(vec3<u32>(1535u, 48043u, 4294967295u)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 62448u, 0u)), vec2<bool>(true, false), Struct_1(vec3<u32>(63307u, 24872u, 56974u)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(0u, 63754u, 0u))), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 24823u)), vec2<bool>(true, true), Struct_1(vec3<u32>(90120u, 1u, 1u)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(1u, 39355u, 0u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 11893u)), vec2<bool>(false, true), Struct_1(vec3<u32>(0u, 1785u, 1u)), vec3<bool>(false, true, true), Struct_1(vec3<u32>(54678u, 15192u, 0u))), Struct_3(Struct_1(vec3<u32>(46415u, 41531u, 4294967295u)), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 27044u, 6529u)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(0u, 106771u, 1u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 77586u, 4294967295u)), vec2<bool>(false, true), Struct_1(vec3<u32>(1u, 1u, 2700u)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(0u, 0u, 0u))), Struct_3(Struct_1(vec3<u32>(1u, 1u, 4294967295u)), vec2<bool>(false, true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(7861u, 44649u, 10586u))));

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 24>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<Struct_4, 18>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = global4[_wgslsmith_index_u32(36182u, 18u)];
    let var_1 = var_0.b;
    let var_2 = global2[_wgslsmith_index_u32(~arg_0.x, 24u)];
    global2 = array<Struct_2, 24>();
    var var_3 = var_0.b;
    return var_0.b.a;
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global2 = array<Struct_2, 24>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1803f, global1.x)));
}

fn func_4(arg_0: f32, arg_1: i32) -> bool {
    global0 = array<Struct_3, 28>();
    let var_0 = vec4<i32>(u_input.e.x | ~u_input.a.x, 0i, _wgslsmith_clamp_i32(1i, u_input.c, -27633i), _wgslsmith_add_i32(u_input.a.x << (1u % 32u), ~(-1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, -1061f), vec3<f32>(-288f, arg_0, -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-1077f - 738f), _wgslsmith_div_f32(global1.x, -167f), -1000f))));
    global4 = array<Struct_4, 18>();
    let var_2 = Struct_2(Struct_1(u_input.d), select(vec3<bool>(all(!vec3<bool>(true, global3.x, global3.x)), global3.x, false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, false, false)), !vec3<bool>(global3.x, false, false), !vec3<bool>(global3.x, global3.x, true)), global3.x & true), select(select(vec3<bool>(global3.x, true, global3.x), !vec3<bool>(global3.x, true, global3.x), global3.x), !select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, false, global3.x), vec3<bool>(false, global3.x, global3.x)), true)), global3.x, 13188u, ((var_0 | _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, -2147483647i, -1i), var_0)) >> (~(~vec4<u32>(u_input.d.x, u_input.b, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))) ^ max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.e.x, 2147483647i, var_0.x), max(vec4<i32>(var_0.x, 28322i, 11617i, u_input.c), vec4<i32>(42381i, -49088i, arg_1, u_input.a.x))), vec4<i32>(-u_input.c, -arg_1, ~u_input.a.x, var_0.x)));
    return true;
}

fn func_1() -> f32 {
    var var_0 = func_2(u_input.d.yy & ~vec2<u32>(1u, u_input.d.x)) | ~(~select(~u_input.d, _wgslsmith_add_vec3_u32(vec3<u32>(33298u, 1u, u_input.b), vec3<u32>(u_input.b, 57757u, u_input.b)), true));
    var var_1 = select(select(vec3<bool>(func_4(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.d.x, 0u, u_input.b, u_input.d.x))), -13895i), true || all(vec3<bool>(false, global3.x, false)), ~(-2147483647i) != (0i ^ u_input.a.x)), !(!(!vec3<bool>(global3.x, global3.x, true))), false != any(vec4<bool>(global3.x, global3.x, global3.x, global3.x))), select(select(vec3<bool>(false, global3.x | global3.x, true), select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, global3.x), !vec3<bool>(true, true, global3.x)), u_input.d.x > var_0.x), select(select(!vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, false), !vec3<bool>(global3.x, global3.x, false)), !vec3<bool>(global3.x, true, true), select(!vec3<bool>(global3.x, global3.x, global3.x), !vec3<bool>(global3.x, true, global3.x), vec3<bool>(true, global3.x, global3.x))), select(select(!vec3<bool>(true, global3.x, global3.x), select(vec3<bool>(global3.x, true, true), vec3<bool>(true, true, true), false), true), vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, true, !global3.x))), global3.x);
    let var_2 = ~func_2(vec2<u32>(0u, u_input.d.x)).zy;
    var var_3 = min(u_input.d, u_input.d);
    let var_4 = global1.x;
    return _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, global1.x, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1256f, -1092f, false))), _wgslsmith_f_op_f32(func_1())))));
    global4 = array<Struct_4, 18>();
    var var_1 = Struct_2(Struct_1(vec3<u32>(8862u, reverseBits(1u), abs(_wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.zy)))), vec3<bool>(global3.x, (abs(u_input.b) == _wgslsmith_sub_u32(u_input.d.x, u_input.b)) & true, -max(u_input.a.x, u_input.a.x) < (i32(-1i) * -19902i)), any(!vec4<bool>(33622u == u_input.d.x, select(false, global3.x, global3.x), !global3.x, global3.x)), u_input.d.x, ~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-47567i, u_input.a.x, u_input.c, u_input.e.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -50117i, u_input.c, 12477i), vec4<i32>(u_input.e.x, 52861i, u_input.a.x, u_input.c)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, 46271u, u_input.d.x)), abs(vec3<u32>(4294967295u, u_input.b, u_input.d.x))), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 33605u, var_1.d), var_1.a.a ^ vec3<u32>(1873u, var_1.a.a.x, 0u)))), vec3<bool>(var_0.x < _wgslsmith_f_op_f32(ceil(-306f)), u_input.d.x >= _wgslsmith_mult_u32(1u, ~90184u), !(select(var_1.d, 17074u, true) > _wgslsmith_mult_u32(1u, 55853u))), global3.x, min(_wgslsmith_sub_u32(45588u, 21283u), ~3077u), -var_1.e);
    var var_3 = select(global3.x, !any(var_2.b), all(var_1.b.xx));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, reverseBits(~(~abs(vec4<u32>(var_2.d, var_2.a.a.x, var_1.a.a.x, u_input.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - global1.x) * 461f), -570f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-314f, -1148f, -316f, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 570f, var_0.x), vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x), false)) - _wgslsmith_f_op_vec4_f32(sign(var_0))))), ~u_input.d.yx);
}

