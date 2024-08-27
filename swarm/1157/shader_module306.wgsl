struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44485u;

var<private> global1: array<bool, 16>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u);

var<private> global3: array<i32, 6>;

var<private> global4: array<vec4<i32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    global0 = 55146u;
    var var_0 = _wgslsmith_div_u32(min(4294967295u, 20873u), global2.x) | 8678u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_div_f32(-185f, 400f), -126f, _wgslsmith_f_op_f32(sign(163f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-653f, 1261f, -1375f, 769f), vec4<f32>(-743f, 1897f, -452f, -1022f), vec4<bool>(global1[_wgslsmith_index_u32(48290u, 16u)], true, true, false)))))));
    global0 = u_input.c;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(u_input.c, 16u)], Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.a.x * 787f), -239f, _wgslsmith_f_op_f32(round(-552f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, var_1.a.x, var_1.a.x, 1562f))))));
    return vec3<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 16u)], true, !var_2.a, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, u_input.c), 16u)])), true, !global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c) >> (u_input.c % 32u), 16u)]);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(~u_input.c, global2.x)), 25u)];
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(~100641u, 6u)]);
    let var_2 = select(func_3(), vec3<bool>(false && global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), global2.x), 16u)], true == global1[_wgslsmith_index_u32(~(~30342u), 16u)], true), func_3());
    global4 = array<vec4<i32>, 25>();
    global0 = _wgslsmith_div_u32(0u, max(u_input.c >> (15382u % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(u_input.c), global2.x), 1u)));
    return !select(select(var_2.zz, vec2<bool>(var_2.x && true, all(var_2)), any(!var_2)), var_2.xy, !vec2<bool>(false || var_2.x, var_2.x));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = select(global2.yz ^ _wgslsmith_add_vec2_u32(~(~global2.yy), global2.wz), (~global2.xw ^ firstLeadingBit(vec2<u32>(16730u, u_input.c) << (global2.xz % vec2<u32>(32u)))) | vec2<u32>(global2.x, ~80735u), !func_2(Struct_1(vec4<f32>(arg_3.c.a.x, -604f, -545f, -608f)), arg_3.b.b));
    global0 = global2.x;
    let var_1 = Struct_3(firstLeadingBit(u_input.a.x));
    global1 = array<bool, 16>();
    global2 = vec4<u32>(13301u, ~(global2.x >> (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 56575u)), global2.xw) % 32u)), 11203u, var_0.x);
    return max(countOneBits(vec4<u32>(~39510u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c, 41991u, global2.x), vec4<u32>(1u, global2.x, 4294967295u, var_0.x)), 1u << (~global2.x % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(954u, 4294967295u), 24093u))), min(select(abs(~vec4<u32>(22414u, global2.x, 52122u, var_0.x)), firstTrailingBit(~vec4<u32>(1u, global2.x, u_input.c, 51825u)), func_3().x), select(vec4<u32>(var_0.x, global2.x, var_0.x | u_input.c, var_0.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_0.x, 9703u, 4294967295u), ~vec4<u32>(117240u, var_0.x, 4294967295u, var_0.x), select(vec4<u32>(u_input.c, var_0.x, global2.x, 4294967295u), vec4<u32>(global2.x, 30044u, global2.x, global2.x), vec4<bool>(true, true, arg_3.b.a, false))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global2.x, 48485u, u_input.c, 24206u)), select(vec4<u32>(1701u, 4294967295u, 32872u, 56184u), select(vec4<u32>(62600u, 4294967295u, 4294967295u, global2.x), vec4<u32>(u_input.c, 33489u, u_input.c, u_input.c), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global2.x, 16u)], true)), global1[_wgslsmith_index_u32(4294967295u, 16u)])) ^ _wgslsmith_div_vec4_u32(vec4<u32>(18765u, countOneBits(global2.x), 4294967295u, ~4294967295u), select(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, u_input.c), vec4<u32>(global2.x, global2.x, u_input.c, 24807u)), firstTrailingBit(vec4<u32>(u_input.c, 14092u, 40228u, 6791u)), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 16u)], false, true))), select(~(~(~vec4<u32>(global2.x, u_input.c, u_input.c, global2.x))), _wgslsmith_mult_vec4_u32(func_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(630f, 509f) * vec2<f32>(1664f, 598f)), ~u_input.a.wxx, Struct_4(Struct_1(vec4<f32>(916f, 1076f, -1420f, -680f)), Struct_2(false, Struct_1(vec4<f32>(675f, -102f, -792f, -1737f))), Struct_1(vec4<f32>(323f, 646f, 370f, -241f)))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, global2.x, 100814u, u_input.c), vec4<u32>(global2.x, 4294967295u, 0u, u_input.c)), vec4<u32>(0u, u_input.c, global2.x, 9745u) >> (vec4<u32>(u_input.c, global2.x, global2.x, global2.x) % vec4<u32>(32u)))), true));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, -1658f, -1000f, 789f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(553f, 1389f, 530f, 1039f), vec4<f32>(1007f, -277f, 687f, -1180f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1065f, 140f, -1512f) + vec4<f32>(435f, -664f, 707f, -356f))))));
    global0 = u_input.c;
    let var_1 = vec2<f32>(981f, _wgslsmith_f_op_f32(-var_0.a.x));
    let var_2 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(~4294967295u, 49481u >> (u_input.c % 32u), firstTrailingBit(global2.x), max(u_input.c, global2.x)) | ~(~vec4<u32>(u_input.c, 21189u, u_input.c, global2.x)), vec4<u32>(4294967295u, ~global2.x, ~4294967295u, 1u) | firstLeadingBit(~vec4<u32>(25685u, global2.x, 11092u, u_input.c)), all(!(!vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 16u)], global1[_wgslsmith_index_u32(90903u, 16u)])))), ~min(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global2.x, 0u, 38427u, global2.x)), firstLeadingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, global2.x))), vec4<u32>(1u, firstLeadingBit(u_input.c), firstLeadingBit(u_input.c), 4294967295u)));
    var var_3 = select(!select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(global2.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(var_2.x, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], false, global1[_wgslsmith_index_u32(41840u, 16u)])), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(65716u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(60517u, 16u)], global1[_wgslsmith_index_u32(u_input.c, 16u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(38047u, 16u)], global1[_wgslsmith_index_u32(var_2.x, 16u)], true, global1[_wgslsmith_index_u32(var_2.x, 16u)])), false | global1[_wgslsmith_index_u32(u_input.c, 16u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 16u)], false, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], false, global1[_wgslsmith_index_u32(1u, 16u)])), select(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], true, global1[_wgslsmith_index_u32(33477u, 16u)], global1[_wgslsmith_index_u32(var_2.x, 16u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(51605u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), false), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global2.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(var_2.x, 16u)]), !global1[_wgslsmith_index_u32(var_2.x, 16u)]), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(32721u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 16u)], true, global1[_wgslsmith_index_u32(15627u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), true), !vec4<bool>(global1[_wgslsmith_index_u32(4592u, 16u)], global1[_wgslsmith_index_u32(48443u, 16u)], false, global1[_wgslsmith_index_u32(var_2.x, 16u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 16u)], true, true, false)), false), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(var_2.x, 16u)], true), vec4<bool>(false, true, true, false), true), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(var_2.x, 16u)], global1[_wgslsmith_index_u32(52382u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)])), global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 16u)]), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]))), true || (86553u >= firstTrailingBit(~0u)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_1.x, -355f, 733f, var_0.a.x)))), vec4<f32>(-943f, _wgslsmith_f_op_f32(max(-1242f, -1470f)), _wgslsmith_f_op_f32(select(1196f, var_1.x, false)), _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_vec4_f32(-var_0.a)));
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, -224f);
}

