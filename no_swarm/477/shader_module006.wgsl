struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 16>;

var<private> global2: Struct_5;

var<private> global3: Struct_1 = Struct_1(0i, vec4<bool>(true, true, true, false), vec3<f32>(340f, 1143f, 1850f), vec4<bool>(false, true, true, false));

var<private> global4: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<bool>(false, true, false), 0i), Struct_3(vec3<bool>(false, true, false), 2147483647i), Struct_3(vec3<bool>(false, false, false), 0i), Struct_3(vec3<bool>(false, true, false), -58695i), Struct_3(vec3<bool>(true, false, true), 1i), Struct_3(vec3<bool>(true, false, true), 0i), Struct_3(vec3<bool>(true, true, false), 78121i), Struct_3(vec3<bool>(true, true, true), 1i), Struct_3(vec3<bool>(false, true, true), 0i), Struct_3(vec3<bool>(true, true, true), -14096i), Struct_3(vec3<bool>(true, true, true), -14180i), Struct_3(vec3<bool>(false, false, false), i32(-2147483648)), Struct_3(vec3<bool>(true, false, false), -1i), Struct_3(vec3<bool>(false, false, true), -7423i), Struct_3(vec3<bool>(false, false, true), 25045i), Struct_3(vec3<bool>(false, true, true), 42777i), Struct_3(vec3<bool>(false, false, false), -51182i), Struct_3(vec3<bool>(true, false, false), 2147483647i), Struct_3(vec3<bool>(false, false, false), 11533i), Struct_3(vec3<bool>(false, false, true), -9243i), Struct_3(vec3<bool>(false, false, true), i32(-2147483648)), Struct_3(vec3<bool>(true, true, true), -1i), Struct_3(vec3<bool>(false, true, false), 11918i), Struct_3(vec3<bool>(true, true, false), 79i), Struct_3(vec3<bool>(false, false, true), -43229i), Struct_3(vec3<bool>(false, false, false), -1i), Struct_3(vec3<bool>(true, true, false), 1i), Struct_3(vec3<bool>(true, false, false), 35828i), Struct_3(vec3<bool>(false, true, true), 0i), Struct_3(vec3<bool>(true, true, false), 18147i), Struct_3(vec3<bool>(false, true, true), i32(-2147483648)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>) -> vec4<bool> {
    global2 = arg_0;
    global3 = Struct_1(-27685i, vec4<bool>(true, arg_0.a, global3.a >= select(firstLeadingBit(-24261i), global0.b, any(vec3<bool>(false, global2.a, false))), !any(!global3.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(910f, -1103f, global3.c.x), vec3<f32>(global3.c.x, global3.c.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(-global3.c)), vec3<f32>(_wgslsmith_f_op_f32(abs(global3.c.x)), _wgslsmith_f_op_f32(arg_1.x * global3.c.x), 256f)))), select(!global3.b, vec4<bool>(!any(vec4<bool>(global0.a.x, arg_0.a, true, false)), true, _wgslsmith_div_f32(arg_1.x, 1239f) <= global3.c.x, true), global0.a.x & (_wgslsmith_dot_vec4_u32(vec4<u32>(31898u, 76980u, 19618u, 0u), vec4<u32>(93426u, 0u, 0u, 21283u)) >= countOneBits(0u))));
    let var_0 = global3.d.wzy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global3.c.x)))), -1479f))));
    var var_2 = false;
    return select(!(!global3.b), vec4<bool>(false, any(select(select(vec4<bool>(global0.a.x, var_0.x, true, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), global2.a), global3.d, global0.a.x && false)), false, false), false);
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(~u_input.a.x, global3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.c.x * global3.c.x), _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-498f - 824f)))), func_3(Struct_5(global3.d.x), vec2<f32>(_wgslsmith_f_op_f32(round(172f)), 1000f)));
    var var_1 = ~firstLeadingBit(1u);
    let var_2 = Struct_1(-11037i, vec4<bool>(global0.a.x, false, func_3(Struct_5(global0.a.x), vec2<f32>(_wgslsmith_f_op_f32(global3.c.x - var_0.c.x), 265f)).x, !all(select(var_0.b, vec4<bool>(true, global3.b.x, global3.b.x, global2.a), global3.d.x))), global3.c, !vec4<bool>(any(func_3(Struct_5(true), global3.c.xy).xy), global2.a, var_0.c.x != _wgslsmith_f_op_f32(sign(global3.c.x)), true));
    var var_3 = _wgslsmith_div_i32(~(_wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(u_input.a.x)) << (~(~34326u) % 32u)), u_input.a.x);
    let var_4 = Struct_5(func_3(Struct_5(true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.yx + vec2<f32>(global3.c.x, 592f))) - vec2<f32>(-830f, -108f))).x);
    return var_4;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> u32 {
    var var_0 = func_2();
    var var_1 = global3.c.x;
    let var_2 = vec4<bool>(!(!(var_0.a && all(vec2<bool>(false, global0.a.x)))), any(select(select(vec4<bool>(true, var_0.a, true, arg_0.x), !vec4<bool>(arg_0.x, true, false, global0.a.x), global3.d), !vec4<bool>(arg_0.x, true, true, false), false)), global0.a.x, true);
    global3 = Struct_1(_wgslsmith_mult_i32(1i, countOneBits(-2147483647i)), vec4<bool>(true & !(!global3.b.x), all(select(global3.b, global3.b, false)) || var_2.x, false && arg_0.x, true | arg_0.x), _wgslsmith_f_op_vec3_f32(global3.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c)))), select(vec4<bool>(true, !var_0.a, true, global2.a), func_3(func_2(), vec2<f32>(_wgslsmith_f_op_f32(-global3.c.x), 165f)), 4294967295u > _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 21492u, 1426u, 18287u), vec4<u32>(48457u, 4294967295u, 58833u, 27400u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -927f), global3.c.x, -1214f, _wgslsmith_f_op_f32(f32(-1f) * -238f)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~firstLeadingBit(_wgslsmith_mult_u32(31140u, 64477u)), min(~_wgslsmith_clamp_u32(~2367u, 13624u, _wgslsmith_div_u32(4283u, 3578u)), ~func_1(global0.a.zx, -vec4<i32>(global0.b, u_input.a.x, u_input.a.x, 0i))), _wgslsmith_mod_u32(0u, 1u));
    var var_1 = func_2();
    let var_2 = firstTrailingBit(u_input.a.zx);
    let var_3 = global3.c.x;
    var var_4 = Struct_1(16302i, global3.b, global3.c, !global3.d);
    var var_5 = vec2<i32>(~(-1i), _wgslsmith_add_i32(i32(-1i) * -firstLeadingBit(global3.a), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-1329f);
}

