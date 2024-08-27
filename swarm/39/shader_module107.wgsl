struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 858f;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(i32(-2147483648)), Struct_2(-6654i), Struct_2(-20764i), Struct_2(-47594i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)));

var<private> global2: vec4<i32>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: u32) -> vec4<u32> {
    return vec4<u32>(~arg_3, 21292u, ~(~(~(u_input.b << (u_input.a % 32u)))), 1u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-462f + _wgslsmith_f_op_f32(f32(-1f) * -370f))))) + arg_1.x);
    let var_1 = !vec2<bool>(all(!global3.wz), global3.x);
    let var_2 = u_input.c.x;
    return u_input.b;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~max(func_2(u_input.c.x, global3.yx, vec3<bool>(global3.x, global3.x, global3.x), u_input.b), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4546u, 6044u), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(6328u, u_input.b, 21629u, 53928u), vec4<u32>(u_input.b, 4294967295u, 0u, u_input.a))) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(114877u, 1u, 53877u, u_input.b), vec4<u32>(u_input.b, 1u, 4294967295u, u_input.a))) % vec4<u32>(32u))), max(min(~(0u >> (u_input.a % 32u)), ~func_3(14887u, vec3<f32>(411f, -110f, 1367f))), 74491u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, ~(u_input.a >> (u_input.a % 32u)), ~31601u), ~u_input.b));
    var var_1 = reverseBits(0i);
    global3 = select(select(select(!select(vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(true, false, global3.x, true), vec4<bool>(true, global3.x, false, global3.x)), !select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), global3.x), true), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -624f) >= _wgslsmith_f_op_f32(-arg_0), ~var_0.x >= func_2(1i, global3.yx, vec3<bool>(global3.x, global3.x, false), 30493u).x, global3.x, global3.x & !global3.x), !select(select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, true)), select(vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(true, false, false, global3.x), global3.x), false)), select(!select(select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, false, global3.x, global3.x), global3.x), vec4<bool>(false, global3.x, global3.x, true), select(vec4<bool>(false, global3.x, false, true), vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(true, true, true, true))), !vec4<bool>(true, global3.x, all(vec2<bool>(false, true)), global3.x), !select(select(vec4<bool>(true, global3.x, false, true), vec4<bool>(global3.x, false, global3.x, false), vec4<bool>(global3.x, true, false, false)), vec4<bool>(global3.x, false, global3.x, global3.x), !vec4<bool>(global3.x, true, true, global3.x))), !any(vec4<bool>(u_input.c.x <= 1i, true, !global3.x, global3.x && true)));
    let var_2 = global3.x;
    var_1 = -abs(_wgslsmith_mult_i32(reverseBits(i32(-1i) * -10940i), _wgslsmith_clamp_i32(1i, u_input.c.x, _wgslsmith_sub_i32(23317i, 1i))));
    return select(vec4<bool>(global3.x, all(global3.yz), _wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.xz), _wgslsmith_add_vec2_u32(var_0.xz, var_0.yy)) >= ~u_input.b, false), !(!vec4<bool>(any(vec4<bool>(false, false, global3.x, false)), global3.x, global3.x, false)), all(!vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!select(vec4<bool>(true, false, true, 0i < u_input.c.x), func_1(_wgslsmith_f_op_f32(f32(-1f) * -453f)), vec4<bool>(global3.x, !global3.x, !global3.x, any(vec2<bool>(false, global3.x)))));
    let var_0 = Struct_1(26303u, u_input.a);
    global3 = !vec4<bool>(false, global3.x && true, global3.x, !any(!vec4<bool>(false, global3.x, global3.x, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(676f, -447f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + 1042f)) + vec3<f32>(1000f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(566f, -1000f, global3.x))))));
    let var_2 = false;
    global3 = vec4<bool>(any(select(global3.yz, !global3.xx, true)), var_2, (func_3(var_0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -217f, var_1.x), vec3<f32>(var_1.x, var_1.x, 686f), vec3<bool>(false, true, global3.x)))) ^ select(14136u, 6009u >> (u_input.b % 32u), true)) <= u_input.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(~30129u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-701f, 724f, -399f), vec3<f32>(var_1.x, var_1.x, 210f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, var_1.x, 1507f) + vec3<f32>(629f, var_1.x, var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), 2352f, true & var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1427f) - _wgslsmith_f_op_f32(1479f + 163f)), _wgslsmith_f_op_f32(-var_1.x))), global2.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1969f, 227f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1056f))), var_1.zx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_1.zx)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, var_1.x)))), var_2 | all(vec4<bool>(true, false, global3.x, false)))), global2.x);
}

