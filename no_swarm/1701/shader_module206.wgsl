struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-360f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = Struct_4(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, arg_0.a.d.x), vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, false, false)), select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(true, false, arg_0.a.d.x, arg_0.a.d.x), vec4<bool>(arg_1, false, arg_0.a.d.x, true))), vec4<bool>(!arg_1, arg_1, arg_0.a.d.x, any(vec2<bool>(true, false))), false), firstTrailingBit(~((vec4<i32>(61364i, u_input.a, 0i, 1i) | vec4<i32>(arg_0.b.d, arg_0.c, -2147483647i, -2147483647i)) | vec4<i32>(arg_0.c, u_input.a, u_input.a, 1i))), _wgslsmith_f_op_vec2_f32(-arg_0.a.a.zx));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1134f);
    var var_2 = 0i;
    let var_3 = arg_0.a.a.xz;
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(17359i, u_input.a, var_0.b.x), vec3<i32>(u_input.a, -1i, arg_0.a.c)), arg_0.c)), vec2<i32>(~var_0.b.x << (_wgslsmith_add_u32(reverseBits(4294967295u), arg_2.x) % 32u), u_input.a));
    return arg_0.b.a;
}

fn func_2() -> vec4<f32> {
    global0 = Struct_5(-1186f);
    var var_0 = global0.a;
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
    let var_1 = Struct_5(global0.a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, -894f) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-167f * var_1.a)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, global0.a, global0.a, var_1.a), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(vec3<f32>(global0.a, global0.a, var_1.a), u_input.b, u_input.a, vec2<bool>(false, false)), Struct_1(vec4<f32>(-1000f, 180f, 542f, 292f), vec2<i32>(-1i, 1i), vec3<f32>(-718f, var_1.a, global0.a), 2145i), u_input.a), false, vec4<u32>(u_input.c, 9564u, u_input.b, 13374u), vec2<u32>(0u, u_input.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, -757f, var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -165f))), true)));
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(vec3<f32>(186f, -931f, -1864f), 8539u, -1i, vec2<bool>(true, true)), Struct_1(vec4<f32>(-1000f, global0.a, -439f, -2190f), vec2<i32>(2147483647i, -2147483647i), vec3<f32>(global0.a, global0.a, global0.a), 42559i), u_input.a), false, ~vec4<u32>(u_input.b, 4294967295u, 5709u, u_input.c), ~vec2<u32>(u_input.c, 13608u)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(712f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) - -1596f), 705f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(125f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + 980f), _wgslsmith_f_op_f32(-global0.a)) - var_0.x)) - _wgslsmith_f_op_vec4_f32(func_2()).wy);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(sign(-1004f)), _wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) + -2001f))));
    let var_3 = Struct_4(select(vec4<bool>(true, false, any(vec2<bool>(false, true)) || any(vec4<bool>(true, false, false, true)), select(false, all(vec3<bool>(false, true, false)), false)), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), true), vec4<bool>(false, true, true, any(vec4<bool>(true, true, false, true)))), vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(step(var_2.x, var_2.x)) > _wgslsmith_f_op_f32(-var_2.x), true)), vec4<i32>(u_input.a, countOneBits(_wgslsmith_add_i32(u_input.a, 0i)), 1i, u_input.a) >> (~vec4<u32>(abs(u_input.c), u_input.b, ~u_input.b, ~17835u) % vec4<u32>(32u)), var_2.yz);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2554f, var_3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -459f), -930f))), var_3.b.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.zyz)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(1i, var_3.b.x, -64835i)), var_3.b.x) | var_3.b.x);
    return Struct_5(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = reverseBits(u_input.a);
    let var_1 = select(firstTrailingBit(firstLeadingBit(~max(u_input.c, 33830u))), u_input.b | 0u, false);
    var_0 = 21273i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(342f, 2616f, 2204f, 352f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, 1248f, -1372f, -350f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1000f, 487f, global0.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 369f, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -1000f, 1000f)))))), -(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, u_input.a)), -vec2<i32>(-2034i, 1i)) >> (vec2<u32>(~0u, var_1) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(340f, -1092f, global0.a) * vec3<f32>(global0.a, -141f, 298f)) - vec3<f32>(1224f, -606f, global0.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(723f, 615f, global0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, -616f) + vec3<f32>(global0.a, -599f, global0.a)))))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

