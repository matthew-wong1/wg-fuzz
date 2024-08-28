struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: array<Struct_4, 13>;

var<private> global3: u32 = 43914u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(660f * 292f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f - 227f))))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    global1 = array<vec2<i32>, 26>();
    global1 = array<vec2<i32>, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1154f, _wgslsmith_f_op_f32(min(-1277f, 1f)), -356f, 423f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)), _wgslsmith_add_vec4_u32(~vec4<u32>(86107u, ~0u, u_input.c.x, 1u), (max(vec4<u32>(0u, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(15678u, 1u, u_input.c.x, 0u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(2562u, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.c.x, 12503u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1696f, -587f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1065f, 129f) + vec2<f32>(562f, -483f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-706f, -1202f) - vec2<f32>(-126f, 702f)) + _wgslsmith_div_vec2_f32(vec2<f32>(874f, -722f), vec2<f32>(663f, -1443f))))))), -_wgslsmith_add_vec3_i32((vec3<i32>(0i, u_input.a, -66919i) ^ vec3<i32>(u_input.d.x, -21180i, u_input.d.x)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(0i, u_input.a, u_input.d.x)), vec3<i32>(_wgslsmith_add_i32(37378i, -7711i), u_input.b, u_input.a)));
    let var_1 = Struct_3(var_0, -2147483647i, -791f, !(!arg_0.a));
    let var_2 = Struct_2(var_0.a.x, vec3<i32>(-u_input.d.x, -2147483647i, -u_input.d.x), !any(!(!vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_0.a.x))), 30413u, select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), vec3<bool>(all(arg_0.a.yz), false, true), !(!select(vec3<bool>(true, arg_1.a.x, false), arg_1.a, var_1.d))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    global0 = array<bool, 2>();
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0, _wgslsmith_f_op_f32(func_2(Struct_4(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false, false)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(1961u, 44541u)), 13u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, _wgslsmith_f_op_f32(sign(-468f)), 1000f, _wgslsmith_f_op_f32(arg_0 + -1559f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)])), var_1.x))), arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 296f, _wgslsmith_f_op_f32(-722f - arg_0)))), !(u_input.c.x != 43515u)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true)), Struct_4(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)])))), 1179f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -801f))), var_1.x, ~(firstLeadingBit(vec4<u32>(4294967295u, u_input.c.x, 40583u, u_input.c.x)) << (~vec4<u32>(0u, 41372u, 19297u, 7746u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), -474f), vec3<i32>(u_input.a, _wgslsmith_sub_i32(~34750i, _wgslsmith_div_i32(2147483647i, arg_1.x)), _wgslsmith_dot_vec2_i32(-arg_1, vec2<i32>(31903i, 2147483647i)))), ~(~(-arg_1.x) & 0i), _wgslsmith_f_op_f32(-var_2.x), vec3<bool>(!(!select(true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false)), global0[_wgslsmith_index_u32(5356u, 2u)], !global0[_wgslsmith_index_u32(u_input.c.x, 2u)]));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(312f * var_3.a.b)))), vec3<i32>(min(_wgslsmith_mult_i32(u_input.a & var_3.b, var_3.a.e.x | arg_1.x), -1i), reverseBits(~0i) << (_wgslsmith_div_u32(~u_input.c.x, 1u) % 32u), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(arg_1.x, -1i), -1i)), _wgslsmith_dot_vec3_u32(abs(var_3.a.c.www) | abs(var_3.a.c.xzy), ~(~var_3.a.c.yxw)) == 4294967295u, 13662u, vec3<bool>(select(true, true || any(var_3.d), true), var_3.d.x, all(vec3<bool>(!var_3.d.x, !var_3.d.x, !global0[_wgslsmith_index_u32(u_input.c.x, 2u)]))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    global2 = array<Struct_4, 13>();
    global0 = array<bool, 2>();
    global1 = array<vec2<i32>, 26>();
    var var_0 = arg_2.e.zz;
    let var_1 = 1u;
    return select(arg_2.e, select(vec3<bool>(arg_2.c, arg_2.c, any(vec2<bool>(false, var_0.x))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_1)), vec2<i32>(2147483647i, ~arg_2.b.x)).e, !(!arg_2.e)), !(true != (!arg_2.c & all(arg_2.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global3 = u_input.c.x;
    global1 = array<vec2<i32>, 26>();
    var var_1 = u_input.c;
    let var_2 = Struct_4(!func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2361f, -347f, -438f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(575f, -1000f, -1091f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(669f)) + 178f), func_1(_wgslsmith_f_op_f32(1000f - 472f), ~global1[_wgslsmith_index_u32(var_1.x, 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-732f, 830f)))));
    var var_3 = vec4<f32>(118f, _wgslsmith_f_op_f32(func_2(Struct_4(var_2.a), var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1166f, 912f)))))), -521f);
    global2 = array<Struct_4, 13>();
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2355f, 1031f, 1417f, -1539f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, var_3.x, var_3.x, var_3.x) + vec4<f32>(-111f, -937f, var_3.x, -1470f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_3.x)))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(30528u, 4294967295u, 37351u, u_input.c.x) << (~vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), abs(~vec4<u32>(0u, var_1.x, 0u, var_0)), ~select(vec4<u32>(4294967295u, 6736u, 4294967295u, var_0), vec4<u32>(64585u, 1u, var_1.x, 55994u), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-774f, var_3.x)))))), _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -9292i, 1i), vec3<i32>(u_input.a, 41684i, 1i)), vec3<i32>(-1i, 6687i, u_input.a) ^ vec3<i32>(23814i, -1i, u_input.a), true), -abs(vec3<i32>(-25467i, u_input.a, 4394i)))), -2147483647i, var_3.x, vec3<bool>(any(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(false, true, false, true), vec4<bool>(false, var_2.a.x, true, false))), !var_2.a.x, u_input.b <= 1i));
    global2 = array<Struct_4, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c.xwx);
}

