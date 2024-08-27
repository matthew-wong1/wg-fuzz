struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: bool = false;

var<private> global2: array<i32, 27>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<i32, 2>();
    let var_0 = select(select(vec4<bool>(false, !any(vec2<bool>(true, true)), true || select(false, false, true), true), select(vec4<bool>(select(true, true, true), true, all(vec2<bool>(true, false)), true), vec4<bool>(true, arg_3.b.x == arg_3.b.x, true, true), vec4<bool>(select(true, true, true), true, true, false)), vec4<bool>(select(false, all(vec2<bool>(true, true)), true), true, true, any(vec4<bool>(true, true, false, false)))), vec4<bool>(!(u_input.b < u_input.d), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), !all(vec2<bool>(true, true)), true == any(vec4<bool>(false, true, true, false))), vec4<bool>(true || select(any(vec3<bool>(false, true, false)), true, true), all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true, true));
    var var_1 = countOneBits(~(~1u)) >> ((_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 59542u, 68770u), vec3<u32>(0u, 36764u, 7437u), vec3<u32>(13723u, 18999u, 0u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u))) ^ 1u) % 32u);
    var var_2 = Struct_1(-_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(22635i, 2147483647i, u_input.e.x, 31083i), u_input.e), u_input.e), _wgslsmith_f_op_vec2_f32(-arg_0.b));
    var var_3 = _wgslsmith_add_i32(abs(var_2.a.x), countOneBits(_wgslsmith_div_i32(25971i, 3790i))) << (~_wgslsmith_div_u32(reverseBits(95605u), ~35914u) % 32u);
    return vec4<bool>(var_0.x, var_0.x, any(!vec2<bool>(var_0.x, true)) | !var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.b.x - -292f))) * -972f) < _wgslsmith_f_op_f32(arg_2 * -1265f));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<f32> {
    var var_0 = ~(-(u_input.e.yxx << (vec3<u32>(34447u, 28873u, 63001u) % vec3<u32>(32u)))) << (firstLeadingBit(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    var var_1 = false;
    let var_2 = any(func_3(Struct_1(vec4<i32>(-26409i, arg_0, -125i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-207f, arg_1.b.x))))), _wgslsmith_dot_vec3_i32(arg_1.a.yzx, u_input.a), 274f, arg_1));
    let var_3 = arg_1;
    global2 = array<i32, 27>();
    return arg_1.b;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<i32, 2>();
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(431f + arg_2.b.x);
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    return Struct_1(u_input.e, _wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.b.x, -1809f), _wgslsmith_f_op_vec2_f32(func_2(arg_2.a.x, Struct_1(arg_2.a, vec2<f32>(var_1, arg_2.b.x)), arg_2.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-1i, -2147483647i)), global2[_wgslsmith_index_u32(~4294967295u, 27u)]) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(61245u, 0u, 0u, 4294967295u), ~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))), reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(~firstTrailingBit(0u), 8815u)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-416f, -182f, -335f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1412f, -790f, 140f), vec3<f32>(830f, 1211f, 221f), true))))))));
    var var_2 = func_1(max(_wgslsmith_mod_u32(~1u, 1u), 1u), _wgslsmith_sub_i32(-22896i, -global2[_wgslsmith_index_u32(5203u, 27u)] ^ ~u_input.c) ^ global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(27104u, 90940u, 11790u), vec3<u32>(0u, 29821u, 0u))), 2u)], Struct_1(u_input.e, var_1.zx));
    var var_3 = func_1(countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(28228u, 21340u, 1u) >> (reverseBits(30368u) % 32u), ~(~22338u))), (firstTrailingBit(-2147483647i) >> (select(1u, abs(0u), true) % 32u)) >> (_wgslsmith_clamp_u32(1u, 1u, max(~0u, _wgslsmith_add_u32(0u, 2178u))) % 32u), func_1(_wgslsmith_div_u32(select(1u, 0u, func_3(Struct_1(vec4<i32>(u_input.b, 0i, -33680i, var_2.a.x), var_2.b), var_2.a.x, var_2.b.x, Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(30107u, 2u)], -1i, global0[_wgslsmith_index_u32(73499u, 2u)], 27864i), var_1.zx)).x), ~(~4294967295u)), ~(i32(-1i) * -1i), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(4174u, 2u)], 2147483647i, var_2.a.x, var_0.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(455f * -1441f), var_1.x))));
    var var_4 = func_1(1u, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(0u, 33401i, Struct_1(vec4<i32>(-1i, global0[_wgslsmith_index_u32(5725u, 2u)], u_input.e.x, var_0.x), var_1.xz)).a.ywx, _wgslsmith_mod_vec3_i32(u_input.e.zyz, vec3<i32>(var_0.x, -2147483647i, 1i))), vec3<i32>(-var_3.a.x, 1i, 32415i)), Struct_1(vec4<i32>(1i, var_2.a.x, u_input.d, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(46139u, 27u)], u_input.c) << (abs(34505u) % 32u)), vec2<f32>(-1631f, _wgslsmith_f_op_f32(-var_3.b.x))));
    var var_5 = Struct_1(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(abs(0u), 2u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(48998u, 2u)], var_0.x), global2[_wgslsmith_index_u32(50952u, 27u)] << (4294967295u % 32u)), vec4<i32>(~(-1i), 2147483647i, var_4.a.x, 1i)), min(-var_2.a, countOneBits(-var_4.a)), _wgslsmith_mult_vec4_i32(func_1(56863u, select(-49722i, var_2.a.x, false), Struct_1(var_3.a, var_2.b)).a, vec4<i32>(-1i) * -var_2.a)), _wgslsmith_f_op_vec2_f32(-var_4.b));
    let var_6 = 1000f;
    let var_7 = !func_3(func_1(0u, -2147483647i, Struct_1(vec4<i32>(var_5.a.x, var_5.a.x, 0i, -1i), _wgslsmith_f_op_vec2_f32(max(var_4.b, var_3.b)))), global0[_wgslsmith_index_u32(~59708u, 2u)], -203f, Struct_1(vec4<i32>(var_3.a.x | global0[_wgslsmith_index_u32(7351u, 2u)], _wgslsmith_div_i32(0i, -6603i), -u_input.a.x, ~(-1i)), _wgslsmith_div_vec2_f32(vec2<f32>(-600f, 357f), vec2<f32>(var_6, var_4.b.x)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_5.b.x - var_5.b.x), -1i, var_6);
}

