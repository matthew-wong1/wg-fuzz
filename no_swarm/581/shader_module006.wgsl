struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = max(-(~vec3<i32>(-2147483647i, global0.a, global0.a)) >> (vec3<u32>(countOneBits(1u), select(max(u_input.a.x, u_input.a.x), select(0u, 16257u, true), !global0.d.x), countOneBits(11445u) >> (min(31114u, u_input.a.x) % 32u)) % vec3<u32>(32u)), select(max(_wgslsmith_mult_vec3_i32(vec3<i32>(43318i, global0.a, 1i), vec3<i32>(global0.a, 2147483647i, global0.a)), select(vec3<i32>(global0.a, global0.a, -6522i), vec3<i32>(global0.a, 10436i, -1i), vec3<bool>(true, global0.e.x, true))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(20420i, 2147483647i, global0.a), vec3<i32>(-27325i, global0.a, -1i)), global0.a & global0.a, -global0.a), select(false, false & global0.d.x, true)) >> (vec3<u32>(u_input.a.x, 4294967295u, ~abs(u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = Struct_3(vec2<i32>(i32(-1i) * -countOneBits(var_0.x), -75368i));
    let var_2 = ~select(~(~var_0.yz), vec2<i32>(-19016i, global0.a), false);
    var var_3 = -firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(20640i, 3358i), select(vec2<i32>(var_2.x, var_0.x), vec2<i32>(global0.a, var_2.x), true)));
    var var_4 = 1u;
    return -vec2<i32>(-31348i, -_wgslsmith_add_i32(-26990i | global0.a, var_2.x));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> u32 {
    global0 = Struct_1(max(arg_0.a.x, -global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.e)), global0.c, vec4<bool>(!(all(vec2<bool>(arg_2.a.e.x, true)) | any(global0.d.wy)), !global0.d.x, arg_2.a.d.x, true), vec2<bool>(true | arg_2.a.e.x, all(!(!global0.d))));
    global0 = arg_2.b;
    var var_0 = _wgslsmith_mult_u32(877u, select(19511u, 1u, 0u == arg_3));
    let var_1 = Struct_3(arg_0.a);
    global0 = Struct_1(arg_1, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1133f + arg_2.b.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(ceil(arg_2.a.b.x)))), -1424f), countOneBits(~vec2<u32>(global0.c.x, global0.c.x)), !arg_2.a.d, arg_2.a.d.yz);
    return arg_2.c;
}

fn func_2() -> i32 {
    var var_0 = global0.d;
    var var_1 = min(2147483647i << (u_input.a.x % 32u), global0.a) << (~1u % 32u);
    let var_2 = func_4(Struct_3(vec2<i32>(-2147483647i, global0.a) ^ (func_3(global1.x) | _wgslsmith_add_vec2_i32(vec2<i32>(global0.a, 0i), vec2<i32>(global0.a, -37524i)))), -2147483647i, Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.a, -5977i, 16289i, 1i), vec4<i32>(-2147483647i, global0.a, 58550i, global0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, global0.a, global0.a, global0.a), vec4<i32>(global0.a, global0.a, 5125i, global0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global1.x, 700f) - vec3<f32>(global1.x, global1.x, global0.b.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(423f, -1000f, global1.x) + vec3<f32>(global1.x, global1.x, 2187f))), ~firstTrailingBit(vec2<u32>(66161u, 4294967295u)), vec4<bool>(var_0.x, !global0.e.x, false, global0.e.x), !(!global0.e)), Struct_1(global0.a ^ global0.a, vec3<f32>(_wgslsmith_div_f32(-669f, global0.b.x), _wgslsmith_div_f32(global0.b.x, global1.x), _wgslsmith_f_op_f32(-global1.x)), reverseBits(reverseBits(vec2<u32>(1u, u_input.a.x))), global0.d, global0.e), 4294967295u, _wgslsmith_add_i32(select(0i >> (global0.c.x % 32u), _wgslsmith_div_i32(global0.a, 51622i), all(vec2<bool>(false, global0.e.x))), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), global0.b))), u_input.a.x & max(12854u, u_input.a.x));
    var_0 = vec4<bool>(global0.d.x, var_0.x, any(global0.d), ~4294967295u > u_input.a.x);
    var var_3 = -abs(vec4<i32>(1i, global0.a, 25682i, -2147483647i) & reverseBits(-vec4<i32>(global0.a, global0.a, -14844i, -1i)));
    return abs(-21519i);
}

fn func_1(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = -func_2();
    let var_1 = Struct_5(!arg_1, global0.d.xwx);
    let var_2 = Struct_2(Struct_1(arg_0 | arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b)) + global0.b)), max(_wgslsmith_add_vec2_u32(~u_input.a, u_input.a), ~abs(u_input.a)), vec4<bool>(any(vec3<bool>(arg_1, arg_1, global0.e.x)), global0.d.x, global0.e.x, all(select(vec3<bool>(var_1.b.x, true, arg_1), global0.d.yyw, vec3<bool>(var_1.b.x, arg_1, global0.d.x)))), vec2<bool>(!(false | var_1.a), (false | var_1.a) || global0.d.x)), Struct_1(global0.a | 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), vec2<u32>(u_input.a.x, global0.c.x ^ _wgslsmith_clamp_u32(5177u, 83931u, global0.c.x)), select(select(!vec4<bool>(var_1.a, true, true, false), vec4<bool>(var_1.a, true, true, var_1.b.x), vec4<bool>(true, global0.d.x, var_1.b.x, arg_1)), select(select(global0.d, vec4<bool>(true, var_1.b.x, true, false), global0.d), select(global0.d, vec4<bool>(arg_1, arg_1, arg_1, global0.d.x), false), global0.d), !(!vec4<bool>(false, true, false, global0.d.x))), select(select(var_1.b.yy, vec2<bool>(var_1.b.x, arg_1), true), var_1.b.zx, true)), 22325u, ~firstTrailingBit(_wgslsmith_clamp_i32(func_3(global0.b.x).x, -15499i, 4387i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global0.b.x, 487f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1408f, 183f, -627f), vec3<f32>(-768f, -731f, global0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(global0.b.x, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_div_f32(258f, -149f)))), vec3<f32>(_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(1164f - 1760f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(355f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(454f)))), !all(!global0.d.yx))));
    let var_3 = Struct_5(false, !select(var_1.b, !vec3<bool>(true, true, var_2.a.e.x), select(vec3<bool>(var_1.a, var_2.a.d.x, false), vec3<bool>(false, true, false), any(var_2.b.d.wyy))));
    var var_4 = _wgslsmith_sub_i32(~26229i, func_2());
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(any(vec4<bool>(func_1(global0.a, all(global0.e)), true, global0.d.x, true)), vec3<bool>(true, global0.d.x, func_1(-1i, ~0u < global0.c.x)));
    var var_1 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(522f, global0.b.x, 236f)), global0.d.wyw)), ~u_input.a, select(select(global0.d, !vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false), select(vec4<bool>(var_0.a, var_0.b.x, true, false), vec4<bool>(true, var_0.a, var_0.a, var_0.a), true)), !select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.a), global0.d, false), false), global0.d.wx), Struct_1(~(-abs(global0.a)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), -1357f), global0.c >> (~global0.c % vec2<u32>(32u)), vec4<bool>(any(vec3<bool>(var_0.a, true, var_0.a)), !global0.d.x, global0.d.x, false), vec2<bool>(false, select(true, !var_0.a, all(vec4<bool>(global0.d.x, global0.e.x, global0.d.x, false))))), min(~(~22796u), select(global0.c.x >> (select(u_input.a.x, u_input.a.x, true) % 32u), ~0u, global1.x <= global0.b.x)), ~_wgslsmith_div_i32(-6160i, reverseBits(33180i)), vec3<f32>(_wgslsmith_f_op_f32(round(-1119f)), _wgslsmith_f_op_f32(select(-513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(502f)) + 509f), true || global0.e.x)), -411f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1688f * 1550f), global1.x)) + var_1.e.yz);
    var var_3 = !global0.d.wzy;
    var_1 = Struct_2(Struct_1(var_1.b.a, global0.b, vec2<u32>(global0.c.x, max(var_1.b.c.x, global0.c.x & var_1.c)), vec4<bool>(all(select(vec2<bool>(false, true), var_0.b.zz, true)), true, ~26572u < global0.c.x, true), select(select(!vec2<bool>(global0.d.x, false), var_3.yy, vec2<bool>(false, false)), var_0.b.yy, select(var_1.b.d.xw, var_1.a.d.xw, select(var_1.b.e, vec2<bool>(false, global0.e.x), false)))), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.b))), u_input.a, select(vec4<bool>(false, !var_0.b.x, var_1.a.d.x, true), !global0.d, global0.d), var_1.a.d.yy), _wgslsmith_clamp_u32(global0.c.x, ~u_input.a.x, var_1.c), countOneBits(_wgslsmith_sub_i32(var_1.a.a, var_1.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2030f)) - _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, var_1.b.b.x)))));
    var var_4 = global0.c.x;
    var_1 = Struct_2(var_1.b, var_1.b, firstTrailingBit(~global0.c.x) & global0.c.x, -var_1.a.a ^ ~15761i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.x, -837f, var_1.a.b.x)) - var_1.a.b) * _wgslsmith_f_op_vec3_f32(-var_1.a.b)));
    let var_5 = vec3<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(~u_input.a.x, 4294967295u), ~1u & global0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-vec3<i32>(23343i, 2147483647i, 59067i)));
}

