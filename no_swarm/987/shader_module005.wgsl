struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1000f, 1000f, 1176f, -402f, 1269f, -1476f, -1900f, -1572f, 395f);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(92149u, 0i, -816f), Struct_1(31789u, 7397i, -540f), Struct_1(8258u, -1i, 1023f), Struct_1(1u, 19782i, -1524f));

var<private> global3: Struct_2 = Struct_2(true, vec2<bool>(false, false));

var<private> global4: Struct_1 = Struct_1(21492u, -1i, 180f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = !(!(global4.b > 2515i));
    let var_1 = Struct_2(any(select(vec4<bool>(var_0, any(vec4<bool>(false, var_0, false, arg_3.a)), arg_3.b.x, false), select(!vec4<bool>(arg_3.a, global3.b.x, var_0, false), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_3.b.x, true, global3.b.x, var_0), true), all(vec3<bool>(var_0, false, arg_3.a))), var_0)), global3.b);
    let var_2 = Struct_1(~(~1u), arg_1, global0[_wgslsmith_index_u32(global4.a << (4294967295u % 32u), 9u)]);
    let var_3 = 932f;
    let var_4 = var_3;
    return select(vec2<bool>(true, !((global4.c > -1424f) & all(vec4<bool>(false, false, var_0, true)))), vec2<bool>(true || global3.b.x, any(!vec4<bool>(var_0, true, true, false))), select(arg_3.b, !global3.b, all(select(!vec3<bool>(var_0, false, arg_3.b.x), vec3<bool>(true, true, false), false))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(false, !select(func_3(vec3<u32>(68747u, 59795u, global4.a) ^ vec3<u32>(0u, global4.a, 0u), 2147483647i, global2[_wgslsmith_index_u32(~1u, 4u)], Struct_2(global3.a, global3.b)), global3.b, global3.a));
    var var_1 = -select(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -20618i, global4.b), vec3<i32>(2147483647i, global4.b, u_input.a)), global4.b >> (0u % 32u)), vec2<i32>(reverseBits(1i), u_input.a), false);
    var var_2 = Struct_1(~(~(1u >> (global4.a % 32u))), ~(~u_input.a >> (global4.a % 32u)), _wgslsmith_f_op_f32(-1175f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1747f), _wgslsmith_f_op_f32(f32(-1f) * -2152f))))));
    let var_3 = _wgslsmith_f_op_f32(sign(523f));
    let var_4 = var_0;
    return vec4<f32>(var_3, _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.c, global0[_wgslsmith_index_u32(4294967295u, 9u)]))) - global4.c), _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(f32(-1f) * -1381f))), var_2.c);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    global1 = array<Struct_1, 15>();
    var var_0 = func_3(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, global4.a) >> (vec3<u32>(global4.a, 0u, global4.a) % vec3<u32>(32u))) & vec3<u32>(~global4.a, ~9144u, _wgslsmith_mod_u32(global4.a, 0u)), abs(countOneBits(vec3<u32>(4294967295u, 26712u, 8120u) | vec3<u32>(global4.a, 0u, global4.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 11079i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a ^ u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_1, global4.b), vec3<i32>(u_input.a, arg_1, arg_1)), u_input.a), reverseBits(vec3<i32>(-54728i, 2147483647i, -1i)) ^ vec3<i32>(u_input.a, 611i, global4.b))), Struct_1(1u, ~2147483647i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -834f)))), Struct_2(global3.a, func_3(vec3<u32>(1u, global4.a, 28532u) & _wgslsmith_mult_vec3_u32(vec3<u32>(global4.a, global4.a, 0u), vec3<u32>(global4.a, 6313u, 4294967295u)), -(~arg_1), Struct_1(28621u, 25957i, 1f), Struct_2(all(vec3<bool>(global3.a, global3.b.x, global3.b.x)), !vec2<bool>(global3.b.x, global3.a)))));
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_1 = Struct_1(1u, firstLeadingBit(~52998i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f + arg_0.x) * _wgslsmith_f_op_f32(-405f - -349f))))));
    return _wgslsmith_div_u32(global4.a, 16507u);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> StorageBuffer {
    global1 = array<Struct_1, 15>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 9u)];
    var var_1 = firstTrailingBit(~arg_0.zxy);
    var var_2 = (~((vec3<i32>(u_input.a, global4.b, -23914i) << (arg_0.wxz % vec3<u32>(32u))) << (vec3<u32>(var_1.x, 0u, 4294967295u) % vec3<u32>(32u))) << ((select(vec3<u32>(33931u, 55648u, 1u), arg_0.wxx, select(vec3<bool>(global3.b.x, global3.a, global3.b.x), vec3<bool>(false, arg_2, true), vec3<bool>(global3.b.x, true, false))) >> (arg_0.wyw % vec3<u32>(32u))) % vec3<u32>(32u))) & abs(-(_wgslsmith_sub_vec3_i32(vec3<i32>(7195i, arg_1, -17964i), vec3<i32>(arg_1, arg_1, 2147483647i)) >> (vec3<u32>(0u, arg_0.x, arg_0.x) % vec3<u32>(32u))));
    var var_3 = Struct_1(~(~(~var_1.x)), ~(-((var_2.x >> (var_1.x % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(arg_1, 1i)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_0, min(arg_0, arg_0)), var_1.x, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), reverseBits(i32(-1i) * -10245i))), 9u)]);
    return StorageBuffer(vec3<i32>(i32(-1i) * -select(u_input.a, 0i, true), _wgslsmith_div_i32(-max(var_3.b, 64425i), global4.b), firstTrailingBit(firstTrailingBit(-1i))), ~global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global4.a, ~(-8527i), _wgslsmith_f_op_f32(1467f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c * 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)]) * _wgslsmith_f_op_f32(1000f * global4.c)))));
    global0 = array<f32, 9>();
    let var_1 = -20257i;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, global4.a, var_0.a, global4.a), vec4<u32>(8427u, 21023u, global4.a, 10601u)), ~reverseBits(vec4<u32>(30630u, global4.a, var_0.a, var_0.a))), ~(~abs(vec4<u32>(global4.a, global4.a, var_0.a, var_0.a)))), global4.b, all(vec2<bool>(false, true)));
}

