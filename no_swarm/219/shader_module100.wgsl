struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(37667u, 32115u, 4294967295u), vec3<f32>(-1723f, -874f, 1079f));

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(0i, -17253i), vec2<i32>(-1i, 51641i), vec2<i32>(-16147i, -12561i), vec2<i32>(0i, -12069i), vec2<i32>(22003i, i32(-2147483648)), vec2<i32>(70i, 1i), vec2<i32>(-50513i, 77334i), vec2<i32>(-15680i, 1i), vec2<i32>(1i, -16358i), vec2<i32>(2147483647i, -18203i), vec2<i32>(-15845i, 52601i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(26986i, 1529i), vec2<i32>(0i, 16547i), vec2<i32>(15106i, -5893i), vec2<i32>(-24266i, -60926i), vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec2<f32>, 20>();
    var var_0 = _wgslsmith_dot_vec4_u32(countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(global2.a.x, global2.a.x, 1u, 17995u), abs(vec4<u32>(1u, 54540u, 61956u, global2.a.x)))), max(~((vec4<u32>(arg_0.a.x, 0u, global2.a.x, 76428u) >> (vec4<u32>(u_input.c.x, 1u, u_input.a.x, global2.a.x) % vec4<u32>(32u))) << (vec4<u32>(65608u, 1u, arg_0.a.x, global2.a.x) % vec4<u32>(32u))), select(~(~vec4<u32>(44882u, arg_0.a.x, u_input.a.x, 1u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 47407u, arg_0.a.x, arg_0.a.x), vec4<u32>(u_input.a.x, 48860u, 16065u, 73277u), vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), vec4<u32>(u_input.a.x, u_input.b, arg_0.a.x, u_input.b) | vec4<u32>(arg_0.a.x, 38585u, 36838u, 4294967295u), true), vec4<bool>(true, true, true, true))));
    var_0 = 943u;
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(~vec4<u32>(arg_0.a.x, 0u, 4294967295u, arg_0.a.x), vec4<u32>(arg_0.a.x, ~44545u, 25143u >> (0u % 32u), 1u)), abs(firstLeadingBit(vec4<u32>(0u, u_input.a.x, 4294967295u, global2.a.x)) ^ vec4<u32>(16825u, u_input.c.x, global2.a.x, arg_0.a.x))), vec4<u32>(7824u, 1u, ~1u, ~firstLeadingBit(60585u)) ^ vec4<u32>(u_input.c.x, firstTrailingBit(16240u) ^ _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), global2.a.x, u_input.c.x));
    var var_1 = vec2<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), !all(vec4<bool>(true, true, all(vec2<bool>(false, true)), true)));
    return false;
}

fn func_2() -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(-42448i, -41110i), ~(-_wgslsmith_div_i32(u_input.d, 1i << (1u % 32u))), u_input.d >> (3895u % 32u), _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(u_input.d, u_input.d), u_input.d))));
    var var_1 = !select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), func_3(Struct_1(u_input.a, global2.b))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), false), false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), any(vec3<bool>(true, true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true));
    let var_2 = Struct_1(min(vec3<u32>(~52958u, ~u_input.b, 4294967295u), ~global2.a), global2.b);
    let var_3 = Struct_2(-17305i);
    var var_4 = !(!vec4<bool>(false, true, true, any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, var_1.x, var_1.x)))));
    return 0i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = ~global2.a;
    let var_1 = global2.a;
    var var_2 = func_4(~firstLeadingBit(vec4<i32>(-1i, -2147483647i, -1i, arg_1.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(15527u, 4294967295u, var_1.x, 43727u), vec4<u32>(64272u, var_0.x, 0u, global2.a.x), vec4<u32>(0u, var_1.x, global2.a.x, var_1.x)) % vec4<u32>(32u))), Struct_2(_wgslsmith_mult_i32(u_input.d, countOneBits(u_input.d))), !vec4<bool>(!(global2.a.x < 0u), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), global2.b.x >= _wgslsmith_f_op_f32(-arg_0.x), true));
    var var_3 = var_2.a;
    return global3[_wgslsmith_index_u32(~u_input.a.x, 17u)];
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(max(u_input.a, max(~firstTrailingBit(global2.a), vec3<u32>(~global2.a.x, 56074u << (u_input.c.x % 32u), 10305u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, -1533f) * global2.b) + _wgslsmith_f_op_vec3_f32(floor(global2.b))))), global2.b)));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(global2.a.x, ~reverseBits(global2.a.x)), firstLeadingBit(firstLeadingBit(78422u)));
    var_1 = global2.a.x;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2.b.yy * vec2<f32>(111f, -323f)), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_0.a.x), 20u)]))) * _wgslsmith_div_vec2_f32(vec2<f32>(global2.b.x, var_0.b.x), var_0.b.xx)), _wgslsmith_f_op_vec2_f32(select(var_0.b.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 925f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 2555f), global2.b.yy) * _wgslsmith_f_op_vec2_f32(select(var_0.b.yy, vec2<f32>(global2.b.x, -414f), vec2<bool>(false, false))))), !vec2<bool>(any(vec4<bool>(false, false, false, false)), false))));
    return StorageBuffer(abs(~(~(~u_input.a.x))), func_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(2313f)), global2.b.x, _wgslsmith_f_op_f32(trunc(-474f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, var_2.x, global2.b.x) + global2.b)), func_4(vec4<i32>(-29405i ^ u_input.d, abs(u_input.d), min(2147483647i, u_input.d), firstTrailingBit(u_input.d)), Struct_2(func_2()), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global2.b)))) + _wgslsmith_div_vec3_f32(global2.b, _wgslsmith_div_vec3_f32(global2.b, var_0.b))), _wgslsmith_f_op_vec3_f32(global2.b + global2.b)), u_input.a >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 28226u, 0u), u_input.a) ^ var_0.a.x, ~1u, _wgslsmith_div_u32(u_input.b, global2.a.x)) % vec3<u32>(32u)), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), vec3<u32>(global2.a.x, 1u, 1u)), var_0.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4382u, 21691u), var_0.a.zy) ^ ~vec2<u32>(u_input.a.x, 59958u)), 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 20>();
    let x = u_input.a;
    s_output = func_1();
}

