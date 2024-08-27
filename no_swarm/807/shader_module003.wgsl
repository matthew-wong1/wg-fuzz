struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(5038u, 0u, 4294967295u, 80521u, 0u, 611u, 32559u, 50599u, 0u);

var<private> global1: Struct_2 = Struct_2(vec4<f32>(1043f, 3603f, -1581f, -1404f), Struct_1(-339f, -1615f), vec2<f32>(-1138f, 847f));

var<private> global2: bool;

var<private> global3: array<u32, 17>;

var<private> global4: array<vec3<i32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    global1 = arg_0;
    global4 = array<vec3<i32>, 8>();
    global2 = false;
    global4 = array<vec3<i32>, 8>();
    global4 = array<vec3<i32>, 8>();
    return !select(vec3<bool>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15685u, 17u)], 17u)] <= u_input.a, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, false, !(global1.a.x < 230f)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(true, true, false))), vec3<bool>(true, false, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = arg_0.a.x;
    let var_1 = -(i32(-1i) * -2147483647i);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b - global1.a.x)), global1.b.b, global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.b * global1.b.a), _wgslsmith_f_op_f32(abs(global1.a.x))))) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.a, -1000f, global1.c.x, global1.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 961f, -124f, global1.c.x))))), global1.b, vec2<f32>(897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + global1.b.a)));
    let var_2 = select(arg_0.a, !select(func_1(Struct_2(vec4<f32>(global1.a.x, global1.b.b, global1.c.x, global1.b.a), global1.b, vec2<f32>(641f, global1.a.x))), !arg_0.a, arg_0.a), global3[_wgslsmith_index_u32(23589u, 17u)] < ~_wgslsmith_mult_u32(3655u, select(u_input.a, u_input.a, arg_0.a.x)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(global1.b.a - -1366f), global1.a.x)))) + _wgslsmith_f_op_vec3_f32(exp2(global1.a.wzw)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = select((vec4<u32>(arg_0.x, 10217u, 1u, global0[_wgslsmith_index_u32(arg_0.x, 9u)] >> (global3[_wgslsmith_index_u32(7147u, 17u)] % 32u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.a, 71793u, global3[_wgslsmith_index_u32(arg_0.x, 17u)]), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39914u, 9u)], 17u)], 14387u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)]))) << (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, ~4294967295u) % vec4<u32>(32u)), abs(~vec4<u32>(firstLeadingBit(4294967295u), global3[_wgslsmith_index_u32(arg_0.x << (1u % 32u), 17u)], global3[_wgslsmith_index_u32(20752u, 17u)], 1u)), !(global1.a.x < global1.c.x));
    global3 = array<u32, 17>();
    let var_1 = !(~(~arg_0.x) != (11542u ^ ~arg_0.x));
    global4 = array<vec3<i32>, 8>();
    global4 = array<vec3<i32>, 8>();
    return Struct_4(vec3<bool>(!all(!vec2<bool>(var_1, true)), false, !(~15235u <= _wgslsmith_dot_vec3_u32(vec3<u32>(83554u, global3[_wgslsmith_index_u32(arg_0.x, 17u)], arg_0.x), vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 9u)], 1u, 83031u)))), global1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec3<bool>(var_1, var_1, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.wxy) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec3<bool>(var_1, var_1, var_1)))).x, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))), any(!(!vec4<bool>(var_1, false, var_1, true))))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> Struct_2 {
    global4 = array<vec3<i32>, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x)));
    var_0 = 2071f;
    global0 = array<u32, 9>();
    var var_1 = vec3<i32>(firstLeadingBit(~(~(-2147483647i))), -(~_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(18156u, 9u)], 8u)], vec3<i32>(-16591i, -1i, 2147483647i))), firstTrailingBit(-1i));
    return Struct_2(vec4<f32>(global1.c.x, arg_0.b.a, 577f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b.a), -154f))), Struct_1(global1.c.x, -1545f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.c.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(642f, -729f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a), Struct_1(_wgslsmith_f_op_f32(select(global1.c.x, -681f, true)), 1665f), global1.c));
    global3 = array<u32, 17>();
    var var_1 = func_4(func_2(~vec2<u32>(1u, 1u)), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 9u)])), 9u)], ~global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(0u, 9u)]), 9u)]), !all(select(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !vec4<bool>(var_0.x, true, var_0.x, true), var_0.x)));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(0i, (_wgslsmith_dot_vec4_i32(vec4<i32>(26737i, 1i, -22377i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 6590i)) & 1i) | ~_wgslsmith_mod_i32(-31051i, 2147483647i)), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_div_i32(1i, 42977i)), 2147483647i));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(46057u, 17u)], 4294967295u, 1u, global0[_wgslsmith_index_u32(select(1u, 37636u, !var_0.x), 9u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], 57575u, ~firstTrailingBit(10983u), 26330u)) >> (~(~(~abs(vec4<u32>(u_input.a, 4169u, 34502u, 4294967295u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~(~min(~0u, abs(4294967295u))), 17u)], _wgslsmith_mod_vec3_u32(~var_3.xwx, vec3<u32>(abs(0u ^ var_3.x), var_3.x, 54651u << (1u % 32u))), var_1.c, _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(40360u, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 17u)], var_3.x)), ~max(vec4<u32>(0u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 17u)], 4294967295u, 36952u), vec4<u32>(4294967295u, 4294967295u, 1u, 50180u)), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 0u, var_3.x), var_3.ywz), 9u)], ~8751u, var_3.x, u_input.a)) ^ firstLeadingBit(vec4<u32>(min(global3[_wgslsmith_index_u32(0u, 17u)], 31825u), var_3.x, ~0u, 4294967295u)));
}

