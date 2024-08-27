struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(40203u, -773f, Struct_1(vec4<i32>(0i, -1i, 13088i, 44860i), 1i));

var<private> global1: Struct_2 = Struct_2(51983u, 1685f, Struct_1(vec4<i32>(i32(-2147483648), 987i, 2147483647i, 2147483647i), i32(-2147483648)));

var<private> global2: array<Struct_3, 28>;

var<private> global3: vec4<f32> = vec4<f32>(-432f, 1166f, 840f, 619f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global2 = array<Struct_3, 28>();
    return vec2<bool>(true, true);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = arg_2.c.a.ww;
    global1 = Struct_2(abs(~select(arg_0, arg_2.a, all(vec2<bool>(false, true)))), -305f, arg_2.c);
    var_0 = (-vec2<i32>(abs(u_input.a.x), countOneBits(-1i)) & (-_wgslsmith_sub_vec2_i32(u_input.a, arg_1.a.a.zz) | select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_1.a.a.x), vec2<i32>(arg_1.a.a.x, -33892i)), firstLeadingBit(vec2<i32>(arg_2.c.a.x, global0.c.a.x)), arg_1.b | arg_1.b))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(1u) ^ arg_0, 68263u), firstTrailingBit(firstLeadingBit(vec2<u32>(global1.a, 4294967295u)))) % vec2<u32>(32u));
    let var_1 = countOneBits(vec2<i32>(-(1i ^ -u_input.a.x), arg_2.c.a.x));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + global1.b), arg_2.b, _wgslsmith_f_op_f32(sign(global0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -865f, -237f) * vec3<f32>(261f, global1.b, global0.b))))));
    return ~(0u >> (_wgslsmith_div_u32(~(arg_0 & arg_2.a), min(_wgslsmith_dot_vec3_u32(vec3<u32>(80495u, 56828u, 81768u), vec3<u32>(82109u, 4294967295u, global0.a)), reverseBits(0u))) % 32u));
}

fn func_1() -> bool {
    global0 = Struct_2(_wgslsmith_mult_u32(~0u, ~global1.a >> (abs(_wgslsmith_sub_u32(49089u, 15670u)) % 32u)), -1000f, Struct_1(vec4<i32>(select(~global1.c.a.x, min(u_input.a.x, global0.c.b), false), global1.c.a.x, 0i, global0.c.b), u_input.a.x));
    var var_0 = reverseBits(global1.c.a.x);
    let var_1 = !select(select(vec2<bool>(true, all(vec4<bool>(false, true, true, false))), func_2(abs(2147483647i)), vec2<bool>(true, true)), vec2<bool>(2147483647i == (global0.c.a.x >> (global0.a % 32u)), false), vec2<bool>(true, true));
    global0 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, ~(1u << (global0.a % 32u)), abs(_wgslsmith_div_u32(global1.a, global1.a))), ~vec3<u32>(func_3(global1.a, global2[_wgslsmith_index_u32(global1.a, 28u)], Struct_2(4294967295u, global1.b, global1.c), -1929f), _wgslsmith_sub_u32(1u, global0.a), 1u)), -128f, global1.c);
    let var_2 = Struct_4(!(!var_1.x), Struct_1(vec4<i32>(firstLeadingBit(global0.c.a.x), abs(select(u_input.a.x, u_input.a.x, true)), -21031i, global1.c.b ^ global1.c.b), ~global0.c.a.x), Struct_1(global0.c.a, _wgslsmith_div_i32(-global0.c.a.x, -28948i) ^ _wgslsmith_add_i32(1i, global0.c.a.x)));
    return (true | var_2.a) || any(select(!select(vec4<bool>(var_2.a, var_2.a, true, true), vec4<bool>(true, false, var_1.x, var_1.x), var_2.a), select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_2.a, var_2.a, true, true), vec4<bool>(var_2.a, true, true, var_2.a), vec4<bool>(var_2.a, var_1.x, true, false)), any(vec3<bool>(true, var_1.x, false))), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 28>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(global3.xzy));
    let var_2 = vec2<bool>(select(true, true, true), true && all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1996f, var_1.x, 705f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 970f, -434f, -186f) - vec4<f32>(1000f, 567f, -115f, global0.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, -810f, -1039f, var_1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-497f, global0.b, global1.b, 1655f), vec4<f32>(global0.b, global3.x, global3.x, 716f))) - vec4<f32>(global1.b, var_1.x, var_1.x, global3.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global3.x, 1000f, -609f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(367f, global3.x, -2412f, global0.b))))))));
    global0 = Struct_2(~global1.a, 663f, global1.c);
    global3 = vec4<f32>(-992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-1041f + var_1.x), false)), 1306f))), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f - _wgslsmith_div_f32(-1187f, 194f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)) + global0.b));
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(select(vec3<u32>(4294967295u, global0.a, global0.a), vec3<u32>(0u, 4294967295u, global1.a), true)), ~(~select(vec3<u32>(6033u, 13272u, 60854u), vec3<u32>(global1.a, 39473u, global0.a), false))), ~vec3<u32>(func_3(min(global0.a, 24990u), global2[_wgslsmith_index_u32(global0.a ^ 4590u, 28u)], Struct_2(global0.a, 956f, Struct_1(global1.c.a, 0i)), _wgslsmith_f_op_f32(-global0.b)), ~func_3(global0.a, global2[_wgslsmith_index_u32(76098u, 28u)], Struct_2(4294967295u, 1119f, global1.c), 377f), ~_wgslsmith_sub_u32(4294967295u, 60169u)));
    let var_4 = global0.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(489f, ~(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, global0.a, var_3.x), vec3<u32>(58261u, 0u, 15841u), vec3<u32>(global1.a, 0u, 0u)))), abs(_wgslsmith_mult_i32(~2147483647i, -global1.c.a.x)) & _wgslsmith_mod_i32(global0.c.a.x, 2147483647i), _wgslsmith_sub_u32(~0u, global1.a));
}

