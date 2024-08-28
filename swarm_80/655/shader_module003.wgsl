struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(359f, Struct_1(vec3<i32>(1i, i32(-2147483648), -20538i), 92570u, vec3<bool>(true, true, true), 1000f, vec4<u32>(54547u, 56085u, 4294967295u, 0u)), 32034u), Struct_2(-901f, Struct_1(vec3<i32>(0i, -10092i, 53950i), 4294967295u, vec3<bool>(true, false, false), -1000f, vec4<u32>(4294967295u, 1u, 40462u, 1u)), 1u), Struct_2(1270f, Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 1u, vec3<bool>(false, true, false), -774f, vec4<u32>(4294967295u, 0u, 0u, 1u)), 49630u), Struct_2(348f, Struct_1(vec3<i32>(-1i, 0i, 1i), 34521u, vec3<bool>(true, true, true), -878f, vec4<u32>(32780u, 4294967295u, 43910u, 56975u)), 1u), Struct_2(-324f, Struct_1(vec3<i32>(2147483647i, 0i, -10170i), 29831u, vec3<bool>(true, true, false), -136f, vec4<u32>(34104u, 1u, 4294967295u, 4294967295u)), 19505u), Struct_2(-1000f, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -18242i), 1u, vec3<bool>(false, false, false), -744f, vec4<u32>(0u, 1u, 50115u, 24723u)), 34120u), Struct_2(-682f, Struct_1(vec3<i32>(-1i, -1i, -38555i), 4294967295u, vec3<bool>(false, true, true), 1000f, vec4<u32>(23642u, 4294967295u, 4294967295u, 10573u)), 1735u), Struct_2(-843f, Struct_1(vec3<i32>(1i, 8132i, -1i), 107700u, vec3<bool>(true, false, false), 1760f, vec4<u32>(4294967295u, 35798u, 27554u, 46478u)), 1u), Struct_2(1000f, Struct_1(vec3<i32>(2147483647i, -18376i, 20467i), 40481u, vec3<bool>(false, true, false), 1448f, vec4<u32>(4294967295u, 4388u, 15867u, 97044u)), 60612u), Struct_2(-758f, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 5728i), 8344u, vec3<bool>(true, true, true), 356f, vec4<u32>(4294967295u, 4294967295u, 42224u, 1u)), 56209u), Struct_2(-1000f, Struct_1(vec3<i32>(1i, 0i, 8862i), 11419u, vec3<bool>(false, false, false), 1455f, vec4<u32>(4294967295u, 62646u, 25964u, 14059u)), 5884u), Struct_2(665f, Struct_1(vec3<i32>(-1909i, i32(-2147483648), 1i), 1u, vec3<bool>(false, true, false), -1000f, vec4<u32>(43030u, 68354u, 4294967295u, 87405u)), 4294967295u), Struct_2(-1000f, Struct_1(vec3<i32>(-10983i, 0i, 20531i), 4294967295u, vec3<bool>(true, true, false), 1000f, vec4<u32>(55320u, 5603u, 60474u, 4294967295u)), 2252u), Struct_2(614f, Struct_1(vec3<i32>(19868i, -46991i, -3479i), 72764u, vec3<bool>(true, false, false), 1981f, vec4<u32>(50126u, 70058u, 1u, 4294967295u)), 1u), Struct_2(188f, Struct_1(vec3<i32>(0i, -15074i, i32(-2147483648)), 77255u, vec3<bool>(true, true, false), 200f, vec4<u32>(0u, 4294967295u, 15355u, 12532u)), 0u), Struct_2(-1404f, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 6925i), 0u, vec3<bool>(true, false, false), 769f, vec4<u32>(1330u, 89290u, 33930u, 0u)), 95251u));

var<private> global1: array<vec4<bool>, 2>;

var<private> global2: array<vec2<i32>, 31>;

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(80793u, 0u, 28753u, 0u), vec4<u32>(61386u, 127135u, 49033u, 118723u), vec4<u32>(0u, 1u, 16238u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 49817u, 21037u), vec4<u32>(20805u, 41095u, 42298u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 43651u, 1u, 0u), vec4<u32>(69445u, 1u, 1u, 7726u));

var<private> global4: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(select(firstLeadingBit(arg_0.a), vec3<i32>(38610i, ~(-2147483647i), u_input.c.x), arg_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(arg_0.e.x, 79036u | arg_0.b), _wgslsmith_div_u32(~u_input.b, 1u)), ~u_input.a), !vec3<bool>(any(select(arg_0.c.zx, vec2<bool>(arg_0.c.x, true), vec2<bool>(true, arg_0.c.x))), false, true), _wgslsmith_f_op_f32(exp2(arg_0.d)), _wgslsmith_mod_vec4_u32(arg_0.e, _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(arg_0.e, vec4<u32>(arg_0.e.x, 1u, arg_0.e.x, arg_0.e.x))), vec4<u32>(u_input.b, _wgslsmith_mult_u32(arg_0.b, 1u), 31401u, 1u), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e.x, 27443u, arg_0.e.x, 11955u), vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.b))))));
    let var_1 = vec4<f32>(var_0.d, -608f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(arg_0.d, -615f))), arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + var_0.d));
    global1 = array<vec4<bool>, 2>();
    global3 = array<vec4<u32>, 9>();
    let var_2 = u_input.b;
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: f32) -> bool {
    var var_0 = arg_2;
    return var_0.c.b.c.x == any(vec4<bool>(false, arg_2.c.b.c.x, all(!arg_0.c.b.c), func_3(var_0.c.b) != var_0.c.b.c.x));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(~u_input.a.yz ^ (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), u_input.a.xx) | ~u_input.a.xy)), u_input.a.zz);
    global0 = array<Struct_2, 16>();
    var var_1 = vec4<bool>(!(!func_2(Struct_3(vec3<i32>(7639i, u_input.c.x, u_input.c.x), vec2<f32>(742f, 1314f), Struct_2(-1000f, Struct_1(u_input.c, 94434u, vec3<bool>(true, true, false), -415f, global3[_wgslsmith_index_u32(var_0.x, 9u)]), var_0.x), vec4<f32>(-516f, 220f, -1068f, 360f)), firstLeadingBit(u_input.c), Struct_3(vec3<i32>(1i, u_input.c.x, u_input.c.x), vec2<f32>(-817f, 323f), Struct_2(-152f, Struct_1(vec3<i32>(0i, u_input.c.x, -1i), u_input.a.x, vec3<bool>(true, false, true), -1221f, vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u)), 0u), vec4<f32>(-738f, 1093f, -347f, -1065f)), 115f)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(Struct_1(vec3<i32>(u_input.c.x, 1i, 3780i), 10807u, vec3<bool>(false, false, true), 773f, global3[_wgslsmith_index_u32(1u, 9u)])), true, false, any(vec3<bool>(false, true, false))), false && all(vec2<bool>(true, true)))), true, all(vec2<bool>(true && any(vec3<bool>(false, true, true)), true)));
    var var_2 = 1u;
    global0 = array<Struct_2, 16>();
    return global0[_wgslsmith_index_u32(var_0.x, 16u)];
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 60778u, u_input.a.x), _wgslsmith_add_vec3_u32(arg_0.c.b.e.zzx, vec3<u32>(47549u, arg_0.c.b.b, u_input.b)))), max(_wgslsmith_mult_u32(50723u, u_input.a.x), u_input.b | u_input.b) | arg_0.c.b.b, !arg_0.c.b.c.x), abs(min(u_input.a.x, ~(u_input.a.x & 4294967295u)))), 16u)];
    global2 = array<vec2<i32>, 31>();
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-601f, var_0.b.d) * 873f))) * func_1().a);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.b.d))))), 604f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(_wgslsmith_div_vec3_i32(u_input.c, ~vec3<i32>(2147483647i, u_input.c.x, -57368i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) + 529f), -112f), func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, -1700f, -830f, 832f)))))));
    var var_1 = !(!func_4(func_4(Struct_3(vec3<i32>(u_input.c.x, u_input.c.x, 11984i), var_0.d.zy, global0[_wgslsmith_index_u32(49733u, 16u)], vec4<f32>(var_0.c.b.d, 426f, var_0.d.x, var_0.c.a)))).c.b.c.x);
    var var_2 = !(!(!var_0.c.b.c.x));
    var var_3 = var_0.c;
    global0 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b.a.x, vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.c.b.a, _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, 30290i, 1i), -var_3.b.a)), abs(var_3.b.a.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(5532i, -38961i, u_input.c.x), select(vec3<i32>(-1i, var_0.a.x, 55049i), vec3<i32>(-2147483647i, 0i, -3760i), false)), 0i, _wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_mult_i32(-var_3.b.a.x, 14625i))));
}

