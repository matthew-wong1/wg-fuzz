struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = !(!(!vec4<bool>(true, true, select(false, false, false), true)));
    global1 = ~(~(-49887i)) ^ arg_1;
    let var_1 = select(abs(reverseBits(_wgslsmith_div_u32(u_input.c.x, 14602u >> (u_input.c.x % 32u)))), 1u, any(select(vec3<bool>(true, !var_0.x, true), vec3<bool>(global0.x == -1000f, !var_0.x, all(var_0.wyz)), false)));
    let var_2 = Struct_1(select(!(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), vec4<bool>((arg_1 >> (0u % 32u)) == _wgslsmith_sub_i32(-1i, 2147483647i), false, !var_0.x, true), !(!vec4<bool>(var_0.x, var_0.x, false, false))), _wgslsmith_f_op_vec3_f32(ceil(arg_0)));
    var var_3 = Struct_1(var_2.a, var_2.b);
    return var_2;
}

fn func_1() -> bool {
    global1 = (-19979i ^ max(u_input.b, i32(-1i) * -u_input.b)) ^ u_input.e;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))) * -1312f), _wgslsmith_f_op_f32(f32(-1f) * -1253f)));
    let var_0 = -u_input.e;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) * _wgslsmith_f_op_f32(f32(-1f) * -1132f)), _wgslsmith_f_op_f32(-global0.x), 939f)), u_input.b);
    var var_2 = u_input.c.x;
    return var_1.a.x;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(!(!arg_0.a.x), any(arg_0.a.zx) & arg_0.a.x, arg_0.a.x, arg_0.a.x);
    var var_1 = var_0.xx;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, arg_0.b.x)), _wgslsmith_div_f32(global0.x, global0.x), arg_0.b.x, _wgslsmith_f_op_f32(global0.x * arg_0.b.x)))))), vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), ~(~u_input.d)), u_input.d, u_input.d));
    let var_3 = ~(~(~var_2.b.x << (var_2.b.x % 32u)));
    var var_4 = _wgslsmith_sub_u32(66170u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(39687u, var_2.b.x, 16911u), vec3<u32>(abs(38793u), var_3, 4294967295u)), min(1u, ~u_input.c.x)));
    return func_2(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-260f, 1065f, arg_0.b.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, 225f, -1944f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1892f, 498f, var_2.a.x) - vec3<f32>(var_2.a.x, -1000f, var_2.a.x)))), min(u_input.a, 1i)).b, _wgslsmith_div_i32(-30349i, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.e, abs(u_input.a)), select(u_input.b, u_input.b, var_1.x))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_f32(976f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(func_3(arg_3).b.x)))));
    let var_1 = Struct_1(vec4<bool>(!arg_2.a.a.x, !(!arg_3.a.x), any(vec3<bool>(true, func_1(), arg_2.a.a.x)), arg_3.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(152f, global0.x, _wgslsmith_div_f32(global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -959f, var_0))))));
    global0 = arg_2.a.b.zx;
    var var_2 = ~(~u_input.c.xz);
    let var_3 = u_input.a;
    return true;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(arg_0).a.x;
    let var_1 = !func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, global0.x, -1012f))), 27841i)).a.xzx;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(-1000f, 1000f, arg_0.b.x)) - arg_0.b), vec3<f32>(374f, func_2(vec3<f32>(200f, global0.x, 901f), -12389i).b.x, arg_0.b.x))))));
    var var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(18686i, -61722i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.e), vec2<i32>(u_input.e, u_input.b)) ^ vec2<i32>(2147483647i, u_input.e)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i))) >> (vec2<u32>(~41612u, u_input.c.x) % vec2<u32>(32u))), firstLeadingBit(firstLeadingBit(~(~vec2<i32>(u_input.b, u_input.a)))));
    var_3 = vec2<i32>(abs(_wgslsmith_add_i32(u_input.e, -(u_input.e | -2147483647i))), _wgslsmith_div_i32(firstTrailingBit(var_3.x), _wgslsmith_div_i32(1i, u_input.b)) ^ -(i32(-1i) * -2147483647i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -53840i;
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec4_u32(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x), vec4<u32>(u_input.d, 34171u, 4294967295u, 59061u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(50085u, 87958u, 0u, 1u), vec4<u32>(56393u, u_input.d, u_input.c.x, 39294u), vec4<bool>(false, true, false, true)), select(vec4<u32>(u_input.c.x, 22870u, u_input.c.x, u_input.d), vec4<u32>(u_input.d, 16252u, 4294967295u, 54464u), vec4<bool>(false, false, true, true)), max(vec4<u32>(1u, u_input.d, 56171u, 4294967295u), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.c.x)))), min(select(vec4<u32>(4294967295u, u_input.d, 1u, u_input.c.x), vec4<u32>(u_input.d, u_input.c.x, 1u, 1u) << (vec4<u32>(u_input.d, 0u, 1u, u_input.d) % vec4<u32>(32u)), true), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 47975u, u_input.c.x, 1u), vec4<u32>(75360u, 0u, u_input.d, u_input.c.x)))));
    var var_2 = ~var_1.x;
    global1 = -firstTrailingBit(var_0);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-2287f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(-926f))))));
    var var_3 = func_5(Struct_1(vec4<bool>(true, func_1(), func_4(-2147483647i, select(4294967295u, 1u, false), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(global0.x, global0.x, -571f))), func_3(Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(global0.x, global0.x, 605f)))), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -129f, global0.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-564f);
}

