struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 14> = array<u32, 14>(107159u, 68261u, 0u, 0u, 26864u, 0u, 37569u, 1u, 4294967295u, 34226u, 4294967295u, 4294967295u, 0u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_0));
    let var_1 = Struct_4(Struct_1(-2147483647i, vec3<bool>(!any(arg_2.b.zx), 1u >= u_input.d.x, false)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(global1.x | var_1.a.a, countOneBits(i32(-1i) * -2440i)), select(var_1.a.b, select(arg_2.b, arg_2.b, true), var_1.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1234f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1292f, -600f)))));
    global0 = array<vec4<u32>, 5>();
    let var_3 = !select(select(vec4<bool>(!var_2.a.b.x, true, arg_2.b.x || arg_2.b.x, !var_2.a.b.x), vec4<bool>(any(vec3<bool>(false, true, true)), true, true, arg_2.b.x), vec4<bool>(var_2.a.b.x || true, arg_2.b.x & true, true, arg_2.b.x)), vec4<bool>(all(var_1.a.b.yz) && true, true, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(var_0 + var_0), (false || var_2.a.b.x) | any(vec4<bool>(false, false, var_1.a.b.x, true))), false);
    return -select(_wgslsmith_mult_i32(~var_1.a.a & ~var_2.a.a, 1i), ~_wgslsmith_sub_i32(reverseBits(var_2.a.a), abs(25569i)), false);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_4 {
    global0 = array<vec4<u32>, 5>();
    var var_0 = Struct_4(Struct_1(func_3(_wgslsmith_div_f32(817f, _wgslsmith_f_op_f32(f32(-1f) * -416f)), _wgslsmith_f_op_f32(max(-1980f, -1018f)), Struct_1(global1.x, vec3<bool>(true, false, false))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)));
    var var_1 = var_0.a;
    var var_2 = !vec2<bool>(false, var_0.a.b.x);
    var var_3 = Struct_3(Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(arg_0.zw - arg_0.xy)));
    return Struct_4(Struct_1(var_1.a, var_0.a.b));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    var var_0 = ~max(vec2<u32>(firstLeadingBit(firstTrailingBit(u_input.b)), ~(~5985u)), vec2<u32>(~(~35208u), max(65721u, ~global2[_wgslsmith_index_u32(u_input.b, 14u)])));
    var var_1 = select(arg_0.a.b, select(!(!select(vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b, vec3<bool>(false, arg_0.a.b.x, false))), arg_0.a.b, true), select(!arg_0.a.b, vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, true != any(arg_0.a.b.zy)), !select(vec3<bool>(true, true, arg_0.a.b.x), select(vec3<bool>(true, true, arg_0.a.b.x), vec3<bool>(false, false, arg_0.a.b.x), false), all(vec2<bool>(true, arg_0.a.b.x)))));
    global0 = array<vec4<u32>, 5>();
    var var_2 = Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(f32(-1f) * -1142f)))));
    let var_3 = false;
    return func_2(vec4<f32>(740f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1147f, var_2.b.x)), _wgslsmith_f_op_f32(sign(1988f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-489f, var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - -403f))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(19578u, select(_wgslsmith_clamp_u32(_wgslsmith_add_u32(3468u, 1u), ~4294967295u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(42446u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)])), 1u, false)), 14u)]).a;
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<u32>, 5>();
    let var_0 = false;
    let var_1 = func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(1541f + -1740f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(397f)))), -650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-613f)))), 1u), ~(-31703i) & _wgslsmith_mod_i32(u_input.a.x, 1i));
    var var_2 = Struct_2(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(-945f + -532f), 552f)));
    var_2 = Struct_2(Struct_1(~(~_wgslsmith_mod_i32(u_input.a.x, 49843i)), vec3<bool>(any(var_1.b), !(var_2.a.a > var_1.a), all(!vec3<bool>(true, false, var_0)))), var_2.b);
    return Struct_3(Struct_2(var_2.a, var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.b.x, -1108f, false)) - var_0.a.b.x), -162f), -1852f, 669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.b.x, _wgslsmith_div_f32(-1000f, var_0.a.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f - var_0.a.b.x) + var_0.a.b.x))), ~min(_wgslsmith_clamp_u32(0u, 1u, global2[_wgslsmith_index_u32(4294967295u, 14u)]), global2[_wgslsmith_index_u32(u_input.b >> (global2[_wgslsmith_index_u32(4294967295u, 14u)] % 32u), 14u)] >> (1u % 32u)));
    var var_2 = var_0.a;
    var var_3 = select(~(max(u_input.d, ~vec2<u32>(u_input.b, 46019u)) & vec2<u32>(abs(global2[_wgslsmith_index_u32(13077u, 14u)]), _wgslsmith_mult_u32(u_input.b, 4294967295u))), select(u_input.d, vec2<u32>(1u, 0u), var_1.a.b.zy), func_1().a.a.b.yy);
    var_3 = vec2<u32>(1u, firstLeadingBit(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), 1u)));
    var var_4 = _wgslsmith_clamp_vec2_i32(min(global1.zz, -vec2<i32>(var_0.a.a.a, u_input.a.x)) ^ _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, var_1.a.a), ~global1.yx), vec2<i32>(max(func_4(func_2(vec4<f32>(-856f, var_0.a.b.x, var_0.a.b.x, -132f), 62035u), -2147483647i).a, 42742i ^ func_4(Struct_4(var_1.a), var_1.a.a).a), 2147483647i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(52899u, 14u)], global2[_wgslsmith_index_u32(6650u, 14u)]), u_input.d.x) % 32u)), vec2<i32>(_wgslsmith_mult_i32(-6723i, countOneBits(-3524i ^ var_1.a.a)), 1i));
    var_1 = Struct_4(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_3.x | _wgslsmith_div_u32(u_input.b, 16256u))), _wgslsmith_f_op_f32(abs(var_2.b.x)));
}

