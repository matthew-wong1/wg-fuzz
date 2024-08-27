struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<Struct_3, 19>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 9>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 54077u, 4635u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    global2 = 1918f;
    let var_0 = global0.x;
    let var_1 = ~reverseBits(abs(~vec2<u32>(global4.x, 15206u)));
    return _wgslsmith_div_f32(-503f, 2132f);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec4<bool>) -> bool {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(global4.xz, vec2<u32>(4294967295u, 4294967295u)), reverseBits(vec2<u32>(4294967295u, global4.x)) | (global4.yy >> (_wgslsmith_sub_vec2_u32(global4.yz, arg_2) % vec2<u32>(32u)))), arg_0.a, u_input.b);
    global0 = !vec3<bool>(all(vec3<bool>(false, true, arg_3.x)) | all(select(vec3<bool>(arg_3.x, arg_1.b.b, arg_1.b.b), arg_1.b.c.b.wwx, false)), !all(arg_3.xz), false);
    var var_1 = Struct_5(Struct_3(-88727i, -925f), Struct_4(arg_0.c, arg_3.x && true, arg_0));
    let var_2 = -46948i;
    return min(_wgslsmith_dot_vec4_i32(~vec4<i32>(77118i, arg_0.c.d, 1i, var_1.b.c.c.c) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, arg_0.a), vec4<u32>(33965u, 0u, u_input.a, 15399u)) % vec4<u32>(32u)), max(~vec4<i32>(var_2, -17318i, arg_0.c.d, var_1.a.a), -vec4<i32>(arg_0.c.c, -46389i, 3086i, arg_1.a.a))), _wgslsmith_add_i32(firstTrailingBit(abs(0i)), ~(-4608i))) > (_wgslsmith_mult_i32(_wgslsmith_sub_i32(-arg_1.b.c.c.c, -var_1.b.a.d), arg_0.c.c) | var_1.a.a);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-617f, -347f), -890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_div_f32(-374f, -197f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, -1072f, -757f)))))));
    global0 = !(!select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(func_3(Struct_2(global4.x, vec4<bool>(true, true, global0.x, false), Struct_1(vec3<f32>(var_0.x, -1179f, -2415f), -1397f, arg_1.x, -1i), global0.x, vec3<f32>(1050f, -437f, var_0.x)), Struct_5(global1[_wgslsmith_index_u32(u_input.b, 19u)], Struct_4(Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), 1002f, arg_1.x, 2147483647i), true, global3[_wgslsmith_index_u32(1u, 9u)])), global4.xz, vec4<bool>(global0.x, true, false, global0.x)), true, true), vec3<bool>(global0.x, global0.x, true)));
    global1 = array<Struct_3, 19>();
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1261f, -1495f)), _wgslsmith_f_op_f32(var_0.x * var_0.x)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1191f, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(125f, -105f, 371f) + vec3<f32>(var_0.x, 395f, 1467f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 2006f, 1079f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-754f)), -1220f, var_0.x)))));
    let var_1 = select(vec4<bool>(global0.x, func_3(global3[_wgslsmith_index_u32(max(3012u, select(39917u, global4.x, global0.x)), 9u)], Struct_5(Struct_3(24299i, 1507f), Struct_4(Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), 1000f, arg_1.x, arg_1.x), true, Struct_2(global4.x, vec4<bool>(global0.x, true, global0.x, false), Struct_1(vec3<f32>(var_0.x, 1000f, var_0.x), 414f, arg_0, 0i), true, vec3<f32>(var_0.x, 1056f, 1613f)))), vec2<u32>(~u_input.a, 27751u), !(!vec4<bool>(false, true, global0.x, global0.x))), any(!select(vec3<bool>(false, global0.x, false), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), true), vec4<bool>(_wgslsmith_clamp_i32(arg_0, countOneBits(3229i), arg_0 & arg_1.x) != arg_0, true, u_input.a != (1u ^ firstLeadingBit(global4.x)), global0.x), !select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, true, global0.x, all(vec2<bool>(false, false))), false));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~vec3<u32>(~(25340u ^ (36134u >> (u_input.a % 32u))), abs(~u_input.b), u_input.b);
    let var_0 = vec3<bool>(1000f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -477f), all(select(select(vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, false), global0.x), global0.x && global0.x), !vec3<bool>(global0.x, global0.x, global0.x), select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(false, false, global0.x), global0.x))), true);
    global1 = array<Struct_3, 19>();
    var var_1 = vec4<bool>(true, all(select(select(!vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, var_0.x, false, global0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, global0.x, var_0.x), var_0.x)), select(vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(true, var_0.x, false, false), !vec4<bool>(true, global0.x, var_0.x, var_0.x)), 1u <= global4.x)), global0.x, true || (((global4.x ^ global4.x) ^ 0u) > abs(10932u)));
    var_1 = vec4<bool>(false, func_2(reverseBits(-21970i), vec4<i32>(1i, ~(-5679i), -2147483647i, abs(_wgslsmith_mult_i32(0i, -11375i)))), !(true && !var_0.x) && any(vec2<bool>(true, !var_1.x)), !(1u >= global4.x));
    var_1 = !vec4<bool>(false, all(var_1.zwy), select(all(vec2<bool>(global0.x, global0.x)), true, global0.x), firstTrailingBit(~1u) >= 54734u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(1i, 1i, 1i, 1i)), abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, global4.x, 30283u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, global4.x, 4294967295u), vec4<u32>(16913u, 2149u, global4.x, 16091u)))), ~(~44396u), _wgslsmith_mod_u32(~(~(global4.x >> (global4.x % 32u))), 13284u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1968f, 1000f, -625f), vec3<f32>(-754f, -1317f, 131f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(625f, 222f, 993f), vec3<f32>(640f, -677f, 324f), all(vec4<bool>(false, var_0.x, var_0.x, true)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, 822f, -1062f)))))));
}

