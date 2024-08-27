struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: u32;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0i, vec3<i32>(12940i, -41008i, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_1(-5774i, vec3<i32>(-1i, 5543i, 106512i), vec3<bool>(true, false, false)), Struct_1(34383i, vec3<i32>(1i, -92112i, 1i), vec3<bool>(true, false, true)), Struct_1(-88023i, vec3<i32>(i32(-2147483648), 0i, -1i), vec3<bool>(false, true, false)), Struct_1(28217i, vec3<i32>(0i, -1i, 19294i), vec3<bool>(true, false, false)), Struct_1(2147483647i, vec3<i32>(0i, -1i, -46585i), vec3<bool>(true, false, true)), Struct_1(1i, vec3<i32>(21302i, 1i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_1(0i, vec3<i32>(-12683i, i32(-2147483648), 0i), vec3<bool>(false, true, false)), Struct_1(-30433i, vec3<i32>(0i, -1i, 1i), vec3<bool>(true, true, true)), Struct_1(1i, vec3<i32>(5489i, 2147483647i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_1(56366i, vec3<i32>(0i, -24840i, -23466i), vec3<bool>(false, false, true)), Struct_1(29599i, vec3<i32>(-7430i, -1i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(-5416i, vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(44348i, vec3<i32>(1i, 39660i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(1i, vec3<i32>(1i, -12248i, i32(-2147483648)), vec3<bool>(true, false, true)));

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(-u_input.b, _wgslsmith_mult_vec3_i32(~u_input.c.wyy, -reverseBits(vec3<i32>(23719i, u_input.b, u_input.b))), global4.b.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - -1018f), 124f, 1f)));
    global3 = array<Struct_1, 15>();
    global0 = Struct_3(-293f);
    var var_2 = global0.a;
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -539f));
}

fn func_1() -> u32 {
    var var_0 = ~u_input.d | u_input.d;
    var var_1 = func_2();
    global2 = u_input.a;
    var var_2 = -1836f;
    global4 = Struct_2(global3[_wgslsmith_index_u32(~u_input.d, 15u)], global4.b, global3[_wgslsmith_index_u32(u_input.a, 15u)], global4.b);
    return u_input.a;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    var var_0 = ~(~u_input.e);
    global2 = ~(~min(1u, _wgslsmith_sub_u32(u_input.d, u_input.d) & (u_input.d | arg_0.x)));
    var var_1 = ~u_input.c.x;
    let var_2 = ~(~vec2<u32>(max(arg_0.x, ~u_input.a), 55994u));
    var var_3 = select(vec2<bool>(1629f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), all(vec3<bool>(arg_1 && arg_1, arg_1 || true, global4.d.c.x))), select(select(!select(vec2<bool>(false, global4.a.c.x), vec2<bool>(global4.b.c.x, arg_1), arg_1), select(select(vec2<bool>(false, global4.d.c.x), global4.d.c.zx, false), global4.c.c.yz, true), select(global4.c.c.yx, select(vec2<bool>(global4.a.c.x, arg_1), global4.a.c.yx, global4.a.c.xy), select(global4.c.c.zx, vec2<bool>(false, false), global4.a.c.zy))), !(!select(global4.c.c.zy, global4.c.c.xy, vec2<bool>(arg_1, arg_1))), global4.c.c.x), global4.d.c.yy);
    return 60916u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(!vec2<bool>(false, global4.d.c.x), vec2<bool>(false, global4.d.c.x), global4.a.c.x | false)));
    global2 = 1u;
    var var_1 = global4.d;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-2158f, _wgslsmith_f_op_f32(floor(-1298f)), !all(vec4<bool>(false, var_1.c.x, false, true)))), global0.a)));
    global2 = _wgslsmith_div_u32(~firstLeadingBit(u_input.e), min(u_input.a, func_1()));
    var var_3 = abs(_wgslsmith_dot_vec3_i32(var_1.b, global4.d.b | _wgslsmith_mod_vec3_i32(var_1.b, vec3<i32>(var_1.a, 39895i, global4.c.b.x))));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, abs(0u >> (~u_input.a % 32u)), func_3(select(vec2<u32>(98u, 4294967295u) << (vec2<u32>(u_input.a, u_input.e) % vec2<u32>(32u)), vec2<u32>(u_input.e, 4294967295u), any(vec4<bool>(var_0.x, true, var_1.c.x, true))) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(17479u, u_input.a) & vec2<u32>(u_input.a, u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(7082u, u_input.d)), firstTrailingBit(vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.a, 1826f))) != _wgslsmith_f_op_f32(ceil(-399f))), vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(select(u_input.b, var_1.b.x, true), _wgslsmith_mult_i32(1i, -1i), 2147483647i)), 0i, -firstTrailingBit(reverseBits(u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a * var_4.a), var_4.a, global4.b.c.x)) - _wgslsmith_f_op_f32(abs(-1000f))) * _wgslsmith_f_op_f32(688f * _wgslsmith_f_op_f32(select(var_4.a, _wgslsmith_div_f32(1381f, var_4.a), var_0.x & var_0.x)))));
}

