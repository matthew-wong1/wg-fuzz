struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 0u, 113235u, 0u, 25041u, 1u, 0u, 16159u, 4294967295u, 34467u, 62445u);

var<private> global2: array<vec4<i32>, 31>;

var<private> global3: Struct_4 = Struct_4(vec2<bool>(true, false), 66809u, Struct_3(vec2<i32>(-21406i, -33157i), vec3<f32>(-1441f, 1891f, -938f), vec2<i32>(-1402i, 12897i), vec3<u32>(1u, 0u, 17558u)), Struct_3(vec2<i32>(i32(-2147483648), 1i), vec3<f32>(-391f, -1000f, 1068f), vec2<i32>(-1i, 1i), vec3<u32>(54868u, 4294967295u, 49267u)));

var<private> global4: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    global1 = array<u32, 11>();
    global2 = array<vec4<i32>, 31>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))))))));
    global1 = array<u32, 11>();
    var var_0 = vec3<i32>(-1i) * -abs(reverseBits(~vec3<i32>(arg_0, arg_0, -2147483647i)));
    return (-_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, 37762i), ~(-23328i)) | global3.d.a.x) | (i32(-1i) * -(i32(-1i) * -1599i));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(global3.c.b.xy));
    var var_1 = select(select(!select(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x), any(vec4<bool>(true, true, true, global3.a.x))), vec4<bool>(!(!global3.a.x), !(true == global3.a.x), !(!global3.a.x), false), vec4<bool>(global3.a.x, select(true, !global3.a.x, global3.a.x), false, false)), !select(vec4<bool>(global3.a.x, true, global3.a.x, !global3.a.x), vec4<bool>(global3.a.x, global3.a.x, all(vec4<bool>(global3.a.x, true, false, global3.a.x)), u_input.c.x <= u_input.b.x), global3.a.x | global3.a.x), select(select(vec4<bool>(global3.a.x, true, u_input.b.x != 0i, global3.a.x), vec4<bool>(global3.a.x, true, true, true), global3.a.x), select(select(!vec4<bool>(global3.a.x, global3.a.x, false, false), select(vec4<bool>(true, global3.a.x, global3.a.x, global3.a.x), vec4<bool>(false, false, global3.a.x, false), vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true)), vec4<bool>(false, global3.a.x, false, false)), !vec4<bool>(global3.a.x, true, false, false), vec4<bool>(!global3.a.x, select(true, true, false), true, true)), select(!select(vec4<bool>(global3.a.x, true, false, true), vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true), vec4<bool>(global3.a.x, global3.a.x, true, false)), select(!vec4<bool>(true, global3.a.x, global3.a.x, false), vec4<bool>(global3.a.x, false, global3.a.x, true), all(vec4<bool>(true, false, global3.a.x, true))), vec4<bool>(global3.a.x, true, !global3.a.x, global3.d.a.x < u_input.b.x))));
    let var_2 = vec4<bool>(select(var_1.x, global3.a.x, all(select(!vec2<bool>(global3.a.x, true), global4[_wgslsmith_index_u32(1u, 15u)], vec2<bool>(var_1.x, true)))), any(!(!(!var_1.zzx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 1317f) > global3.d.b.x, global3.a.x);
    global2 = array<vec4<i32>, 31>();
    let var_3 = Struct_2(Struct_1(reverseBits(4294967295u) <= abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7457u, 11u)], 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), vec3<u32>(1u, u_input.a.x, global3.c.d.x))), _wgslsmith_div_f32(var_0.x, var_0.x)), ~(~(~reverseBits(global3.d.d.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(abs(-218f))), Struct_1(var_2.x || select(all(var_2), any(vec2<bool>(global3.a.x, var_1.x)), true), _wgslsmith_f_op_f32(-global3.c.b.x)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(33503u, 11206u, global3.c.d.x, 2184u), u_input.a)), ~max(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 4294967295u, 4294967295u, 4294967295u)), abs(vec4<u32>(var_3.b, 4294967295u, 1u, 4294967295u)))), u_input.a >> (abs(vec4<u32>(~global3.c.d.x, ~global3.b, ~global1[_wgslsmith_index_u32(1u, 11u)], 1u)) % vec4<u32>(32u)));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(global0.x + 1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -322f), -513f), 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-214f * global0.x))), -341f, true)), Struct_1(!global3.a.x, global0.x));
    let var_1 = _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_add_i32(select(1i, u_input.c.x, global3.a.x) ^ -1720i, global3.d.a.x)) ^ (~_wgslsmith_add_i32(-60746i, global3.c.a.x) >> (~67892u % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(362f, _wgslsmith_f_op_f32(1000f * 212f)) * _wgslsmith_div_vec2_f32(global3.c.b.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(130f, 795f) + _wgslsmith_f_op_vec2_f32(abs(global3.c.b.zy))) + global3.c.b.yx)));
    global2 = array<vec4<i32>, 31>();
    var var_2 = func_3();
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1938f))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f + global3.c.b.x) * 740f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))) - var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) - -488f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) * -1921f)), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global3.c.a.x & ~u_input.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, global3.d.a.x) | ~_wgslsmith_add_i32(-32344i, global3.d.c.x), _wgslsmith_mod_i32(2147483647i, -2147483647i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(global3.d.c.x, (1i ^ global3.c.a.x) ^ func_1(-24425i, global3.c.d.x)), 0i), global3.d.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(637f, 929f)))), -232f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.c.b.x - -1000f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1781f, -703f, global3.d.b.x, 393f), vec4<f32>(global0.x, -1642f, global3.c.b.x, global0.x)), vec4<f32>(1255f, 1457f, global3.d.b.x, global0.x))), _wgslsmith_f_op_vec4_f32(func_2())));
    var var_2 = Struct_1(global3.a.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-439f, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(32880u << (1u % 32u), u_input.a.x), u_input.a.x, ~(~global1[_wgslsmith_index_u32(44817u, 11u)])), firstTrailingBit(~37075u), ~min(u_input.a.x << (global1[_wgslsmith_index_u32(u_input.a.x, 11u)] % 32u), 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(select(-320f, var_2.b, global3.a.x))))), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(239f * global3.c.b.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - 1042f)), global3.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.b.x - var_1.x)))));
}

