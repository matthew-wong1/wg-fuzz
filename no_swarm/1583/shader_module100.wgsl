struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), 1i, vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, true)));

var<private> global2: array<Struct_4, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    global2 = array<Struct_4, 1>();
    global1 = global0.a;
    global1 = Struct_2(Struct_1(!vec2<bool>(true & global0.a.d.x, global1.e.a.x)), global1.e, -24789i, !vec3<bool>(any(vec4<bool>(true, global1.d.x, global0.a.e.a.x, global1.a.a.x)), global0.a.a.a.x, !any(global1.d)), Struct_1(global1.e.a));
    global1 = global0.a;
    let var_0 = vec3<bool>(false, global1.d.x, all(vec2<bool>(true, true)));
    return Struct_3(Struct_2(global0.a.a, global0.a.a, global0.a.c, !(!var_0), global1.e));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = global0.a.e.a.x && !all(vec3<bool>(global0.a.e.a.x, global0.a.c == -1i, all(vec4<bool>(true, false, false, global1.e.a.x))));
    var var_1 = vec3<f32>(global0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-259f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-414f, global0.b)) * _wgslsmith_f_op_f32(ceil(global0.b))), -883f)), 968f)));
    let var_2 = max(max(_wgslsmith_div_vec4_i32((vec4<i32>(58121i, 0i, -2147483647i, global0.a.c) << (global0.c % vec4<u32>(32u))) >> (abs(vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 62471u)) % vec4<u32>(32u)), -vec4<i32>(2147483647i, -339i, 1i, 48058i) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, global0.a.c), vec4<i32>(u_input.a, u_input.a, u_input.a, global1.c))), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(22115i, global0.a.c, global0.a.c, global0.a.c), vec4<i32>(0i, -2147483647i, global0.a.c, global0.a.c)) | max(vec4<i32>(u_input.a, -1i, 3752i, global0.a.c), vec4<i32>(global0.a.c, 10124i, -8643i, -18033i)))), vec4<i32>(global1.c, 1i, -1i, -1i) << (global0.c % vec4<u32>(32u)));
    var var_3 = select(!(!select(vec4<bool>(var_0, arg_0.x, global0.a.a.a.x, var_0), !vec4<bool>(arg_0.x, arg_0.x, false, false), !vec4<bool>(global1.d.x, var_0, false, global1.a.a.x))), !(!select(select(vec4<bool>(true, arg_0.x, global1.d.x, global0.a.a.a.x), vec4<bool>(false, arg_0.x, false, global0.a.d.x), var_0), vec4<bool>(arg_0.x, true, false, arg_0.x), !vec4<bool>(true, arg_0.x, true, arg_0.x))), select(vec4<bool>(all(select(vec4<bool>(false, arg_0.x, true, global1.b.a.x), vec4<bool>(false, false, true, false), var_0)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), arg_0.x)), false, true), !select(select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, global0.a.a.a.x, arg_0.x, false), global0.a.a.a.x), !vec4<bool>(arg_0.x, global0.a.e.a.x, arg_0.x, var_0), vec4<bool>(true, false, global1.e.a.x, var_0)), vec4<bool>(true, var_2.x == max(-1i, global1.c), any(func_2(vec4<u32>(global0.c.x, 5465u, global0.c.x, global0.c.x), 709f).a.d.xy), var_0)));
    return any(vec3<bool>(true, !var_0, true | any(vec4<bool>(arg_0.x, true, true, var_0))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = select(select(vec4<bool>(all(!vec4<bool>(false, global0.a.e.a.x, true, global0.a.a.a.x)), false, !global0.a.a.a.x & arg_2, true), !(!vec4<bool>(true, false, arg_2, true)), !select(select(vec4<bool>(false, arg_2, false, global1.a.a.x), vec4<bool>(arg_1.a.d.x, arg_3, arg_1.a.b.a.x, arg_1.a.e.a.x), arg_2), !vec4<bool>(arg_1.a.d.x, false, false, true), !arg_3)), vec4<bool>(_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.a.c, arg_1.a.c), arg_1.a.c) == global1.c, -(~(-2147483647i)) != _wgslsmith_mult_i32(_wgslsmith_sub_i32(40790i, -1i), -global0.a.c), all(!(!global1.a.a)), true), select(select(select(select(vec4<bool>(global1.e.a.x, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, arg_1.a.b.a.x, arg_2, true)), select(vec4<bool>(arg_3, arg_3, false, true), vec4<bool>(arg_2, false, false, false), false), all(global1.d.yy)), vec4<bool>(global0.b != global0.b, true, true, !global0.a.a.a.x), func_2(global0.c, 1f).a.e.a.x), !(!select(vec4<bool>(false, arg_3, true, global1.e.a.x), vec4<bool>(global1.b.a.x, global0.a.b.a.x, true, true), true)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_2, arg_2, true), arg_1.a.b.a.x)));
    var var_1 = vec4<bool>(true && (global0.b != global0.b), global0.a.e.a.x, arg_2, true);
    let var_2 = firstTrailingBit(~(~(~vec4<i32>(-2147483647i, global1.c, global0.a.c, -30239i))) >> (global0.c % vec4<u32>(32u)));
    global2 = array<Struct_4, 1>();
    var var_3 = Struct_2(func_2(global0.c, global0.b).a.b, func_2(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 47554u, arg_0.x, 0u), global0.c, countOneBits(vec4<u32>(73666u, global0.c.x, 4294967295u, arg_0.x))), ~(vec4<u32>(11562u, global0.c.x, arg_0.x, arg_0.x) | vec4<u32>(1u, 25137u, arg_0.x, 33664u))), global0.b).a.a, u_input.a, func_2(global0.c & abs(~global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b, 1160f), _wgslsmith_f_op_f32(f32(-1f) * -245f))) + global0.b)).a.d, func_2(~max(global0.c, vec4<u32>(68045u, global0.c.x, arg_0.x, 51262u)), _wgslsmith_f_op_f32(1976f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b))))).a.e);
    return 133f;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1402f, _wgslsmith_f_op_f32(select(-814f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - -1646f), all(select(vec4<bool>(false, global1.b.a.x, false, false), vec4<bool>(global1.a.a.x, false, true, false), global1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(global0.c.x, global0.c.x, 4294967295u), func_2(vec4<u32>(global0.c.x, 37438u, 4294967295u, 2248u), global0.b), true, func_3(global0.a.d))) + _wgslsmith_div_f32(global0.b, -1032f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -585f, -670f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 560f, -981f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-331f, global0.b, global0.b)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b, global0.b, -846f), vec3<f32>(global0.b, -287f, global0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1384f, global0.b, global0.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -339f, global0.b) + vec3<f32>(global0.b, global0.b, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b)))))));
    var var_1 = _wgslsmith_mult_u32(global0.c.x, 49709u);
    global1 = func_2(~global0.c, 336f).a;
    var var_2 = abs(global0.c) ^ ~firstLeadingBit(firstLeadingBit(global0.c));
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(global0.c.x | 0u), 1u)];
    return _wgslsmith_div_vec2_u32(select(_wgslsmith_div_vec2_u32(var_2.ww >> (var_2.wx % vec2<u32>(32u)), select(vec2<u32>(60193u, var_3.c.x), max(global0.c.wz, global0.c.zz), select(vec2<bool>(false, true), var_3.a.e.a, true))), _wgslsmith_add_vec2_u32(abs(vec2<u32>(var_2.x, var_2.x)), global0.c.zz & global0.c.yy), !var_3.a.d.xy), abs(~(~abs(var_3.c.wx))));
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, global0.b, arg_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(680f, -557f, global0.b))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, arg_1, -472f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 938f, -1000f))))))));
    let var_1 = global0.a.d.x;
    global1 = global0.a;
    global1 = func_2(~firstLeadingBit(vec4<u32>(~82003u, global0.c.x, arg_0, 0u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))).a;
    global1 = global0.a;
    return Struct_3(func_2(firstTrailingBit(min(global0.c, max(vec4<u32>(4294967295u, 17018u, 0u, 33608u), global0.c))), _wgslsmith_f_op_f32(-1f)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 1>();
    let var_0 = global0.a;
    let var_1 = func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, min(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, global0.c.x, global0.c.x)))), _wgslsmith_add_vec2_u32(~func_1(u_input.a, global0.a.b, true, global1.d.x), max(_wgslsmith_sub_vec2_u32(vec2<u32>(44694u, global0.c.x), vec2<u32>(global0.c.x, global0.c.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.c.x), vec2<u32>(8581u, 1u))))), global0.b);
    var var_2 = var_0.e;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(734f - _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-549f, global0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(664f - global0.b), _wgslsmith_f_op_f32(f32(-1f) * -2170f), true)))));
    let var_4 = global0.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.b)))), _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(func_4(min(vec3<u32>(51549u, global0.c.x, 24815u), vec3<u32>(global0.c.x, 1u, 29892u)), func_2(~vec4<u32>(global0.c.x, 21069u, global0.c.x, global0.c.x), _wgslsmith_f_op_f32(func_4(global0.c.yzz, var_1, false, global0.a.a.a.x))), select(all(vec2<bool>(var_1.a.d.x, var_1.a.e.a.x)), any(global1.d), var_2.a.x), -112f <= _wgslsmith_f_op_f32(func_4(global0.c.zwx, var_1, var_2.a.x, var_1.a.d.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1364f, global0.b, global0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(273f, _wgslsmith_div_f32(279f, -1127f), global0.b))));
}

