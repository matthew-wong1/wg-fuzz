struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 4> = array<bool, 4>(true, true, false, true);

var<private> global2: Struct_1 = Struct_1(false, vec4<f32>(1333f, -1000f, -858f, -1000f));

var<private> global3: array<bool, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(475f + global0.x), global0.x));
}

fn func_3(arg_0: f32) -> Struct_2 {
    global3 = array<bool, 9>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_sub_i32(u_input.a.x, 0i);
    var_1 = ~u_input.a.x;
    let var_2 = ~select(~firstTrailingBit(abs(vec4<u32>(u_input.c.x, u_input.b.x, 19529u, 77781u))), ~vec4<u32>(u_input.b.x, u_input.c.x, ~u_input.b.x, min(u_input.c.x, 0u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(select(global1[_wgslsmith_index_u32(17671u, 4u)], global2.a, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), all(vec4<bool>(true, global2.a, false, false)), true, global0.x >= arg_0), any(vec2<bool>(false, true))));
    return Struct_2(Struct_1(var_2.x < ~(~4294967295u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(640f, 1746f, global2.b.x, 692f)), global2.b)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> vec3<u32> {
    global3 = array<bool, 9>();
    var var_0 = func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(-840f, 658f)), 1000f)));
    let var_1 = vec4<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], true, false))), any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(arg_0.x, 4u)], true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], arg_1.a.a, global2.a)), !vec3<bool>(false, var_0.a.a, true), true), select(select(vec3<bool>(false, global2.a, false), vec3<bool>(false, var_0.a.a, false), false), select(vec3<bool>(arg_1.a.a, arg_1.a.a, global3[_wgslsmith_index_u32(arg_3.x, 9u)]), vec3<bool>(false, global2.a, var_0.a.a), vec3<bool>(true, false, global3[_wgslsmith_index_u32(arg_0.x, 9u)])), vec3<bool>(var_0.a.a, true, true)), any(vec4<bool>(global2.a, var_0.a.a, true, global1[_wgslsmith_index_u32(0u, 4u)])))), any(vec3<bool>(global2.a, all(!vec3<bool>(false, var_0.a.a, global2.a)), true)), select(!arg_1.a.a, all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_2, 4u)], true, global1[_wgslsmith_index_u32(arg_3.x, 4u)]), vec3<bool>(true, false, false), arg_1.a.a), vec3<bool>(true, true, true), !global2.a)), all(vec4<bool>(true, var_0.a.b.x != arg_1.a.b.x, any(vec2<bool>(arg_1.a.a, true)), !global1[_wgslsmith_index_u32(arg_3.x, 4u)]))));
    var var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(select(vec2<i32>(1527i, 2147483647i), vec2<i32>(0i, u_input.a.x) & vec2<i32>(0i, u_input.a.x), global1[_wgslsmith_index_u32(arg_0.x, 4u)])), ~vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(abs(u_input.a.x), 1i)), u_input.a, u_input.a);
    var var_3 = Struct_2(arg_1.a);
    return vec3<u32>(u_input.b.x, ~22366u, _wgslsmith_div_u32(4294967295u, ~max(arg_3.x, 28641u))) & ~vec3<u32>(firstTrailingBit(4294967295u), firstLeadingBit(max(57337u, arg_2)), arg_2);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(1u, reverseBits(~_wgslsmith_mult_u32(~u_input.c.x, 1u)));
    var var_1 = select(u_input.a, vec2<i32>(u_input.a.x, -2147483647i) & ~(~u_input.a), false);
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -513f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(268f, _wgslsmith_f_op_f32(global0.x * global0.x)))), global3[_wgslsmith_index_u32(max(~abs(u_input.c.x), ~firstTrailingBit(~u_input.b.x)), 9u)], false & any(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 9u)]))));
    var var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 4u)];
    let var_4 = func_4(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 0u), u_input.b.zxy)), func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global2.b)))), global2.b.x))), u_input.c.x, ~u_input.c.zyw);
    return func_3(321f).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(true, global2.b);
    let var_0 = min(~u_input.b.zyw, vec3<u32>(u_input.b.x, ~1044u >> (u_input.b.x % 32u), abs(u_input.b.x)));
    let var_1 = _wgslsmith_mult_u32(~(~(~(~var_0.x))), firstTrailingBit(min(_wgslsmith_div_u32(abs(var_0.x), _wgslsmith_div_u32(var_0.x, 1u)), reverseBits(0u) << (~4294967295u % 32u))));
    var var_2 = Struct_2(func_1());
    global1 = array<bool, 4>();
    let var_3 = func_3(_wgslsmith_div_f32(669f, _wgslsmith_f_op_f32(select(849f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), 105f)), !(global1[_wgslsmith_index_u32(var_0.x, 4u)] & global1[_wgslsmith_index_u32(var_0.x, 4u)])))));
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-1957i, u_input.a.x, u_input.a.x)), ~abs(vec3<i32>(0i, u_input.a.x, 46156i))), vec3<i32>(24901i, -_wgslsmith_add_i32(u_input.a.x, 1057i), 10122i)), u_input.a.x, 54386i, countOneBits(-u_input.a.x));
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_3(1914f).a.b.x, _wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_2.a.b.wzy, var_2.a.b.xyy)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a.b.x, global2.b.x, var_5.b.x))), func_3(-976f).a.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(var_2.a.b)), func_1().b.x, _wgslsmith_f_op_f32(f32(-1f) * -100f)), vec3<f32>(-142f, _wgslsmith_f_op_f32(min(-966f, global0.x)), global2.b.x), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(64959u, 4u)], false), !vec3<bool>(true, global2.a, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<bool>(true, true, false)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_3.a.b.yw * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.b.xw)) + var_3.a.b.xx)))));
}

