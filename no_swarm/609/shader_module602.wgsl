struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, false, true, true, false);

var<private> global1: array<i32, 9>;

var<private> global2: bool = true;

var<private> global3: f32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = vec4<i32>(arg_0.a, _wgslsmith_mult_i32(arg_0.a, global1[_wgslsmith_index_u32(~(arg_0.b >> (u_input.c.x % 32u)), 9u)] & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(46159u, 9u)], 0i), u_input.b.zyx), -arg_0.c)), select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(16130u) & arg_0.b, ~1u, min(73611u, u_input.c.x) | _wgslsmith_dot_vec3_u32(arg_0.d.yyz, arg_0.d.zxz)), 9u)], ~(-62951i), global0[_wgslsmith_index_u32(u_input.a, 6u)]), select(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 9u)], ~u_input.b.x, min(countOneBits(46882u), ~4294967295u) >= _wgslsmith_sub_u32(arg_0.d.x, u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -240f))))) * 618f);
    var var_2 = _wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(~(~u_input.c.x), 9u)], global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 9u)] | 20095i);
    let var_3 = true;
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(748f, var_1, true)))))), 703f, _wgslsmith_div_f32(var_1, 450f)), var_1, select(vec3<bool>(all(select(vec3<bool>(var_3, true, true), vec3<bool>(true, var_3, false), true)), true, false), select(!(!vec3<bool>(true, var_3, false)), !vec3<bool>(var_3, false, var_3), any(!vec2<bool>(true, var_3))), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(14497u, 6u)] || global0[_wgslsmith_index_u32(0u, 6u)])));
    return vec3<bool>(var_3, true, true);
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    global1 = array<i32, 9>();
    var var_0 = u_input.c.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, -1096f)), _wgslsmith_f_op_f32(max(314f, -388f)))), _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(348f - -100f), func_3(Struct_3(-402i, 1489u, -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_0.x, u_input.b.x), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 0i, -72317i)), u_input.c)));
    global2 = global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)];
    global0 = array<bool, 6>();
    return vec2<bool>(var_1.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(sign(2619f)))), !all(vec4<bool>(var_1.c.x, global0[_wgslsmith_index_u32(max(0u, 11978u), 6u)], var_1.c.x, 2162f < var_1.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f), -793f) - _wgslsmith_f_op_f32(-204f - _wgslsmith_f_op_f32(select(-611f, -648f, true)))) <= _wgslsmith_f_op_f32(f32(-1f) * -776f), !all(select(vec4<bool>(true, arg_0.d.x, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(arg_1.a, true, true, arg_0.d.x)), vec4<bool>(true, arg_1.a, true, global0[_wgslsmith_index_u32(u_input.a, 6u)]))), -1i >= global1[_wgslsmith_index_u32(max(u_input.a, _wgslsmith_sub_u32(~u_input.a, ~4294967295u)), 9u)]);
    global2 = true;
    global2 = select(arg_0.d.x, var_0.x, arg_1.a);
    let var_1 = u_input.c.zx;
    global1 = array<i32, 9>();
    return Struct_2(arg_0.c.x, -4912i, vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 23245u), 9u)], reverseBits(12807i)), !select(var_0.wx, vec2<bool>(true, arg_0.d.x), !func_2(u_input.b.xwx)), arg_0.e ^ u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(7044u, u_input.c.x), u_input.c.x), 6u)];
    global0 = array<bool, 6>();
    global2 = -2489f <= _wgslsmith_f_op_f32(sign(2646f));
    let var_0 = Struct_2(-1i, 0i, arg_0.e.yw, arg_0.d, vec4<i32>(_wgslsmith_mult_i32(-7919i, max(u_input.b.x, -17673i)), global1[_wgslsmith_index_u32(~u_input.c.x, 9u)], arg_0.a << (1u % 32u), ~1i));
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1352f - 391f)))) - -2132f)));
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u << (u_input.a % 32u)), vec2<u32>(u_input.c.x, u_input.c.x)), 4294967295u), 95044u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-850f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 870f) * _wgslsmith_div_f32(-275f, -963f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-595f, 130f))))))), ~u_input.b, ~vec4<u32>(73350u, _wgslsmith_mult_u32(u_input.a, u_input.a | u_input.c.x), func_4(func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)], vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<bool>(true, true), u_input.b), Struct_4(false, global0[_wgslsmith_index_u32(u_input.c.x, 6u)])), Struct_4(true, global0[_wgslsmith_index_u32(u_input.c.x, 6u)])), _wgslsmith_add_u32(15678u, ~u_input.c.x)));
}

