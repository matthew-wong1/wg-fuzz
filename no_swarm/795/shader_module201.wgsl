struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
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

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(41054i, i32(-2147483648), -1592i, -39389i), vec4<i32>(i32(-2147483648), -19730i, 4460i, -1i), vec4<i32>(36353i, 19797i, 9010i, 28816i), vec4<i32>(74275i, 2147483647i, 34498i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -2298i, 9694i, 19295i), vec4<i32>(14558i, 1i, 2147483647i, 39810i), vec4<i32>(9895i, 35886i, -57113i, 17321i), vec4<i32>(-16340i, -31161i, -1i, 1i), vec4<i32>(-1i, 2147483647i, 1i, 2147483647i), vec4<i32>(42268i, -1i, -64828i, 1i), vec4<i32>(0i, -8902i, 0i, 13124i), vec4<i32>(1i, 85172i, -11413i, 84887i), vec4<i32>(0i, 1i, 1595i, -1i), vec4<i32>(55997i, 11999i, 0i, 1i), vec4<i32>(-1i, -42298i, 50551i, 31410i), vec4<i32>(2147483647i, 0i, 1i, -37848i), vec4<i32>(36652i, 54701i, 605i, i32(-2147483648)), vec4<i32>(-37055i, 0i, -40727i, 25663i), vec4<i32>(24735i, -11490i, 2147483647i, -1i), vec4<i32>(1i, 43452i, -1i, i32(-2147483648)), vec4<i32>(1i, -1i, 11755i, i32(-2147483648)), vec4<i32>(-2819i, -25745i, 1i, 2147483647i), vec4<i32>(-44055i, 2147483647i, 1i, -24711i), vec4<i32>(-66470i, 7848i, 7818i, -1i), vec4<i32>(1190i, 0i, i32(-2147483648), 40527i));

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-1007f, -152f, 440f, 876f), vec4<i32>(20925i, 19928i, i32(-2147483648), -9075i), Struct_2(vec4<f32>(300f, -1058f, 1138f, -1356f), Struct_1(0u), -906f, vec3<f32>(1000f, -1287f, -1597f)), 853f, -502f);

var<private> global3: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 13813u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = global2.c.a.x;
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-722f, global2.c.d.x, -404f, 450f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.c, global2.e, global2.c.c, global2.a.x) - vec4<f32>(-401f, -167f, 1935f, -1210f))), true))), -_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(global2.c.b.a, 25u)], global2.b), global2.c, _wgslsmith_f_op_f32(157f * _wgslsmith_f_op_f32(sign(-1683f))), -1367f);
    let var_1 = _wgslsmith_f_op_f32(-global2.d);
    let var_2 = false;
    global3 = abs(vec4<u32>(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global2.c.b.a), global3.zy)), 4294967295u), reverseBits(countOneBits(~18250u)), 1u, 4294967295u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 1449f, 110f, var_1))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-877f, 997f, var_1, var_1) - vec4<f32>(global2.d, global2.c.c, global2.a.x, var_1)))), false | !var_2))) + vec4<f32>(850f, 1619f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global2.d) * -361f))), _wgslsmith_f_op_f32(trunc(global2.e))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))))), global2.c.b, 1073f, vec3<f32>(-966f, 793f, global2.e));
    global0 = any(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.b.a <= 23786u), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), vec2<bool>(true, true), select(true, all(vec3<bool>(true, false, false)), any(vec2<bool>(true, false))))));
    global0 = !(!((select(arg_0, -30641i, true) == ~(-1i)) || true));
    let var_2 = !(!(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true))));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    let var_0 = vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_0.d.x * 686f))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(func_2(13534i).d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(-1564f + -504f), _wgslsmith_f_op_f32(f32(-1f) * -618f))), global1[_wgslsmith_index_u32(4294967295u, 25u)], func_2(global2.b.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_4(func_2(1i).b, Struct_3(global2.a, (~global2.b << (firstTrailingBit(vec4<u32>(global3.x, 89u, global3.x, arg_0.b.a)) % vec4<u32>(32u))) & select(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(arg_1.a, 25u)], all(vec2<bool>(false, true))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), var_1.c.b, -431f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 1000f, 154f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1209f * var_0.x))), var_0.x), global2.c.b, func_2(~min(_wgslsmith_mult_i32(-39790i, u_input.d.x), 2353i)).b);
    var var_3 = func_2(-2147483647i);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(sign(-477f))), var_2.b.d, var_3.d.x, var_1.c.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(764f - 281f), arg_0.c, func_2(var_2.b.b.x).c)))), func_2(11102i).b, _wgslsmith_f_op_f32(max(515f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * 1f))))), func_2(select(u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.b.x, var_1.b.x), -2147483647i), true | all(vec3<bool>(false, true, false)))).d);
    return Struct_3(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), countOneBits(var_2.b.b), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_2.b.d, arg_2, var_3.c), var_2.b.c.a, true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_0.d.x, 350f, arg_0.c), var_2.b.c.a), global2.c.a, vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec3<bool>(false, true, true))))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f - _wgslsmith_f_op_f32(var_4.a.x - -872f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1809f), _wgslsmith_f_op_f32(global2.a.x - arg_0.a.x), _wgslsmith_f_op_f32(abs(var_1.a.x))) * _wgslsmith_f_op_vec3_f32(abs(var_3.a.zxy)))), -1913f, -270f);
}

fn func_1() -> Struct_2 {
    var var_0 = global3.zzw;
    let var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c.a - _wgslsmith_f_op_vec4_f32(-global2.c.a)), global2.a), global2.b ^ ~(-countOneBits(global2.b)), global2.c, -1530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(floor(-406f))), global2.c.a.x))));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(countOneBits(~(~global2.b.x)), ((-6284i >> (var_1.c.b.a % 32u)) ^ _wgslsmith_sub_i32(-2147483647i, -1i)) >> (firstTrailingBit(0u << (global2.c.b.a % 32u)) % 32u)), var_1.b.x, ~var_1.b.x, ~(-select(u_input.c.x, var_1.b.x & u_input.b, true)));
    let var_3 = Struct_4(Struct_1(~4294967295u << (firstTrailingBit(var_0.x) % 32u)), func_4(func_2(u_input.d.x), func_2(_wgslsmith_div_i32(var_2.x, u_input.d.x) << (_wgslsmith_mult_u32(0u, global2.c.b.a) % 32u)).b, 1000f), Struct_1(~((var_0.x | var_0.x) & (42141u << (var_0.x % 32u)))), global2.c.b);
    global0 = true;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c.b.a;
    global2 = Struct_3(global2.a, ~(-select(vec4<i32>(u_input.b, u_input.b, u_input.d.x, 0i) | global2.b, vec4<i32>(20283i, 16540i, u_input.d.x, u_input.c.x) ^ global2.b, vec4<bool>(false, true, true, false))), func_1(), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f + 911f))))), func_1().a.x);
    let var_1 = !(1u <= ~global2.c.b.a);
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1().d.x, 119f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * func_2(u_input.b).a.x)));
    var var_3 = ~(vec3<u32>(~global2.c.b.a, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(22346u, 1u, 24289u, global2.c.b.a), vec4<u32>(global2.c.b.a, global3.x, 0u, global3.x)), 1u), ~4294967295u) << (~firstTrailingBit(~global3.wyx) % vec3<u32>(32u)));
    global1 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(8777i >> (min(~global3.x, func_4(global2.c, global2.c.b, _wgslsmith_f_op_f32(global2.a.x - 513f)).c.b.a) % 32u));
}

