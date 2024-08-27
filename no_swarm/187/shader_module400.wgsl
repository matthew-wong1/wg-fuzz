struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 28> = array<f32, 28>(-1021f, -347f, 1162f, 1438f, 782f, -1009f, 1000f, -1330f, 1229f, -967f, 247f, 1015f, -135f, -1525f, 733f, 221f, 367f, 288f, -548f, -922f, 739f, 760f, 1000f, 1590f, -2057f, -2163f, 276f, -1000f);

var<private> global2: array<vec3<bool>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = ~reverseBits(vec2<i32>(u_input.b, 2147483647i));
    var var_1 = vec4<i32>(var_0.x, firstLeadingBit(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -reverseBits(vec2<i32>(613i, u_input.a)), countOneBits(~(-vec2<i32>(1i, arg_0)))), _wgslsmith_sub_i32(-1i, ~u_input.a));
    let var_2 = 4294967295u;
    var_0 = vec2<i32>(u_input.b, ~14677i) << (~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(60480u, 70347u))) % vec2<u32>(32u));
    let var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 28u)];
    return Struct_2(!any(vec3<bool>(all(vec4<bool>(false, true, true, false)), false, u_input.c.x > u_input.e.x)), all(vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, true)), true)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> vec2<u32> {
    global2 = array<vec3<bool>, 11>();
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(u_input.c.xy, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(arg_0.xx), ~u_input.e.zy), vec2<u32>(0u, 13085u) & u_input.e.yy)), arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, -411f, -601f, global1[_wgslsmith_index_u32(u_input.c.x, 28u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 28u)], global1[_wgslsmith_index_u32(24954u, 28u)], global1[_wgslsmith_index_u32(5358u, 28u)], 1154f)))))), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.e, ~u_input.c), 0u, ~_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, 52179u))) ^ u_input.c);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~min(abs(4294967295u), 21960u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 21614u, arg_2, 0u)), ~vec4<u32>(883u, arg_2, 1u, 10076u), vec4<u32>(92511u, var_0.d.x, 4294967295u, var_0.a.x)), max(~vec4<u32>(22276u, var_0.a.x, 15876u, 85727u), ~vec4<u32>(arg_0.x, 5423u, arg_2, 1u)))), 28u)];
    let var_2 = func_2(u_input.a);
    var var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(arg_2, u_input.c.x) >> (31031u % 32u))), 11u)];
    return arg_0.zx;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(u_input.e.x, 25693u), 0u & u_input.e.x), func_3(~u_input.e << (_wgslsmith_mod_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u)), func_2(~u_input.b), ~reverseBits(u_input.c.x))) << (u_input.c.x % 32u);
    let var_1 = select(!select(vec4<bool>(any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(31345u, 28u)] <= global1[_wgslsmith_index_u32(32548u, 28u)], func_2(1i).b, true), vec4<bool>(all(vec3<bool>(true, false, false)), true, any(vec2<bool>(true, false)), all(vec4<bool>(true, false, true, true))), !all(vec3<bool>(true, false, true))), select(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), u_input.b >= 19254i, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true), global1[_wgslsmith_index_u32(0u, 28u)] <= global1[_wgslsmith_index_u32(u_input.d, 28u)]), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), any(vec2<bool>(true, true))), select(vec4<bool>((arg_0 ^ 2880i) > ~u_input.b, true, true, false), vec4<bool>(true, false, ~0u != ~u_input.e.x, true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), false), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(vec4<bool>(false, true, false, false)), false, true, true))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_0, 28u)], global1[_wgslsmith_index_u32(14562u, 28u)])), -573f))))), global1[_wgslsmith_index_u32(1u, 28u)]);
    global2 = array<vec3<bool>, 11>();
    var var_3 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, var_0, var_0) & vec4<u32>(1u, 80188u, 35660u, 41619u), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 0u))) ^ u_input.e.x, ~(20078u & ~u_input.e.x));
    return all(global2[_wgslsmith_index_u32(func_3(u_input.c, func_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.a), -2147483647i)), ~1u).x, 11u)]);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = func_2(-23998i);
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(0u << (1u % 32u)), 28u)] * -731f), global1[_wgslsmith_index_u32(select(u_input.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 23963u, u_input.c.x, 36424u), ~vec4<u32>(u_input.d, u_input.c.x, u_input.d, 4294967295u)), true), 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47947u, 28u)] - global1[_wgslsmith_index_u32(30939u, 28u)]) * global1[_wgslsmith_index_u32(u_input.e.x, 28u)]), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(func_3(vec3<u32>(14855u, u_input.c.x, 4294967295u), var_0, u_input.e.x).x, 28u)])))), vec3<f32>(global1[_wgslsmith_index_u32(~12601u, 28u)], 643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(10762u, 56903u), 28u)] * -1597f))));
    let var_2 = -_wgslsmith_sub_i32(-29535i, -1i);
    return func_2(~countOneBits(var_2));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = func_4(arg_0, vec2<i32>(u_input.b, -23218i));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 28u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 28u)] + 232f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1254f) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 28u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(50740u, 28u)]), 1817f)))), global1[_wgslsmith_index_u32(21216u, 28u)], _wgslsmith_div_f32(2043f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(288f - -673f)))));
    let var_2 = _wgslsmith_mult_u32(4294967295u, u_input.c.x);
    let var_3 = Struct_2(!func_1(u_input.a), var_2 > 1u);
    global0 = ~(~_wgslsmith_sub_u32(~var_2, ~_wgslsmith_div_u32(0u, u_input.e.x)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~u_input.c.zy), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-897f, -1827f, 855f, -2204f)))), func_5(func_4(Struct_2(func_1(0i), true), _wgslsmith_div_vec2_i32(vec2<i32>(-54953i, u_input.a), vec2<i32>(5313i, -8936i)) >> (abs(u_input.c.xx) % vec2<u32>(32u))), Struct_2(0u <= _wgslsmith_add_u32(u_input.d, 1u), !all(vec2<bool>(true, true)))));
    global1 = array<f32, 28>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(969f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(-1678f))))));
    var var_2 = select(select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(func_1(u_input.a), func_2(~u_input.a).b, -76803i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(-39431i, 15395i)), var_0.b), vec4<bool>(_wgslsmith_f_op_f32(trunc(-137f)) == _wgslsmith_f_op_f32(-var_1), func_1(firstLeadingBit(u_input.b)), all(!vec3<bool>(var_0.b, var_0.b, var_0.b)), !(u_input.a <= 5061i))), !(!(!vec4<bool>(var_0.b, false, var_0.b, false))), vec4<bool>(all(vec4<bool>(all(vec2<bool>(false, var_0.b)), all(vec4<bool>(var_0.b, false, var_0.b, false)), any(vec4<bool>(true, var_0.b, true, false)), var_0.b)), true || (_wgslsmith_f_op_f32(min(var_0.c.x, -378f)) != var_0.c.x), !(!var_0.b || var_0.b), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_vec3_f32(max(var_0.c.yzw, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-937f, 1104f))), _wgslsmith_f_op_f32(floor(-563f))))), var_2.x));
    global2 = array<vec3<bool>, 11>();
    var var_4 = select(~(~u_input.e.x), 4294967295u, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(abs(-1i)), u_input.b, _wgslsmith_mult_i32(-39617i << (u_input.d % 32u), 4065i)), 24146i & u_input.b);
}

