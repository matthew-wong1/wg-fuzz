struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(1i, 2147483647i), vec2<i32>(49582i, i32(-2147483648)), vec2<i32>(2147483647i, -11968i), vec2<i32>(2147483647i, 28593i), vec2<i32>(1i, -1i), vec2<i32>(24981i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(29135i, 1i), vec2<i32>(48224i, 1i), vec2<i32>(1i, -71i));

var<private> global3: f32 = -961f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_4(-1i, firstTrailingBit(~countOneBits(~vec4<u32>(0u, 45013u, 1u, 70299u))), _wgslsmith_dot_vec4_i32(~(-firstTrailingBit(vec4<i32>(5255i, u_input.a, -5810i, u_input.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, ~1i, firstLeadingBit(40919i), u_input.a << (132021u % 32u)), abs(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, 0i) & vec4<i32>(1i, -14312i, u_input.a, -1i)))));
    return select(_wgslsmith_mod_i32(~1i, countOneBits(~(-3849i))) << (reverseBits(~max(4294967295u, var_0.b.x)) % 32u), _wgslsmith_mult_i32(firstTrailingBit(-1i), _wgslsmith_sub_i32(-1i, 0i)), any(arg_1));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_5(Struct_3(countOneBits(vec4<i32>(arg_0.d.d, u_input.a | 39870i, ~(-2147483647i), ~arg_2)), _wgslsmith_mult_vec4_i32(firstTrailingBit(arg_0.a.b), select(arg_0.a.b, vec4<i32>(26613i, 1i, -1i, 20361i), arg_0.d.b.c))), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 5634i), arg_1 & (1i ^ func_3(vec3<i32>(arg_0.d.a, u_input.a, arg_0.a.b.x), arg_0.c)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -18622i, -29589i) | arg_0.d.b.d, vec3<i32>(-29155i, u_input.a, -26109i)), ~countOneBits(_wgslsmith_mult_i32(arg_0.b.x, arg_2))), arg_0.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(49457u, 0u, arg_0.d.b.b.x), vec3<u32>(arg_0.d.b.b.x, 1u, 1u)), 9988u), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.d.b.b.x, arg_0.d.b.b.x)), abs(arg_0.d.b.b.zz)), countOneBits(arg_0.d.b.b.x | arg_0.d.b.b.x)), vec3<u32>(1u, 4294967295u, _wgslsmith_add_u32(~48603u, _wgslsmith_mod_u32(4294967295u, 1u)))), 6u)]);
    let var_1 = -6573i;
    global1 = array<Struct_2, 6>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x)));
    var var_2 = _wgslsmith_mult_vec3_u32(var_0.d.b.b.xxz, _wgslsmith_add_vec3_u32(var_0.d.b.b.xyx, vec3<u32>(abs(53326u), countOneBits(93027u), arg_0.d.b.b.x)));
    return max(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x | var_2.x, 0u, var_2.x), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d.b.b.x, 61795u, var_2.x), arg_0.d.b.b.wyy)), 4294967295u);
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<u32>(~63010u, 1u ^ ~func_2(Struct_5(Struct_3(vec4<i32>(u_input.a, -1i, 490i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(13372i, u_input.a, -1i, u_input.a), vec2<bool>(false, false), global1[_wgslsmith_index_u32(18703u, 6u)]), -1i, -1i, vec4<f32>(1350f, -1045f, -941f, -1412f)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(45606u, 4294967295u, 4294967295u)), vec3<u32>(13014u, abs(1u), ~55041u)), ~1u) & _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(83917u, 6051u, 59575u, 39654u)), max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 80990u, 34694u, 4294967295u))), reverseBits(vec4<u32>(~1u, 56449u, select(33790u, 1u, false), 13148u)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f))));
    let var_2 = -2183f;
    let var_3 = var_2;
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.x, 0u, ~(var_0.x << ((var_0.x << (1u % 32u)) % 32u))), 6u)];
    return Struct_4(-2147483647i, var_0, 48940i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_0 = vec2<bool>(!any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, true, false), false)), false);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-28550i, u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a) | -1i, ~u_input.a & 0i) << (vec4<u32>(4294967295u, max(1u, ~4294967295u), select(~1u, countOneBits(20386u), all(vec3<bool>(var_0.x, var_0.x, false))), ~countOneBits(2700u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(~(u_input.a & u_input.a), u_input.a), _wgslsmith_clamp_i32(19306i, u_input.a & 2147483647i, u_input.a | u_input.a) & 28698i, ~(-_wgslsmith_mod_i32(1i, -5251i)), firstLeadingBit(abs(u_input.a))));
    var var_2 = 202f;
    let var_3 = func_1();
    var_0 = vec2<bool>(0u > var_3.b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-977f, _wgslsmith_f_op_f32(trunc(1521f))), -303f)))), reverseBits(reverseBits(~select(var_3.b.wz, vec2<u32>(6198u, var_3.b.x), vec2<bool>(false, var_0.x)))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~var_3.b.wy, ~(~vec2<u32>(var_3.b.x, var_3.b.x))), var_3.b.xw), global2[_wgslsmith_index_u32(~var_3.b.x, 10u)], u_input.a);
}

