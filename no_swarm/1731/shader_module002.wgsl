struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-1000f, true), vec4<i32>(1i, -38578i, -1i, -1i), vec2<i32>(-1i, i32(-2147483648)), 2147483647i), vec2<u32>(0u, 0u), vec3<i32>(-236i, -13156i, -1i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    var var_0 = Struct_4(22953u, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.c.x, global0.c.x, 81388i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.c.x, 0i, 60421i, u_input.a), global0.a.b) ^ min(vec4<i32>(global0.a.b.x, 8086i, u_input.a, global0.c.x), global0.a.b), !vec4<bool>(global0.a.a.b, global0.a.a.b, arg_2.x, true)), global0.a.b));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, u_input.c.x, 50456u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 1u, var_0.a)), ~vec4<u32>(var_0.a, 55124u, u_input.c.x, global0.b.x)), u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0.b.x, ~u_input.c.x, ~global0.b.x))) << (_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~global0.b, global0.b), vec2<u32>((u_input.c.x << (4294967295u % 32u)) >> (global0.b.x % 32u), u_input.b.x)) % 32u);
    var var_2 = 23521u;
    var_2 = 71063u;
    var_0 = Struct_4(global0.b.x, firstLeadingBit(reverseBits(-2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(697i, u_input.a), vec2<i32>(global0.a.c.x, arg_0.x)))));
    return global0.a.a.a;
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: i32) -> Struct_1 {
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_3(global0.a.b, vec3<f32>(370f, global0.a.a.a, global0.a.a.a), vec4<bool>(false, global0.a.a.b, false, true), arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(-arg_1)), global0.a.b, -(global0.c.zy << (vec2<u32>(global0.b.x, 1u) % vec2<u32>(32u))), arg_2), vec2<u32>(reverseBits(0u), _wgslsmith_mult_u32(global0.b.x, 1u)), global0.c);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, global0.b.x, 4294967295u, 0u), vec4<u32>(31311u, 4294967295u, 83800u, 4294967295u)) ^ _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 43406u, 1u, 1u), vec4<u32>(global0.b.x, 69795u, 0u, 1u), global0.a.a.b), vec4<u32>(global0.b.x, global0.b.x, 1u, u_input.b.x) & vec4<u32>(0u, 0u, arg_0.b.a, 38023u)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0.b.x, arg_0.b.a, u_input.c.x, global0.b.x)) & min(vec4<u32>(0u, 28162u, 0u, arg_0.a), vec4<u32>(global0.b.x, global0.b.x, 1u, u_input.c.x)), vec4<u32>(global0.b.x, u_input.c.x, global0.b.x, _wgslsmith_mult_u32(0u, u_input.b.x))), vec4<u32>(global0.b.x, ~_wgslsmith_mod_u32(arg_0.b.a, u_input.c.x), firstLeadingBit(arg_0.a) & ~28559u, abs(4294967295u))), ~(~vec4<u32>(global0.b.x, 2275u, global0.b.x, 13689u) << ((vec4<u32>(1u, 4294967295u, arg_0.a, arg_0.b.a) << (select(vec4<u32>(0u, u_input.b.x, 9123u, 4294967295u), vec4<u32>(68450u, arg_0.b.a, u_input.b.x, 0u), global0.a.a.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = arg_0.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.a - _wgslsmith_f_op_f32(step(-1000f, arg_1))));
    return global0.a.a;
}

fn func_1() -> bool {
    global0 = Struct_3(Struct_2(func_2(Struct_5(4294967295u, Struct_4(global0.b.x, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -2158f), -44434i), (~global0.a.b << (select(vec4<u32>(u_input.b.x, u_input.b.x, 70002u, 71576u), vec4<u32>(8119u, global0.b.x, 4294967295u, 70840u), vec4<bool>(true, false, global0.a.a.b, true)) % vec4<u32>(32u))) & (vec4<i32>(16286i, u_input.a, -88328i, -45755i) & _wgslsmith_div_vec4_i32(vec4<i32>(45751i, global0.c.x, 1i, 0i), global0.a.b)), global0.c.zy, 44543i), u_input.b.xx, vec3<i32>(-2147483647i, 1i, ~_wgslsmith_dot_vec2_i32(global0.c.xx >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), global0.c.yz)));
    global0 = Struct_3(global0.a, _wgslsmith_clamp_vec2_u32(~global0.b, vec2<u32>(global0.b.x, 4294967295u), vec2<u32>(0u, global0.b.x)), _wgslsmith_add_vec3_i32(global0.c, global0.c));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(global0.b.x, Struct_4(global0.b.x, global0.c.x)), global0.a.a.a, -2147483647i).a * _wgslsmith_f_op_f32(global0.a.a.a + global0.a.a.a)))), !all(!select(vec3<bool>(global0.a.a.b, false, false), vec3<bool>(true, true, global0.a.a.b), global0.a.a.b)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -168f))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.b.x, u_input.c.x, global0.b.x, _wgslsmith_clamp_u32(select(10590u | _wgslsmith_mod_u32(11273u, u_input.b.x), min(0u, 16672u), !select(global0.a.a.b, true, false)), 0u, 0u));
    var var_1 = vec3<bool>(global0.a.a.b || !global0.a.a.b, func_1(), true);
    let var_2 = Struct_4(52452u, 0i);
    var_1 = vec3<bool>(true, !(!(~u_input.b.x > var_2.a)), func_2(Struct_5(global0.b.x, var_2), 262f, _wgslsmith_clamp_i32(1i, var_2.b, -2147483647i)).b);
    global0 = Struct_3(Struct_2(global0.a.a, -(global0.a.b << (vec4<u32>(4294967295u, u_input.c.x, 11453u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-30627i, global0.c.x)), min(vec2<i32>(u_input.a, 129839i), vec2<i32>(17883i, 4407i))) << (~(~vec2<u32>(0u, global0.b.x)) % vec2<u32>(32u)), 2147483647i), firstTrailingBit(var_0.ww | min(~var_0.xw, vec2<u32>(var_2.a, var_2.a))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~global0.a.b, max(global0.a.b, global0.a.b)), 19118i, -global0.c.x), vec3<i32>(-1i) * -(global0.a.b.yzy << (var_0.zwz % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(global0.b.x, select(0u, 1u, true), ~(var_0.x << (u_input.c.x % 32u))), ~(_wgslsmith_div_vec3_u32(var_0.yxy, var_0.wxx) ^ min(u_input.b, vec3<u32>(var_0.x, 11510u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1343f + _wgslsmith_f_op_f32(step(global0.a.a.a, 327f))) * _wgslsmith_f_op_f32(ceil(-1471f))), global0.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.a + _wgslsmith_f_op_f32(floor(global0.a.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.a.a, 340f))))));
}

