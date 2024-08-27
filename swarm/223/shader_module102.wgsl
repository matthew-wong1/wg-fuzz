struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(23354i, -52490i));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -3665i, -17073i, 1i);

var<private> global2: array<i32, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global1 = -(~abs(~vec4<i32>(37103i, global2[_wgslsmith_index_u32(21738u, 20u)], -507i, -22150i)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-285f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -604f)))))), 381f);
    global0 = array<vec2<i32>, 1>();
    var var_1 = any(!select(vec4<bool>(var_0.x < var_0.x, u_input.a.x > u_input.a.x, true, false != arg_0.a), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 20u)] != global2[_wgslsmith_index_u32(1u, 20u)], arg_0.a & false, !arg_0.a), max(global1.x, global1.x) < 1i));
    var var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(0i, 1i, global2[_wgslsmith_index_u32(0u, 20u)] >> (~u_input.a.x % 32u))), 404i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~global1.x, -18365i), _wgslsmith_sub_i32(~(global1.x | global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), ~(-37389i) ^ global2[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)]), _wgslsmith_mod_i32(-select(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.x, arg_1.x), global1.x)));
    return arg_0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = any(!select(vec4<bool>(true, false, u_input.a.x <= u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)] > 0i), vec4<bool>(all(vec2<bool>(false, true)), false, true, func_3(Struct_1(false), vec3<bool>(false, true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))));
    var var_1 = Struct_1(func_3(Struct_1((global2[_wgslsmith_index_u32(4294967295u, 20u)] ^ global1.x) < 1515i), select(!(!vec3<bool>(var_0, var_0, false)), select(vec3<bool>(var_0, true, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, true, var_0), var_0), !vec3<bool>(var_0, var_0, var_0)), u_input.a.x != ~17691u)));
    let var_2 = select(!vec4<bool>(firstTrailingBit(0u) != u_input.a.x, true, true, (-27452i <= global1.x) || true), !(!(!(!vec4<bool>(var_1.a, var_1.a, true, var_0)))), vec4<bool>(!all(vec3<bool>(var_0, true, false)), func_3(Struct_1(true), vec3<bool>(true, false, u_input.a.x > 0u)), any(!(!vec2<bool>(var_0, var_0))), var_0));
    let var_3 = Struct_1(func_3(Struct_1(34821u < ~u_input.a.x), var_2.xzx));
    var var_4 = select(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, (-1i << (u_input.a.x % 32u)) | global1.x), -_wgslsmith_mod_i32(~2147483647i, select(global1.x, -1i, false))), 2823i, !select(var_0, any(select(var_2.zx, vec2<bool>(false, true), var_3.a)), var_1.a));
    return Struct_1(var_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<i32, 20>();
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.x, global2[_wgslsmith_index_u32(56309u, 20u)], -41564i)), vec4<i32>(global1.x ^ global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.x, ~2147483647i, _wgslsmith_mod_i32(-1i, -5355i)), _wgslsmith_add_vec4_i32(~vec4<i32>(-50190i, -2147483647i, -52863i, -32645i), select(vec4<i32>(-56562i, 43731i, 1032i, -27589i), vec4<i32>(-2147483647i, -2147483647i, -63347i, 0i), false))), _wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 2147483647i, global2[_wgslsmith_index_u32(52574u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<i32>(0i, global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(1u, 20u)], 2147483647i, 2147483647i, global1.x), vec4<i32>(0i, -1i, 1i, 2147483647i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))))), -_wgslsmith_sub_vec4_i32(max(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(119264u, 20u)], -1i, -1i), vec4<i32>(39749i, 0i, global2[_wgslsmith_index_u32(1u, 20u)], -10067i)), select(min(vec4<i32>(27682i, global1.x, global1.x, global1.x), vec4<i32>(31169i, -21043i, global1.x, -22411i)), min(vec4<i32>(-2147483647i, global1.x, global2[_wgslsmith_index_u32(0u, 20u)], 1i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global1.x, -30847i, global1.x)), arg_1)));
    global1 = abs(~(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1.x, global1.x, global1.x), vec4<i32>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 1i, 19006i)) & _wgslsmith_div_vec4_i32(-vec4<i32>(global1.x, -2171i, global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 1i, global1.x, global1.x), vec4<i32>(global1.x, -2147483647i, 0i, global1.x), vec4<i32>(0i, global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1i)))));
    global1 = vec4<i32>(1i, global1.x, reverseBits(8886i), 2147483647i);
    global0 = array<vec2<i32>, 1>();
    return Struct_1(arg_0.a || all(arg_1.wwy));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_4(func_2(), select(vec4<bool>((arg_0 || arg_0) == any(vec4<bool>(false, true, arg_0, arg_0)), !(23462u <= u_input.a.x), true, select(false | arg_0, arg_0, global2[_wgslsmith_index_u32(11251u, 20u)] < global1.x)), select(!(!vec4<bool>(true, arg_0, true, false)), !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false), arg_0), arg_0), false));
    let var_1 = var_0;
    let var_2 = global1.x ^ (~global2[_wgslsmith_index_u32(countOneBits(0u << (u_input.a.x % 32u)), 20u)] | (-firstLeadingBit(-2147483647i) << (u_input.a.x % 32u)));
    global2 = array<i32, 20>();
    var var_3 = Struct_1(!any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, var_0.a))));
    return _wgslsmith_f_op_f32(round(-862f));
}

fn func_5(arg_0: vec4<f32>) -> vec4<i32> {
    return abs(~select(~vec4<i32>(global2[_wgslsmith_index_u32(47478u, 20u)], global2[_wgslsmith_index_u32(37294u, 20u)], 14508i, 2147483647i), reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(9383u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])), true) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 42813u, 18506u, u_input.a.x), vec4<u32>(0u, 4294967295u, 20080u, u_input.a.x))), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 61721u, 1395u), vec4<bool>(false, false, true, true)) ^ firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-682f, _wgslsmith_f_op_f32(round(-1207f)), _wgslsmith_f_op_f32(func_1(false)), _wgslsmith_f_op_f32(-473f + 595f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(221f, 431f, -684f, 1000f) + vec4<f32>(203f, -1000f, 214f, 575f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-223f, 172f, 1388f, 298f))), vec4<f32>(1079f, 132f, -610f, 1000f))))));
    global0 = array<vec2<i32>, 1>();
    let var_0 = 0i;
    var var_1 = Struct_1(false);
    global0 = array<vec2<i32>, 1>();
    global1 = countOneBits(~select(min(-vec4<i32>(global1.x, 7395i, 16435i, 2147483647i), vec4<i32>(-4488i, var_0, var_0, -955i)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(55205u, 20u)], global2[_wgslsmith_index_u32(42604u, 20u)], -1i, -2147483647i)), vec4<i32>(22005i, var_0, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 80916i) << (vec4<u32>(46077u, 4294967295u, 100650u, 21234u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 20u)] <= 8790i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~global1.yxz);
}

