struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, 46632u), Struct_1(true, 0u), Struct_1(false, 42392u), Struct_1(false, 0u), Struct_1(true, 0u), Struct_1(true, 0u), Struct_1(true, 1u), Struct_1(false, 1u), Struct_1(false, 62493u), Struct_1(true, 572u), Struct_1(false, 45412u), Struct_1(false, 7478u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(675f - -128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(382f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(912f, -866f)))), 956f, 759f), true));
    let var_1 = any(select(vec3<bool>(true, true, true), select(arg_2.ywz, vec3<bool>(true & arg_2.x, all(vec2<bool>(true, false)), arg_2.x), arg_2.yyz), select(arg_2.zzz, !select(arg_2.yyz, vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_2.x, false, arg_2.x)), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-230f, var_0.x));
    let var_3 = arg_2.wxw;
    let var_4 = ~(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(30212i, 49419i, arg_1), vec3<i32>(-1i, u_input.c.x, u_input.a.x), u_input.c)) ^ firstLeadingBit(u_input.a);
    return firstLeadingBit(u_input.d);
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_4, 13>();
    let var_0 = u_input.c.x & _wgslsmith_add_i32(-u_input.b, ~func_3(vec2<u32>(1u, 1u), u_input.d << (6006u % 32u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))));
    global1 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, -687f, -585f, -264f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 709f, 792f, -385f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-343f, 382f, 373f, 597f), vec4<f32>(-282f, 786f, 784f, -379f)))));
    var var_2 = _wgslsmith_mult_u32(~33750u, _wgslsmith_div_u32(92041u, 4294967295u));
    return Struct_3(global1[_wgslsmith_index_u32(0u, 12u)], 0i, true, ~(i32(-1i) * -23972i));
}

fn func_1() -> i32 {
    global0 = array<Struct_4, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-329f, 1177f)), -159f));
    let var_1 = -30154i;
    global1 = array<Struct_1, 12>();
    let var_2 = func_2();
    return select(var_1, -20159i, all(select(select(select(vec3<bool>(var_2.c, var_2.c, false), vec3<bool>(var_2.a.a, var_2.a.a, false), vec3<bool>(true, var_2.a.a, var_2.c)), select(vec3<bool>(var_2.c, var_2.a.a, var_2.c), vec3<bool>(var_2.c, var_2.a.a, var_2.c), var_2.a.a), select(vec3<bool>(var_2.c, var_2.a.a, var_2.c), vec3<bool>(var_2.a.a, var_2.c, var_2.c), var_2.c)), vec3<bool>(var_1 <= 1i, false, var_2.c), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 13>();
    let var_0 = Struct_2(Struct_1(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true)) | true, abs(~(~0u))));
    let var_1 = 34953u;
    var var_2 = var_0;
    let var_3 = Struct_3(var_2.a, reverseBits(-1i & _wgslsmith_div_i32(u_input.a.x, func_1())), all(vec3<bool>(true, true, true)), ~5500i);
    var var_4 = ~((vec4<u32>(min(20163u, 48262u), var_2.a.b, 4294967295u, 0u) << (~vec4<u32>(27308u, var_3.a.b, 45448u, 24656u) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(firstLeadingBit(17703u), 42608u, reverseBits(1u), var_3.a.b >> (36793u % 32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -vec2<i32>(_wgslsmith_sub_i32(u_input.b | -32137i, 5297i), 2147483647i), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_4.xz, vec2<u32>(var_4.x, 0u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(3771u, 5494u), vec2<u32>(1u, var_4.x)) % vec2<u32>(32u)), abs(vec2<u32>(~var_0.a.b, 68840u))), _wgslsmith_div_vec2_u32(var_4.yx, ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_4.xz, vec2<u32>(var_1, 37413u)), select(var_4.zx, vec2<u32>(var_3.a.b, 11190u), true))), firstTrailingBit(~vec3<u32>(1u, 3599u, var_0.a.b) >> (select(vec3<u32>(var_2.a.b, var_3.a.b, 4294967295u), _wgslsmith_clamp_vec3_u32(var_4.zxy, vec3<u32>(var_4.x, var_4.x, var_3.a.b), vec3<u32>(var_4.x, 12470u, var_3.a.b)), func_2().a.a) % vec3<u32>(32u))));
}

