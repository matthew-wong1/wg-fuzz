struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 13>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(-1000f), Struct_2(315f), Struct_2(-1213f), Struct_2(-651f));

var<private> global3: array<u32, 14> = array<u32, 14>(0u, 32534u, 0u, 582u, 40787u, 1u, 4294967295u, 4294967295u, 35718u, 35930u, 24270u, 1u, 1u, 4294967295u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> f32 {
    global0 = _wgslsmith_f_op_f32(sign(-1855f));
    return _wgslsmith_f_op_f32(373f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_0.a))), arg_0.a)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1616f + -1632f) + -641f))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_5 {
    global1 = array<Struct_4, 13>();
    global3 = array<u32, 14>();
    let var_0 = ~u_input.a;
    let var_1 = -634f;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(vec3<i32>(u_input.a, var_0, var_0)))))), global3[_wgslsmith_index_u32(arg_0.x << (9565u % 32u), 14u)]);
    return Struct_5(1446f, firstLeadingBit(1u));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = min(vec2<u32>(global3[_wgslsmith_index_u32(23864u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 14u)], 14u)], 14u)]) | ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(5478u, 14u)], global3[_wgslsmith_index_u32(arg_0.b, 14u)]), vec2<u32>(arg_0.b, 77075u), vec2<u32>(arg_0.b, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(~(arg_0.b >> (global3[_wgslsmith_index_u32(arg_0.b, 14u)] % 32u)), _wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(func_2(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(84145u, 14u)])).b, 14u)])), _wgslsmith_add_vec2_u32(vec2<u32>(89441u, arg_0.b) ^ _wgslsmith_add_vec2_u32(vec2<u32>(38021u, 14138u), vec2<u32>(global3[_wgslsmith_index_u32(38144u, 14u)], 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(18125u, 4294967295u), vec2<u32>(1u, 24726u)))));
    var var_1 = reverseBits(reverseBits(abs(~arg_1)));
    var_0 = countOneBits(~(~vec2<u32>(0u, arg_0.b) & vec2<u32>(1u, _wgslsmith_clamp_u32(arg_0.b, 4294967295u, var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-func_2(~vec2<u32>(1u, var_0.x)).a));
    global3 = array<u32, 14>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-1028f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_5(-487f, 1u), Struct_5(1670f, 1u))), 526f))));
    var var_1 = func_4(func_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)]), vec2<u32>(68949u, 1u)), ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)])), select(abs(vec2<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 14u)])), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(94822u, 14u)], 14u)], 14u)], 14u)], 34897u), vec2<bool>(false, false)))), _wgslsmith_dot_vec3_i32(vec3<i32>(max(-29609i, 1i), _wgslsmith_mod_i32(0i >> (1u % 32u), u_input.a ^ 75000i), min(~u_input.a, u_input.a)), ~(-vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_4(Struct_3(u_input.a, select(true, global3[_wgslsmith_index_u32(0u, 14u)] < 61360u, true), vec4<f32>(_wgslsmith_f_op_f32(ceil(-683f)), _wgslsmith_f_op_f32(-var_0.a), var_0.a, var_0.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)), select(true, true, false) && true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(459f, var_0.a, var_0.a, var_0.a))))), _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-1i), u_input.a), u_input.a), ~(~firstLeadingBit(vec3<i32>(u_input.a, -42843i, u_input.a))), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))) | true));
    var var_2 = firstTrailingBit(~9469i);
    global2 = array<Struct_2, 4>();
    global0 = 1013f;
    let var_3 = ~vec3<u32>(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49797u, 14u)], 14u)], 14u)]) & ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31253u, 14u)], 14u)], 14u)], _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(21632u, 14u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], ~0u, abs(79398u)), _wgslsmith_mod_u32(1u, max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], global3[_wgslsmith_index_u32(38664u, 14u)]))) << (~vec3<u32>(0u, ~global3[_wgslsmith_index_u32(46177u, 14u)], ~_wgslsmith_mod_u32(10574u, global3[_wgslsmith_index_u32(4294967295u, 14u)])) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2558f)), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(549f, _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f * 256f)))), -((vec4<i32>(var_1.a.a, 1i, var_1.a.a, -2295i) & vec4<i32>(-2147483647i, u_input.a, -57678i, u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x) << (vec4<u32>(1618u, 90090u, 4294967295u, var_3.x) % vec4<u32>(32u)), ~vec4<u32>(14633u, global3[_wgslsmith_index_u32(var_3.x, 14u)], var_3.x, var_3.x)) % vec4<u32>(32u))));
}

