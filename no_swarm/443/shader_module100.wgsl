struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 29> = array<u32, 29>(4786u, 18181u, 1u, 0u, 20679u, 34448u, 4294967295u, 86467u, 4294967295u, 39927u, 17868u, 10316u, 4294967295u, 1u, 1u, 0u, 35865u, 1u, 1u, 0u, 31585u, 35620u, 126009u, 1u, 37045u, 0u, 0u, 5358u, 10445u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    let var_0 = false;
    var var_1 = global0.x;
    global2 = array<u32, 29>();
    global0 = vec4<i32>(1i, 2670i, _wgslsmith_sub_i32(firstTrailingBit(20753i), global0.x), -_wgslsmith_dot_vec3_i32(global0.zxz, abs(vec3<i32>(-14060i, 1i, global0.x))));
    global2 = array<u32, 29>();
    return 107804u;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    return max(0u, ~min(_wgslsmith_div_u32(0u, global1.x >> (0u % 32u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, global1.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], 29u)], 29u)]), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 29u)], 102574u, 4294967295u), arg_1), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 29u)], 29u)], u_input.a, u_input.a) >> (vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 29u)], u_input.a, 482u) % vec4<u32>(32u)))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    global0 = -(countOneBits(~(~vec4<i32>(110i, 32094i, global0.x, global0.x))) & firstTrailingBit(abs(max(vec4<i32>(global0.x, global0.x, 2147483647i, 25933i), vec4<i32>(global0.x, global0.x, 0i, global0.x)))));
    return Struct_2(Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-373f * _wgslsmith_div_f32(-2113f, 338f)))), select(-(~global0.wz), vec2<i32>(~2147483647i, ~global0.x), vec2<bool>(all(vec2<bool>(true, arg_2)), arg_0 < arg_1))), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -19946i), global0.xz) & (vec2<i32>(16427i, global0.x) & global0.xw), global0.wy)));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_3.a;
    global1 = max(vec3<u32>(~78101u, global1.x, ~0u) | ~arg_0.wxx, min(~(vec3<u32>(52143u, 1u, 23620u) << (arg_0.yyw % vec3<u32>(32u))) ^ ~select(arg_0.xzw, arg_0.zzw, true), arg_0.zyw));
    global2 = array<u32, 29>();
    var var_1 = -86047i;
    global1 = ~firstTrailingBit(vec3<u32>(~_wgslsmith_div_u32(u_input.a, 4328u), reverseBits(u_input.a), 58070u));
    return Struct_2(func_3(global1.x, ~(~global1.x & u_input.a), false, arg_0).a, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 29>();
    global2 = array<u32, 29>();
    var var_0 = func_4(~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a, 96630u, 48175u, global2[_wgslsmith_index_u32(1u, 29u)]), vec4<u32>(49208u, 1u, global1.x, global2[_wgslsmith_index_u32(u_input.a, 29u)])), abs(vec4<u32>(global2[_wgslsmith_index_u32(2483u, 29u)], global1.x, global1.x, 1u)))), abs(reverseBits(global2[_wgslsmith_index_u32(1u, 29u)])), vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1427f)), _wgslsmith_f_op_f32(select(-1000f, 240f, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-154f))), -867f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -356f)))), func_3(global2[_wgslsmith_index_u32(74906u, 29u)] & func_1(~vec3<u32>(global1.x, 11965u, 13747u), _wgslsmith_f_op_f32(-537f + 1211f)), _wgslsmith_add_u32(_wgslsmith_sub_u32(23624u, 1u), func_2(vec2<i32>(1i, -1i), false) | (u_input.a & global1.x)), true, vec4<u32>(u_input.a << (max(0u, global1.x) % 32u), 4294967295u, 34020u, firstTrailingBit(~global2[_wgslsmith_index_u32(36714u, 29u)]))));
    let var_1 = vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_1(countOneBits(~vec3<u32>(u_input.a, u_input.a, 21998u)), 1195f), 1u, global1.x), 29u)], ~(~u_input.a));
    var var_2 = all(vec2<bool>(_wgslsmith_f_op_f32(select(420f, _wgslsmith_f_op_f32(-var_0.a.b), !var_0.a.a)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.b + 2573f))), false));
    var var_3 = _wgslsmith_mult_u32(global1.x, _wgslsmith_sub_u32(28561u, 0u));
    var var_4 = _wgslsmith_clamp_u32(var_1.x, func_1(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(25256u, 29u)], var_1.x)), countOneBits(vec3<u32>(7345u, global1.x, var_1.x)), ~vec3<u32>(var_1.x, u_input.a, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.b)))) ^ global1.x, 61600u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, -247f, var_0.a.b, -781f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1160f, var_0.a.b, 1512f, 738f))), vec4<f32>(-578f, var_0.a.b, var_0.a.b, -1866f), var_0.a.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1508f, var_0.a.b, 568f, -743f)), vec4<f32>(var_0.a.b, 188f, 1499f, var_0.a.b))))), global0.yyw, ~vec2<u32>(u_input.a, ~firstLeadingBit(var_1.x)));
}

