struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<f32>(694f, -486f), vec3<i32>(-37029i, -24640i, 1i), Struct_1(46465i, vec2<bool>(true, true), 45863u)), Struct_1(i32(-2147483648), vec2<bool>(false, false), 4294967295u), Struct_2(vec2<f32>(870f, 1551f), vec3<i32>(-1i, -36262i, 1i), Struct_1(-19493i, vec2<bool>(false, true), 98144u)), Struct_1(-24i, vec2<bool>(true, true), 27559u));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 30>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<bool> {
    let var_0 = global2.b.x;
    global1 = _wgslsmith_add_i32(global0.c.c.a, -2147483647i);
    return select(!(!vec2<bool>(-441f > global0.a.a.x, all(vec4<bool>(false, false, global0.b.b.x, false)))), vec2<bool>(global0.c.c.b.x, select(false, true, false)), all(!(!vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x))));
}

fn func_3(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = global0.c.c;
    let var_1 = Struct_4(~(~(reverseBits(45622u) << (~var_0.c % 32u))), ~4294967295u);
    var var_2 = var_0.b.x;
    global2 = global0.d;
    global1 = ~(-1i);
    return Struct_2(_wgslsmith_f_op_vec2_f32(min(global0.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.a + _wgslsmith_f_op_vec2_f32(min(global0.c.a, vec2<f32>(127f, global0.a.a.x))))))), ~firstTrailingBit(~min(vec3<i32>(65387i, var_0.a, var_0.a), vec3<i32>(var_0.a, 10713i, 2147483647i))), global0.b);
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> vec2<i32> {
    global1 = -1i;
    global3 = array<Struct_4, 30>();
    global0 = Struct_3(func_3(func_2()), func_3(select(global0.c.c.b, !(!vec2<bool>(global2.b.x, global0.a.c.b.x)), func_2().x)).c, func_3(vec2<bool>(select(all(vec3<bool>(true, global2.b.x, false)), !arg_0, arg_0), func_3(global2.b).c.b.x)), global0.d);
    var var_0 = arg_1.a;
    let var_1 = func_3(select(global2.b, global2.b, true));
    return vec2<i32>(_wgslsmith_clamp_i32(~27990i, abs(global2.a), ~10354i), global2.a << ((_wgslsmith_sub_u32(~1u, 54927u) | arg_2) % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = 285f;
    var var_1 = arg_2.c.b.x;
    global1 = global0.d.a;
    var_1 = global0.a.c.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.a.x)))));
    return abs(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(func_4(_wgslsmith_mult_vec2_i32(-global0.a.b.zx, func_1(global0.b.b.x, Struct_4(global0.a.c.c, global0.b.c), global0.c.c.c, global0.a.b.x)), vec2<u32>(max(1u, global0.c.c.c), ~u_input.a.x), func_3(!global0.d.b), Struct_3(Struct_2(vec2<f32>(1000f, -375f), vec3<i32>(38035i, 0i, 0i), Struct_1(-12830i, global0.d.b, 10303u)), Struct_1(global0.c.b.x, global2.b, global0.c.c.c), Struct_2(vec2<f32>(-191f, -1482f), global0.a.b, Struct_1(-1i, vec2<bool>(global0.a.c.b.x, false), 0u)), global0.b)), -5710i, -(i32(-1i) * -24667i)), _wgslsmith_sub_vec3_i32(global0.a.b ^ global0.a.b, select(vec3<i32>(global0.b.a, global0.a.b.x >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, 44144i, -25586i, global2.a), vec4<i32>(global0.b.a, -70368i, 2678i, global2.a))), _wgslsmith_mod_vec3_i32(global0.a.b, vec3<i32>(11359i, -2147483647i, -33626i)), false)));
    var var_1 = _wgslsmith_mult_vec3_i32(select(_wgslsmith_add_vec3_i32(~(vec3<i32>(global0.c.b.x, global0.b.a, 44244i) ^ vec3<i32>(var_0.x, global0.d.a, global2.a)), vec3<i32>(~var_0.x, _wgslsmith_sub_i32(var_0.x, global2.a), ~global0.c.c.a)), firstLeadingBit(abs(global0.a.b)), select(select(!vec3<bool>(global0.b.b.x, global0.d.b.x, global2.b.x), !vec3<bool>(true, true, global2.b.x), !vec3<bool>(true, global2.b.x, true)), vec3<bool>(global0.c.c.b.x, global2.b.x, var_0.x >= global2.a), select(select(vec3<bool>(global2.b.x, global0.b.b.x, true), vec3<bool>(false, global0.b.b.x, true), vec3<bool>(global0.d.b.x, true, true)), vec3<bool>(false, global0.b.b.x, global2.b.x), true))), -vec3<i32>(firstLeadingBit(global2.a), global2.a, 2147483647i));
    let var_2 = vec4<i32>(global0.d.a, _wgslsmith_mod_i32(-global0.c.b.x >> (_wgslsmith_div_u32(firstTrailingBit(12220u), func_3(vec2<bool>(false, global0.b.b.x)).c.c) % 32u), var_0.x), var_1.x | _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, -8520i), _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.b.a, global0.b.a), global0.a.b))), -firstLeadingBit(0i));
    let var_3 = ~vec2<i32>(max(-_wgslsmith_dot_vec2_i32(vec2<i32>(-37910i, var_2.x), global0.c.b.xy), var_2.x), ~_wgslsmith_dot_vec2_i32(var_0.zy, global0.a.b.zz ^ vec2<i32>(-1i, var_0.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(global0.b.b.x, false)).a.x - _wgslsmith_f_op_f32(-global0.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.a.x)) + _wgslsmith_f_op_f32(abs(global0.c.a.x))) - 445f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1210f, _wgslsmith_f_op_f32(826f + -117f)))) - vec3<f32>(global0.c.a.x, _wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f - global0.a.a.x))), global0.c.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

