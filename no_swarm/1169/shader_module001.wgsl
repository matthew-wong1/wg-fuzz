struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: bool = false;

var<private> global2: array<u32, 11> = array<u32, 11>(75311u, 1u, 91147u, 47157u, 47731u, 0u, 153264u, 30187u, 0u, 32307u, 1u);

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global4: u32 = 15591u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> bool {
    var var_0 = Struct_3(select(vec4<bool>(true, false, true, global3.x), select(!select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, false, global3.x, false), vec4<bool>(arg_1.a, true, true, false)), select(vec4<bool>(arg_1.a, global3.x, true, arg_1.a), select(vec4<bool>(false, arg_1.a, true, false), vec4<bool>(true, arg_1.a, global3.x, true), false), vec4<bool>(global3.x, global3.x, true, false)), arg_1.a), global3.x), _wgslsmith_f_op_f32(sign(843f)), 1u, global3.x || true, Struct_1(vec4<i32>(abs(1i), select(-19494i, 51472i, global3.x), abs(1i), 5836i) >> (vec4<u32>(4294967295u | global0[_wgslsmith_index_u32(u_input.b, 5u)], global2[_wgslsmith_index_u32(33552u, 11u)] | 60083u, global2[_wgslsmith_index_u32(u_input.a.x, 11u)] ^ global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(5171u, 5u)] | u_input.a.x) % vec4<u32>(32u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-470f - -1078f), var_0.b) <= -1641f;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(vec4<bool>(select(global3.x, !any(vec2<bool>(false, false)), global3.x), false || !any(global3.xwx), true, global3.x), _wgslsmith_f_op_f32(min(-480f, 604f)), global2[_wgslsmith_index_u32(countOneBits(~1u), 11u)], func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-640f, -522f, -881f, -1006f), vec4<f32>(780f, 302f, -840f, -1000f), vec4<bool>(false, true, global3.x, global3.x))) + vec4<f32>(108f, 333f, -279f, -1058f)))), Struct_4(true)), Struct_1(vec4<i32>(_wgslsmith_add_i32(1i, 0i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(1i, 32615i)), -44958i, _wgslsmith_mod_i32(i32(-1i) * -19388i, 1i))));
    var var_1 = var_0.e;
    global1 = global3.x;
    let var_2 = var_0.e.a.yxy ^ var_0.e.a.zyz;
    let var_3 = ~u_input.a;
    return Struct_3(!select(select(!var_0.a, vec4<bool>(true, true, global3.x, var_0.d), select(vec4<bool>(global3.x, global3.x, global3.x, var_0.d), var_0.a, false)), vec4<bool>(var_0.a.x & global3.x, true, var_0.d, var_0.a.x), !var_0.a), 504f, 0u, true, var_0.e);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, -113f, var_0.b), vec3<f32>(569f, var_0.b, var_0.b))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-475f, var_0.b, var_0.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, 752f, -1106f))))))));
    global1 = false;
    let var_2 = arg_0;
    global4 = abs(~1u) ^ global0[_wgslsmith_index_u32(69819u, 5u)];
    return 24524u;
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_5 {
    global2 = array<u32, 11>();
    global4 = u_input.a.x;
    global2 = array<u32, 11>();
    let var_0 = _wgslsmith_clamp_u32(abs(~(~countOneBits(3961u))), ~1u, min(57747u, _wgslsmith_sub_u32(func_2().c, global2[_wgslsmith_index_u32(~arg_0, 11u)])));
    global3 = select(select(select(!(!vec4<bool>(true, false, arg_1, true)), !select(vec4<bool>(arg_1, global3.x, arg_1, true), vec4<bool>(false, false, true, global3.x), global3.x), any(vec4<bool>(arg_1, false, arg_1, global3.x)) | true), select(select(!vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, global3.x, false, global3.x), true), vec4<bool>(false | arg_1, any(vec4<bool>(arg_1, arg_1, false, true)), !global3.x, !global3.x), !(!vec4<bool>(false, true, false, arg_1))), select(!vec4<bool>(arg_1, arg_1, arg_1, global3.x), vec4<bool>(false, true, func_2().d, func_2().d), true)), vec4<bool>(global3.x, false, true, true), vec4<bool>(!(false && any(vec3<bool>(arg_1, false, global3.x))), false, func_2().a.x, true));
    return Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-291f, -362f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-109f, 337f))))), min(_wgslsmith_mult_i32((1i >> (global2[_wgslsmith_index_u32(44156u, 11u)] % 32u)) & 34227i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-92i, -15477i, -26316i), vec3<i32>(17756i, 1i, 1881i)), -1207i)), -2147483647i), Struct_3(vec4<bool>(func_2().d, global3.x, true, global3.x), _wgslsmith_div_f32(200f, -831f), countOneBits(4294967295u), true, Struct_1(vec4<i32>(~(-2147483647i), 1i, i32(-1i) * -1i, 48948i))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = arg_1;
    return !func_4(~global2[_wgslsmith_index_u32(arg_0.c.c, 11u)], true).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_5(func_4(func_1(-2147483647i), false), Struct_4(!global3.x), select(global3.yw, vec2<bool>(global3.x, true), !global3.x), _wgslsmith_f_op_vec2_f32(-func_4(0u, false).a)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), ~max(vec2<i32>(-2147483647i, -29940i), vec2<i32>(-33748i, -8921i)), ~func_2().e.a.yx), ~global0[_wgslsmith_index_u32(~abs(~global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), 5u)]);
}

