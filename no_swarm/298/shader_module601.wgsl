struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(-1000f, 957f, 592f), vec3<u32>(1u, 61869u, 4294967295u), Struct_1(vec2<i32>(-31898i, 77656i), vec3<i32>(2147483647i, 15050i, 0i)));

var<private> global2: array<Struct_3, 17>;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(-341f, -1977f, -1303f), vec3<u32>(14509u, 24981u, 0u), Struct_1(vec2<i32>(-16886i, 2147483647i), vec3<i32>(29374i, 31417i, 1i)));

var<private> global4: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(33333u, 3715u, 7278u, 70730u), vec4<u32>(104343u, 4726u, 47629u, 0u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(1u, 63735u, 0u, 50543u), vec4<u32>(28302u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 49785u, 4294967295u, 22779u), vec4<u32>(17484u, 47299u, 3379u, 35436u), vec4<u32>(1u, 12031u, 65907u, 0u), vec4<u32>(0u, 48094u, 1u, 32880u), vec4<u32>(0u, 23368u, 1u, 21112u), vec4<u32>(0u, 14530u, 4294967295u, 0u), vec4<u32>(28368u, 33655u, 0u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 24485u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 1u, 22354u, 4294967295u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    global2 = array<Struct_3, 17>();
    var var_0 = -1065f;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.a.xx)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-670f + 1644f), _wgslsmith_f_op_f32(global3.a.x * global3.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global1.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1386f - 248f) - _wgslsmith_f_op_f32(-1040f - global1.a.x))))));
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(49452u, ~(~_wgslsmith_sub_u32(global1.b.x, 1u))), ~(~min(vec2<u32>(69483u, global1.b.x), ~global3.b.yz)));
    let var_3 = max(-_wgslsmith_clamp_vec3_i32(-global1.c.b, _wgslsmith_mod_vec3_i32(global3.c.b, vec3<i32>(u_input.a.x, global1.c.a.x, global0.c)), global1.c.b) ^ global3.c.b, vec3<i32>(~(-29603i), ((global0.c >> (var_2.x % 32u)) | 0i) & global0.c, -27879i));
    return firstLeadingBit(vec4<i32>(min(countOneBits(global3.c.b.x), i32(-1i) * -global1.c.a.x), abs(-31533i), -_wgslsmith_clamp_i32(global0.c, global1.c.b.x, global3.c.a.x) ^ 0i, _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(global3.c.b.xx, vec2<i32>(var_3.x, -27541i)), abs(vec2<i32>(u_input.a.x, global0.c) ^ u_input.a))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = min(-31204i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.c.b.x, -5903i, global0.c, global0.c), vec4<i32>(3970i, -23392i, -40752i, 0i), true), ~vec4<i32>(0i, 28099i, global0.c, -20489i)), _wgslsmith_add_i32(u_input.a.x, 2147483647i))) ^ global0.c;
    global4 = array<vec4<u32>, 16>();
    global0 = Struct_2(-1226f, 919f, arg_2.a.c.b.x & -_wgslsmith_dot_vec4_i32(vec4<i32>(3606i, global0.c, -3467i, 1331i) | vec4<i32>(u_input.a.x, arg_2.a.c.a.x, global0.c, arg_2.a.c.a.x), func_3()));
    var var_1 = global3.c.b.x ^ firstTrailingBit(-34713i);
    return select(vec2<bool>(!(global3.b.x > ~global3.b.x), true), vec2<bool>(true, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
}

fn func_1() -> bool {
    let var_0 = vec4<bool>(select(false, false, !(all(vec2<bool>(true, true)) | (4294967295u < global3.b.x))), true, all(select(vec2<bool>(true, true), select(func_2(Struct_3(vec3<f32>(-473f, global1.a.x, global3.a.x), global1.b, Struct_1(global1.c.b.yz, global1.c.b)), 1u, Struct_4(global2[_wgslsmith_index_u32(global1.b.x, 17u)], 30529u, vec4<f32>(global1.a.x, -1317f, 1937f, 123f), vec2<u32>(global3.b.x, 58839u), global4[_wgslsmith_index_u32(global1.b.x, 16u)])), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)))), min(11732i, -19999i) > (firstTrailingBit(-1i) ^ -2147483647i));
    let var_1 = -global3.c.b;
    var var_2 = select(global1.c.b | (vec3<i32>(-1i, global0.c, -17254i) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_1.x), vec3<i32>(2147483647i, 14442i, -66811i))), _wgslsmith_sub_vec3_i32(global1.c.b, var_1), vec3<bool>(false, !(var_0.x & true), all(vec2<bool>(false, var_0.x)))) & var_1;
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(-419f <= global0.a, true, true, true);
    var var_1 = vec3<bool>(var_0.x, func_1(), var_0.x);
    var var_2 = ~(global1.b.x ^ (0u >> (global3.b.x % 32u)));
    let var_3 = _wgslsmith_div_vec2_i32(~vec2<i32>(i32(-1i) * -global1.c.b.x, _wgslsmith_add_i32(firstLeadingBit(global1.c.a.x), -u_input.a.x)), _wgslsmith_mult_vec2_i32(-func_3().zz, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, 0i), global3.c.a, vec2<bool>(false, var_1.x)), vec2<i32>(-6469i, -2147483647i)), func_3().ww)));
    let var_4 = ~(~0u);
    global4 = array<vec4<u32>, 16>();
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -553f);
    var_1 = vec3<bool>(select(!select(false, var_1.x, false) || (0i >= global3.c.b.x), any(vec4<bool>(func_1(), func_1(), all(var_0.wxy), any(var_0.xz))), any(select(vec3<bool>(var_0.x, true, var_0.x), var_0.zyw, all(vec4<bool>(true, var_0.x, var_0.x, var_1.x))))), any(select(select(var_0.zz, vec2<bool>(false, false), global3.b.x != var_4), select(func_2(global2[_wgslsmith_index_u32(19970u, 17u)], 51635u, Struct_4(Struct_3(vec3<f32>(global3.a.x, -295f, -203f), global3.b, global1.c), 15238u, vec4<f32>(-1770f, -354f, global3.a.x, -985f), vec2<u32>(global3.b.x, 27547u), vec4<u32>(43071u, global3.b.x, 32912u, 4294967295u))), var_1.xz, func_2(global2[_wgslsmith_index_u32(1u, 17u)], 77555u, Struct_4(global2[_wgslsmith_index_u32(global1.b.x, 17u)], global3.b.x, vec4<f32>(var_5, global3.a.x, global3.a.x, -296f), vec2<u32>(34104u, global3.b.x), vec4<u32>(29231u, 0u, global1.b.x, 0u)))), vec2<bool>(var_0.x & false, true))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1264f))))), ~global1.b.x, (var_4 ^ global1.b.x) ^ 4294967295u);
}

