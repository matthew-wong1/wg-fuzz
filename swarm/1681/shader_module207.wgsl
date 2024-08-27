struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<i32>(-1i, 0i, -46028i, -19027i), vec2<f32>(-205f, 1009f));

var<private> global2: array<u32, 18> = array<u32, 18>(34001u, 4294967295u, 97176u, 4294967295u, 1u, 1u, 17341u, 1487u, 57368u, 59520u, 0u, 48301u, 57139u, 4294967295u, 4294967295u, 52891u, 4294967295u, 21928u);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 4834i, -195i, -61666i), vec2<f32>(1000f, -782f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = global1.a.zx;
    let var_1 = abs(~abs(vec2<i32>(global1.b.x, i32(-1i) * -2147483647i)));
    global0 = min(0i ^ ~u_input.c, -1i);
    var var_2 = ~(~vec4<u32>(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 0u), global2[_wgslsmith_index_u32(u_input.a.x, 18u)], countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 18u)] | 9139u), ~(~120451u)));
    var var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(1u << (global2[_wgslsmith_index_u32(var_2.x, 18u)] % 32u), ~4294967295u), global2[_wgslsmith_index_u32(var_2.x, 18u)], _wgslsmith_div_u32(~0u, global2[_wgslsmith_index_u32(var_2.x << (28544u % 32u), 18u)])), select(u_input.a, var_2.wyx, false && (_wgslsmith_f_op_f32(-889f * global3.c.x) != _wgslsmith_f_op_f32(ceil(global3.c.x)))));
    return ~(-global3.b.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(!global3.a, vec4<i32>(_wgslsmith_dot_vec2_i32(global3.b.yz, (vec2<i32>(-1i, 39779i) ^ vec2<i32>(arg_0.x, arg_1.b.x)) >> (vec2<u32>(0u, global2[_wgslsmith_index_u32(0u, 18u)]) % vec2<u32>(32u))), _wgslsmith_clamp_i32(-1i, global1.b.x, arg_1.b.x), ~func_3(), ~min(~(-2147483647i), min(global3.b.x, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_div_f32(global1.c.x, -851f)))), -845f));
    global0 = abs(_wgslsmith_mult_i32(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, 6609i, global3.b.x), arg_0.wxw)), arg_0.x));
    var var_1 = arg_1;
    var var_2 = !select(vec4<bool>((arg_2.x | var_0.a.x) != true, all(global1.a.zz), true, _wgslsmith_div_f32(var_0.c.x, global3.c.x) < _wgslsmith_div_f32(var_1.c.x, 1041f)), select(select(!vec4<bool>(global3.a.x, false, arg_1.a.x, arg_2.x), !vec4<bool>(global1.a.x, global1.a.x, global1.a.x, var_1.a.x), false), vec4<bool>(true, all(vec4<bool>(false, global1.a.x, false, true)), true, arg_2.x), true), ~select(u_input.a.x, global2[_wgslsmith_index_u32(52146u, 18u)], false) != (select(u_input.a.x, global2[_wgslsmith_index_u32(46816u, 18u)], var_0.a.x) << (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(74848u, 18u)], 18u)], 18u)], 18u)], 75066u) % 32u)));
    var_2 = select(select(vec4<bool>(true, all(global3.a), false, !any(vec4<bool>(false, true, true, var_2.x))), !select(!vec4<bool>(var_2.x, false, arg_1.a.x, true), vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(true, var_1.a.x, true, var_1.a.x)), all(vec2<bool>(var_1.a.x, arg_2.x))), select(vec4<bool>(!(true | arg_2.x), true, !(!arg_1.a.x), !(!arg_2.x)), vec4<bool>(true, true, true, global1.a.x), select(vec4<bool>(select(true, global1.a.x, false), !var_2.x, !arg_2.x, var_0.a.x), select(vec4<bool>(var_2.x, var_1.a.x, var_1.a.x, arg_2.x), vec4<bool>(true, false, global1.a.x, arg_1.a.x), select(vec4<bool>(true, true, false, true), vec4<bool>(global1.a.x, var_2.x, false, var_1.a.x), vec4<bool>(global1.a.x, arg_2.x, global1.a.x, true))), !(!var_0.a.x))), false);
    return (all(arg_1.a.yx) && all(select(vec2<bool>(var_2.x, var_1.a.x), vec2<bool>(true, var_2.x), false))) != var_1.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    var var_0 = -vec4<i32>(1i, select(_wgslsmith_sub_i32(global3.b.x & global1.b.x, abs(7320i)), 3872i, func_2(vec4<i32>(2147483647i, arg_2, global1.b.x, -2147483647i), Struct_1(vec3<bool>(arg_1.a.x, false, arg_0.a.x), arg_0.b, global3.c), vec2<bool>(false, false))), func_3(), _wgslsmith_mult_i32(firstTrailingBit(global1.b.x) >> (firstTrailingBit(arg_3.x) % 32u), 13806i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c.x))) + _wgslsmith_f_op_f32(global3.c.x - -1914f));
    let var_2 = Struct_1(!select(select(!vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(false, arg_1.a.x, global1.a.x), arg_1.a, vec3<bool>(false, arg_0.a.x, false)), select(global1.a, global3.a, global1.a.x)), global1.a, !global1.a.x != true), min(~max(global1.b, vec4<i32>(arg_1.b.x, arg_1.b.x, 1885i, 17381i)), ~(-vec4<i32>(-2147483647i, global1.b.x, -1i, -67834i))) ^ (vec4<i32>(arg_2 ^ global3.b.x, abs(var_0.x), var_0.x & arg_0.b.x, 0i) & -arg_1.b), _wgslsmith_f_op_vec2_f32(-global1.c));
    let var_3 = arg_1;
    global1 = arg_0;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec3<bool>(!global3.a.x, global1.b.x >= u_input.b.x, true), !global1.a, true), !global1.a, !vec3<bool>(any(vec4<bool>(false, global3.a.x, global3.a.x, global1.a.x)), false, false)), select(global3.b, vec4<i32>(-28450i << (func_1(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec4<i32>(u_input.c, global3.b.x, global1.b.x, global1.b.x), global1.c), Struct_1(global3.a, global3.b, vec2<f32>(global1.c.x, global1.c.x)), 1i, vec4<u32>(0u, u_input.a.x, u_input.a.x, 52456u)) % 32u), -3910i << ((7948u << (global2[_wgslsmith_index_u32(u_input.a.x, 18u)] % 32u)) % 32u), _wgslsmith_clamp_i32(-7046i, 1i | global3.b.x, -19329i), -firstTrailingBit(u_input.d.x)), !select(!vec4<bool>(true, true, global1.a.x, global1.a.x), vec4<bool>(true, global3.a.x, global3.a.x, false), select(vec4<bool>(global1.a.x, true, false, global1.a.x), vec4<bool>(global1.a.x, global3.a.x, true, false), global1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c - vec2<f32>(-177f, global3.c.x)))))));
    var var_1 = Struct_1(vec3<bool>(!global1.a.x || func_2(select(vec4<i32>(-1i, -493i, 9855i, 0i), global1.b, vec4<bool>(global3.a.x, global1.a.x, global3.a.x, true)), var_0, global1.a.yy), var_0.a.x, true), -vec4<i32>(-2147483647i, 2147483647i, global1.b.x, _wgslsmith_mult_i32(-var_0.b.x, -35185i)), vec2<f32>(var_0.c.x, var_0.c.x));
    global0 = -21917i;
    global3 = Struct_1(vec3<bool>(false, !(!(global1.a.x == true)), !(51120i >= _wgslsmith_clamp_i32(var_0.b.x, global3.b.x, global3.b.x))), var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, 2491f)))));
    var var_2 = select(vec4<u32>(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(97381u, 18u)], _wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), 1u & global2[_wgslsmith_index_u32(u_input.a.x, 18u)]) << ((18697u << (firstTrailingBit(u_input.a.x) % 32u)) % 32u), _wgslsmith_mult_u32(1u, u_input.a.x), global2[_wgslsmith_index_u32(~19032u, 18u)], ~u_input.a.x), vec4<u32>(~func_1(Struct_1(global1.a, var_0.b, vec2<f32>(global1.c.x, -808f)), var_0, u_input.e, ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 18892u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], u_input.a.x)), ~_wgslsmith_clamp_u32(49738u, 64643u, min(4294967295u, u_input.a.x)), 1u, _wgslsmith_mod_u32(firstTrailingBit(1u), 1u ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)])), global1.a.x | all(!var_1.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(var_2.x, ~(global2[_wgslsmith_index_u32(var_2.x, 18u)] ^ 1u)), u_input.a.x, var_2.x, _wgslsmith_div_u32(1u, 115923u)));
}

