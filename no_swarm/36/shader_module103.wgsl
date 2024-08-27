struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, false, true, false, true, true, true, false, true, false, true, false, true, true, true, false, true, false, true, true, true, false, false, true, false, false, true, false);

var<private> global1: vec3<f32> = vec3<f32>(-319f, 817f, 1466f);

var<private> global2: array<vec2<i32>, 21>;

var<private> global3: f32 = -196f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    global3 = -1000f;
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1210f)))));
    let var_0 = global1.x;
    global0 = array<bool, 28>();
    let var_1 = true;
    return true;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = all(select(select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(8050u, 28u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(24518u, 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(2652u, 28u)], false, false, false)), vec4<bool>(false, !global0[_wgslsmith_index_u32(u_input.a, 28u)], true, global0[_wgslsmith_index_u32(13624u, 28u)] == global0[_wgslsmith_index_u32(u_input.a, 28u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], true, global0[_wgslsmith_index_u32(u_input.a, 28u)], false), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(85970u, 28u)], false, global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]))), vec4<bool>(true, any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(22414u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], true)), all(vec2<bool>(global0[_wgslsmith_index_u32(56432u, 28u)], true)), func_3()), global0[_wgslsmith_index_u32(~u_input.a, 28u)]));
    let var_1 = Struct_3(_wgslsmith_add_i32(reverseBits(abs(_wgslsmith_mod_i32(-22717i, -1i))), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(~u_input.a, 21u)] ^ global2[_wgslsmith_index_u32(reverseBits(16109u), 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)] << (vec2<u32>(u_input.a, 58523u) % vec2<u32>(32u)))), _wgslsmith_add_u32(reverseBits(abs(u_input.a) >> (~u_input.a % 32u)), 49744u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2458f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(global1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1664f, arg_0)))) - arg_0)));
    var var_2 = Struct_5(Struct_1(vec3<i32>(var_1.a, abs(firstTrailingBit(1i)), 1i), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_1.a, var_1.a, -1i, var_1.a), abs(vec4<i32>(var_1.a, var_1.a, 26926i, var_1.a))), -countOneBits(vec4<i32>(var_1.a, var_1.a, -4022i, 41508i))), _wgslsmith_mod_i32(-min(2147483647i, var_1.a), 1i), -1220f), vec3<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(32241u, 4294967295u), vec2<u32>(var_1.b, u_input.a)), vec2<u32>(u_input.a, u_input.a)) < countOneBits(u_input.a ^ u_input.a), !((var_1.b << (u_input.a % 32u)) < min(23046u, var_1.b)), true), Struct_3(firstTrailingBit(i32(-1i) * -20386i), var_1.b, -216f), _wgslsmith_mod_i32(~var_1.a, var_1.a & (max(var_1.a, var_1.a) >> ((1u | var_1.b) % 32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(806f, 380f, var_2.a.d), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.c.c, 1619f, 187f))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-110f - var_2.c.c), _wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_f_op_f32(select(arg_0, 779f, false)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2151f, 1000f, -1298f)))))), vec3<bool>(any(vec4<bool>(var_2.b.x, global0[_wgslsmith_index_u32(23587u, 28u)], true, global0[_wgslsmith_index_u32(var_1.b, 28u)])), func_3(), !global0[_wgslsmith_index_u32(~55551u, 28u)]))));
    global0 = array<bool, 28>();
    return -723f;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(554f + global1.x)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_0)), 770f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(716f))))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(791f))))), _wgslsmith_f_op_vec2_f32(global1.zx * global1.zz));
    var var_2 = ~(-2147483647i);
    var var_3 = ~min(_wgslsmith_add_u32(~u_input.a, u_input.a), _wgslsmith_clamp_u32(~12426u, 1u, 0u));
    var var_4 = Struct_4(Struct_3(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), global2[_wgslsmith_index_u32(u_input.a, 21u)]), _wgslsmith_mod_u32(min(u_input.a, 20173u), max(u_input.a, 0u)) << (1u % 32u), 149f));
    return ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, var_4.a.a) & _wgslsmith_dot_vec3_i32(vec3<i32>(15546i, 0i, 0i), vec3<i32>(var_4.a.a, var_4.a.a, 59104i) & vec3<i32>(2147483647i, -1i, var_4.a.a)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(i32(-1i) * -func_1(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)])), reverseBits(~_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 1i), global2[_wgslsmith_index_u32(~4294967295u, 21u)])));
    var var_1 = firstLeadingBit((global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32350u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)) & _wgslsmith_mult_u32(u_input.a, u_input.a), 21u)] >> (countOneBits(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))) & global2[_wgslsmith_index_u32(0u, 21u)]);
    let var_2 = global1.x;
    let var_3 = var_1.x;
    var var_4 = Struct_4(Struct_3(0i, (reverseBits(u_input.a) << (1u % 32u)) | _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 33882u), u_input.a), _wgslsmith_f_op_f32(ceil(152f))));
    let var_5 = ~select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, var_4.a.b, u_input.a, u_input.a), vec4<u32>(1u, 0u, 51255u, 4294967295u), global0[_wgslsmith_index_u32(12946u, 28u)]), vec4<u32>(var_4.a.b, u_input.a, 78633u, 4294967295u)) | vec4<u32>(select(var_4.a.b, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 28u)]), 53820u >> (u_input.a % 32u), ~var_4.a.b, firstLeadingBit(var_4.a.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_4.a.b, u_input.a, 27168u), vec4<u32>(u_input.a, u_input.a, 16577u, 12020u)), var_4.a.b, abs(80887u), _wgslsmith_add_u32(u_input.a, var_4.a.b)), abs(vec4<u32>(3357u, var_4.a.b, 4294967295u, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), (!global0[_wgslsmith_index_u32(1u, 28u)] == global0[_wgslsmith_index_u32(countOneBits(u_input.a), 28u)]) || false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, -806f, global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_4.a.c)), global1.x)))), vec2<u32>(var_4.a.b, firstTrailingBit(var_4.a.b)), vec3<i32>(0i, _wgslsmith_sub_i32(var_1.x, _wgslsmith_div_i32(~var_4.a.a, var_4.a.a)), var_1.x));
}

