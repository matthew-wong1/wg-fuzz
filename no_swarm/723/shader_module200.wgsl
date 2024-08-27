struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 18>;

var<private> global2: Struct_1;

var<private> global3: Struct_4 = Struct_4(vec3<u32>(73597u, 1u, 0u), true, -1238f, Struct_1(vec4<i32>(-10474i, 2147483647i, 2147483647i, 774i)), Struct_3(117f, vec4<u32>(49263u, 1u, 33148u, 0u), Struct_2(2601f, Struct_1(vec4<i32>(0i, 11307i, 1i, -1i)), vec4<f32>(-1670f, 172f, 1728f, -2071f), Struct_1(vec4<i32>(2147483647i, 0i, 12722i, -8811i))), Struct_1(vec4<i32>(-1i, 2147483647i, 47464i, 0i))));

var<private> global4: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    let var_0 = global4.e;
    var var_1 = _wgslsmith_dot_vec4_i32((var_0.c.b.a << (vec4<u32>(abs(43598u), 4294967295u, 54538u, 3555u | global3.e.b.x) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(global2.a, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-8692i, 2147483647i, -38199i, -2147483647i), global2.a), -64164i, ~(-2147483647i), ~global4.e.d.a.x)), vec4<i32>(select(global0.b.a.x, ~select(u_input.a, global3.d.a.x, false), false), ~(-31202i), -(~(-22229i)), -firstTrailingBit(~global0.b.a.x)));
    global3 = Struct_4(global3.a, !(-136f < _wgslsmith_f_op_f32(select(var_0.c.a, arg_2.x, global3.b))) || true, 1341f, Struct_1(vec4<i32>(-1i) * -(var_0.c.b.a >> (vec4<u32>(u_input.b.x, 4294967295u, 29042u, 91044u) % vec4<u32>(32u)))), global4.e);
    var var_2 = var_0.c.c;
    global4 = Struct_4(_wgslsmith_sub_vec3_u32(~global3.e.b.xzw << (reverseBits(~global4.a) % vec3<u32>(32u)), abs(~vec3<u32>(53503u, global3.e.b.x, 1u)) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.d, global3.e.b.x), var_0.b.x, var_0.b.x >> (0u % 32u)) % vec3<u32>(32u))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f * 216f) + global4.e.c.c.x))), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, global2.a.x, min(1i, -14348i)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(1i, u_input.a)), _wgslsmith_mod_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.d.a.x, u_input.a, global0.b.a.x, var_0.c.d.a.x), vec4<i32>(-48069i, global2.a.x, u_input.a, global2.a.x))), _wgslsmith_mult_i32(global2.a.x << (var_0.b.x % 32u), global2.a.x))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(906f, var_2.x, arg_1.x)) + global0.a), _wgslsmith_clamp_vec4_u32(select(~global4.e.b, ~vec4<u32>(1u, global3.a.x, 0u, 16898u), vec4<bool>(true, true, true, true)), firstTrailingBit(~global3.e.b), global3.e.b), global3.e.c, Struct_1((vec4<i32>(0i, u_input.a, 17511i, 18573i) << (vec4<u32>(4294967295u, 15458u, global3.e.b.x, global3.e.b.x) % vec4<u32>(32u))) ^ global0.b.a)));
    return firstLeadingBit(global3.e.b.x);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 18>();
    let var_0 = Struct_1(select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -10687i, ~(-2147483647i), min(-1i, 57816i)), ~global4.e.c.b.a | global4.e.c.b.a), vec4<i32>(countOneBits(firstTrailingBit(global0.b.a.x)), -global3.d.a.x | 1i, -global2.a.x, 25252i), false || !global3.b));
    global4 = Struct_4(vec3<u32>(u_input.c.x, ~38583u, func_3(vec2<i32>(global3.e.d.a.x, var_0.a.x), !vec2<bool>(global3.b, global4.b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.c, 360f, global4.e.c.a, 114f), vec4<f32>(global3.e.c.a, global4.e.a, -536f, 1491f))))) | _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global4.a, global3.e.b.wzw), ~vec3<u32>(global3.a.x, 0u, global3.e.b.x)), all(vec3<bool>(global3.b, false, false)), global3.c, global3.e.c.d, Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(ceil(global3.c))))), _wgslsmith_mult_vec4_u32(global3.e.b << (min(global4.e.b, vec4<u32>(113640u, u_input.d, global4.a.x, global4.e.b.x)) % vec4<u32>(32u)), vec4<u32>(global4.a.x, ~42327u, ~global3.a.x, ~global3.a.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(global0.d.a), global0.c, global4.d), Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(global2.a.x, 1i, 521i, 1i), firstLeadingBit(global2.a)))));
    let var_1 = global4.a.x;
    var var_2 = vec3<f32>(global0.c.x, -246f, _wgslsmith_f_op_f32(abs(global0.c.x)));
    return global3.d;
}

fn func_1() -> vec2<bool> {
    global2 = func_2();
    global1 = array<vec3<i32>, 18>();
    let var_0 = select(~vec4<u32>(global3.a.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(5495u, u_input.c.x, global4.a.x), _wgslsmith_clamp_u32(2944u, 0u, global4.a.x)), ~(~global3.a.x), u_input.d << (select(global3.e.b.x, global3.e.b.x, global3.b) % 32u)), _wgslsmith_div_vec4_u32(~global3.e.b, global3.e.b), !(!vec4<bool>(true, 0u <= global4.a.x, !global3.b, global4.b)));
    global2 = func_2();
    global3 = Struct_4(max(~global3.e.b.zyy, min(vec3<u32>(var_0.x, 3130u, abs(8269u)), global3.e.b.wxx)), global4.b, global3.e.c.a, Struct_1(vec4<i32>(u_input.a, -2147483647i, firstLeadingBit(-26879i), global4.e.d.a.x)), Struct_3(global4.c, ~abs(vec4<u32>(global4.e.b.x, global3.e.b.x, 1u, 4294967295u)), Struct_2(_wgslsmith_f_op_f32(abs(global0.a)), func_2(), _wgslsmith_f_op_vec4_f32(sign(global3.e.c.c)), global0.d), Struct_1(vec4<i32>(0i, ~global0.b.a.x, global0.d.a.x, ~(-2147483647i)))));
    return select(vec2<bool>(true, all(select(select(vec2<bool>(global4.b, global4.b), vec2<bool>(global3.b, global3.b), vec2<bool>(global4.b, global4.b)), select(vec2<bool>(global3.b, global3.b), vec2<bool>(true, false), vec2<bool>(global3.b, global4.b)), !global3.b))), vec2<bool>(any(vec4<bool>(global3.b, true, any(vec3<bool>(false, global3.b, false)), false)), false), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = ~_wgslsmith_clamp_u32(max(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(2792u, var_0.e.b.x, var_0.e.b.x), vec3<u32>(global4.e.b.x, 84466u, 4178u))) & ~(global3.a.x | var_0.a.x), reverseBits(~arg_1.e.b.x), 95922u);
    global4 = Struct_4(global4.e.b.xyx ^ vec3<u32>(~global4.a.x, 17325u, u_input.b.x), false, _wgslsmith_f_op_f32(-global3.e.a), arg_1.e.d, var_0.e);
    let var_2 = abs(vec2<i32>(_wgslsmith_sub_i32(min(1i, global0.d.a.x), var_0.d.a.x), _wgslsmith_mod_i32(14390i ^ u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.a.x, 47345i, global3.e.d.a.x), global2.a.xyx))));
    var var_3 = Struct_1(vec4<i32>(u_input.a, _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(-36134i, -36649i)), _wgslsmith_clamp_i32(1i, ~(global3.e.d.a.x | 2147483647i), _wgslsmith_sub_i32(u_input.a >> (13184u % 32u), _wgslsmith_mult_i32(arg_1.d.a.x, global3.d.a.x))), -var_2.x));
    return Struct_1(_wgslsmith_add_vec4_i32(select(global2.a >> (vec4<u32>(0u, global4.e.b.x, var_0.a.x, 15184u) % vec4<u32>(32u)), vec4<i32>(7863i, i32(-1i) * -1i, select(1i, 47767i, true), 1i), select(select(vec4<bool>(arg_1.b, true, true, arg_0.x), vec4<bool>(true, var_0.b, var_0.b, global3.b), vec4<bool>(true, global4.b, global4.b, global3.b)), vec4<bool>(arg_1.b, var_0.b, false, false), all(vec3<bool>(true, false, false)))), min(-vec4<i32>(global2.a.x, arg_1.d.a.x, global2.a.x, global3.e.c.b.a.x), vec4<i32>(global3.e.c.b.a.x, firstTrailingBit(arg_1.d.a.x), ~0i, -var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(19376i, -2147483647i, -2147483647i, -(i32(-1i) * -global2.a.x)));
    let var_1 = vec2<i32>(global0.d.a.x, -14877i);
    let var_2 = false;
    let var_3 = func_4(!select(!select(vec2<bool>(global3.b, var_2), vec2<bool>(true, false), global3.b), select(!vec2<bool>(global3.b, var_2), func_1(), select(true, false, true)), true == (global4.c != global4.e.a)), Struct_4(global4.a, (i32(-1i) * -1i) != ~(~global4.e.c.d.a.x), _wgslsmith_f_op_f32(-global3.c), func_2(), global3.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.e.c.c)), global0.c)), global3.e.a, reverseBits(~(6447u | (11388u & global4.a.x))), ~11550u);
}

