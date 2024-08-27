struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: Struct_4 = Struct_4(vec2<bool>(true, true), vec2<i32>(2147483647i, i32(-2147483648)), Struct_3(vec2<f32>(298f, 1360f), true, Struct_2(vec3<f32>(-856f, -888f, 370f), -1347f, vec3<u32>(10274u, 0u, 1u))), vec3<bool>(true, false, true), Struct_1(-165f, -1197f, vec2<bool>(true, false), true));

var<private> global2: vec2<bool>;

var<private> global3: vec3<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global4.b)), arg_1.b, !any(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-505f)))));
    global0 = array<Struct_3, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global4.a))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, 484f, -562f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.b, global1.c.a.x, global1.e.a))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1018f, -785f, global4.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, -1143f, -635f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.c.a + _wgslsmith_div_vec3_f32(vec3<f32>(-1471f, 101f, global1.c.c.a.x), global4.a))), vec3<f32>(_wgslsmith_f_op_f32(-1130f * 643f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1540f, 398f))), arg_2.b))));
    global2 = arg_0;
    var var_2 = arg_1.c.x;
    return !(!vec3<bool>(any(vec4<bool>(arg_2.c.x, true, true, arg_2.c.x)), any(select(global1.d, global1.d, global1.d)), !(global4.a.x >= arg_2.a)));
}

fn func_2() -> Struct_2 {
    global1 = Struct_4(vec2<bool>(false, ((-59482i | global3.x) ^ -48750i) < 8357i), vec2<i32>(41498i, _wgslsmith_sub_i32(global1.b.x >> (global1.c.c.c.x % 32u), ~2147483647i) & ~global1.b.x), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, _wgslsmith_f_op_f32(floor(global1.c.a.x)))), !global2.x, global1.c.c), select(select(!(!vec3<bool>(global1.d.x, global1.e.d, false)), select(vec3<bool>(true, true, true), !vec3<bool>(false, global2.x, false), any(vec4<bool>(global1.e.d, false, global1.d.x, true))), any(vec2<bool>(global1.e.c.x, true))), select(select(select(global1.d, global1.d, vec3<bool>(global2.x, false, global2.x)), !vec3<bool>(global2.x, false, global1.d.x), func_3(global1.a, global1.c.c, Struct_1(1369f, global4.b, vec2<bool>(global2.x, global1.d.x), true))), !(!global1.d), func_3(select(global1.a, global1.e.c, global1.a), global1.c.c, Struct_1(global1.c.c.a.x, global1.e.b, global1.e.c, global1.e.c.x))), !select(global1.d, global1.d, vec3<bool>(false, true, global2.x))), global1.e);
    global3 = u_input.a;
    var var_0 = ~vec2<i32>(-u_input.a.x, 0i);
    var var_1 = abs(33154u);
    global4 = global1.c.c;
    return global1.c.c;
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2();
    global4 = global1.c.c;
    var var_1 = Struct_5(global1.c.c.a.xy, global3.x);
    global1 = Struct_4(func_3(vec2<bool>(true, true), var_0, Struct_1(-1000f, global4.a.x, !select(global1.e.c, vec2<bool>(true, true), false), func_3(vec2<bool>(false, true), func_2(), global1.e).x)).yx, -max(-vec2<i32>(2147483647i, var_1.b), min(vec2<i32>(0i, -16040i), vec2<i32>(-2147483647i, -11543i))) >> (func_2().c.zx % vec2<u32>(32u)), global1.c, func_3(func_3(vec2<bool>(!global2.x, true), func_2(), Struct_1(func_2().b, 1084f, global1.d.yz, select(true, true, global1.e.d))).xx, func_2(), Struct_1(var_1.a.x, -302f, select(!global1.d.xx, select(vec2<bool>(global2.x, false), global1.a, true), global4.a.x <= -341f), global1.a.x)), global1.e);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(813f, global1.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1151f - var_0.b), 1032f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), !global1.d.yx, global2.x);
    return vec2<u32>(min(7591u, var_0.c.x), 4294967295u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = arg_3.c;
    let var_1 = (_wgslsmith_sub_u32(global1.c.c.c.x, 1324u) >> (4294967295u % 32u)) >> (21595u % 32u);
    var var_2 = _wgslsmith_add_vec3_u32(~global1.c.c.c, global1.c.c.c);
    let var_3 = !vec3<bool>(any(!(!vec2<bool>(arg_3.d, global2.x))), !all(select(global1.d, vec3<bool>(arg_3.c.x, global2.x, arg_3.d), global1.d)), var_0.x);
    var var_4 = select(arg_3.c, select(arg_3.c, func_3(vec2<bool>(all(global1.d), false), global1.c.c, arg_3).xy, func_3(!(!vec2<bool>(global2.x, var_3.x)), Struct_2(global1.c.c.a, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), firstLeadingBit(vec3<u32>(var_2.x, 38269u, var_2.x))), arg_3).yx), select(!vec2<bool>(global1.e.d, true), arg_3.c, false));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42255u, _wgslsmith_add_u32(~abs(9128u), ~_wgslsmith_div_u32(arg_1.x, 0u << (0u % 32u)))), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(global1.a, global1.e.c, vec2<bool>(all(!vec4<bool>(global1.a.x, false, global1.c.b, global1.a.x)), all(select(vec4<bool>(false, global1.a.x, global2.x, global2.x), vec4<bool>(global2.x, false, false, false), vec4<bool>(global1.e.d, true, global1.e.d, global1.c.b)))));
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(60609u, global1.c.c.c.x << (58715u % 32u)), global1.c.c.c.x);
    var var_1 = func_4(select(func_1(), global1.c.c.c.yx, select(!vec2<bool>(true, global1.d.x), select(vec2<bool>(false, true), select(vec2<bool>(true, true), global1.a, global1.d.xy), !vec2<bool>(true, global2.x)), vec2<bool>(!global2.x, true))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x ^ 71124u, global1.c.c.c.x, ~var_0.x), ~vec3<u32>(41457u, global4.c.x, global4.c.x)), global1.c.c.a.zz, global1.e);
    var var_2 = Struct_1(global1.c.a.x, _wgslsmith_f_op_f32(ceil(-240f)), !select(!global1.e.c, !select(vec2<bool>(false, global1.e.d), global1.d.zz, false), !all(vec3<bool>(true, global1.c.b, true))), false);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x * -100f) - _wgslsmith_f_op_f32(f32(-1f) * -1109f))) * _wgslsmith_f_op_f32(round(global4.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_2.b)), vec2<bool>(true, !any(vec2<bool>(true, global2.x))), (~12815u << (_wgslsmith_div_u32(global4.c.x | var_0.x, ~18793u) % 32u)) != ~firstLeadingBit(var_1.c.c.x));
    var var_4 = _wgslsmith_mult_vec3_i32(u_input.a, min(~vec3<i32>(u_input.a.x, ~(-72031i), _wgslsmith_mod_i32(u_input.a.x, global3.x)), u_input.a));
    global4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1474f + _wgslsmith_f_op_f32(-global1.e.a)) * var_2.b), var_1.a.x, global1.e.b), _wgslsmith_f_op_f32(abs(-373f)), global1.c.c.c);
    var var_5 = func_4(_wgslsmith_div_vec2_u32(reverseBits(min(vec2<u32>(1u, global4.c.x), vec2<u32>(global4.c.x, 0u))), global1.c.c.c.xy), func_2().c, global4.a.xy, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(vec2<i32>(global1.b.x, global3.x))), _wgslsmith_sub_i32(var_4.x, u_input.a.x), global4.c.x);
}

