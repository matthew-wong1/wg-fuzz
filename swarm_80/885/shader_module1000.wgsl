struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1331f), vec3<f32>(488f, -1478f, 1127f));

var<private> global1: vec3<i32>;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(-396f), vec3<f32>(-652f, -453f, 216f)), vec2<u32>(0u, 15242u), false, vec3<bool>(false, false, false), true);

var<private> global3: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true));

var<private> global4: array<bool, 27> = array<bool, 27>(true, true, false, false, true, false, false, false, false, true, true, true, false, true, true, false, false, true, true, false, false, true, true, false, false, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_clamp_u32(u_input.c.x, 1u, 0u);
    var var_1 = global2.a.a;
    global3 = array<vec4<bool>, 14>();
    let var_2 = vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(reverseBits(~global2.b.x), ~_wgslsmith_mod_u32(global2.b.x, 54206u)) << ((~6200u << (~firstTrailingBit(1u) % 32u)) % 32u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.a, _wgslsmith_f_op_f32(round(489f))) * _wgslsmith_f_op_f32(f32(-1f) * -906f))), _wgslsmith_f_op_vec3_f32(-global0.b));
    return max(min(u_input.c.x, global2.b.x) >> (global2.b.x % 32u), 4294967295u);
}

fn func_2() -> u32 {
    var var_0 = select(select(!vec4<bool>(true, global2.e, !global4[_wgslsmith_index_u32(u_input.c.x, 27u)], true), global3[_wgslsmith_index_u32(global2.b.x, 14u)], global3[_wgslsmith_index_u32(func_3(u_input.a, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.b), vec3<i32>(2147483647i, u_input.a, global1.x)), global2.a), 14u)]), vec4<bool>(select(false | global2.c, false, global4[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)]), global1.x < -5987i, false, global4[_wgslsmith_index_u32(104368u, 27u)]), !global3[_wgslsmith_index_u32(~5615u, 14u)]);
    global0 = Struct_2(global2.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.b.x, global0.a.a, global0.a.a), _wgslsmith_f_op_vec3_f32(global2.a.b * global0.b)))));
    let var_1 = Struct_3(Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, global0.b.x, 1325f))))), _wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.c.x, global2.b.x)) >> (abs(u_input.c.xx) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~(~global2.b), ~firstLeadingBit(vec2<u32>(98337u, 35832u))), _wgslsmith_sub_vec2_u32(select(global2.b | u_input.c.yy, abs(u_input.c.zz), select(vec2<bool>(global2.d.x, true), global2.d.yy, true)), ~select(vec2<u32>(global2.b.x, u_input.c.x), vec2<u32>(46077u, u_input.c.x), true))), any(!select(!global2.d, global2.d, select(global2.d, vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, global4[_wgslsmith_index_u32(26086u, 27u)])))), !(!select(var_0.zyy, select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, global2.d.x), global2.e), !vec3<bool>(global2.c, false, true))), var_0.x);
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 64631u), u_input.c.zy, global2.d.x), vec2<u32>(global2.b.x, 38243u) | vec2<u32>(global2.b.x, var_1.b.x)), global2.b), ~u_input.c.zz, _wgslsmith_mod_vec2_u32(u_input.c.yz, vec2<u32>(var_1.b.x, global2.b.x)));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.b.x, global0.a.a, true)))), global0.b.x), _wgslsmith_f_op_vec2_f32(trunc(global0.b.yz)));
    return global2.b.x >> (~_wgslsmith_mod_u32(var_1.b.x, min(1u, ~1u)) % 32u);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(global0.b));
    let var_1 = func_2();
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(259f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(695f, var_0.x, -1146f) * vec3<f32>(global0.b.x, 212f, var_0.x))) * global0.b)));
    global3 = array<vec4<bool>, 14>();
    var var_2 = global2.a.a;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-28578i, 2799i, firstLeadingBit(-_wgslsmith_mod_i32(-14604i, global1.x))), abs(vec3<i32>(-1i, ~u_input.b, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.b, ~countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(63852i, 23282i, 4295i, global1.x), vec4<i32>(-17340i, u_input.b, -20750i, global1.x))));
    global1 = _wgslsmith_mult_vec3_i32(max(vec3<i32>(var_0, _wgslsmith_sub_i32(-10916i, i32(-1i) * -1i), func_1()), abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global1.x, global1.x), vec3<i32>(-58942i, global1.x, 0i)), -vec3<i32>(23982i, var_0, global1.x)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.b, select(1i, 40219i, global2.c), 1i), select(firstTrailingBit(vec3<i32>(0i, u_input.a, global1.x)), ~vec3<i32>(20273i, var_0, global1.x), select(global2.d, global2.d, global4[_wgslsmith_index_u32(1u, 27u)]))), min(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(48468i, 1i, global1.x)), -vec3<i32>(var_0, 41795i, -2147483647i)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -40413i, 50i), vec3<i32>(-2147483647i, 1i, u_input.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.zx);
}

