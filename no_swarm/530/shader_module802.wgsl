struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: array<f32, 21> = array<f32, 21>(2235f, -479f, 928f, 1871f, -753f, 1211f, -1095f, -392f, 106f, -758f, 1316f, -302f, 2181f, -937f, -1000f, 2042f, -550f, 1000f, 990f, -1775f, -962f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(sign(-651f))) - vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * 1902f), _wgslsmith_f_op_f32(-global2.b.x)))), global2.c, all(select(vec2<bool>(false, true), vec2<bool>(global0.d, global2.d), true)) || !(0u > _wgslsmith_clamp_u32(u_input.c, 6665u, 0u)));
    let var_1 = _wgslsmith_add_u32(27437u, 1u);
    var var_2 = ~(-global0.c.x);
    let var_3 = Struct_2(var_0);
    var var_4 = var_3;
    return var_4.a;
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(step(global0.b.x, arg_0.b.x)))))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(min(~2123u, 4294967295u), 21u)]), _wgslsmith_f_op_f32(f32(-1f) * -1772f), -669f);
    global0 = func_2();
    var var_1 = !select(select(select(!vec4<bool>(global2.d, global2.a, arg_0.d, true), !vec4<bool>(global2.d, true, true, arg_0.a), select(vec4<bool>(global2.d, arg_0.a, true, true), vec4<bool>(global0.d, global2.a, false, true), global2.d)), select(!vec4<bool>(false, arg_0.a, true, false), !vec4<bool>(arg_0.a, global0.a, global0.d, true), select(true, arg_0.d, arg_0.d)), vec4<bool>(global2.d | false, all(vec2<bool>(arg_0.a, true)), 0i != global0.c.x, !global2.d)), vec4<bool>(all(vec2<bool>(true, global2.a)), global2.a, !(global2.a || true), _wgslsmith_dot_vec2_u32(vec2<u32>(5561u, 50902u), vec2<u32>(u_input.c, u_input.b.x)) != (u_input.b.x & u_input.a.x)), select(select(!vec4<bool>(arg_0.a, global0.a, global2.a, false), !vec4<bool>(true, true, false, global2.a), vec4<bool>(true, true, true, true)), vec4<bool>(true, arg_0.a, false, true), !(!vec4<bool>(true, global2.d, arg_0.a, false))));
    var var_2 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(func_2().b + vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(global2.b.x * arg_0.b.x))), ~(-vec2<i32>(0i, global2.c.x)), _wgslsmith_clamp_u32(u_input.c, u_input.b.x, countOneBits(23458u)) == _wgslsmith_mult_u32(0u, 1u)));
    var_2 = Struct_2(func_2());
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(var_2.a.c, _wgslsmith_mod_vec2_i32(-func_2().c, vec2<i32>(~32541i, _wgslsmith_add_i32(0i, global2.c.x)))), _wgslsmith_clamp_vec2_i32(-arg_0.c << (vec2<u32>(u_input.d.x, u_input.c) % vec2<u32>(32u)), var_2.a.c, select(global0.c, vec2<i32>(-36978i, arg_0.c.x), vec2<bool>(true, global0.a))) | ~(~vec2<i32>(-1i, var_2.a.c.x)), _wgslsmith_add_vec2_i32(arg_0.c | ~var_2.a.c, vec2<i32>(0i, 2147483647i)));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.c;
    global0 = Struct_1(any(!(!vec3<bool>(false, global0.a, global2.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, -120f))))), _wgslsmith_sub_vec2_i32(func_3(func_2()), abs(vec2<i32>(14323i, abs(11496i)))), any(select(vec4<bool>(global0.d, true, false, true), vec4<bool>(false, u_input.a.x >= u_input.b.x, true, any(vec2<bool>(global2.a, global0.a))), (u_input.a.x & u_input.c) <= u_input.b.x)));
    global1 = _wgslsmith_clamp_i32(abs(-var_0.x), _wgslsmith_mod_i32(28405i, _wgslsmith_mult_i32(_wgslsmith_add_i32(-19252i >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-19892i, 45815i, global0.c.x), vec3<i32>(-2147483647i, global2.c.x, -2147483647i))), global0.c.x)), -(global2.c.x & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1545i, -77790i), firstLeadingBit(vec3<i32>(global2.c.x, var_0.x, global0.c.x)))));
    let var_1 = global2.d;
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(-30145i, -_wgslsmith_dot_vec2_i32(func_2().c, vec2<i32>(36666i, var_0.x))), -2147483647i, select(~var_0.x, -1i, any(select(vec2<bool>(false, global2.a), !vec2<bool>(global2.a, global0.a), vec2<bool>(true, true)))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    let var_0 = arg_3;
    global0 = Struct_1(!global2.d, _wgslsmith_f_op_vec2_f32(-arg_1.b), arg_1.c, func_2().a);
    let var_1 = Struct_1(!all(select(select(vec2<bool>(arg_3.a.a, var_0.a.d), vec2<bool>(false, true), vec2<bool>(false, arg_0.a)), !vec2<bool>(arg_0.a, false), vec2<bool>(arg_3.a.a, false))), _wgslsmith_f_op_vec2_f32(var_0.a.b * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1066f)), _wgslsmith_f_op_f32(abs(-1032f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(global0.b.x, -535f))))), firstTrailingBit(abs(select(abs(arg_2.yx), arg_3.a.c | vec2<i32>(global2.c.x, global2.c.x), all(vec3<bool>(var_0.a.d, arg_3.a.a, false))))), u_input.b.x >= _wgslsmith_mod_u32(max(_wgslsmith_mult_u32(0u, u_input.c), reverseBits(4294967295u)), firstLeadingBit(countOneBits(u_input.d.x))));
    global1 = 0i;
    let var_2 = u_input.b;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(func_4(func_1(), func_2(), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.c.x, global0.c.x), vec3<i32>(global2.c.x, global2.c.x, 1i), vec3<i32>(global0.c.x, 171i, -2147483647i))), Struct_2(func_2())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.b)))) + _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -351f)))))), firstLeadingBit(-firstTrailingBit(-global2.c)), global2.a);
    var var_0 = select(vec2<i32>(abs(_wgslsmith_mod_i32(global2.c.x, global0.c.x)), _wgslsmith_div_i32(countOneBits(-21325i), -1i) | _wgslsmith_dot_vec2_i32(-global2.c, _wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(29334i, 3871i)))), abs(global0.c), all(vec2<bool>(global0.d, global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec3<i32>(-2147483647i, global0.c.x, 14958i), ~vec3<i32>(-1i, global0.c.x, -43837i)) & firstTrailingBit(vec3<i32>(-2147483647i, -global0.c.x, -49269i)));
}

