struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, false));

var<private> global4: array<u32, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    return select(vec4<bool>(true, (select(false, true, global3.a.x) || true) | (true | !global3.a.x), !(global3.a.x | all(vec2<bool>(true, true))), min(global0[_wgslsmith_index_u32(u_input.c, 25u)], max(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])) > 4294967295u), !select(vec4<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, global3.a.x)), true, -28768i == u_input.b.x), select(!vec4<bool>(false, global3.a.x, false, false), select(vec4<bool>(false, global3.a.x, false, false), vec4<bool>(global3.a.x, global3.a.x, false, true), false), global3.a.x & true), vec4<bool>(true, !global3.a.x, !global3.a.x, true)), true);
}

fn func_2() -> u32 {
    var var_0 = 1u;
    global0 = array<u32, 25>();
    global4 = array<u32, 28>();
    var var_1 = func_3();
    let var_2 = u_input.b;
    return ~reverseBits(reverseBits(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39000u, 25u)], 25u)] & u_input.a.x, 28u)]) ^ 28765u);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = ~global4[_wgslsmith_index_u32(min(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], ~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(func_2(), 25u)])), 28u)];
    var var_1 = true;
    let var_2 = !any(global3.a);
    var var_3 = func_3().x;
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(arg_0 - 356f))), arg_3));
    return Struct_1(func_3().yzy);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec4<f32>) -> u32 {
    global2 = 8796i;
    global1 = u_input.b.x;
    global1 = ~(-abs(2147483647i));
    let var_0 = arg_2.a.d;
    var var_1 = Struct_2(vec4<i32>(-abs(-arg_2.d.x), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(0i, -34981i), ~(arg_0 | -15417i)), arg_2.d.x, _wgslsmith_sub_i32(abs(arg_2.a.a.x) ^ 0i, arg_0)), arg_2.a.e, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1282f * arg_2.b)) - -1286f), arg_2.a.d.x, u_input.b.xy, -464f), vec4<u32>(reverseBits(firstTrailingBit(1u ^ arg_1.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(func_2(), 25u)], ~u_input.c), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21888u, 28u)], 28u)]), arg_2.a.d.x << (arg_2.a.d.x % 32u), 70797u), func_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x + arg_2.b), _wgslsmith_f_op_f32(max(arg_2.b, 710f))), arg_2.b)), ~select(22338u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(7043u, arg_2.a.d.x), 25u)], any(vec4<bool>(global3.a.x, global3.a.x, false, true))), max(-vec2<i32>(-1i, 1i), -abs(vec2<i32>(arg_0, 50087i))), arg_2.b));
    return abs(arg_2.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(-628f * _wgslsmith_f_op_f32(820f + 1000f)));
    global4 = array<u32, 28>();
    let var_1 = _wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.d & 26282i) & u_input.b.x;
    let var_2 = !global3.a.x;
    let var_3 = vec2<i32>(-14740i << (func_4(firstTrailingBit(18903i), u_input.a.xx, Struct_4(Struct_2(vec4<i32>(1i, var_1, 16352i, 14747i), Struct_1(vec3<bool>(global3.a.x, global3.a.x, global3.a.x)), Struct_1(vec3<bool>(true, global3.a.x, false)), vec4<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 28u)], 0u, 14807u, u_input.a.x), Struct_1(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(-1499f * -2773f), func_1(var_0.x, 7416u, u_input.b.yz, var_0.x), u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1356f, 138f, var_0.x, -899f)))) % 32u), ~(~(~(~var_1))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-508f * var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(986f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(441f * _wgslsmith_f_op_f32(var_0.x * var_0.x)) * var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1637f, var_0.x) * vec2<f32>(var_0.x, -234f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1620f, var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1376f, 1000f) - vec2<f32>(var_0.x, 210f))))));
}

