struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 132f;

var<private> global1: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<u32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = u_input.b;
    global3 = array<u32, 9>();
    var var_1 = countOneBits(0u);
    var_1 = 4294967295u;
    let var_2 = firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 26454u, 11404u), vec3<u32>(u_input.b, 30335u, var_0)), vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(2629u, 9u)], 1u) ^ vec3<u32>(global3[_wgslsmith_index_u32(var_0, 9u)], 1u, var_0), ~vec3<u32>(var_0, global3[_wgslsmith_index_u32(65426u, 9u)], 0u)) >> ((max(vec3<u32>(var_0, var_0, 3563u), vec3<u32>(global3[_wgslsmith_index_u32(var_0, 9u)], u_input.b, global3[_wgslsmith_index_u32(u_input.b, 9u)])) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 10129u), vec3<u32>(var_0, 40176u, var_0)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return var_2.x;
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_mod_u32(func_3(true, u_input.c, vec4<f32>(arg_0.b.x, -1350f, arg_0.b.x, 243f), all(vec4<bool>(arg_0.a, arg_0.a, true, true))) >> (countOneBits(abs(98181u)) % 32u), u_input.b), ~2100u, max(abs(1u), max(_wgslsmith_sub_u32(30515u, global3[_wgslsmith_index_u32(countOneBits(4294967295u), 9u)]), 50773u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32((u_input.b >> (global3[_wgslsmith_index_u32(59581u, 9u)] % 32u)) >> (global3[_wgslsmith_index_u32(abs(1u), 9u)] % 32u), ~arg_0.c, global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(arg_0.c, 9u)]), 9u)]), ~0u));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(687f + _wgslsmith_f_op_f32(f32(-1f) * -481f));
    var var_0 = Struct_4(Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, arg_0, -2147483647i, -1i), vec4<i32>(arg_0, 33808i, arg_0, -51409i)), -(vec4<i32>(u_input.c, arg_0, u_input.a.x, 1i) ^ vec4<i32>(-14558i, u_input.c, -28073i, arg_0)))));
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(func_2(Struct_3(false, arg_1, global3[_wgslsmith_index_u32(0u, 9u)])), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54635u, 9u)], 9u)], u_input.b, 1u, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, 0u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(81285u, u_input.b, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 9u)], 9u)]), vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(47886u, 9u)], 1u, 38096u))), reverseBits(~vec4<u32>(global3[_wgslsmith_index_u32(1u << (1u % 32u), 9u)], global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 73887u, ~25329u)));
    var_0 = Struct_4(var_0.a);
    let var_2 = Struct_2(Struct_1(vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.a.x ^ arg_0, -1i, ~arg_0), -7558i, arg_0)), Struct_1(abs(max(vec4<i32>(-17768i, u_input.c, -1i, 2147483647i), ~var_0.a.a))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, global3[_wgslsmith_index_u32(1u, 9u)] | 0u, ~0u), var_1.zzx | var_1.yyx));
    return Struct_3(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-204f, arg_1.x, 1174f, 991f))))))), var_2.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    global2 = array<Struct_1, 17>();
    global0 = _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1.x))))));
    global3 = array<u32, 9>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)));
    global1 = array<vec2<bool>, 9>();
    return any(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(0u, u_input.b << (u_input.b % 32u), 1u, 11225u);
    let var_1 = vec4<bool>(true, func_4(func_1(_wgslsmith_mult_i32(abs(1i), 1i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(959f, 688f, 967f, 445f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-696f * -313f), _wgslsmith_f_op_f32(sign(986f)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1309f - 778f) * _wgslsmith_f_op_f32(972f - 632f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f - -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, 165f, -1972f))), any(vec2<bool>(true, func_4(Struct_3(false, vec4<f32>(1094f, -703f, 127f, -381f), var_0.x), vec4<f32>(-312f, -595f, -1000f, 957f), vec3<f32>(613f, -251f, 1000f)))) && (any(global1[_wgslsmith_index_u32(u_input.b >> (4104u % 32u), 9u)]) && any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false))), select(!all(vec3<bool>(true, true, true)) & (true || all(vec3<bool>(true, false, true))), true, 0i >= _wgslsmith_dot_vec4_i32(select(vec4<i32>(-24740i, 1i, 1i, u_input.a.x), vec4<i32>(u_input.c, u_input.a.x, u_input.c, 7594i), false), -vec4<i32>(-8595i, 1i, 2147483647i, 8135i))));
    var var_2 = Struct_4(Struct_1(abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c, 45859i, -1i, u_input.a.x)), min(vec4<i32>(28225i, u_input.c, 3037i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-438f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f - 1154f) + _wgslsmith_f_op_f32(sign(-527f)))))));
    var_0 = vec4<u32>(global3[_wgslsmith_index_u32(18661u, 9u)], 87027u, 1u, 18253u ^ firstLeadingBit(_wgslsmith_add_u32(23038u, func_1(49683i, vec4<f32>(-1432f, 1416f, -994f, 105f)).c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-538f)), _wgslsmith_f_op_f32(1526f + 854f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1722f)) * _wgslsmith_f_op_f32(2515f - -685f)))) - _wgslsmith_f_op_f32(select(-459f, _wgslsmith_f_op_f32(f32(-1f) * -1455f), true && all(vec4<bool>(false, true, true, true))))), abs(~((u_input.c | u_input.a.x) >> (~80264u % 32u))));
}

