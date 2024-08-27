struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<i32, 21>;

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_1.zx;
    var var_1 = -38189i;
    let var_2 = Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(~10224u, global2.x >> (arg_0.a.x % 32u))), ~global2.x), _wgslsmith_div_u32(~(~1u), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(81611u, arg_0.b), vec2<u32>(arg_0.a.x, 49864u)), arg_3.a.x, ~arg_0.a.x)), -1i);
    let var_3 = vec4<f32>(-740f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-587f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(198f, -994f, true)), 890f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)))), !(!all(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f * -1282f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(818f)), -872f, true)))));
    let var_4 = -100f;
    return 12305u;
}

fn func_2() -> i32 {
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1306f, -1905f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(-1044f - -154f)), _wgslsmith_f_op_f32(-1102f + _wgslsmith_f_op_f32(-1794f - -511f))))), 1013f);
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_add_u32(firstTrailingBit(~1u), ~(global2.x >> (global2.x % 32u))), _wgslsmith_mult_u32(global2.x, func_3(Struct_1(vec2<u32>(36305u, 1u), global2.x, -8695i), max(u_input.b, vec4<i32>(u_input.b.x, -22906i, global1[_wgslsmith_index_u32(0u, 21u)], 11730i)), vec3<u32>(1u, global2.x, global2.x), Struct_1(vec2<u32>(global2.x, 66079u), global2.x, u_input.a)))), abs(~firstTrailingBit(~43615u)), _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 21u)], 1i)));
    let var_3 = Struct_1(vec2<u32>(31915u, global2.x & global2.x), 0u, -2147483647i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    return ~_wgslsmith_dot_vec3_i32(u_input.b.ywy, vec3<i32>(firstTrailingBit(u_input.c), -5035i, ~u_input.c));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    global2 = arg_1.a;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(177f))));
    var_0 = _wgslsmith_f_op_f32(select(-2489f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(626f))), any(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 17u)], !global0[_wgslsmith_index_u32(1u, 17u)], !global0[_wgslsmith_index_u32(arg_1.b, 17u)], any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 17u)], false, false, true))))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f - -1057f))), 1000f));
    var var_1 = _wgslsmith_add_i32(~func_2(), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.c, arg_1.c, 1i), max(u_input.b.ywz, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 0i, global1[_wgslsmith_index_u32(15687u, 21u)]))), -(~vec3<i32>(0i, u_input.c, global1[_wgslsmith_index_u32(global2.x, 21u)])))) << (75937u % 32u);
    return abs(i32(-1i) * -2147483647i) << (min(34768u << (arg_0 % 32u), ~(1u >> (global2.x % 32u))) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(global2.x, 56573u), _wgslsmith_mod_u32(~global2.x, 34877u), arg_2.b)), ~firstLeadingBit(vec3<u32>(abs(4294967295u), arg_2.a.x, firstLeadingBit(arg_1.a.x))));
    global0 = array<bool, 17>();
    let var_1 = Struct_1(arg_1.a, arg_2.a.x, 63712i);
    var var_2 = arg_1;
    global1 = array<i32, 21>();
    return Struct_1(arg_0.a & var_1.a, 0u, 4620i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(max(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(4294967295u, 35502u))), max(vec2<u32>(4173u, global2.x) >> (vec2<u32>(0u, global2.x) % vec2<u32>(32u)), select(vec2<u32>(0u, global2.x), vec2<u32>(global2.x, global2.x), vec2<bool>(global0[_wgslsmith_index_u32(22495u, 17u)], global0[_wgslsmith_index_u32(global2.x, 17u)])))), 4294967295u, _wgslsmith_dot_vec3_i32(u_input.b.xzx << (vec3<u32>(15458u, global2.x, 24964u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, ~(-1i), func_1(1u, Struct_1(vec2<u32>(1u, 1u), 4294967295u, u_input.b.x))))), Struct_1(vec2<u32>(global2.x, _wgslsmith_sub_u32(11400u, global2.x)), ~(~firstLeadingBit(global2.x)), global1[_wgslsmith_index_u32(firstTrailingBit(~func_3(Struct_1(vec2<u32>(global2.x, 50928u), global2.x, -2147483647i), vec4<i32>(0i, global1[_wgslsmith_index_u32(30766u, 21u)], global1[_wgslsmith_index_u32(12232u, 21u)], 3730i), vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec2<u32>(global2.x, global2.x), global2.x, 2147483647i))), 21u)]), Struct_1(vec2<u32>(28971u, _wgslsmith_add_u32(global2.x, global2.x) & select(4294967295u, global2.x, global0[_wgslsmith_index_u32(global2.x, 17u)])), (~global2.x ^ global2.x) << (global2.x % 32u), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~global2.x & global2.x, 21u)], firstLeadingBit(_wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(21686u, 21u)])), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1[_wgslsmith_index_u32(36212u, 21u)], u_input.a, u_input.b.x)), ~u_input.b.wwx))), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], true | global0[_wgslsmith_index_u32(global2.x, 17u)], all(vec2<bool>(false, global0[_wgslsmith_index_u32(17208u, 17u)])), select(global0[_wgslsmith_index_u32(global2.x, 17u)], true, global0[_wgslsmith_index_u32(global2.x, 17u)])), select(vec4<bool>(any(vec4<bool>(false, true, false, true)), global0[_wgslsmith_index_u32(global2.x, 17u)], 4294967295u > global2.x, false || global0[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, global2.x), 17u)], false, global0[_wgslsmith_index_u32(~global2.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), true), !(!global0[_wgslsmith_index_u32(global2.x, 17u)])));
    let var_1 = !all(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 17u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(86032u, 17u)], global0[_wgslsmith_index_u32(var_0.a.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), !global0[_wgslsmith_index_u32(1u, 17u)]), select(vec3<bool>(true, false, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(var_0.b, 17u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, var_0.b, global2.x), 17u)]), any(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, false, false))));
    let var_2 = firstTrailingBit(vec3<i32>(-1i, u_input.a, 1i));
    var var_3 = ~select(~u_input.b, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-6226i, 32660i, 41994i, global1[_wgslsmith_index_u32(0u, 21u)])), ~vec4<i32>(-2147483647i, var_0.c, u_input.b.x, 86131i)) << (max(~vec4<u32>(22733u, var_0.b, global2.x, var_0.a.x), vec4<u32>(81762u, var_0.b, 0u, global2.x)) % vec4<u32>(32u)), select(!(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(var_0.b, 17u)])), vec4<bool>(all(vec4<bool>(var_1, var_1, var_1, global0[_wgslsmith_index_u32(global2.x, 17u)])), any(vec2<bool>(true, var_1)), var_0.a.x < 34846u, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 17u)], false, var_1)));
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1495f, _wgslsmith_f_op_f32(sign(378f))), vec2<i32>(-37770i, 0i), -(i32(-1i) * -(i32(-1i) * -1i)));
}

