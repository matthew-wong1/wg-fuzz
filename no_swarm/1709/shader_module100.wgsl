struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(18719u, 0u, 26493u, 16721u, 4294967295u, 0u, 35686u, 1u, 1u, 32966u, 5772u, 6278u, 15495u, 4294967295u, 1u, 27494u, 56825u, 0u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<i32, 16> = array<i32, 16>(-42371i, -29310i, 55682i, i32(-2147483648), 2147483647i, 2804i, -26867i, -1i, -30972i, 2147483647i, 4623i, -7002i, 1i, -25842i, 1i, -30877i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec2<i32> {
    global3 = array<i32, 16>();
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.zwz, select(vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(46618u, 18u)], 0u), 25089u, global0[_wgslsmith_index_u32(firstTrailingBit(61943u), 18u)]), countOneBits(vec3<u32>(u_input.d.x, 0u, u_input.d.x)) ^ vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], global0[_wgslsmith_index_u32(41103u, 18u)]), !global1.c)), 18u)], global0[_wgslsmith_index_u32(~firstTrailingBit(2500u), 18u)]), 18u)], 10u)];
    global0 = array<u32, 18>();
    var_0 = global2[_wgslsmith_index_u32(46859u, 10u)];
    var var_1 = var_0.e;
    return min(_wgslsmith_add_vec2_i32(min(vec2<i32>(global1.d.x, ~global3[_wgslsmith_index_u32(62015u, 16u)]), var_0.d.xz), vec2<i32>(var_0.d.x, var_0.d.x)), _wgslsmith_mod_vec2_i32(global1.d.zx, countOneBits(~firstLeadingBit(vec2<i32>(u_input.a.x, arg_0)))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = func_3(global3[_wgslsmith_index_u32(u_input.d.x, 16u)]);
    let var_1 = select(vec3<bool>(false, true, all(vec2<bool>(global1.b & arg_0, global0[_wgslsmith_index_u32(4294967295u, 18u)] > 16172u))), !(!select(!vec3<bool>(false, true, arg_0), !vec3<bool>(false, global1.c, false), vec3<bool>(global1.c, global1.b, global1.b))), vec3<bool>(abs(-2147483647i) > _wgslsmith_mod_i32(-var_0.x, global3[_wgslsmith_index_u32(1u, 16u)] ^ var_0.x), reverseBits(global0[_wgslsmith_index_u32(38530u, 18u)]) == (_wgslsmith_dot_vec3_u32(u_input.d.wyw, vec3<u32>(0u, u_input.d.x, 65779u)) & 44283u), arg_0));
    let var_2 = !any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.d.x), 18u)] >= u_input.d.x, arg_0 || global1.b, true));
    var var_3 = _wgslsmith_f_op_f32(-global1.a);
    let var_4 = global2[_wgslsmith_index_u32(u_input.d.x, 10u)];
    return all(vec2<bool>(-32180i == (_wgslsmith_sub_i32(0i, global3[_wgslsmith_index_u32(u_input.d.x, 16u)]) ^ var_0.x), ~u_input.d.x != (global0[_wgslsmith_index_u32(countOneBits(196u), 18u)] << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 18u)] % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    global3 = array<i32, 16>();
    let var_1 = ~vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 1u), firstLeadingBit(~u_input.d.x), ~u_input.d.x, ~global0[_wgslsmith_index_u32(4294967295u, 18u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))), !func_2(any(select(vec3<bool>(true, var_0.b, global1.b), vec3<bool>(true, true, false), true))), false, vec3<i32>(-1i) * -var_0.d, arg_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -174f), arg_0.c, all(vec3<bool>(select(var_0.b, select(false, arg_1, false), true), !var_2.b | any(vec3<bool>(false, var_2.c, arg_1)), false)), -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_2.d.x, arg_0.d.x, u_input.a.x, -1i)), -1i >> (var_1.x % 32u)), i32(-1i) * -2147483647i, reverseBits(-1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(ceil(-113f))))), global1.e));
    return Struct_1(111f, global1.c, arg_1, -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.d.x, 6387i, u_input.b), max(arg_0.d, u_input.c.wzw), var_2.d) | select(firstLeadingBit(var_0.d), vec3<i32>(select(-25948i, var_2.d.x, arg_0.b), i32(-1i) * -2147483647i, global3[_wgslsmith_index_u32(0u, 16u)]), vec3<bool>(global1.b, var_1.x > var_1.x, var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(107f + -216f) * global1.e), _wgslsmith_f_op_f32(round(var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(689f, all(select(select(vec2<bool>(true, global1.b), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true)), false & global1.b, abs(vec3<i32>(-22585i, firstLeadingBit(u_input.c.x), 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1262f, global1.a, any(vec4<bool>(true, global1.b, false, false)))))), global1.b);
    var var_1 = vec4<bool>(var_0.c, var_0.b, select(!var_0.c, global1.b, global1.b) || (global3[_wgslsmith_index_u32(select(1u, u_input.d.x, true), 16u)] < global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(global0[_wgslsmith_index_u32(6664u, 18u)]), u_input.d.x >> (0u % 32u)), 16u)]), false);
    global1 = Struct_1(1397f, all(var_1.yw), !((any(var_1.xy) | true) & func_2(false)), _wgslsmith_sub_vec3_i32(abs(firstTrailingBit(vec3<i32>(-17225i, 54858i, global1.d.x)) ^ var_0.d), u_input.c.zyw), global1.a);
    let var_2 = Struct_1(1426f, !var_0.b, false, vec3<i32>(6663i, reverseBits(_wgslsmith_clamp_i32(-25771i, -2147483647i, -2147483647i)), -2147483647i), 1486f);
    var var_3 = -520f;
    var_3 = var_2.a;
    var_1 = vec4<bool>(false, firstTrailingBit(firstLeadingBit(~0i)) <= 2147483647i, var_2.c, global1.b);
    global2 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_mult_i32(reverseBits(u_input.b), u_input.c.x));
}

