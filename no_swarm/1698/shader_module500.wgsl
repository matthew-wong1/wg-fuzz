struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<i32, 19>;

var<private> global3: array<u32, 16>;

var<private> global4: Struct_1 = Struct_1(vec4<i32>(0i, 22269i, -1i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = true;
    let var_2 = arg_0;
    let var_3 = var_2;
    var_1 = true;
    return Struct_1(abs(-countOneBits(vec4<i32>(-12154i, 2147483647i, 14354i, 43765i))) & (global4.a ^ global4.a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_1 {
    global4 = func_2(global1[_wgslsmith_index_u32(4294967295u, 18u)]);
    global3 = array<u32, 16>();
    let var_0 = Struct_2(reverseBits(firstTrailingBit(-arg_1)) & ~(vec3<i32>(u_input.a, arg_0.a.x, -20770i) | arg_1), -314f, _wgslsmith_add_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11767u, 1u)], 1u)], 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21179u, 1u)], 1u)], 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], global3[_wgslsmith_index_u32(5247u, 16u)], 30116u, 30241u), vec4<u32>(global3[_wgslsmith_index_u32(52664u, 16u)], 77501u, 85245u, 727u))), ~(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54608u, 1u)], 16u)], 16u)]))));
    global4 = func_2(Struct_2(_wgslsmith_div_vec3_i32(select(vec3<i32>(11666i, -2147483647i, -2846i), _wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(-20866i, 0i, global2[_wgslsmith_index_u32(1u, 19u)]), arg_0.a.xwz), all(arg_2.zz)), arg_1), _wgslsmith_f_op_f32(trunc(-1702f)), vec4<u32>(1u, 0u, firstTrailingBit(1u), 20248u)));
    global0 = array<u32, 1>();
    return func_2(global1[_wgslsmith_index_u32(34601u, 18u)]);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_3(func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 36753u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 3303u), vec2<u32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59143u, 1u)], 1u)], 16u)], 1u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40837u, 1u)], 1u)])))), 18u)]), _wgslsmith_div_vec3_i32(select(vec3<i32>(~16269i, -global2[_wgslsmith_index_u32(0u, 19u)], min(global2[_wgslsmith_index_u32(18958u, 19u)], 1735i)), global4.a.wzz, true), -vec3<i32>(u_input.a ^ u_input.c.x, global4.a.x ^ global4.a.x, global4.a.x)), vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), false, !select(true, true, any(vec2<bool>(true, false)))));
    var var_1 = !select(select(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, select(false, true, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, true), true)), !vec4<bool>(all(vec2<bool>(true, true)), true, true, true), true);
    var_1 = vec4<bool>(var_1.x, true, select(true, !(!var_1.x), !var_1.x), !((global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 16u)], 1u)] ^ global0[_wgslsmith_index_u32(65790u, 1u)]) == max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(28569u, 1u)], 1u, 1u), vec3<u32>(58252u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27566u, 1u)], 1u)], 48350u)), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u))));
    global0 = array<u32, 1>();
    var_1 = vec4<bool>(true, all(var_1.xw), (i32(-1i) * -(~18348i)) > _wgslsmith_div_i32(var_0.a.x, 0i), true);
    return select(!(!vec4<bool>(var_1.x || false, true, true, true)), !select(select(!vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, true, true, true), true), vec4<bool>(all(var_1.yw), false, 47023u == global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 16u)], 16u)], 16u)], all(var_1.yxx)), ~global0[_wgslsmith_index_u32(4294967295u, 1u)] != 4294967295u), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(func_1(), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), _wgslsmith_sub_i32(global4.a.x, 2147483647i) > -1i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), true, !any(vec2<bool>(false, false)), !any(vec4<bool>(true, true, false, false))), vec4<bool>(false, false, true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-736f, 455f, -693f, 348f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, -965f, -2857f, 1000f))))))));
    global0 = array<u32, 1>();
    var var_2 = ~(~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 21388u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(24148u, 1u)])), 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37718u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 1u)], 1u)], 1u)], 1u), 1u)));
    var var_3 = var_0.x;
    var var_4 = Struct_2(u_input.c, 2463f, _wgslsmith_mult_vec4_u32(min(vec4<u32>(global0[_wgslsmith_index_u32(var_2.x, 1u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 16u)], 64816u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 1u)], 1u)], 0u, 34697u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28798u, 16u)], 16u)])) >> (~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, 67732u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.x, 16u)], 1u)], 16u)], 1u)], 1u)], 1u)], 1u)]) % vec4<u32>(32u)), select(select(vec4<u32>(global3[_wgslsmith_index_u32(0u, 16u)], var_2.x, 1u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 1u, global0[_wgslsmith_index_u32(26588u, 1u)], 0u), var_0.x) | (vec4<u32>(28157u, 1u, var_2.x, 18978u) >> (vec4<u32>(global3[_wgslsmith_index_u32(28117u, 16u)], global0[_wgslsmith_index_u32(1u, 1u)], 1u, var_2.x) % vec4<u32>(32u))), vec4<u32>(0u, 0u, 4294967295u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 1u)]) | ~vec4<u32>(4294967295u, 12997u, global0[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(var_2.x, 16u)]), vec4<bool>(true, true, true, true))));
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f * 822f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1))), var_1, !vec4<bool>(var_0.x, false, false, false))), max(u_input.c.yx, var_4.a.yy), global3[_wgslsmith_index_u32(0u, 16u)], ~(vec3<i32>(_wgslsmith_add_i32(1i, -2147483647i), _wgslsmith_div_i32(-2147483647i, u_input.a), _wgslsmith_mult_i32(var_4.a.x, global2[_wgslsmith_index_u32(4294967295u, 19u)])) >> (~vec3<u32>(66262u, global3[_wgslsmith_index_u32(var_2.x, 16u)], 4294967295u) % vec3<u32>(32u))));
}

