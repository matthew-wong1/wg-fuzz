struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(1000f, 512f), vec2<f32>(402f, -1000f), vec2<f32>(-442f, 309f), vec2<f32>(-1043f, -385f), vec2<f32>(208f, -1194f));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec2<f32>, 5>();
    return reverseBits(abs(vec4<i32>(global2.b.a.x, 1i, -2147483647i, global2.c.d)));
}

fn func_2() -> vec3<i32> {
    let var_0 = min(~(-(i32(-1i) * -34557i)) & _wgslsmith_mult_i32(-2147483647i, abs(max(global2.c.a.x, global2.b.a.x))), -19342i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global2.b.c) + _wgslsmith_f_op_f32(trunc(-324f))), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.c, global2.c.c, -901f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(545f, -134f, 1398f) - vec3<f32>(global0.x, -108f, 1115f))))));
    var var_2 = global2.a;
    let var_3 = Struct_3(~func_3());
    var var_4 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_i32(select(~vec3<i32>(var_3.a.x, 2147483647i, 2147483647i), ~vec3<i32>(-2147483647i, var_3.a.x, 78i), !global2.b.e), -select(vec3<i32>(-1i, -2147483647i, -22635i), vec3<i32>(var_3.a.x, -1i, var_2.d), vec3<bool>(true, true, false)))), global0.yx, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1660f * _wgslsmith_f_op_f32(920f - _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(-global0.x), any(!vec3<bool>(global2.a.e, true, true)))), -2147483647i, (0u & u_input.d) >= _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, 8524u, 23159u)), countOneBits(vec3<u32>(0u, 1u, u_input.d) ^ vec3<u32>(u_input.a, u_input.a, u_input.a))));
    return firstLeadingBit(vec3<i32>(var_4.d ^ -1i, -2147483647i, -var_3.a.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(~func_2(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 473f) * vec2<f32>(global2.b.c, -1081f)), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.e, 5u)])))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a.c * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x)))), _wgslsmith_f_op_f32(-global2.b.c), -u_input.b.x, global2.b.e);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(select(-48242i, i32(-1i) * -2147483647i, global2.c.e), -var_0.d), global2.a.a.xx);
    global1 = array<vec2<f32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2028f);
    var var_3 = u_input.e;
    return ~(-(func_2().x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(65738u, arg_1, arg_1), vec3<u32>(arg_1, u_input.a, arg_1)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 5>();
    global2 = Struct_2(Struct_1(countOneBits(vec3<i32>(43083i, u_input.b.x, -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~1u, 5u)] + global2.b.b)), _wgslsmith_div_f32(global2.b.b.x, global2.a.c), -(~func_1(vec4<bool>(global2.b.e, global2.a.e, true, global2.b.e), 0u)), global2.b.e), Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -reverseBits(u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(-942f, 1000f))) * vec2<f32>(_wgslsmith_f_op_f32(global2.a.b.x * global2.b.c), _wgslsmith_f_op_f32(-global0.x))), -505f, max(_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.a.a.x, 0i, global2.b.d, -1i), -vec4<i32>(5482i, global2.c.a.x, 2147483647i, 1i)), -55701i), ~(1u >> (u_input.a % 32u)) > 55851u), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(global2.c.d, -2147483647i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), ~vec3<i32>(2147483647i, 53838i, global2.c.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_div_f32(global0.x, global0.x))), global0.x, global2.b.a.x, global2.c.e));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global2.a.b.x * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global2.c.c))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.b.x * global2.c.b.x) - _wgslsmith_f_op_f32(exp2(global2.c.c)))) + global2.b.c));
    var var_0 = ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(837u, u_input.c) ^ vec2<u32>(u_input.a, 1u), ~(~vec2<u32>(0u, u_input.d))));
    global2 = Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(444f, 2103f))), vec2<f32>(-329f, -382f)))), -1918f, -(global2.c.a.x | (u_input.b.x << (var_0.x % 32u))), true), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-138f + 672f), _wgslsmith_f_op_f32(ceil(2490f)))), global2.a.c, _wgslsmith_mult_i32(~(~global2.b.d), -12157i), true), global2.c);
    let var_1 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global2.c.e), vec3<bool>(false, false, global2.c.e), true), any(vec4<bool>(true, false, global2.a.e, global2.a.e))), !(!(!vec3<bool>(false, true, global2.c.e))), vec3<bool>(~global2.b.d >= -11585i, true, !(!global2.a.e))), vec3<bool>(true, false, global2.a.e), vec3<bool>(!global2.b.e, !(any(vec4<bool>(global2.c.e, global2.c.e, global2.b.e, global2.a.e)) && true), true));
    global2 = Struct_2(Struct_1(-(vec3<i32>(-1i) * -vec3<i32>(-53687i, -70206i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 21619u), 5u)]))), global2.a.b.x, _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(global2.c.d, u_input.b.x, 13508i, u_input.b.x), vec4<i32>(u_input.b.x, 0i, -1i, 4540i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.c.d, global2.b.d, global2.c.d, 2147483647i), vec4<i32>(-2147483647i, 0i, u_input.b.x, 22088i)), vec4<bool>(false, global2.c.e, true, global2.c.e)), ~(-vec4<i32>(73051i, u_input.b.x, 0i, 1i))), true), global2.b, global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b, ~0u, ~vec2<u32>(97236u >> ((u_input.d << (20415u % 32u)) % 32u), var_0.x));
}

