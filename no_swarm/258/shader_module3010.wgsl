struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, false, true, false, true, true, false, false, false, false, true, false, false, true, false, false, true, true, false, true, false, false, false, true, false, false, true, false, true, false, false);

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(11529u, 0u), vec2<u32>(4493u, 38401u), vec2<u32>(1u, 0u), vec2<u32>(60313u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(34362u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(35920u, 4294967295u), vec2<u32>(1u, 20153u), vec2<u32>(42438u, 16751u), vec2<u32>(21172u, 0u), vec2<u32>(59718u, 18569u), vec2<u32>(31503u, 3720u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(34297u, 0u), vec2<u32>(0u, 1u));

var<private> global2: vec2<f32> = vec2<f32>(1197f, 528f);

var<private> global3: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> bool {
    global3 = arg_1.a.x;
    let var_0 = _wgslsmith_mod_vec3_i32(arg_3.a, arg_3.a);
    var var_1 = arg_2;
    let var_2 = arg_0;
    var var_3 = arg_1;
    return any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + global2.x))));
    global0 = array<bool, 31>();
    let var_0 = arg_1;
    let var_1 = Struct_1(-(~vec3<i32>(2147483647i, -1i, 20235i)));
    let var_2 = var_1;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, ~4294967295u, 56437u), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 18057u)), vec4<u32>(u_input.a.x, 1u, 1737u, u_input.a.x) | vec4<u32>(u_input.a.x, 14867u, u_input.a.x, 1604u)), ~_wgslsmith_dot_vec2_u32(u_input.a.xy, global1[_wgslsmith_index_u32(0u, 17u)]), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 15941u), global1[_wgslsmith_index_u32(u_input.a.x, 17u)])))) & ((((u_input.a.x << (74494u % 32u)) >> (u_input.a.x % 32u)) ^ ~(~u_input.a.x)) ^ u_input.a.x);
}

fn func_1() -> vec3<bool> {
    let var_0 = global2.x;
    let var_1 = _wgslsmith_f_op_f32(-1409f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - global2.x)))));
    let var_2 = Struct_3(select(vec2<bool>(global0[_wgslsmith_index_u32(~1u, 31u)] | true, !all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), !(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(28231u, 31u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), false)), select(true, any(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), false)), vec2<bool>(true, false), firstLeadingBit(abs(-(vec3<i32>(-61720i, u_input.b, u_input.b) >> (u_input.a % vec3<u32>(32u))))));
    let var_3 = 4294967295u;
    let var_4 = (-vec4<i32>(~(-44053i), var_2.c.x ^ -28377i, 2147483647i, _wgslsmith_clamp_i32(-2147483647i, var_2.c.x, var_2.c.x)) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, 4294967295u, var_3, 63405u) << (vec4<u32>(u_input.a.x, var_3, 4294967295u, var_3) % vec4<u32>(32u)), max(vec4<u32>(0u, u_input.a.x, var_3, 0u), vec4<u32>(1u, u_input.a.x, var_3, u_input.a.x)))) % vec4<u32>(32u))) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~4294967295u, u_input.a.x, 102935u), vec4<u32>(firstLeadingBit(510u), ~u_input.a.x, 1u, ~42476u))) % vec4<u32>(32u));
    return select(!(!vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 31u)], var_2.a.x, var_2.a.x)), vec3<bool>(func_2(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, var_4.x, 0i, -2147483647i), var_4), vec4<i32>(32500i, var_2.c.x, var_4.x, 60676i)), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(var_4.x, var_2.c.x), vec2<i32>(2147483647i, -74i))), var_1, Struct_1(~vec3<i32>(6946i, u_input.b, -34562i))), global0[_wgslsmith_index_u32(~func_3(25118i, var_2, var_4.wxw), 31u)], all(var_2.b)), select(select(vec3<bool>(var_2.a.x, true, !var_2.b.x), select(select(vec3<bool>(false, false, var_2.a.x), vec3<bool>(false, false, var_2.b.x), true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true, false), -203f == global2.x), true), vec3<bool>(var_2.b.x, !select(false, global0[_wgslsmith_index_u32(var_3, 31u)], var_2.b.x), any(vec3<bool>(var_2.a.x, true, var_2.b.x))), !var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 61480u;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1389f))));
    let var_2 = vec3<bool>(~(i32(-1i) * -u_input.c) > ~(-abs(-34292i)), false, any(!select(func_1(), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 31u)]), true)));
    global3 = -58997i;
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -684f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -612f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -619f, var_1, var_1)))) + vec4<f32>(_wgslsmith_f_op_f32(var_1 + 636f), _wgslsmith_f_op_f32(min(-402f, global2.x)), _wgslsmith_f_op_f32(global2.x + 1024f), _wgslsmith_div_f32(global2.x, global2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(569f, global2.x, var_1, global2.x) - vec4<f32>(global2.x, -754f, var_1, global2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_1, global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 360f, global2.x, global2.x))))), _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(48246i, u_input.c & u_input.c), ~21599i), _wgslsmith_mult_i32(~select(u_input.c, -27354i, false), u_input.c)), ~firstTrailingBit(u_input.c));
}

