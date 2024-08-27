struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<bool>(false, true)), 39851u, Struct_2(vec2<bool>(false, false)));

var<private> global1: array<f32, 27> = array<f32, 27>(-1231f, -918f, 823f, 811f, 1057f, 1512f, -594f, 149f, -298f, -538f, -1000f, -1000f, -842f, 308f, 343f, -801f, -2071f, -442f, 930f, 1062f, -441f, 876f, 620f, -608f, 2358f, 1000f, -1000f);

var<private> global2: Struct_3;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec2<bool>(false, true)), 30960u, Struct_2(vec2<bool>(false, true)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global1 = array<f32, 27>();
    let var_0 = Struct_2(vec2<bool>(false, global3.a.a.x));
    let var_1 = -u_input.c;
    let var_2 = Struct_1(vec3<i32>(-1i) * -firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -1i, var_1.x))));
    global0 = Struct_3(Struct_2(vec2<bool>(!select(var_0.a.x, true, true), 52155u <= abs(global2.b))), _wgslsmith_mod_u32(~countOneBits(abs(1166u)), ~countOneBits(57491u) >> (1u % 32u)), Struct_2(global3.c.a));
    return select(vec4<bool>(any(select(select(vec3<bool>(global0.a.a.x, false, false), vec3<bool>(true, true, true), vec3<bool>(true, global3.a.a.x, var_0.a.x)), vec3<bool>(var_0.a.x, global3.a.a.x, false), !vec3<bool>(false, global3.a.a.x, global0.c.a.x))), false & any(!vec3<bool>(false, true, var_0.a.x)), !all(!vec3<bool>(false, true, var_0.a.x)), !(!any(vec4<bool>(false, false, global0.c.a.x, false)))), select(select(vec4<bool>(global3.c.a.x, true, var_0.a.x, !global0.c.a.x), vec4<bool>(var_0.a.x, var_0.a.x, global0.c.a.x, global3.c.a.x), select(vec4<bool>(true, global3.a.a.x, global0.a.a.x, global2.a.a.x), !vec4<bool>(var_0.a.x, false, false, false), true)), select(vec4<bool>(any(global3.c.a), global3.a.a.x, false, false), !vec4<bool>(global3.c.a.x, global3.c.a.x, false, false), all(vec2<bool>(global2.a.a.x, false))), vec4<bool>(true, true, all(var_0.a), u_input.c.x != _wgslsmith_div_i32(70182i, -1i))), vec4<bool>(true, var_0.a.x, true, global0.c.a.x));
}

fn func_2() -> bool {
    global0 = Struct_3(Struct_2(!vec2<bool>(global3.a.a.x, true)), 0u, global0.a);
    let var_0 = select(func_3(), select(vec4<bool>(true, 864f >= global1[_wgslsmith_index_u32(firstTrailingBit(global2.b), 27u)], true, global0.a.a.x), !select(select(vec4<bool>(global0.a.a.x, global2.c.a.x, global2.a.a.x, false), vec4<bool>(global2.c.a.x, global2.c.a.x, global2.a.a.x, false), global2.c.a.x), vec4<bool>(false, global3.c.a.x, global2.a.a.x, false), global2.c.a.x), true), true);
    let var_1 = 54452u;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.b, 27u)] - 372f))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, var_1), ~71468u, min(global2.b, 83304u)), 27u)], -809f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, global1[_wgslsmith_index_u32(global3.b, 27u)]))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], -1471f), vec2<f32>(164f, -457f), vec2<bool>(var_0.x, global0.a.a.x)))))));
    var var_3 = min(abs(reverseBits(abs(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x)) | vec4<i32>(-17638i, 1i, 96i, u_input.c.x))), abs(select(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 0i), vec4<i32>(u_input.c.x, 5256i, -11105i, u_input.c.x), true), vec4<i32>(7439i, -33731i, u_input.c.x, -60040i)), abs(abs(vec4<i32>(8243i, 10429i, u_input.c.x, u_input.c.x))), var_0.x)));
    return false;
}

fn func_1() -> vec2<f32> {
    var var_0 = select(vec4<bool>(false, global0.a.a.x, u_input.b.x >= u_input.d, global3.c.a.x), select(vec4<bool>(global3.a.a.x, func_2(), !all(vec4<bool>(global0.a.a.x, global0.c.a.x, global0.c.a.x, global3.c.a.x)), all(vec2<bool>(true, true))), select(select(vec4<bool>(true, false, false, false), !vec4<bool>(global2.c.a.x, global2.c.a.x, global3.c.a.x, false), vec4<bool>(true, global0.c.a.x, false, true)), select(!vec4<bool>(global2.c.a.x, global0.c.a.x, false, true), !vec4<bool>(true, false, true, global2.c.a.x), select(vec4<bool>(false, global2.a.a.x, global2.c.a.x, global2.c.a.x), vec4<bool>(global0.c.a.x, true, global3.a.a.x, global0.c.a.x), false)), vec4<bool>(true, !global0.a.a.x, false, global3.a.a.x)), !func_3().x), func_3());
    var var_1 = -1335f;
    var var_2 = vec3<i32>(select(-2147483647i, u_input.c.x ^ u_input.c.x, true), 30143i, -2147483647i);
    global0 = Struct_3(Struct_2(vec2<bool>(u_input.c.x != _wgslsmith_add_i32(u_input.c.x, -2147483647i), var_0.x)), max(97672u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, 4294967295u, global2.b, u_input.a.x), vec4<u32>(global0.b, 1u, 4294967295u, u_input.a.x)) ^ global2.b, _wgslsmith_mult_u32(14851u, abs(13757u)))), global2.c);
    var var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, global0.b, ~global3.b), 16381u) << (min(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(96643u, 15118u), u_input.a.zz)) % 32u)), 27u)];
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(~4294967295u, 27u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.b, 27u)])))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, arg_1.x, -478f, 120f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -892f, -505f, arg_1.x))))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(429f, -112f, 323f, global1[_wgslsmith_index_u32(7620u, 27u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, -444f, arg_1.x, global1[_wgslsmith_index_u32(83073u, 27u)]))))))) + vec4<f32>(_wgslsmith_div_f32(1449f, arg_1.x), _wgslsmith_f_op_f32(sign(-1451f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - -1516f), global0.c.a.x)), 845f));
    global0 = Struct_3(arg_0, ~(_wgslsmith_mult_u32(firstLeadingBit(u_input.d), 3058u) >> (_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(4294967295u, u_input.b.x)) % 32u)), global0.c);
    var var_1 = u_input.c.x;
    var var_2 = ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(countOneBits(-3395i) ^ u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(-min(0i, u_input.c.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-10010i, u_input.c.x, u_input.c.x), ~u_input.c.x), -2147483647i));
    let var_3 = vec2<f32>(global1[_wgslsmith_index_u32(~1u, 27u)], 1f);
    return Struct_3(Struct_2(select(global0.a.a, !global2.c.a, !(!vec2<bool>(true, global3.a.a.x)))), max(u_input.a.x, 26153u), Struct_2(vec2<bool>(any(!vec4<bool>(global3.a.a.x, true, false, false)), 44741u == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, global2.b, 0u, global0.b), vec4<u32>(9111u, 0u, global3.b, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global3.a, _wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_sub_u32(~(_wgslsmith_div_u32(global0.b, global3.b) << (_wgslsmith_mult_u32(global0.b, 51315u) % 32u)), global2.b), u_input.b.x != 0u);
    let var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32((_wgslsmith_mult_u32((global3.b << (4294967295u % 32u)) & ~29242u, 1u) << (u_input.b.x % 32u)) | (global3.b | 0u), 27u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-334f, -442f, 1565f) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-733f - global1[_wgslsmith_index_u32(0u, 27u)]))), 402f, global1[_wgslsmith_index_u32(global0.b, 27u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, global1[_wgslsmith_index_u32(global3.b, 27u)], global1[_wgslsmith_index_u32(u_input.d, 27u)]))))));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(42411u, _wgslsmith_sub_u32(global0.b, 0u));
}

