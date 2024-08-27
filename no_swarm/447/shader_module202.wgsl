struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), 22168u, vec3<u32>(4294967295u, 63504u, 4294967295u), vec4<i32>(1i, 1i, -1i, -6743i), -877f);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), 1u, vec3<u32>(24288u, 67241u, 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 2147483647i), 1155f);

var<private> global3: f32 = -150f;

var<private> global4: array<f32, 22>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_1(vec2<bool>(any(!select(vec4<bool>(false, false, global2.a.x, global2.a.x), vec4<bool>(true, global1.a.x, global2.a.x, global1.a.x), vec4<bool>(true, global2.a.x, global2.a.x, global1.a.x))), false), 4294967295u, reverseBits(vec3<u32>(~u_input.e, global0.c.x, 1u)), global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-893f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.c.x, 22u)])), global1.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) + global2.e)));
    var var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(min(abs(vec4<i32>(global2.d.x, var_0.d.x, -2147483647i, 0i)), global0.d), abs(global1.d), _wgslsmith_div_vec4_i32(~vec4<i32>(global2.d.x, global2.d.x, global0.d.x, 32121i), vec4<i32>(-135i, 7330i, 2147483647i, 2147483647i) ^ var_0.d)), vec4<i32>(select(-1i, i32(-1i) * -5444i, true) << (global1.b % 32u), 18421i, -(global0.d.x ^ var_0.d.x), max(1i, -1i)));
    let var_2 = -1017f;
    var var_3 = Struct_1(select(!vec2<bool>(global2.a.x, global0.a.x), select(select(global1.a, vec2<bool>(true, true), global2.a.x), !select(global2.a, global1.a, true), all(vec4<bool>(false, var_0.a.x, global0.a.x, global2.a.x))), global0.a), 7461u, abs(global2.c & global2.c), vec4<i32>(-1i) * -var_0.d, -1844f);
    var var_4 = global0.e;
    return vec4<i32>(-2147483647i, max(var_1.x, var_0.d.x), i32(-1i) * -var_3.d.x, _wgslsmith_add_i32(var_3.d.x, global2.d.x));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.e)));
    global3 = global2.e;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -818f);
    var var_1 = Struct_1(vec2<bool>(!arg_1.a.x, global0.a.x), 0u, firstLeadingBit(abs(abs(~arg_1.c))), ~vec4<i32>(~(i32(-1i) * -1i), i32(-1i) * -1i, global2.d.x, -1i), -126f);
    global4 = array<f32, 22>();
    return max(~func_3(_wgslsmith_mult_u32(arg_1.c.x | arg_2.b, arg_1.b >> (4294967295u % 32u))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(~arg_0, _wgslsmith_add_i32(-1i, -7304i), global1.d.x, _wgslsmith_div_i32(global0.d.x, arg_0)), arg_1.d, !vec4<bool>(arg_3, false, arg_3, arg_1.a.x)), vec4<i32>(1i ^ firstTrailingBit(arg_0), -43423i, _wgslsmith_div_i32(arg_0, -1i) & _wgslsmith_sub_i32(arg_1.d.x, arg_0), arg_0)));
}

fn func_1() -> vec2<bool> {
    global4 = array<f32, 22>();
    var var_0 = global0.e;
    let var_1 = ~70503u;
    global2 = Struct_1(global1.a, _wgslsmith_mult_u32(global2.c.x, ~(~global0.b)), global1.c >> ((vec3<u32>(0u, 34604u, ~var_1) & vec3<u32>(72659u, select(global1.b, 0u, false), countOneBits(global0.c.x))) % vec3<u32>(32u)), func_2(abs(global0.d.x), Struct_1(!vec2<bool>(false, global1.a.x), ~12586u, vec3<u32>(~global1.b, ~4294967295u, 1u), global1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1068f, 742f))))), Struct_1(select(select(vec2<bool>(global0.a.x, global0.a.x), global0.a, vec2<bool>(false, false)), select(global2.a, vec2<bool>(global1.a.x, true), true), global0.a), ~(~global0.b), vec3<u32>(4294967295u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, global0.c.x, 0u, global2.c.x), vec4<u32>(0u, 46352u, 63496u, 3832u)), global0.b), global0.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(711f, 458f) * -1555f)), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1273f)))));
    global2 = Struct_1(global0.a, 66212u, ~vec3<u32>(6844u, var_1, 4294967295u) ^ ~abs(vec3<u32>(59717u, u_input.c, 4294967295u)), vec4<i32>(_wgslsmith_dot_vec2_i32(global0.d.yw, _wgslsmith_sub_vec2_i32(global2.d.xw ^ vec2<i32>(global2.d.x, global2.d.x), global0.d.xy)), global2.d.x, 0i, func_3(global2.c.x).x), global2.e);
    return select(select(!(!(!global0.a)), global0.a, true), select(!vec2<bool>(global2.a.x | global0.a.x, global0.a.x), !select(!vec2<bool>(false, global1.a.x), global0.a, select(global2.a, vec2<bool>(global0.a.x, false), global2.a)), true), select(!vec2<bool>(false != global2.a.x, global0.a.x | true), select(global2.a, vec2<bool>(true, global1.a.x), any(vec2<bool>(true, global1.a.x)) | (506f < global4[_wgslsmith_index_u32(global0.b, 22u)])), select(!(!vec2<bool>(global1.a.x, false)), select(global0.a, global0.a, vec2<bool>(true, true)), select(!global0.a, global2.a, global0.a.x & false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!func_1(), max(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 51263u), ~vec2<u32>(global2.b, u_input.e)), 1u), vec3<u32>(1u, global0.c.x, global0.b), global1.d, global1.e);
    global2 = var_0;
    global3 = global4[_wgslsmith_index_u32(~reverseBits(global2.b), 22u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -226f);
    global0 = Struct_1(vec2<bool>(true, all(!select(vec2<bool>(true, false), vec2<bool>(false, global0.a.x), var_0.a))), ~_wgslsmith_add_u32(global0.c.x, ~(global1.b & global2.b)), abs(vec3<u32>(var_0.b, countOneBits(var_0.c.x << (54825u % 32u)), var_0.c.x)), countOneBits(-vec4<i32>(-global0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(47148i, 10360i), vec2<i32>(20288i, var_0.d.x)), firstTrailingBit(-21018i), 1i)), -906f);
    let x = u_input.a;
    s_output = StorageBuffer(-global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_0.e), 106f, -339f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, var_1, global2.e)))))));
}

