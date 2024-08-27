struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, false, false, false, true, true, false, false, false, true, false, true, false, true);

var<private> global2: bool = true;

var<private> global3: array<vec3<i32>, 24>;

var<private> global4: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = -2147483647i;
    var_0 = u_input.a;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.a, -2147483647i), _wgslsmith_mult_i32(-(~_wgslsmith_div_i32(2147483647i, u_input.a)), i32(-1i) * -27496i));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 7879i, -1i), min(vec4<i32>(67041i, 0i, 2147483647i, 45214i), vec4<i32>(u_input.a, 0i, -10122i, u_input.a))), -17426i, u_input.a, _wgslsmith_dot_vec3_i32(~global3[_wgslsmith_index_u32(arg_2.a.a, 24u)], ~global3[_wgslsmith_index_u32(0u, 24u)])), vec4<i32>(~u_input.a, 1i, i32(-1i) * -u_input.a, u_input.a)) >> (((~(~vec4<u32>(arg_2.a.a, arg_2.a.a, 56299u, 0u)) >> (vec4<u32>(4294967295u, 16881u, arg_0, ~26799u) % vec4<u32>(32u))) >> (~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, var_1.a.a, 1u, 43305u), vec4<u32>(arg_2.a.a, global4.a, arg_2.a.a, 1u)), vec4<u32>(global4.a, global4.a, 12987u, global4.a) & vec4<u32>(var_1.a.a, var_1.a.a, 1u, arg_0)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return arg_1.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mod_u32(arg_1.a.a, 12124u) | _wgslsmith_add_u32(global4.a, 0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, 129f, arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, -1280f))) - vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.c.x)), _wgslsmith_f_op_f32(func_3(50298u, arg_1.b.xx, arg_1)), _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.c + vec4<f32>(arg_1.c.x, 1875f, arg_1.c.x, _wgslsmith_f_op_f32(247f - -1120f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1966f, arg_1.b.x)));
    var var_2 = vec2<u32>(reverseBits(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a, var_0.a.a, 31258u), vec3<u32>(44013u, 63437u, 4294967295u)), var_0.a.a, global1[_wgslsmith_index_u32(~4294967295u, 16u)])), var_0.a.a) << ((firstTrailingBit(~vec2<u32>(var_0.a.a, arg_1.a.a)) >> (~_wgslsmith_mod_vec2_u32(min(vec2<u32>(4294967295u, var_0.a.a), vec2<u32>(arg_1.a.a, 12740u)), vec2<u32>(arg_1.a.a, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return vec3<u32>(arg_1.a.a >> (1502u % 32u), _wgslsmith_div_u32(var_0.a.a | ~global4.a, firstTrailingBit(var_0.a.a >> (global4.a % 32u))) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(3081u, 93419u), abs(vec2<u32>(59723u, arg_1.a.a))), ~var_0.a.a);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global4 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u), _wgslsmith_add_u32(28240u << (global4.a % 32u), max(1u, global4.a)), 38776u), select(func_2(vec3<bool>(global1[_wgslsmith_index_u32(19505u, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)]), Struct_2(Struct_1(1u), vec3<f32>(-149f, 276f, -117f), vec4<f32>(-1026f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(48555u, 57890u, global4.a) >> (vec3<u32>(1u, global4.a, 1547u) % vec3<u32>(32u)), vec3<u32>(1u, global4.a, 1u) & vec3<u32>(global4.a, 4530u, global4.a), vec3<u32>(global4.a, 46942u, 4294967295u) & vec3<u32>(global4.a, global4.a, 1u)), any(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false), vec2<bool>(global0[_wgslsmith_index_u32(global4.a, 6u)], global1[_wgslsmith_index_u32(32636u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(global4.a, 6u)], false))))));
    global0 = array<bool, 6>();
    global2 = true;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), arg_0) + arg_0);
    var var_1 = global0[_wgslsmith_index_u32(global4.a, 6u)];
    return Struct_2(Struct_1(_wgslsmith_sub_u32(func_2(vec3<bool>(global0[_wgslsmith_index_u32(global4.a, 6u)], true, global0[_wgslsmith_index_u32(1u, 6u)]), Struct_2(Struct_1(4294967295u), vec3<f32>(489f, arg_0.x, -557f), vec4<f32>(-122f, arg_0.x, var_0.x, -1287f))).x & global4.a, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(885f, arg_0.x)), _wgslsmith_f_op_f32(1000f + var_0.x), _wgslsmith_f_op_f32(round(var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(333f)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-956f)), _wgslsmith_f_op_f32(max(228f, -595f)), global1[_wgslsmith_index_u32(~225u, 16u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global4.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, 1000f, -638f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1348f, -168f, 805f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-404f, 1746f, -233f))))), vec4<f32>(_wgslsmith_div_f32(-858f, _wgslsmith_f_op_f32(min(1020f, -181f))), _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(1829f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 1099f))))));
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-var_0.b.yz));
    global4 = func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b.x, var_0.b.x))) - var_0.c.yz)))))).a;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1724f), _wgslsmith_f_op_f32(var_1.c.x * 230f))), var_0.c.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_1.c.x))))) * vec3<f32>(var_1.b.x, -520f, var_0.c.x));
    var var_3 = select(0i, _wgslsmith_sub_i32(~1i, u_input.a) << (global4.a % 32u), global0[_wgslsmith_index_u32(global4.a, 6u)]);
    global4 = Struct_1(var_1.a.a);
    var_1 = func_1(var_0.c.xw);
    var var_4 = !select(false, -434f > _wgslsmith_f_op_f32(-var_0.c.x), any(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.a, 16u)], global0[_wgslsmith_index_u32(29661u, 6u)], global0[_wgslsmith_index_u32(var_0.a.a, 6u)], false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.a, var_0.a.a), 6u)], global1[_wgslsmith_index_u32(1u, 16u)], any(vec2<bool>(global1[_wgslsmith_index_u32(global4.a, 16u)], global0[_wgslsmith_index_u32(global4.a, 6u)])))));
    var var_5 = vec2<bool>(!(!(-u_input.a != max(-7965i, u_input.a))), all(vec3<bool>(global1[_wgslsmith_index_u32(57314u, 16u)], false, false)) || any(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a);
}

