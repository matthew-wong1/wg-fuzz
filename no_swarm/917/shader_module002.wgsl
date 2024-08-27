struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1000f, 1856f));

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(1484f, 1074f), vec2<f32>(169f, -1019f), vec2<f32>(666f, 2260f), vec2<f32>(-790f, 261f), vec2<f32>(-1019f, -114f), vec2<f32>(-138f, 231f), vec2<f32>(524f, -896f), vec2<f32>(212f, 643f), vec2<f32>(-1264f, 421f), vec2<f32>(-695f, -520f), vec2<f32>(468f, 982f), vec2<f32>(-1496f, 155f), vec2<f32>(2071f, -1000f), vec2<f32>(-2492f, -570f), vec2<f32>(1864f, -748f), vec2<f32>(-1029f, -450f));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(-4214i));

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)))), -444f);
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(0i, abs(-5700i)));
    var var_2 = Struct_3(!all(vec4<bool>(true, select(true, false, false), select(false, false, false), true)), vec4<u32>(~(~(~u_input.e.x)), _wgslsmith_sub_u32(u_input.a, 10090u), 1481u, ~(~(~u_input.e.x))), !select(true != (1395f > var_0.x), true, true));
    let var_3 = var_2.b.xz;
    let var_4 = _wgslsmith_clamp_vec4_u32(var_2.b, ~reverseBits(~var_2.b & vec4<u32>(23946u, var_3.x, var_3.x, var_2.b.x)), max(vec4<u32>(abs(_wgslsmith_clamp_u32(11998u, var_2.b.x, 8922u)), var_3.x, abs(min(1u, 0u)), min(u_input.a, 124006u)), ~vec4<u32>(max(0u, u_input.a), var_2.b.x, var_2.b.x, _wgslsmith_mod_u32(74551u, u_input.a))));
    return var_0.x;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(Struct_1(~u_input.c.x), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(0u >> (u_input.b.x % 32u))), ~(~select(u_input.b.x, 78541u, false))), 4u)], Struct_1(2147483647i), Struct_1(2147483647i), !select(vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)));
    let var_1 = Struct_5(global3[_wgslsmith_index_u32(abs(reverseBits(0u)), 4u)], u_input.d.yx, ~vec2<u32>(max(18461u, u_input.e.x) >> (~u_input.e.x % 32u), 4294967295u), var_0.e.wyx);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(734f, 866f) - _wgslsmith_f_op_f32(688f + 1000f)), -1872f, _wgslsmith_f_op_f32(func_3()), 1198f)));
    let var_3 = max(~(~(vec4<u32>(u_input.b.x, 83557u, 4294967295u, u_input.b.x) << ((vec4<u32>(u_input.e.x, u_input.b.x, u_input.a, var_1.c.x) << (vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 15042u) % vec4<u32>(32u))) % vec4<u32>(32u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~4294967295u, 1u, 69u), countOneBits(~vec4<u32>(45734u, 1u, 4294967295u, 18199u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, var_1.c.x, u_input.e.x, 9317u), vec4<u32>(118053u, 16485u, u_input.b.x, 568u)))));
    global2 = array<vec2<f32>, 16>();
    return var_1;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1183f, -291f)) - _wgslsmith_f_op_f32(abs(421f))), 525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1128f, -660f, arg_0.x))))), 1f));
    var var_2 = arg_0.x;
    var var_3 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(9221u, 75603u, u_input.a, 25260u), vec4<u32>(4294967295u, var_0.c.x, 4294967295u, 29451u)) | (79639u << (var_0.c.x % 32u)), var_0.c.x);
    var var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, 37918u, var_0.c.x, u_input.a), vec4<u32>(57974u, u_input.a, u_input.a, u_input.b.x)), countOneBits(vec4<u32>(36345u, var_0.c.x, 4294967295u, var_0.c.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(18981u, var_0.c.x, u_input.b.x, 10508u), ~vec4<u32>(9023u, u_input.e.x, var_0.c.x, var_0.c.x))) ^ ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(91279u, 0u, 63514u, u_input.a), vec4<u32>(u_input.a, u_input.e.x, u_input.a, u_input.e.x))), vec4<u32>(~firstLeadingBit(u_input.e.x & u_input.b.x), var_0.c.x >> (~firstLeadingBit(1u) % 32u), reverseBits(54730u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e) ^ ~65423u, var_0.c.x)));
    return Struct_3(var_0.d.x, ~abs(vec4<u32>(u_input.e.x << (36322u % 32u), ~4294967295u, select(var_0.c.x, 0u, arg_0.x), 46839u ^ var_0.c.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(max(-vec2<i32>(1i, u_input.d.x), _wgslsmith_div_vec2_i32(vec2<i32>(-42611i, 28951i), u_input.c))), 6131u);
}

