struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, false, true, true, false, true, true, false, true, false, true, true, false, true, false, true, true, false, false, true, true, true, true, false, true, true, true, true, true, false);

var<private> global1: array<bool, 28>;

var<private> global2: bool = false;

var<private> global3: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = u_input.a;
    global3 = arg_1;
    global0 = array<bool, 31>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.c, _wgslsmith_f_op_f32(abs(arg_2.c.c))) * arg_1.b)), 4294967295u);
    let var_2 = -472f;
    return ~(firstTrailingBit(~firstTrailingBit(4294967295u)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(41676u, var_1.b, var_1.b, 26368u), max(vec4<u32>(u_input.b, 5246u, 1u, 0u), vec4<u32>(0u, 5597u, 52653u, var_1.b))));
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<i32>(-9349i, 4354i, i32(-1i) * -1i);
    var var_1 = _wgslsmith_f_op_f32(-global3.b);
    global2 = all(!global3.c.zx);
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return ~_wgslsmith_mod_vec3_u32(vec3<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.b, 27300u, 23363u)), func_3(var_0, Struct_2(global3.c, global3.b, vec3<bool>(true, true, global3.a.x)), Struct_3(-1000f, vec3<f32>(global3.b, global3.b, -329f), Struct_1(vec4<bool>(global3.a.x, global3.c.x, true, false), vec3<i32>(-1i, -2147483647i, -1i), -2076f, true, var_0), -602f))), ~55839u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a & 12036u)), ~(~(vec3<u32>(u_input.a, 22458u, u_input.a) << (vec3<u32>(53154u, u_input.b, u_input.a) % vec3<u32>(32u)))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = global3.c.yz;
    let var_1 = 1i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-308f)), -524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + global3.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global3.b, -499f)))), Struct_1(!(!(!vec4<bool>(var_0.x, false, global3.a.x, var_0.x))), select(vec3<i32>(75909i, var_1, ~(-1i)), -vec3<i32>(2147483647i, var_1, 2147483647i), all(select(vec3<bool>(false, true, global3.c.x), global3.c, vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], global1[_wgslsmith_index_u32(arg_0, 28u)], global0[_wgslsmith_index_u32(1u, 31u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-460f))), !global1[_wgslsmith_index_u32(arg_1.x, 28u)], select(-(vec3<i32>(var_1, -1i, var_1) << (vec3<u32>(9569u, 4294967295u, 4294967295u) % vec3<u32>(32u))), ~vec3<i32>(-32102i, 2147483647i, 3957i), true)), global3.b);
    let var_3 = false;
    var var_4 = ~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(53153u, 33964u, 4294967295u, 110455u), firstTrailingBit(vec4<u32>(10419u, arg_1.x, 62144u, u_input.b))), ~vec4<u32>(arg_1.x, 24359u, 39544u, arg_0), select(var_2.c.a, !var_2.c.a, true)));
    return Struct_4(-1529f, min(1u, 22111u ^ select(var_4.x, 94348u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_4.x, arg_1.x), arg_1), 31u)])));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = 4697i >> ((arg_0.b << (func_2().x % 32u)) % 32u);
    var var_1 = vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], any(select(global3.a, !vec3<bool>(global3.a.x, global0[_wgslsmith_index_u32(arg_0.b, 31u)], global3.c.x), false)));
    let var_2 = -753f;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, _wgslsmith_div_f32(680f, var_2)) - arg_1.b.zx), vec2<f32>(global3.b, global3.b));
    let var_4 = firstLeadingBit(~(~(~arg_0.b) ^ u_input.b));
    return Struct_2(!global3.c, global3.b, vec3<bool>(any(arg_1.c.a.wy), true, any(select(!arg_1.c.a.zwy, vec3<bool>(global3.c.x, false, global3.a.x), false))));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    global3 = func_5(func_4(95474u, abs(func_2())), Struct_3(1f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-196f, _wgslsmith_f_op_f32(floor(global3.b)), global3.b))), Struct_1(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(13400u, 31u)], false, false)), vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(-1f), all(global3.c.yx), vec3<i32>(i32(-1i) * -990i, reverseBits(2147483647i), 2147483647i)), _wgslsmith_f_op_f32(abs(global3.b))));
    global1 = array<bool, 28>();
    global0 = array<bool, 31>();
    return firstLeadingBit(1i);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = arg_2.x;
    let var_1 = select(!(_wgslsmith_f_op_f32(sign(-705f)) <= arg_0.x), all(select(vec4<bool>(true, false, !global0[_wgslsmith_index_u32(u_input.b, 31u)], false), !select(vec4<bool>(global1[_wgslsmith_index_u32(9951u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], false, global0[_wgslsmith_index_u32(u_input.b, 31u)], false), true), !vec4<bool>(global3.c.x, false, false, false))), any(select(global3.c, func_5(func_4(u_input.b, vec3<u32>(u_input.b, u_input.a, 4226u)), Struct_3(global3.b, vec3<f32>(-1082f, arg_0.x, arg_1.x), Struct_1(vec4<bool>(false, false, global1[_wgslsmith_index_u32(14163u, 28u)], true), arg_2.zyx, 1000f, true, vec3<i32>(var_0, var_0, var_0)), 1732f)).c, vec3<bool>(true, true, true))));
    global3 = func_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1163f + arg_0.x)))), 1u ^ func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(8800u, 36565u, 54620u), vec3<u32>(51998u, 0u, 4294967295u)), vec3<u32>(u_input.b, 4294967295u, u_input.b) >> (vec3<u32>(u_input.a, 4294967295u, 1u) % vec3<u32>(32u))).b), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-315f - arg_0.x), arg_1.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global3.b, -211f))))))), Struct_1(!(!vec4<bool>(global1[_wgslsmith_index_u32(34782u, 28u)], true, global1[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(0u, 31u)])), -arg_2.yzy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1247f)) + -1297f), _wgslsmith_div_f32(arg_0.x, -1215f) >= _wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.yyz, vec3<i32>(-1i, var_0, -29432i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_0), arg_2.xzz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.b)) + _wgslsmith_f_op_f32(arg_1.x - arg_0.x))));
    return Struct_4(_wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(-global3.b)), ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(0u, min(~u_input.b, 26722u & u_input.a)), u_input.b >> (1u % 32u));
    let var_2 = func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(835f)) * -1255f), _wgslsmith_f_op_f32(abs(-1289f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(global3.b, global3.b), global3.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b, global3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, 637f) + vec2<f32>(global3.b, -680f)), global3.a.zx))))), vec4<i32>(-32074i, ~(-23583i), -abs(1i), func_1(!global3.c) & 1i));
    let var_3 = _wgslsmith_clamp_i32(min(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(24061i, 0i), -15753i), -2147483647i), 1i), ~23542i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i) | (vec3<i32>(-1i, 57624i, 1i) ^ (vec3<i32>(2147483647i, 1259i, 42157i) >> (vec3<u32>(var_2.b, 4294967295u, 3313u) % vec3<u32>(32u)))), vec3<i32>(3556i, -_wgslsmith_add_i32(41747i, 12483i), countOneBits(1i))));
    var var_4 = Struct_5(-13395i, var_2.b, vec2<u32>(~0u, reverseBits(21590u)), var_2.b, _wgslsmith_add_u32(~func_6(vec2<f32>(521f, var_2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1021f, 989f)), _wgslsmith_add_vec4_i32(vec4<i32>(var_3, var_3, -21838i, 1i), vec4<i32>(2147483647i, 1i, -2147483647i, var_3))).b, 23652u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(~var_3)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f - -1000f)), 522f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a - -1915f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(select(var_2.a, -107f, global3.c.x)), _wgslsmith_f_op_f32(max(880f, global3.b))))), global1[_wgslsmith_index_u32(8277u, 28u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, global3.b, 148f) - vec3<f32>(1586f, global3.b, global3.b)))))), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b, 4294967295u), vec4<u32>(48786u, 43966u, 1u, 4294967295u), vec4<u32>(u_input.a, var_2.b, 9130u, 4294967295u)))));
}

