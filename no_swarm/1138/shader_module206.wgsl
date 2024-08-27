struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<i32> = vec4<i32>(-38926i, 31503i, -17797i, 1i);

var<private> global2: array<i32, 6>;

var<private> global3: Struct_4;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> bool {
    global1 = vec4<i32>(-firstTrailingBit(_wgslsmith_mod_i32(firstTrailingBit(-1i), _wgslsmith_mult_i32(global1.x, global0.x))), 2147483647i, abs(28980i), global1.x);
    global3 = Struct_4(Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global3.a.a.d.x, global3.a.a.d.x, arg_0.x)), 0u), 2147483647i, global3.a.a.c, arg_0), ~(~_wgslsmith_clamp_u32(19666u, 0u, arg_0.x)), 12774u, 0u & arg_0.x));
    var var_0 = Struct_3(select(max(vec4<i32>(9596i, -32167i, firstLeadingBit(43202i), _wgslsmith_mult_i32(-41513i, global0.x)), global3.a.a.c & global3.a.a.c), vec4<i32>(-2147483647i, max(~39130i, ~0i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(38706u, 6u)] << (u_input.c.x % 32u), -46190i), 16612i), true), vec2<f32>(_wgslsmith_f_op_f32(select(-252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) - _wgslsmith_f_op_f32(906f - -507f)), true | arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f * -115f)))));
    global2 = array<i32, 6>();
    var var_1 = global3.a.a.c;
    return arg_1 && (~u_input.a >= (i32(-1i) * -1i));
}

fn func_3() -> vec3<u32> {
    global2 = array<i32, 6>();
    global0 = global1.zzx;
    global1 = global3.a.a.c;
    global3 = Struct_4(Struct_2(Struct_1(min(vec2<u32>(u_input.c.x, u_input.c.x), global3.a.a.a), _wgslsmith_dot_vec4_i32(global3.a.a.c, vec4<i32>(-2147483647i, global3.a.a.b, global1.x, 33078i)), vec4<i32>(2147483647i, 13431i, global0.x, -u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 45095u), u_input.c)), ~_wgslsmith_mult_u32(1u, global3.a.a.a.x), ~(~_wgslsmith_add_u32(0u, u_input.c.x)), firstLeadingBit(36484u)));
    var var_0 = vec2<i32>(-25149i >> (~4294967295u % 32u), 1i);
    return firstLeadingBit(~vec3<u32>(u_input.c.x, global3.a.a.a.x, _wgslsmith_sub_u32(u_input.c.x, abs(global3.a.d))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = global3.a;
    global2 = array<i32, 6>();
    let var_1 = all(select(vec3<bool>(true, func_2(vec3<u32>(74166u, 0u, global3.a.d), all(vec2<bool>(false, true))), true), vec3<bool>(true, true, (arg_0.c.x << (47205u % 32u)) > (global2[_wgslsmith_index_u32(var_0.d, 6u)] >> (25968u % 32u))), vec3<bool>(true, true, true)));
    global1 = -arg_0.c ^ min(arg_0.c, _wgslsmith_sub_vec4_i32(arg_0.c, vec4<i32>(var_0.a.c.x, 1i, 1i, 4964i)));
    global2 = array<i32, 6>();
    return Struct_2(var_0.a, ~global3.a.d, _wgslsmith_dot_vec3_u32(var_0.a.d, var_0.a.d & func_3()), func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    var var_1 = func_1(Struct_1(_wgslsmith_sub_vec2_u32(countOneBits(u_input.c.xy), ~abs(var_0.a.d.yx)), global3.a.a.b, global3.a.a.c, vec3<u32>(~_wgslsmith_mod_u32(74215u, global3.a.d), 1u, _wgslsmith_add_u32(global3.a.c, var_0.b))));
    var_1 = global3.a;
    global0 = -vec3<i32>(global2[_wgslsmith_index_u32(0u, 6u)], -43735i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.x, global3.a.a.b), _wgslsmith_dot_vec3_i32(var_1.a.c.zxz, global1.zzx)) & abs(u_input.a));
    var var_2 = 1122f;
    let var_3 = Struct_3(min(var_0.a.c, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.b, reverseBits(var_1.a.b), 2147483647i, abs(global3.a.a.c.x)), var_1.a.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1030f, -344f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(947f, -545f), vec2<f32>(-1000f, 1506f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(623f)), -1809f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, 452f)))))));
    let var_4 = firstTrailingBit(var_0.d);
    let var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.a.c.x, global2[_wgslsmith_index_u32(~(firstTrailingBit(var_0.b) & ~u_input.c.x), 6u)], _wgslsmith_mod_i32(-2147483647i, -_wgslsmith_dot_vec4_i32(var_0.a.c, vec4<i32>(9867i, var_1.a.c.x, 12026i, var_1.a.b))), global3.a.a.b & ~global2[_wgslsmith_index_u32(~var_5, 6u)]), vec3<u32>(var_1.b, 4294967295u >> (select(u_input.c.x, 1u, true) % 32u), u_input.c.x), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.a.a.x, 10021u, 0u, 1u), vec4<u32>(1u, 1u, var_4, 10707u)), 38718u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.c, u_input.c.x, var_5), vec4<u32>(u_input.c.x, 72179u, 41575u, 1u)), ~var_5), countOneBits(vec4<u32>(u_input.c.x, var_4, var_1.a.a.x, global3.a.c) << (vec4<u32>(68179u, 1u, 4294967295u, 0u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(ceil(var_3.b.x)))), _wgslsmith_f_op_f32(-var_3.b.x), false)), 1i);
}

