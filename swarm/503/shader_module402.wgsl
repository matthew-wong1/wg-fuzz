struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: Struct_4 = Struct_4(Struct_3(-1i, vec4<bool>(false, true, false, false), -1375f, Struct_2(Struct_1(false, vec3<u32>(0u, 29861u, 22574u), 38424u, true, 43293i), Struct_1(true, vec3<u32>(104750u, 73972u, 2372u), 4294967295u, false, 9436i), -467f, Struct_1(true, vec3<u32>(0u, 34539u, 1u), 44713u, false, 4080i), 2147483647i)), vec2<i32>(0i, -36726i), vec4<bool>(true, true, false, true));

var<private> global2: f32;

var<private> global3: array<i32, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(~arg_1.wxy, ~_wgslsmith_mod_vec3_u32(select(abs(vec3<u32>(1u, 4294967295u, arg_0.x)), ~arg_0, true), vec3<u32>(_wgslsmith_div_u32(0u, 49440u), arg_0.x ^ global1.a.d.a.c, 1u)));
    global2 = global1.a.c;
    let var_1 = Struct_4(Struct_3(_wgslsmith_clamp_i32(u_input.c.x, abs(1643i), global1.b.x), vec4<bool>(!global1.c.x, true, global1.c.x, global1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1287f)), global1.a.d), vec2<i32>(_wgslsmith_mod_i32(-u_input.c.x, global3[_wgslsmith_index_u32(1u, 24u)] & global3[_wgslsmith_index_u32(var_0, 24u)]) & _wgslsmith_dot_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(var_0, 24u)], global1.a.a, u_input.c.x), vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(0u, 24u)], -2147483647i)), 0i), !global1.a.b);
    var var_2 = Struct_4(var_1.a, vec2<i32>(~(-62551i), i32(-1i) * -14917i), select(select(vec4<bool>(var_1.c.x, !arg_2, global1.c.x, var_1.c.x), vec4<bool>(all(vec2<bool>(true, false)), arg_2, !var_1.c.x, true || var_1.a.d.d.a), var_1.a.b.x), select(select(vec4<bool>(true, global1.a.b.x, false, false), var_1.a.b, global1.c), !var_1.c, vec4<bool>(-1i > u_input.c.x, false, true, arg_2)), false));
    let var_3 = reverseBits(global1.b.x);
    return -vec3<i32>(~(~40086i), -2147483647i, var_3);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(func_3(vec3<u32>(u_input.d.x & ~1u, global1.a.d.a.b.x, ~global1.a.d.d.c), reverseBits(~select(vec4<u32>(u_input.d.x, global1.a.d.d.c, 8909u, 1u), vec4<u32>(49793u, 66170u, global1.a.d.b.b.x, 1u), global1.c.x)), true, -925f), _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(global3[_wgslsmith_index_u32(~u_input.d.x, 24u)]), 1i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, 0u, 1u), 24u)]), ~(-(vec3<i32>(global3[_wgslsmith_index_u32(75425u, 24u)], u_input.b, global1.a.d.a.e) | vec3<i32>(-30449i, 40091i, 2147483647i)))));
    let var_1 = Struct_3(~((var_0.x | _wgslsmith_sub_i32(2147483647i, 2147483647i)) & -1i), !global1.c, 735f, global1.a.d);
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1.d.d.e, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.a, 2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(var_1.d.d.b.x, 24u)], global3[_wgslsmith_index_u32(global1.a.d.a.c, 24u)], var_1.a)))), _wgslsmith_sub_i32(~firstTrailingBit(u_input.a), 0i), _wgslsmith_sub_i32(func_3(~vec3<u32>(global1.a.d.d.c, 73890u, 37615u), ~vec4<u32>(36587u, u_input.d.x, var_1.d.d.b.x, global1.a.d.d.b.x), false, _wgslsmith_f_op_f32(min(var_2, -1000f))).x, -1i)), vec3<i32>(0i, 2147483647i, -7366i));
    let var_4 = vec2<i32>(_wgslsmith_clamp_i32(2147483647i, select(~1i, i32(-1i) * -4696i, var_1.d.a.d), -2933i), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], 1i), var_0.x)) & 2147483647i);
    return !((true | all(global1.c.yz)) || all(select(select(vec4<bool>(true, global1.c.x, false, false), vec4<bool>(global1.a.b.x, var_1.d.a.a, global1.c.x, global1.c.x), vec4<bool>(true, false, true, global1.a.d.b.d)), var_1.b, vec4<bool>(true, global1.c.x, false, true))));
}

fn func_1() -> StorageBuffer {
    let var_0 = global1.c.x;
    let var_1 = vec2<bool>(!func_2(), false);
    let var_2 = Struct_1(any(select(!select(global1.c, vec4<bool>(global1.a.b.x, global1.c.x, global1.c.x, true), vec4<bool>(var_1.x, global1.c.x, true, true)), vec4<bool>(false, true, all(global1.c.yxw), var_1.x), vec4<bool>(true, true, !var_1.x, global1.c.x))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(38297u), 1u, ~0u), vec3<u32>(firstTrailingBit(global1.a.d.b.c), ~u_input.d.x, global1.a.d.b.c))), max(min(u_input.d.x, global1.a.d.a.b.x), ~1u) | 95749u, true, 41969i);
    var var_3 = global1.a.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-685f, var_3.c, var_3.c, 641f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.c, -219f, -928f, global1.a.d.c), vec4<f32>(global1.a.d.c, var_3.c, 1000f, 720f))))))));
    return StorageBuffer(-global1.a.d.b.e, _wgslsmith_clamp_vec3_i32(~reverseBits(-vec3<i32>(u_input.c.x, 1i, -21320i)), max(vec3<i32>(global1.a.d.d.e, u_input.a, 0i), reverseBits(vec3<i32>(-31386i, global1.b.x, global3[_wgslsmith_index_u32(4294967295u, 24u)]))) >> (_wgslsmith_add_vec3_u32(~var_2.b, firstLeadingBit(var_2.b)) % vec3<u32>(32u)), vec3<i32>(countOneBits(~(-1i)), var_2.e, var_3.a.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d.c * global1.a.d.c));
    let var_2 = abs(u_input.d.x);
    let var_3 = _wgslsmith_f_op_f32(sign(-1392f));
    global3 = array<i32, 24>();
    let x = u_input.a;
    s_output = func_1();
}

