struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: Struct_4;

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(-721f, _wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(872f, -844f, global1.c)) * -225f))), global1.a));
    var var_1 = _wgslsmith_f_op_f32(sign(1000f));
    global0 = 1466f;
    var var_2 = _wgslsmith_mod_vec3_i32(~(u_input.a.zww << (firstTrailingBit(vec3<u32>(30283u, 0u, global3[_wgslsmith_index_u32(arg_0, 10u)])) % vec3<u32>(32u))), ~countOneBits(min(vec3<i32>(2147483647i, u_input.a.x, -33805i), u_input.a.zxy))) >> (vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.zz, vec2<u32>(global3[_wgslsmith_index_u32(1u, 10u)], arg_0)), firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 10u)], 10u)])) << (countOneBits(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global2.x, 10u)], global2.x)) % 32u), 10u)], ~(~global3[_wgslsmith_index_u32(4294967295u, 10u)]) >> (_wgslsmith_div_u32(abs(26616u), min(76042u, 4294967295u)) % 32u), ~(~global3[_wgslsmith_index_u32(48039u, 10u)]) | ~11278u) % vec3<u32>(32u));
    global1 = Struct_4(global1.c, u_input.a.x, any(select(!vec2<bool>(global1.c, false), vec2<bool>(true, true), global1.a)));
    return vec4<f32>(-1071f, 2197f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(221f, -1326f)))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)), any(vec4<bool>(false | global1.a, 42319i < var_2.x, true, all(vec3<bool>(global1.c, global1.a, global1.a)))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(55970u)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 457f, -1798f, arg_0.x), vec4<f32>(-599f, -172f, 2068f, 1550f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_div_f32(arg_0.x, 385f), -179f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1122f, -363f, arg_0.x, arg_0.x)))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_0.x)));
    let var_1 = Struct_4(global1.a, ~u_input.a.x, true);
    global3 = array<u32, 10>();
    global0 = 1740f;
    return Struct_1(_wgslsmith_add_i32(-1i, -(64216i >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(func_3(reverseBits(_wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(global2.x, 10u)])))), u_input.a.x);
}

fn func_1() -> bool {
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2292f, -572f, -301f), vec3<f32>(1230f, 1875f, -139f))))))), ~vec3<i32>(abs(global1.b), _wgslsmith_mod_i32(abs(-23935i), _wgslsmith_sub_i32(global1.b, -2147483647i)), -1i), func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1041f, -1366f, 1005f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1356f, 590f, 335f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-408f, 653f, -1089f) - vec3<f32>(514f, -1369f, -995f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1705f * 382f), _wgslsmith_f_op_f32(abs(-1184f)), _wgslsmith_f_op_f32(-812f + 1913f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(933f, 353f, -365f) * vec3<f32>(1923f, 1606f, 605f)) * vec3<f32>(1f, 1f, 1f)), false)))));
    var var_1 = !select(vec2<bool>(!all(vec4<bool>(false, false, global1.a, false)), false), vec2<bool>(global1.b != _wgslsmith_clamp_i32(var_0.c.a, -14843i, var_0.c.c), !global1.c), false);
    var var_2 = Struct_2(var_0.a);
    var var_3 = Struct_2(var_0.a);
    global2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 1u, 0u) << (vec4<u32>(23590u, global3[_wgslsmith_index_u32(global2.x, 10u)], 68841u, global3[_wgslsmith_index_u32(7829u, 10u)]) % vec4<u32>(32u)), ~vec4<u32>(1u, global2.x, global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6145u, 10u)], 10u)]), var_1.x), max(vec4<u32>(0u, 169447u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 24108u), max(vec4<u32>(1u, global3[_wgslsmith_index_u32(global2.x, 10u)], 30784u, 0u), vec4<u32>(14349u, global2.x, global3[_wgslsmith_index_u32(global2.x, 10u)], 24948u)))), firstLeadingBit(~global2.x), abs(global3[_wgslsmith_index_u32(~0u, 10u)])), firstLeadingBit(~(~abs(vec3<u32>(global3[_wgslsmith_index_u32(global2.x, 10u)], global3[_wgslsmith_index_u32(747u, 10u)], 12231u)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_4 {
    global0 = 653f;
    var var_0 = -193f;
    var var_1 = arg_1;
    let var_2 = Struct_4(arg_1.c, _wgslsmith_sub_i32(1i ^ (u_input.a.x >> (~global2.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_div_i32(28082i, _wgslsmith_clamp_i32(7669i, global1.b, arg_1.b)), global1.b)), arg_1.a);
    var var_3 = -323f;
    return Struct_4(!(!all(!vec3<bool>(global1.a, false, true))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-19601i, var_1.b, -2147483647i, u_input.a.x), vec4<i32>(0i, var_2.b, -2582i, -2147483647i)), vec4<i32>(-13304i, _wgslsmith_div_i32(8464i, global1.b), 1i, ~global1.b)) ^ ~countOneBits(var_2.b), !(!global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(vec2<bool>(true | global1.a, func_1()), !select(vec2<bool>(true, true), vec2<bool>(global1.a, false), false), !global1.a), Struct_4(func_1(), global1.b, any(select(!vec3<bool>(false, true, global1.a), select(vec3<bool>(global1.c, global1.a, global1.a), vec3<bool>(global1.a, global1.c, global1.c), global1.a), global1.c))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, -25119i) ^ global1.b, -(u_input.a.x >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-694f, 1000f, 295f, -113f), vec4<f32>(519f, 978f, 312f, 217f), vec4<bool>(var_0.c, global1.c, global1.a, false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 882f, 1082f, -854f))) - vec4<f32>(747f, _wgslsmith_f_op_f32(f32(-1f) * -194f), -413f, -1455f)), global1.b), ~u_input.a.xyz, Struct_1(i32(-1i) * -global1.b, vec4<f32>(935f, _wgslsmith_f_op_f32(798f * _wgslsmith_f_op_f32(sign(2880f))), _wgslsmith_div_f32(func_2(vec3<f32>(146f, -620f, -2622f)).b.x, _wgslsmith_f_op_f32(2683f * -699f)), -1000f), global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, 455f, -667f) - vec3<f32>(1496f, 1198f, 346f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2042f, -457f, 1026f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(701f, 133f, 1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1882f, -824f, -988f)))))));
    var var_2 = Struct_2(var_1.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 10u)]), 10u)] | 7077u)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.a.b), vec4<f32>(_wgslsmith_div_f32(var_1.c.b.x, var_1.a.b.x), var_2.a.b.x, _wgslsmith_f_op_vec4_f32(func_3(0u)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d.x)) * var_2.a.b.x)))));
    var var_4 = !select(!(!(!vec4<bool>(false, var_0.c, global1.a, var_0.a))), !(!select(vec4<bool>(var_0.c, true, false, false), vec4<bool>(var_0.c, var_0.c, true, var_0.a), vec4<bool>(false, global1.a, global1.a, global1.c))), !vec4<bool>(var_0.c, var_0.c, !global1.c, func_1()));
    var var_5 = ~min(_wgslsmith_div_u32(firstTrailingBit(global3[_wgslsmith_index_u32(global2.x, 10u)]) >> (~12584u % 32u), global3[_wgslsmith_index_u32(firstTrailingBit(~global3[_wgslsmith_index_u32(global2.x, 10u)]), 10u)]), reverseBits(_wgslsmith_clamp_u32(~0u, firstLeadingBit(global2.x), ~4294967295u)));
    let var_6 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.b.x, var_1.d.x, var_3.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(global2.x, 10u)])).xyx))), _wgslsmith_f_op_vec3_f32(-var_3.xww)));
    let var_7 = -vec2<i32>(i32(-1i) * -2147483647i, -(~var_2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(38894u | global2.x), ~global2.x, ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 10u)], 27596u), global2.x), 2147483647i);
}

