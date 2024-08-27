struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21714u;

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_3.e, 53185u, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(global2.b.zxw, vec3<u32>(firstTrailingBit(global2.e), arg_3.e & u_input.a.x, _wgslsmith_mod_u32(0u, 7700u))), ~(~(~0u)), abs(_wgslsmith_add_u32(global2.e, arg_1)), 0u));
    global0 = var_0.x;
    var var_1 = arg_1;
    return ~(~0u << (global2.d % 32u));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_1(30954i, _wgslsmith_add_vec4_u32(global2.b, ~(~vec4<u32>(global2.b.x, 4294967295u, u_input.b, global2.b.x))), vec2<bool>(arg_0.x, all(arg_0)), 9019u, ~min(38869u, global2.e));
    global0 = _wgslsmith_mult_u32(~(~firstTrailingBit(func_3(vec2<i32>(global2.a, global2.a), global2.e, vec2<i32>(-2147483647i, var_0.a), Struct_1(29210i, var_0.b, vec2<bool>(false, false), global2.b.x, global2.b.x)))), 1u);
    return vec4<bool>(any(vec2<bool>(true, false)) & arg_0.x, arg_0.x, false, true);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_i32(~(-firstLeadingBit(global2.a)), _wgslsmith_sub_i32(min(global2.a, ~(-17394i)), 1i)) ^ -2147483647i;
    let var_1 = vec3<bool>(any(vec2<bool>(true, false)), !all(select(vec3<bool>(arg_1.c.x, false, global2.c.x), select(vec3<bool>(false, global2.c.x, false), vec3<bool>(global2.c.x, false, false), vec3<bool>(true, arg_1.c.x, global2.c.x)), vec3<bool>(true, true, global2.c.x))), arg_1.c.x);
    var var_2 = _wgslsmith_dot_vec4_u32(select(global2.b, global2.b, func_2(select(var_1, select(vec3<bool>(false, arg_1.c.x, false), var_1, false), global2.e < 4294967295u))), vec4<u32>(global2.e, select(31515u, 1u, true), 4294967295u, 30409u));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, -951f), -753f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x + 152f))))), -444f, arg_0.x);
    let var_4 = arg_1.d ^ ~u_input.b;
    return min(var_4, abs(~27406u));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = firstLeadingBit(abs(firstLeadingBit(_wgslsmith_dot_vec2_u32(global2.b.yz, ~global2.b.zx))));
    let var_0 = vec4<u32>(3740u, countOneBits(arg_1.x), arg_1.x, ~arg_1.x);
    var var_1 = !select(select(!vec2<bool>(false, global2.c.x), select(!global2.c, !global2.c, !global2.c), true), select(vec2<bool>(any(vec3<bool>(false, global2.c.x, global2.c.x)), true), global2.c, vec2<bool>(true, true)), false);
    let var_2 = Struct_1(global2.a, _wgslsmith_clamp_vec4_u32(select(~global2.b, _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 34136u, 0u), vec4<u32>(u_input.a.x, 27955u, u_input.b, u_input.a.x)), vec4<bool>(!global2.c.x, true, !global2.c.x, true)), ~abs(vec4<u32>(44639u, 0u, 70764u, arg_1.x)), var_0), select(global2.c, !(!global2.c), func_2(func_2(!vec3<bool>(global2.c.x, var_1.x, global2.c.x)).xxx).xz), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, ~(~var_0.x)), 0u), _wgslsmith_mult_u32(var_0.x, reverseBits(1u)));
    var_1 = vec2<bool>(all(vec3<bool>(all(!vec4<bool>(var_1.x, var_2.c.x, false, false)), var_1.x, false)), true);
    return Struct_1(abs(-63206i), ~reverseBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.x, arg_1.x, 45868u, var_0.x)), vec4<u32>(18330u, 1u, var_0.x, arg_0))), !(!var_2.c), 0u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_add_u32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1280f, 1000f, -149f, -631f), vec4<f32>(-2199f, 1149f, 1000f, 203f))) - vec4<f32>(1176f, -1608f, -1638f, 175f)), Struct_1(max(global2.a, global2.a), ~global2.b, vec2<bool>(global2.c.x, global2.c.x), ~u_input.a.x, ~54164u)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global2.b.x, 66366u), ~vec3<u32>(0u, u_input.a.x, u_input.b)), ~_wgslsmith_mult_u32(global2.b.x, u_input.b))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x | _wgslsmith_sub_u32(global2.d, u_input.a.x), _wgslsmith_mod_u32(1u ^ global2.e, global2.d), _wgslsmith_div_u32(global2.b.x, ~global2.e)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(115113u, global2.b.x, 44297u), ~global2.b.wyw, vec3<u32>(global2.e, 4294967295u, global2.d))));
    var var_0 = Struct_1(global2.a, countOneBits(vec4<u32>(abs(u_input.a.x), 4294967295u, _wgslsmith_dot_vec3_u32(global2.b.xxw, global2.b.zyy) ^ ~global2.e, u_input.b)), vec2<bool>(true, all(!vec3<bool>(false, global2.c.x, false)) & true), global2.d, 4294967295u);
    var var_1 = Struct_1(abs(global2.a), var_0.b, var_0.c, u_input.a.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~17337u, _wgslsmith_dot_vec3_u32(global2.b.yyy, var_0.b.wyw)), ~abs(global2.b.zzx))));
    var var_2 = Struct_1(abs(-49852i), select(select(firstTrailingBit(var_1.b & vec4<u32>(1u, 15155u, var_1.b.x, 391u)), ~(~var_0.b), select(vec4<bool>(global2.c.x, true, true, false), !vec4<bool>(false, true, false, var_1.c.x), vec4<bool>(var_0.c.x, var_0.c.x, false, true))), global2.b, false), var_1.c, abs(global2.b.x), countOneBits(global2.d));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2344f, 781f) * vec2<f32>(364f, 1407f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1057f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1267f, 302f)))))));
    var var_4 = abs(vec4<u32>(~(~var_0.e), firstLeadingBit(~(~var_2.e)), ~1u, func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), -vec2<i32>(-1i, -1i)), ~1u, ~countOneBits(vec2<i32>(-2147483647i, var_2.a)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, var_0.a), vec2<i32>(var_2.a, 2147483647i)), var_2.b, vec2<bool>(true, var_2.c.x), u_input.b >> (16467u % 32u), 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(36291u, -_wgslsmith_clamp_i32(reverseBits(_wgslsmith_sub_i32(var_2.a, var_1.a)), global2.a << ((1u << (u_input.a.x % 32u)) % 32u), 15315i));
}

