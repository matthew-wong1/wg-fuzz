struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<vec2<bool>, 7>;

var<private> global2: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(abs(max(4294967295u, _wgslsmith_mod_u32(112989u, 8399u)) >> (u_input.b % 32u)), 7u)], true, ~abs(~abs(vec4<u32>(u_input.a.x, 8445u, 4294967295u, 17246u))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, 2147483647i, global0[_wgslsmith_index_u32(1u, 7u)]), select(-(~vec4<i32>(-14254i, global0[_wgslsmith_index_u32(u_input.b, 7u)], -2147483647i, global0[_wgslsmith_index_u32(1u, 7u)])), ~vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 0i, -21592i), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_1, true, false, arg_1), !vec4<bool>(true, false, global2.x, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    let var_1 = false;
    let var_2 = var_0.e;
    let var_3 = vec3<f32>(-724f, _wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(max(528f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 233f)))))));
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(vec2<bool>(global2.x, _wgslsmith_f_op_f32(func_3(arg_2.b.x, arg_2.c.x, _wgslsmith_div_f32(-336f, -140f), true)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b.x - arg_1.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2.b)) + vec2<f32>(arg_2.b.x, -2089f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.x, -566f)))))), arg_1.c, arg_1.d);
    global2 = !arg_2.c;
    global2 = select(select(arg_1.c, select(!vec3<bool>(var_0.c.x, true, var_0.a.x), !arg_2.c, !vec3<bool>(false, global2.x, arg_1.c.x)), !any(select(vec4<bool>(var_0.a.x, true, arg_2.a.x, arg_2.a.x), vec4<bool>(global2.x, true, arg_2.c.x, global2.x), vec4<bool>(false, arg_1.c.x, global2.x, true)))), vec3<bool>(arg_2.a.x, arg_2.a.x | false, var_0.c.x && global2.x), all(!select(var_0.c, !var_0.c, 188f != arg_2.b.x)));
    let var_1 = global2.xy;
    global1 = array<vec2<bool>, 7>();
    return Struct_3(arg_1, u_input.b, firstLeadingBit(~max(min(vec4<u32>(0u, u_input.b, 4294967295u, 0u), vec4<u32>(4294967295u, 89414u, u_input.b, 91331u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 62723u, 4294967295u, 25959u), vec4<u32>(4294967295u, 4961u, 1956u, 4294967295u)))), Struct_2(arg_2.c.xy, arg_2.b, vec3<bool>(var_1.x, true, true), var_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    global1 = array<vec2<bool>, 7>();
    global1 = array<vec2<bool>, 7>();
    global2 = select(vec3<bool>(global2.x, true, true), !arg_3.c, select(!select(vec3<bool>(true, true, arg_0.b), func_2(-1487i, Struct_2(vec2<bool>(global2.x, arg_0.b), arg_3.b, vec3<bool>(arg_3.a.x, true, false), vec3<i32>(-34069i, global0[_wgslsmith_index_u32(76553u, 7u)], arg_3.d.x)), Struct_2(arg_2.zz, arg_3.b, vec3<bool>(arg_1.d.a.x, false, true), vec3<i32>(global0[_wgslsmith_index_u32(47402u, 7u)], arg_0.a, arg_1.d.d.x))).a.c, !arg_1.d.c), !(!arg_2), func_2(arg_3.d.x, arg_1.a, Struct_2(global2.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(1567f, arg_1.a.b.x) * arg_3.b), arg_2, -vec3<i32>(arg_0.d.x, arg_1.d.d.x, -1i))).a.c));
    var var_0 = !arg_2.zy;
    let var_1 = firstLeadingBit(u_input.b);
    return reverseBits(arg_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> Struct_2 {
    global1 = array<vec2<bool>, 7>();
    global2 = func_2(-(~_wgslsmith_sub_i32(-arg_2, arg_2 >> (4294967295u % 32u))), arg_0, Struct_2(select(!arg_1, select(global2.xz, global2.yz, false), arg_1.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(arg_0.b, arg_0.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.x, arg_0.b.x))))))), !(!(!vec3<bool>(arg_0.c.x, global2.x, arg_0.c.x))), ~(vec3<i32>(-1i) * -arg_0.d))).d.c;
    let var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(arg_3 << (u_input.a.x % 32u), arg_3 << (arg_3 % 32u), _wgslsmith_mod_u32(u_input.b, u_input.a.x))) << (~arg_3 % 32u)), 7u)];
    global1 = array<vec2<bool>, 7>();
    var var_1 = func_2(arg_2, func_2(~arg_2 ^ global0[_wgslsmith_index_u32(38657u, 7u)], Struct_2(arg_1, vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), vec3<bool>(arg_1.x, arg_1.x | false, arg_3 < 1u), vec3<i32>(i32(-1i) * -3084i, global0[_wgslsmith_index_u32(1u, 7u)] | arg_2, -1i)), arg_0).a, Struct_2(!select(func_2(2147483647i, arg_0, arg_0).a.a, !global1[_wgslsmith_index_u32(4294967295u, 7u)], false), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1051f, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(-arg_0.b)) * vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, -172f)), _wgslsmith_f_op_f32(-arg_0.b.x))), !vec3<bool>(!arg_1.x, all(vec2<bool>(true, arg_0.c.x)), false), -vec3<i32>(13459i, _wgslsmith_dot_vec2_i32(arg_0.d.yy, vec2<i32>(2147483647i, 3756i)), ~arg_2)));
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -364f);
    global0 = array<i32, 7>();
    let var_1 = func_5(Struct_2(select(vec2<bool>(all(vec3<bool>(true, global2.x, global2.x)), global2.x), global2.yy, !select(vec2<bool>(global2.x, global2.x), global1[_wgslsmith_index_u32(u_input.a.x, 7u)], true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(952f, var_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1143f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1349f, -953f), vec2<f32>(1000f, var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(906f, -1119f) - vec2<f32>(325f, -1124f)))), vec3<bool>(all(!vec2<bool>(global2.x, global2.x)), global2.x, global2.x), vec3<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)])), 1i), -global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 7u)])), global2.xz, ~18633i >> (_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(7176u, 4294967295u), u_input.a.yy, vec2<u32>(27233u, u_input.a.x)))) % 32u), _wgslsmith_sub_u32(~1u, ~func_4(Struct_1(global0[_wgslsmith_index_u32(0u, 7u)], global2.x, vec4<u32>(u_input.b, 1u, 50011u, u_input.b), vec4<i32>(-11999i, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(59045u, 7u)], -2147483647i), vec2<f32>(1796f, var_0)), func_2(global0[_wgslsmith_index_u32(40174u, 7u)], Struct_2(global1[_wgslsmith_index_u32(u_input.b, 7u)], vec2<f32>(1000f, var_0), vec3<bool>(false, global2.x, global2.x), vec3<i32>(-9356i, global0[_wgslsmith_index_u32(1u, 7u)], 989i)), Struct_2(global1[_wgslsmith_index_u32(0u, 7u)], vec2<f32>(-1415f, 181f), vec3<bool>(global2.x, false, true), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -26376i, global0[_wgslsmith_index_u32(23457u, 7u)]))), !vec3<bool>(global2.x, true, false), Struct_2(vec2<bool>(global2.x, false), vec2<f32>(var_0, 298f), vec3<bool>(global2.x, global2.x, true), vec3<i32>(1i, global0[_wgslsmith_index_u32(11186u, 7u)], global0[_wgslsmith_index_u32(3581u, 7u)])))));
    let var_2 = ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.d, firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(58577u, 7u)], -37499i, var_1.d.x)) & vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(12669u, 7u)], -2147483647i)), max(_wgslsmith_add_vec3_i32(var_1.d, -vec3<i32>(var_1.d.x, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), max(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -37599i, var_1.d.x), vec3<i32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -5164i))));
    var var_3 = vec4<u32>(u_input.b ^ ~(~func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.b, 7u)], true, vec4<u32>(0u, 38999u, u_input.a.x, 4294967295u), vec4<i32>(2147483647i, var_1.d.x, var_1.d.x, var_1.d.x), var_1.b), Struct_3(var_1, 90244u, vec4<u32>(4294967295u, u_input.a.x, 55565u, u_input.a.x), Struct_2(vec2<bool>(false, true), var_1.b, var_1.c, var_2)), var_1.c, var_1)), u_input.b, 4294967295u, ~(~(max(1u, 43368u) & u_input.b)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(~4294967295u, 7u)], -35272i), abs(vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(4878u, 7u)]), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 60820i)))), ~(-26559i));
    var var_1 = ~(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 74930u, 33257u), select(vec3<u32>(4294967295u, 41363u, 0u), vec3<u32>(u_input.b, 7299u, 53605u), vec3<bool>(global2.x, global2.x, global2.x))), ~4294967295u, func_1()));
    var var_2 = firstLeadingBit(4294967295u);
    global1 = array<vec2<bool>, 7>();
    var var_3 = Struct_1(_wgslsmith_mult_i32(func_5(func_5(Struct_2(global2.xz, vec2<f32>(114f, 845f), vec3<bool>(global2.x, global2.x, global2.x), vec3<i32>(-29167i, global0[_wgslsmith_index_u32(1u, 7u)], 871i)), global1[_wgslsmith_index_u32(57373u, 7u)], firstLeadingBit(var_0.x), countOneBits(4294967295u)), global2.zy, -(~global0[_wgslsmith_index_u32(40696u, 7u)]), 1u).d.x, abs(~17001i)), !(!any(select(vec4<bool>(true, false, global2.x, false), vec4<bool>(true, false, false, global2.x), true))), firstTrailingBit(func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, 0u), 7u)], Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1215f) - vec2<f32>(659f, 820f)), func_5(Struct_2(vec2<bool>(false, global2.x), vec2<f32>(-505f, -153f), vec3<bool>(global2.x, true, true), vec3<i32>(var_0.x, 0i, global0[_wgslsmith_index_u32(0u, 7u)])), global1[_wgslsmith_index_u32(7826u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b).c, vec3<i32>(-1i, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(5632u, 7u)])), Struct_2(func_5(Struct_2(vec2<bool>(true, true), vec2<f32>(2225f, -275f), vec3<bool>(true, global2.x, global2.x), vec3<i32>(var_0.x, var_0.x, 2147483647i)), global2.yx, -45778i, 20117u).a, func_5(Struct_2(global1[_wgslsmith_index_u32(u_input.b, 7u)], vec2<f32>(-2148f, 1810f), vec3<bool>(global2.x, global2.x, false), vec3<i32>(1i, var_0.x, var_0.x)), global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -24305i, 4294967295u).b, !vec3<bool>(true, false, global2.x), -vec3<i32>(var_0.x, var_0.x, 1i))).c), vec4<i32>(max(min(var_0.x, 14204i) >> (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u), ~var_0.x), max(_wgslsmith_div_i32(33614i, global0[_wgslsmith_index_u32(11628u, 7u)] ^ var_0.x), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(31327i), 0i), vec2<i32>(_wgslsmith_mod_i32(1i, var_0.x), var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -2147483647i, -2147483647i, ~0i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 0i, global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -772i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 0i), vec4<i32>(9552i, 19044i, global0[_wgslsmith_index_u32(61036u, 7u)], -22723i)), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], 1i, var_0.x, -2147483647i)), vec4<i32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(50580u, 7u)])))), vec2<f32>(-593f, _wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1939f * 1000f), true | global2.x, _wgslsmith_div_f32(-1371f, 910f), func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2222f, _wgslsmith_f_op_f32(max(252f, var_3.e.x)), any(!vec4<bool>(var_3.b, var_3.b, global2.x, var_3.b))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.x + 250f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.e.x, -124f), -373f, true)), -2055f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(var_3.e.x))) + _wgslsmith_f_op_f32(step(func_5(Struct_2(global1[_wgslsmith_index_u32(23348u, 7u)], vec2<f32>(-110f, var_3.e.x), vec3<bool>(var_3.b, true, false), var_3.d.yyw), global1[_wgslsmith_index_u32(u_input.a.x, 7u)], var_3.d.x, 75363u).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1155f)))), var_3.e.x)));
}

