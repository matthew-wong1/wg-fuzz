struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(7952i, vec4<f32>(-721f, 708f, -503f, -450f), vec3<f32>(-1175f, 279f, 1439f)));

var<private> global2: vec4<f32> = vec4<f32>(-1506f, -283f, -1261f, -856f);

var<private> global3: array<vec3<u32>, 6>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec2<bool> {
    var var_0 = u_input.d;
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 6u)];
    global2 = global4.b.b;
    global1 = Struct_2(vec2<bool>(true, false), Struct_1(1i & (_wgslsmith_mult_i32(u_input.c.x, global4.b.a) ^ ~u_input.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1363f, -352f, 208f, global4.b.c.x), vec4<f32>(global4.b.b.x, global4.b.b.x, -1000f, 372f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1039f, global2.x, global2.x) * global1.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1847f, -965f, -307f, global1.b.b.x))))), _wgslsmith_f_op_vec3_f32(max(global2.wzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, global4.b.c.x, -673f)))))));
    let var_2 = u_input.e;
    return global4.a;
}

fn func_2(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = u_input.c;
    let var_1 = u_input.b.x;
    let var_2 = var_1;
    var var_3 = Struct_2(!select(!global4.a, global4.a, func_3(vec3<bool>(false, global4.a.x, true), false)), Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a & var_0.x, ~global1.b.a, ~(-2147483647i)), reverseBits(-global4.b.a)), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(global2.x)), -713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, global1.b.c.x)) + _wgslsmith_f_op_f32(round(global1.b.b.x)))), global4.b.b.zyz));
    var var_4 = Struct_1(global1.b.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.c.x, 1280f, 610f, global1.b.b.x) + vec4<f32>(global4.b.c.x, arg_0.x, -101f, 132f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global4.b.b))))), global2.yzz);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.b.yyw) + vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), -718f, _wgslsmith_f_op_f32(f32(-1f) * -983f)));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 28>();
    let var_0 = global1.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.b.x, global2.x, 736f) - var_0.b.zwz))), global2.zyy))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(884f, global2.x, -1029f)))), vec3<bool>(firstLeadingBit(1i) <= max(min(27413i, 19628i), -6986i ^ global4.b.a), global1.a.x && (-global4.b.a >= 1i), false)));
    let var_2 = Struct_2(global1.a, Struct_1(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.a, 19307i, global1.b.a), vec3<i32>(global4.b.a, var_0.a, 2147483647i)), _wgslsmith_mult_i32(global4.b.a, global4.b.a))), _wgslsmith_f_op_vec4_f32(global4.b.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.b.b.x, global2.x, -133f, var_0.b.x), vec4<f32>(var_1.x, -684f, var_0.c.x, -892f)))), global2.wyy));
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global1.b.b - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(876f, -740f, -1244f, 687f), var_0.b, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(global2.x, -838f, global1.b.b.x))).x, _wgslsmith_f_op_f32(-var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.c.x), -1399f, global1.b.c.x, var_0.c.x), any(vec3<bool>(global4.a.x & !global4.a.x, all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, false, global1.a.x)), -1i >= ~var_2.b.a))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(select(global1.a, global1.a, select(global4.a, vec2<bool>(true, true), select(vec2<bool>(true, true), !global4.a, global1.a))), func_1());
    var var_0 = max(abs(countOneBits(1i) << (firstLeadingBit(~u_input.b.x) % 32u)), _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(global4.b.a, global4.b.a, global4.b.a)), max(vec3<i32>(17912i, global1.b.a, 64386i), vec3<i32>(u_input.d, u_input.e.x, -1i)) ^ vec3<i32>(global4.b.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, global1.b.a, -21833i, global1.b.a), vec4<i32>(global4.b.a, 72606i, -985i, -1i)))));
    var var_1 = global4.b;
    global1 = Struct_2(vec2<bool>(true, !global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.b.yxx)), 28u)]), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global1.b.c.x, 738f), -(-(vec3<i32>(var_1.a, -1i, global1.b.a) ^ vec3<i32>(-2147483647i, global1.b.a, 0i)) >> (countOneBits(abs(global3[_wgslsmith_index_u32(17609u, 6u)])) % vec3<u32>(32u))), ~(~(54956u & countOneBits(u_input.b.x))), vec3<f32>(global2.x, global4.b.c.x, _wgslsmith_f_op_f32(exp2(var_1.b.x))), ~abs(~(~vec4<u32>(u_input.b.x, 0u, 9369u, 51853u))));
}

