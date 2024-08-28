struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<u32, 12> = array<u32, 12>(0u, 0u, 1u, 42331u, 55368u, 33145u, 25743u, 70481u, 1u, 0u, 4294967295u, 78460u);

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(true, true), true, vec4<f32>(193f, -229f, -274f, -770f), -1081f), Struct_2(Struct_1(false, false), true, vec4<f32>(-538f, 1075f, -1563f, -231f), 1708f), Struct_2(Struct_1(true, false), true, vec4<f32>(1000f, 1714f, -518f, 424f), -769f), Struct_2(Struct_1(true, false), true, vec4<f32>(765f, -211f, -2077f, 116f), -577f), Struct_2(Struct_1(true, true), true, vec4<f32>(-590f, 954f, -237f, -1086f), 880f), Struct_2(Struct_1(false, true), true, vec4<f32>(-1000f, -1809f, 185f, -1509f), 197f), Struct_2(Struct_1(false, true), false, vec4<f32>(-1000f, -622f, 1663f, -1016f), 1048f), Struct_2(Struct_1(false, false), false, vec4<f32>(-100f, -264f, 1062f, -748f), 328f), Struct_2(Struct_1(true, false), true, vec4<f32>(-904f, 1000f, 1216f, -871f), 1166f), Struct_2(Struct_1(true, false), false, vec4<f32>(101f, 1091f, -1000f, 1000f), 303f), Struct_2(Struct_1(false, false), true, vec4<f32>(-1543f, 627f, 373f, -242f), -1638f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.d, -1173f)), arg_0.d) + 2306f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-118f + arg_0.c.x))) * _wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(trunc(-394f)))))));
    var var_1 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 12u)], u_input.b.x), 12u)], 11u)];
    global2 = array<Struct_2, 11>();
    var var_2 = vec2<i32>(1i, 1i & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, -2147483647i, -7580i)), firstLeadingBit(~vec3<i32>(2147483647i, 19268i, 0i))));
    var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], 12u)]), u_input.b.ww), ~u_input.b.wy >> (firstTrailingBit(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)])) % vec2<u32>(32u))) | (~global1[_wgslsmith_index_u32(39778u, 12u)] ^ u_input.b.x)), 18u)];
    return _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_2.x, var_2.x) ^ countOneBits(vec2<i32>(0i, var_2.x))) & vec2<i32>(_wgslsmith_mult_i32(-23443i, -1i << (global1[_wgslsmith_index_u32(u_input.b.x, 12u)] % 32u)), 1i), ~(~(-vec2<i32>(16726i, 1i))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = (_wgslsmith_div_vec4_i32(vec4<i32>(21794i, _wgslsmith_mod_i32(-1i, -1i), 1i, 28581i), abs(-vec4<i32>(-1i, -3922i, -1i, 2147483647i))) & ~((vec4<i32>(0i, 36278i, 1i, 19448i) << (vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 12u)], 7247u, 34259u) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)))) << (u_input.b % vec4<u32>(32u));
    let var_1 = 789f;
    var var_2 = _wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(trunc(-134f)));
    let var_3 = Struct_4(global2[_wgslsmith_index_u32(~u_input.b.x & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44564u, 12u)], 12u)], 11u)], vec3<u32>(~select(u_input.a, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), true), ~u_input.a, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 12u)]), 12u)], ~global1[_wgslsmith_index_u32(~86277u, 12u)])), _wgslsmith_f_op_f32(688f + var_1), vec4<i32>(_wgslsmith_mod_i32(select(_wgslsmith_clamp_i32(var_0.x, 27845i, var_0.x), var_0.x, false), var_0.x), var_0.x, func_3(global2[_wgslsmith_index_u32(~4294967295u, 11u)]), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(25491i, 49510i, 10014i, -103136i), min(vec4<i32>(-1i, var_0.x, -10907i, 27389i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), reverseBits(~vec4<i32>(var_0.x, var_0.x, 0i, var_0.x)))));
    global2 = array<Struct_2, 11>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a.c + _wgslsmith_f_op_vec4_f32(max(arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-350f, arg_0.c.x, var_1, 529f), vec4<f32>(var_1, 670f, -380f, -1000f), vec4<bool>(arg_0.b, true, var_3.a.a.b, true))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.c.x, -729f, -1583f, -712f), var_3.a.c))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_3.a.c - vec4<f32>(906f, _wgslsmith_div_f32(-2133f, var_1), _wgslsmith_f_op_f32(trunc(-1351f)), _wgslsmith_f_op_f32(arg_0.d - arg_0.d))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<Struct_2, 18>();
    let var_0 = false;
    var var_1 = Struct_2(arg_1, var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 391f, arg_0, -540f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec3<u32>(1u, 50552u, u_input.b.x))))) * vec4<f32>(_wgslsmith_f_op_f32(select(1099f, arg_0, !var_0)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0)), -2609f);
    let var_2 = Struct_1(!arg_1.a, false);
    var var_3 = !select(vec2<bool>(select(true, var_0, var_0 & var_1.a.a), all(!vec4<bool>(false, true, arg_1.b, false))), select(!(!vec2<bool>(true, var_1.b)), vec2<bool>(true, true), arg_1.b), vec2<bool>(false, all(!vec2<bool>(var_1.b, var_2.a))));
    return vec3<bool>(var_2.b, any(vec2<bool>(select(select(var_0, false, true), var_0, any(vec3<bool>(arg_1.a, false, arg_1.a))), any(!vec2<bool>(var_1.a.a, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 12>();
    global0 = array<Struct_2, 18>();
    global1 = array<u32, 12>();
    let var_0 = firstTrailingBit(firstTrailingBit(abs(~_wgslsmith_mod_vec3_u32(u_input.b.wzx, u_input.b.zxy))));
    let var_1 = vec2<bool>(true, select(!any(vec4<bool>(true, true, true, true)), any(!func_1(-1000f, Struct_1(false, false))), all(!func_1(-2051f, Struct_1(false, true)))));
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2246f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1036f, -252f), _wgslsmith_f_op_f32(abs(802f)))))), Struct_1(func_1(_wgslsmith_f_op_f32(min(-640f, 1471f)), Struct_1(false, false)).x && all(var_1), var_1.x));
    var var_3 = Struct_1(!func_1(1f, Struct_1(true || var_1.x, all(vec3<bool>(var_1.x, var_2.x, false)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2158f), 1f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-151f - -490f)))) >= -1207f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(438f, 1665f, 165f, -1166f), _wgslsmith_div_vec4_f32(vec4<f32>(906f, 300f, -984f, -118f), vec4<f32>(-1387f, -1026f, 712f, 1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, -725f, -119f, -315f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2610f, 412f, -464f, -1396f), vec4<f32>(-1902f, 607f, -544f, -1000f)) * vec4<f32>(-1000f, -1011f, 659f, -118f)))), -countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, 775f, -409f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1170f, _wgslsmith_f_op_f32(1440f - -520f), _wgslsmith_div_f32(1366f, 269f)))), vec3<bool>(var_2.x, any(vec4<bool>(true, false, var_1.x, true)), true))));
}

