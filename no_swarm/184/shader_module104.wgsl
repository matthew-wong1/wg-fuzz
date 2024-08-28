struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 90266u, 0u);

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global3: array<u32, 25> = array<u32, 25>(1u, 3016u, 56639u, 21974u, 1u, 50674u, 20647u, 1u, 77208u, 0u, 4294967295u, 0u, 4294967295u, 0u, 4294967295u, 35971u, 1u, 32190u, 1u, 42870u, 0u, 7610u, 4294967295u, 60759u, 20323u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1215f - -297f), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, ~u_input.a), -vec2<i32>(u_input.a, u_input.a) | -vec2<i32>(30986i, u_input.a), -941f >= _wgslsmith_f_op_f32(select(119f, 902f, false))), -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -15103i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 6303i)), vec2<i32>(u_input.a, -2147483647i))), global0.yxw, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -370f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1375f))))), ~(~(~global0.wzx ^ vec3<u32>(6283u, u_input.b.x, 1u))));
    let var_1 = ~(_wgslsmith_mult_i32(var_0.b, -1i) ^ 1i);
    global1 = array<Struct_1, 2>();
    global3 = array<u32, 25>();
    global0 = ~firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c.x), ~vec2<u32>(67754u, u_input.b.x)), ~global0.x << (25485u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 9030u), max(vec3<u32>(global0.x, global0.x, 0u), var_0.c)), ~global3[_wgslsmith_index_u32(1727u, 25u)]));
    return global2.x;
}

fn func_3() -> i32 {
    var var_0 = select(!(!select(select(vec4<bool>(false, true, false, global2.x), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, false, global2.x, global2.x)), select(vec4<bool>(false, global2.x, false, true), vec4<bool>(false, global2.x, true, true), global2.x), global2.x)), !select(!vec4<bool>(false, true, false, global2.x), !(!vec4<bool>(false, false, true, global2.x)), vec4<bool>(true, true, true, true)), vec4<bool>(global2.x, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1188f, -419f, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1701f), global2.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f * -1510f) - 132f), global3[_wgslsmith_index_u32(~81023u, 25u)] != 6440u));
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i) >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), 0i), u_input.a);
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_4 = ~(~0i);
    return 4577i;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> i32 {
    let var_0 = global2.yyy;
    global1 = array<Struct_1, 2>();
    global2 = select(select(!vec4<bool>(true, var_0.x, var_0.x, false), !(!select(vec4<bool>(var_0.x, false, global2.x, global2.x), vec4<bool>(true, var_0.x, global2.x, false), global2.x)), !vec4<bool>(true, true, var_0.x & true, select(false, false, var_0.x))), !select(!(!vec4<bool>(global2.x, var_0.x, global2.x, true)), vec4<bool>(var_0.x, false, !global2.x, any(global2.xz)), !select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, global2.x, var_0.x, false), vec4<bool>(true, false, false, false))), all(var_0.yz));
    global2 = select(!select(select(!vec4<bool>(true, true, var_0.x, global2.x), select(vec4<bool>(true, var_0.x, var_0.x, global2.x), vec4<bool>(false, var_0.x, var_0.x, false), false), vec4<bool>(true, false, global2.x, true)), select(!vec4<bool>(var_0.x, global2.x, true, var_0.x), select(vec4<bool>(true, var_0.x, global2.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, global2.x), true), true), true), !vec4<bool>((u_input.b.x > global0.x) == false, global2.x, var_0.x, global2.x), select(!vec4<bool>(false, true, true, var_0.x), !select(vec4<bool>(global2.x, false, var_0.x, global2.x), !vec4<bool>(true, true, var_0.x, false), all(vec3<bool>(true, false, global2.x))), !any(global2.xxw)));
    var var_1 = firstLeadingBit(global0.ww >> (~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 1u)), u_input.b.x) % vec2<u32>(32u)));
    return arg_2.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-536f)) - -1978f)))) <= _wgslsmith_f_op_f32(706f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(-612f, 594f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1698f) + -221f), global2.x)));
    let var_1 = global2.x;
    let var_2 = all(vec2<bool>(_wgslsmith_f_op_f32(-2373f * _wgslsmith_f_op_f32(trunc(978f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1243f))), func_2()));
    let var_3 = _wgslsmith_mult_u32(global0.x, 0u);
    let var_4 = func_4(global0.x, func_3(), min(vec3<i32>(1i, _wgslsmith_mult_i32(countOneBits(-1i), ~u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -35798i, u_input.a), ~vec3<i32>(u_input.a, u_input.a, u_input.a))), -(~(-vec3<i32>(u_input.a, u_input.a, -1i)))));
    return StorageBuffer(_wgslsmith_mult_i32(var_4, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(19916i, 0i, var_4), vec3<i32>(var_4, -41280i, 60610i)), -u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 25>();
    let var_0 = ~reverseBits(global0.x) >> (476u % 32u);
    var var_1 = 53680u;
    var var_2 = 1780f;
    global1 = array<Struct_1, 2>();
    global3 = array<u32, 25>();
    global3 = array<u32, 25>();
    let x = u_input.a;
    s_output = func_1();
}

