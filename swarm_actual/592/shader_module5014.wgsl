struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: i32;

var<private> global2: vec2<u32> = vec2<u32>(0u, 34093u);

var<private> global3: array<vec4<i32>, 27>;

var<private> global4: array<vec4<u32>, 17>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3) -> f32 {
    global4 = array<vec4<u32>, 17>();
    var var_0 = !arg_0.a.a;
    global1 = -14690i;
    global2 = u_input.b.xx;
    let var_1 = reverseBits(u_input.c);
    return 613f;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f - arg_0.x) - arg_0.x) - _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))))))), ~(~select(vec2<u32>(1u, 4294967295u), vec2<u32>(global2.x, u_input.b.x), vec2<bool>(false, true)) | u_input.b.wy), ~abs(vec4<u32>(1u, 47486u, 24510u, 1u)) << (~vec4<u32>(_wgslsmith_clamp_u32(7982u, 5276u, 1724u), _wgslsmith_mult_u32(89848u, global2.x), 0u & u_input.b.x, countOneBits(84558u)) % vec4<u32>(32u)));
    var var_1 = var_0.a;
    return arg_1;
}

fn func_2(arg_0: u32) -> i32 {
    global1 = ~(29156i | -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.yxy, u_input.a.xzz), -36895i));
    var var_0 = Struct_4(u_input.a.wzz);
    var_0 = Struct_4(vec3<i32>(-1i, func_3(vec2<f32>(_wgslsmith_f_op_f32(sign(-722f)), -1445f), 67979i), min(-2147483647i, _wgslsmith_add_i32(0i, max(0i, -23281i)))));
    global2 = ~abs(vec2<u32>(global2.x, arg_0));
    let var_1 = 14604u;
    return firstLeadingBit(_wgslsmith_add_i32(abs(_wgslsmith_div_i32(-2906i, _wgslsmith_add_i32(var_0.a.x, 75872i))), -1861i));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x ^ 0u, 25556u), ~28685u, 1u), 17u)], max(global4[_wgslsmith_index_u32(global2.x, 17u)], ~_wgslsmith_mod_vec4_u32(global4[_wgslsmith_index_u32(34422u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)]))) >> (_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(global2.x, 17u)]), ~0u, 0u, _wgslsmith_sub_u32(1u, 0u)), vec4<u32>(~4294967295u, u_input.b.x, 0u, 1u))) % 32u);
    global1 = 1i >> (0u % 32u);
    let var_1 = Struct_3(Struct_2(!any(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec3_i32(-select(u_input.a.xww, arg_1.xzy, vec3<bool>(true, false, true)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xww, u_input.a.wxz), vec3<i32>(-2147483647i, 1i, arg_1.x)))), !all(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(-326f)), vec2<u32>(22793u, global2.x), global4[_wgslsmith_index_u32(4294967295u, 17u)]);
    global1 = -16655i;
    return vec2<u32>(18518u, 10653u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 17>();
    global1 = u_input.a.x;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-770f)), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(true, u_input.a.xzw), true))))), _wgslsmith_add_vec2_u32(~(vec2<u32>(1u, u_input.b.x) | ~vec2<u32>(global2.x, u_input.b.x)), func_4(func_2(~3844u), global3[_wgslsmith_index_u32(~1u, 27u)], u_input.c)), ~vec4<u32>(~(42166u ^ global2.x), global2.x, global2.x, global2.x));
    let var_1 = Struct_3(Struct_2(true, u_input.a.yww), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = countOneBits(max(~vec3<u32>(min(41501u, 4294967295u), var_0.c.x, var_0.c.x), ~(~select(vec3<u32>(138195u, 4294967295u, 4294967295u), var_0.c.wxx, vec3<bool>(var_1.b, true, var_1.a.a)))));
    let var_3 = select(!(!vec2<bool>(true, var_1.a.a && false)), select(vec2<bool>(true, false), select(select(vec2<bool>(var_1.a.a, var_1.b), select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_1.b, var_1.b), false), vec2<bool>(false, var_1.b)), !vec2<bool>(false, var_1.b), !select(vec2<bool>(false, false), vec2<bool>(var_1.b, var_1.b), true)), vec2<bool>(true, all(vec2<bool>(var_1.a.a, var_1.a.a)))), select(vec2<bool>(false, ~global2.x < firstTrailingBit(4294967295u)), vec2<bool>(var_1.a.a, (-1071f > var_0.a) & var_1.b), var_1.a.a));
    var_2 = ~var_0.c.zxw << (~abs(reverseBits(~vec3<u32>(0u, 84003u, var_2.x))) % vec3<u32>(32u));
    global4 = array<vec4<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.b, var_0.c)), vec3<u32>(1u, abs(_wgslsmith_add_u32(7047u, 1u)) & (var_0.c.x << (~4294967295u % 32u)), ~(global2.x & 44816u)), _wgslsmith_sub_i32(var_1.a.b.x, -5996i));
}

