struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

var<private> global2: vec4<i32> = vec4<i32>(-683i, i32(-2147483648), 0i, 2147483647i);

var<private> global3: array<u32, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> bool {
    global0 = Struct_3(global0.a, ~select(abs(~global0.b), ~max(global0.b, vec3<u32>(8703u, 30605u, u_input.a.x)), !select(vec3<bool>(global0.a.b, global0.a.b, global0.a.b), vec3<bool>(global0.a.b, global0.a.b, global0.a.b), false)));
    var var_0 = true;
    global1 = !select((countOneBits(global2.x) < -u_input.e.x) && (_wgslsmith_clamp_i32(2147483647i, -4146i, 5526i) >= _wgslsmith_add_i32(0i, global2.x)), global0.a.b, !any(!vec4<bool>(false, global0.a.b, true, global0.a.b)));
    global2 = -(~(global0.a.c ^ ~abs(global0.a.c)));
    var var_1 = _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.c, i32(-1i) * -2034i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.e.x, u_input.b))), _wgslsmith_add_vec3_i32(global2.zwx >> (vec3<u32>(global0.b.x, global0.b.x, 0u) % vec3<u32>(32u)), select(vec3<i32>(2147483647i, -1i, global0.a.c.x), u_input.e, true))), u_input.e);
    return any(select(!vec4<bool>(global0.a.b, false, global0.a.b, !global0.a.b), !vec4<bool>(global0.a.b, global0.a.b, false, !global0.a.b), vec4<bool>(false, true, !any(vec3<bool>(false, global0.a.b, global0.a.b)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = select(select(select(!vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(false, true), all(vec3<bool>(arg_1, global0.a.b, false))), !select(!vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, arg_0.b), vec2<bool>(global0.a.b, false), vec2<bool>(global0.a.b, true)), false), !select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(global0.a.b, arg_0.b), true)), select(!select(vec2<bool>(arg_0.b, true), !vec2<bool>(global0.a.b, arg_1), select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, true), true)), !vec2<bool>(arg_1, false), !arg_0.b), vec2<bool>(true, true));
    var var_1 = global2.x >= ~_wgslsmith_add_i32(countOneBits(~global2.x), abs(-16792i));
    global3 = array<u32, 27>();
    global3 = array<u32, 27>();
    global2 = ~(-vec4<i32>(global2.x, global2.x, min(-21231i, global2.x >> (36448u % 32u)), global0.a.c.x));
    return -_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(40395i & global2.x), 0i ^ arg_0.c.x), global2.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(995f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(839f, 656f) + _wgslsmith_f_op_f32(f32(-1f) * -164f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f * -629f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(325f - 1135f)))));
    global2 = vec4<i32>(~(~(~global2.x)), firstTrailingBit((0i & (-38074i << (global3[_wgslsmith_index_u32(arg_2.x, 27u)] % 32u))) << (~13486u % 32u)), 32084i, _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(arg_1.a.c.x), max(~41022i, u_input.b >> (4294967295u % 32u))), firstLeadingBit(countOneBits(~global0.a.c.x))));
    global0 = Struct_3(Struct_1(global0.b.x, false, vec4<i32>(33362i, ~u_input.b, 66135i, func_4(global0.a, func_3(140f, vec4<f32>(2419f, -2031f, -672f, 551f))))), max(vec3<u32>(0u, 20645u, global0.b.x), arg_2));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -690f);
    let var_2 = ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(12138u, arg_1.b.x, 44450u)), reverseBits(arg_0.b));
    return abs(-arg_0.a.c.x);
}

fn func_1() -> StorageBuffer {
    let var_0 = select(vec3<bool>(true, !global0.a.b, global0.a.b), !(!(!vec3<bool>(false, global0.a.b, true))), true);
    let var_1 = -vec2<i32>(global2.x, _wgslsmith_add_i32(~_wgslsmith_clamp_i32(global2.x, -15575i, 54671i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-3054i, -2147483647i), global2.zz), func_2(Struct_3(global0.a, global0.b), Struct_3(global0.a, global0.b), global0.b, Struct_4(vec3<bool>(global0.a.b, true, false), false)), 0i)));
    let var_2 = select(u_input.a, vec2<u32>(_wgslsmith_mult_u32(4294967295u << (global0.b.x % 32u), u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(22427u, global0.a.a, 10272u), global0.b)), global0.a.b) << (_wgslsmith_mult_vec2_u32(global0.b.zy ^ ~(vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(u_input.a.x, u_input.a.x)), select(reverseBits(vec2<u32>(global0.a.a, u_input.d)), ~global0.b.xx, true)) % vec2<u32>(32u));
    var var_3 = vec3<u32>(global0.a.a, u_input.a.x, var_2.x);
    let var_4 = select(select(global0.a.c, firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -3965i, 2147483647i, 1i), firstTrailingBit(vec4<i32>(-3545i, 6872i, global0.a.c.x, 0i)))), false), vec4<i32>(global0.a.c.x, -10972i, _wgslsmith_mult_i32(u_input.c, u_input.b), -_wgslsmith_add_i32(1i, firstTrailingBit(global2.x))), select(select(select(!vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<bool>(global0.a.b, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, global0.a.b, global0.a.b), vec4<bool>(false, false, true, false)), !vec4<bool>(true, false, global0.a.b, var_0.x)), vec4<bool>(false, all(vec4<bool>(global0.a.b, global0.a.b, var_0.x, global0.a.b)), true, true), true), !vec4<bool>(global0.a.b, func_3(154f, vec4<f32>(865f, 830f, 905f, -705f)), all(vec2<bool>(var_0.x, false)), false), select(select(!vec4<bool>(false, global0.a.b, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(global0.a.b, global0.a.b, global0.a.b, var_0.x), vec4<bool>(false, true, global0.a.b, var_0.x)), false), select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, true, false, var_0.x), true), vec4<bool>(global0.a.b, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, global0.a.b, false, false), true)), !vec4<bool>(global0.a.b, var_0.x, var_0.x, global0.a.b))));
    return StorageBuffer(vec3<f32>(-2413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -573f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f * -904f)))), 776f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.b;
    var var_1 = countOneBits(global2.xw);
    global3 = array<u32, 27>();
    let var_2 = Struct_3(Struct_1(4294967295u, !global0.a.b, global0.a.c), abs(vec3<u32>(~(global3[_wgslsmith_index_u32(global0.b.x, 27u)] & 0u), 0u, u_input.a.x)));
    global3 = array<u32, 27>();
    let x = u_input.a;
    s_output = func_1();
}

