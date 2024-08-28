struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: vec4<f32> = vec4<f32>(1114f, 548f, 228f, 746f);

var<private> global2: array<vec2<i32>, 17>;

var<private> global3: array<f32, 9>;

var<private> global4: array<Struct_3, 20>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    global3 = array<f32, 9>();
    global3 = array<f32, 9>();
    global3 = array<f32, 9>();
    var var_0 = Struct_3(Struct_1(vec4<u32>(arg_1.a.x, ~(~arg_0.b.c.x), arg_0.a.b, abs(8624u)), 4294967295u, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, arg_0.a.c.x, 1u, 0u), arg_1.c), abs(vec4<u32>(1u, arg_1.c.x, 4294967295u, arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.d * 1269f))), 1f)), arg_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(arg_2.yxx ^ vec3<i32>(2147483647i, 2147483647i, u_input.a.x)), firstLeadingBit(arg_2.yzy) & ~vec3<i32>(-33392i, 47646i, -2254i)));
    var var_1 = arg_0;
    return select(vec2<i32>(countOneBits(var_0.c), _wgslsmith_clamp_i32(arg_2.x & -2147483647i, 1i, arg_2.x)), u_input.a, true);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> u32 {
    let var_0 = func_3(Struct_5(arg_1.a, arg_1.b), arg_1.a, _wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c, -1i, -2924i, 1i) ^ vec4<i32>(u_input.a.x, -2551i, 36842i, arg_0), ~vec4<i32>(arg_0, -27912i, -8785i, 0i)), abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(2147483647i, -2147483647i, 7982i, arg_1.c), vec4<i32>(0i, 58014i, -8968i, arg_1.c), vec4<bool>(false, true, false, true)), abs(vec4<i32>(-1i, arg_1.c, 2147483647i, arg_1.c))))));
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_3(Struct_1(arg_1.a.a, 22973u, select(arg_1.a.a, vec4<u32>(1u, arg_1.b.a.x | arg_1.a.c.x, 14237u, min(37490u, 30470u)), !select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, false, true, var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1573f))))), Struct_1(vec4<u32>(~(~arg_1.a.c.x), _wgslsmith_sub_u32(71962u, max(7039u, 1u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(59107u, arg_1.a.c.x), ~arg_1.a.a.x, 0u), 118990u), _wgslsmith_mult_u32(4294967295u, ~max(0u, arg_1.b.c.x)), select(~arg_1.a.c, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.b.c, vec4<u32>(1u, arg_1.a.c.x, 2902u, arg_1.a.a.x)), arg_1.a.c), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, false))), 424f), var_0.x ^ _wgslsmith_dot_vec2_i32(-min(vec2<i32>(-56377i, u_input.a.x), var_0), _wgslsmith_mult_vec2_i32(-global2[_wgslsmith_index_u32(arg_1.a.a.x, 17u)], u_input.a)));
    var var_3 = ~_wgslsmith_mod_u32(~var_2.a.a.x, var_2.a.a.x) <= _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(var_2.b.c, vec4<u32>(4294967295u, var_2.b.c.x, 1u, 0u))), 9453u, 1u);
    var var_4 = Struct_4(Struct_3(var_2.b, var_2.a, var_2.c << (~reverseBits(var_2.a.b) % 32u)), vec3<i32>(-23215i, 49458i >> (~_wgslsmith_mod_u32(1u, arg_1.a.a.x) % 32u), var_0.x));
    return ~_wgslsmith_mult_u32(~countOneBits(~var_2.b.a.x), var_2.b.b);
}

fn func_1() -> Struct_3 {
    var var_0 = ~_wgslsmith_mult_u32(1u ^ ~_wgslsmith_clamp_u32(33279u, 58253u, 0u), ~(firstTrailingBit(8209u) ^ 0u));
    let var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~(~1u), func_2(1i, global4[_wgslsmith_index_u32(0u, 20u)]))), 9u)];
    var var_2 = global4[_wgslsmith_index_u32(~1u, 20u)];
    var_2 = Struct_3(Struct_1(reverseBits((vec4<u32>(var_2.b.a.x, var_2.a.b, var_2.a.a.x, var_2.a.c.x) ^ var_2.b.a) >> (~vec4<u32>(var_2.a.b, var_2.b.c.x, 45517u, var_2.a.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_u32(min(_wgslsmith_div_u32(var_2.a.c.x, var_2.a.b), _wgslsmith_mod_u32(24999u, var_2.a.c.x)), _wgslsmith_mod_u32(var_2.b.c.x, var_2.a.c.x), func_2(u_input.a.x, Struct_3(Struct_1(vec4<u32>(var_2.a.b, var_2.b.b, 0u, 55358u), var_2.a.c.x, var_2.b.a, -143f), Struct_1(vec4<u32>(1u, 13618u, var_2.b.c.x, 17588u), 0u, vec4<u32>(22608u, var_2.b.c.x, var_2.a.c.x, var_2.a.c.x), -182f), u_input.a.x))), vec4<u32>(4294967295u, (var_2.b.c.x | 0u) ^ _wgslsmith_clamp_u32(26265u, var_2.a.c.x, var_2.a.c.x), firstTrailingBit(59735u), 20380u), global3[_wgslsmith_index_u32(~abs(~var_2.a.c.x), 9u)]), Struct_1(max(select(var_2.b.c >> (var_2.a.c % vec4<u32>(32u)), ~var_2.b.c, vec4<bool>(true, true, true, true)), (vec4<u32>(var_2.a.b, var_2.a.c.x, 40279u, 28794u) | vec4<u32>(var_2.a.a.x, 0u, var_2.a.c.x, 8776u)) | ~vec4<u32>(46908u, 1u, var_2.b.a.x, var_2.b.b)), ~min(1u, var_2.b.c.x), var_2.b.a, var_2.b.d), ~var_2.c);
    global4 = array<Struct_3, 20>();
    return Struct_3(Struct_1(vec4<u32>(~(~4294967295u), var_2.a.c.x, ~_wgslsmith_sub_u32(88865u, 23618u), ~func_2(2147483647i, Struct_3(Struct_1(vec4<u32>(var_2.a.b, 15391u, 26068u, 1u), 9391u, var_2.a.c, var_2.b.d), Struct_1(var_2.b.c, 1u, vec4<u32>(44678u, var_2.a.c.x, var_2.a.c.x, var_2.b.c.x), -684f), 1i))), _wgslsmith_dot_vec2_u32(~var_2.b.c.xy, var_2.a.a.xw), ~vec4<u32>(func_2(86003i, global4[_wgslsmith_index_u32(var_2.b.a.x, 20u)]), 1u, 4294967295u, 7910u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d))))), Struct_1(vec4<u32>(reverseBits(0u), var_2.a.a.x, 37549u, var_2.a.b), var_2.b.b, var_2.b.c << (_wgslsmith_mod_vec4_u32(~var_2.a.c, var_2.b.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.d * -1000f) - global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_add_u32(40952u, 0u)), 9u)])), ~42736i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1890i;
    let var_1 = func_1();
    var var_2 = ~var_1.a.c.x;
    global4 = array<Struct_3, 20>();
    let var_3 = select(!select(vec4<bool>(true, true, false, global1.x == 489f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, select(any(vec3<bool>(true, true, true)), -36114i >= u_input.a.x, var_1.b.b > 19752u) && true, true), true);
    var var_4 = Struct_2(max(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0, var_0, var_1.c)) | min(vec3<i32>(u_input.a.x, 0i, var_0), vec3<i32>(u_input.a.x, var_0, var_0)), countOneBits(vec3<i32>(var_0, 38761i, u_input.a.x) & vec3<i32>(u_input.a.x, var_0, 55733i))), ~vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 0i, _wgslsmith_clamp_i32(var_1.c, var_0, var_1.c))));
    global3 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.d, abs(-46869i));
}

