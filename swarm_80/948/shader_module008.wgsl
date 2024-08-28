struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -857f;

var<private> global1: vec3<u32> = vec3<u32>(0u, 26668u, 1u);

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(103713u, 9088u), vec2<u32>(1732u, 42095u), vec2<u32>(4294967295u, 1u), vec2<u32>(17269u, 0u), vec2<u32>(25183u, 0u), vec2<u32>(0u, 26879u), vec2<u32>(5556u, 1u), vec2<u32>(0u, 0u), vec2<u32>(38712u, 24352u), vec2<u32>(69656u, 0u), vec2<u32>(28835u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 58559u), vec2<u32>(27919u, 28457u), vec2<u32>(2447u, 27566u), vec2<u32>(4294967295u, 59411u), vec2<u32>(9188u, 10619u), vec2<u32>(1u, 66552u), vec2<u32>(13044u, 1u), vec2<u32>(42144u, 23231u), vec2<u32>(1u, 67485u), vec2<u32>(14940u, 10559u), vec2<u32>(0u, 4294967295u), vec2<u32>(13321u, 4294967295u), vec2<u32>(26461u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(7829u, 3631u), vec2<u32>(10415u, 1u), vec2<u32>(31992u, 0u), vec2<u32>(47266u, 0u));

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d.x, 1u)];
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.x, 14513u, 20366u), vec4<u32>(global1.x, 4294967295u, 1u, var_0.d.x))), firstLeadingBit(vec4<u32>(4294967295u, u_input.d.x, 15785u, u_input.d.x)) ^ vec4<u32>(~76668u, 4294967295u, 4294967295u, global1.x)), _wgslsmith_add_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, 81367u, global1.x, 0u), vec4<u32>(4294967295u, var_0.d.x, 1u, 1u))), ~(reverseBits(vec4<u32>(global1.x, 33572u, global1.x, var_0.e)) | select(vec4<u32>(global1.x, 9032u, global1.x, global1.x), vec4<u32>(0u, global1.x, 0u, 4294967295u), true))));
    var var_2 = select(vec3<bool>(~abs(u_input.a.x) != _wgslsmith_mod_u32(firstLeadingBit(97507u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_0.c, u_input.a.x, 5564u))), (countOneBits(var_0.e) & var_0.c) < abs(global1.x), true && (_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) <= (u_input.c.x & u_input.b))), select(vec3<bool>(any(vec3<bool>(global4.x, true, false)), all(!vec4<bool>(false, global4.x, true, global4.x)), true), select(vec3<bool>(var_0.a.x >= 1583f, global4.x, var_0.b.x > 419f), select(select(vec3<bool>(global4.x, false, false), vec3<bool>(global4.x, false, false), global4.x), vec3<bool>(global4.x, global4.x, true), global4.x | global4.x), global4.x), any(vec4<bool>(select(false, true, global4.x), global4.x, true, global4.x))), global4.x);
    var var_3 = global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(var_0.d.x, ~80948u), global1.x), 1u)];
    var var_4 = global2[_wgslsmith_index_u32(0u, 1u)];
    return select(select(select(vec2<bool>(4294967295u < var_3.c, var_3.e > 12681u), var_2.yz, vec2<bool>(false, true)), var_2.zz, select(true, select(false, global4.x & global4.x, var_2.x), global4.x)), select(vec2<bool>(true, false), select(select(var_2.yy, select(var_2.yz, var_2.zy, var_2.zx), true), var_2.xx, !(!vec2<bool>(var_2.x, var_2.x))), any(select(!vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, true, false), !vec3<bool>(var_2.x, var_2.x, global4.x)))), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0.b.zzy - arg_0.a);
    let var_1 = arg_0;
    global2 = array<Struct_1, 1>();
    global4 = select(!select(vec2<bool>(true, true), !(!vec2<bool>(global4.x, true)), !func_3()), !(!(!vec2<bool>(global4.x, false))), func_3().x);
    global0 = -449f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(max(316f, _wgslsmith_div_f32(261f, arg_0.b.x))), var_1.a.x) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(270f + 1141f), _wgslsmith_f_op_f32(-var_0.x)), arg_0.a)), vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-arg_0.b.x))), 148f), arg_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.x, -1920f)))), var_1.e, vec3<u32>(min(global1.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, 1u, var_1.d.x, arg_0.c), vec4<u32>(25426u, 1u, var_1.c, global1.x), vec4<bool>(global4.x, global4.x, global4.x, true)), vec4<u32>(global1.x, 22563u, arg_0.d.x, global1.x) & vec4<u32>(global1.x, 1944u, 1u, u_input.d.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 31u), 0u, var_1.e >> (u_input.a.x % 32u), 1u), abs(~vec4<u32>(u_input.a.x, 0u, u_input.d.x, 4294967295u))), max(u_input.a.x, ~(~u_input.a.x))), select(~_wgslsmith_add_u32(44534u, 62000u), var_1.d.x, global4.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    global4 = select(vec2<bool>(global4.x, ~min(arg_3.x, 47443u) > _wgslsmith_add_u32(62825u, 0u)), vec2<bool>(!any(!vec4<bool>(false, global4.x, global4.x, true)), any(func_3())), func_3());
    var var_0 = u_input.a;
    let var_1 = u_input.d.xy;
    let var_2 = arg_0.c;
    var var_3 = vec2<i32>(max(abs(u_input.b), -33760i), -max(u_input.c.x, -4219i)) ^ reverseBits(u_input.c);
    return arg_1.x;
}

fn func_1(arg_0: bool) -> vec3<f32> {
    var var_0 = u_input.d.yz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -188f);
    var var_2 = ~30249u;
    var var_3 = global2[_wgslsmith_index_u32(1u, 1u)];
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(global2[_wgslsmith_index_u32(abs(~0u), 1u)], min(vec3<i32>(u_input.c.x, -2147483647i, 35823i), vec3<i32>(u_input.c.x, 0i, 19766i))), var_3.b.zxz, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_3.d, ~vec3<u32>(1117u, var_0.x, 0u)), var_3.d), 1u)], abs(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.x, var_0.x), u_input.a.x, 14415u), 31u)]))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a * func_2(Struct_1(vec3<f32>(615f, var_3.a.x, 566f), var_3.b, global1.x, vec3<u32>(4294967295u, u_input.d.x, 0u), 0u), ~vec3<i32>(-14880i, u_input.b, u_input.b)).b.ywz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, var_3.a.x, 503f) * var_3.b.zwx), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~select(vec3<u32>(u_input.d.x, 1u, 19113u), u_input.d, vec3<bool>(global4.x, global4.x, global4.x))) << (~vec3<u32>(global1.x, select(u_input.a.x, global1.x, global4.x), ~1u) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1(select(!(!global4.x), global4.x, global4.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1643f + _wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(802f)) * _wgslsmith_f_op_f32(1431f + 2113f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(global4.x)).x))), _wgslsmith_f_op_f32(f32(-1f) * -1176f)), 1u, u_input.d, 1u);
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b, u_input.b, u_input.b, reverseBits(2147483647i)), -vec4<i32>(max(~1i, -u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, u_input.b) | (u_input.c.x | 1i), u_input.b, _wgslsmith_clamp_i32(-2147483647i, 0i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x), u_input.b, -14619i) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, -2147483647i, -1i), vec4<i32>(0i, 42352i, -213i, 14091i) & vec4<i32>(u_input.b, 35503i, 0i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, 2147483647i, u_input.c.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, 66006i, u_input.b), vec4<i32>(u_input.b, 28587i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -3469i, u_input.c.x, 0i), vec4<i32>(-16454i, 0i, -37106i, 0i)))));
    global4 = !vec2<bool>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.d.x, var_0.x), _wgslsmith_div_u32(4294967295u, 6697u)) <= _wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(u_input.d, var_1.d)), global4.x && all(select(vec3<bool>(true, true, global4.x), vec3<bool>(false, false, false), true)));
    var var_3 = func_2(func_2(Struct_1(var_1.b.zzz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.b.x, 737f, var_1.a.x)) - _wgslsmith_f_op_vec4_f32(-var_1.b)), _wgslsmith_clamp_u32(max(1u, var_1.c), 0u, _wgslsmith_sub_u32(var_1.e, global1.x)), select(u_input.d, var_0, global4.x), ~select(var_1.c, 0u, global4.x)), var_2.zzz ^ var_2.wwx), var_2.yww);
    var var_4 = func_2(global2[_wgslsmith_index_u32(var_3.c, 1u)], _wgslsmith_sub_vec3_i32(var_2.zzx | _wgslsmith_clamp_vec3_i32(var_2.zyy, vec3<i32>(var_2.x, u_input.c.x, -1i) ^ vec3<i32>(u_input.c.x, 2147483647i, u_input.b), vec3<i32>(-17879i, var_2.x, u_input.b)), _wgslsmith_clamp_vec3_i32(var_2.wyx, vec3<i32>(u_input.b, var_2.x, u_input.b), vec3<i32>(var_2.x, 30600i, 2147483647i) & var_2.yzx) & select(~var_2.yxy, _wgslsmith_mult_vec3_i32(var_2.zyw, vec3<i32>(u_input.c.x, 8044i, 0i)), vec3<bool>(global4.x, global4.x, true))));
    var var_5 = select(firstLeadingBit(var_2.yz), select(u_input.c, (vec2<i32>(0i, 8199i) | ~u_input.c) | vec2<i32>(2147483647i, ~(-2147483647i)), vec2<bool>(true, select(true, false, global4.x))), func_3());
    var var_6 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_3.a)), var_4.b, u_input.a.x ^ ~u_input.d.x, min(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_4.e), u_input.d, var_0)), var_1.d), 1u), min(vec3<i32>(-_wgslsmith_clamp_i32(-9734i, var_2.x, u_input.b), -2147483647i, _wgslsmith_mod_i32(var_5.x << (global1.x % 32u), i32(-1i) * -27683i)), ~reverseBits(reverseBits(var_2.ywx))));
    var var_7 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.a * vec3<f32>(var_4.a.x, var_4.a.x, var_3.a.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_4.a.x + -332f), var_6.a.x, var_4.b.x, _wgslsmith_f_op_f32(1259f + var_6.b.x)))))), ~global1.x, var_4.d, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.xyw);
}

