struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 42399u, 46266u, 1u);

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<u32>(0u, 10469u, 21672u), vec4<f32>(-811f, 1018f, 1220f, 281f), vec3<u32>(0u, 61599u, 0u), 1473f, Struct_1(vec4<bool>(false, true, false, false), -297f, vec3<f32>(107f, 356f, 1000f), vec3<i32>(-26541i, 2147483647i, i32(-2147483648)))), Struct_1(vec4<bool>(true, true, true, false), 539f, vec3<f32>(-1000f, 1000f, 734f), vec3<i32>(-32057i, -1i, 37881i)));

var<private> global3: array<i32, 13>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(250f, _wgslsmith_f_op_f32(-global2.b.b)), _wgslsmith_f_op_f32(global2.b.b - _wgslsmith_f_op_f32(arg_1.b.x + global2.a.d)))) - global2.b.b));
    global1 = vec4<u32>(u_input.b.x, 1u, 4294967295u >> (~(~(~u_input.b.x)) % 32u), max(_wgslsmith_sub_u32(82283u, ~4294967295u), _wgslsmith_sub_u32(4294967295u, 24873u)));
    global0 = array<bool, 20>();
    var var_1 = arg_1;
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(1u, global2.a.c.x), global1.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c.x, var_1.c.x, 0u), global2.a.a)) & ~45501u;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = u_input.b.x;
    var var_1 = all(vec3<bool>(global2.b.a.x, true, true));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global2.a.e.d.x << (86833u % 32u), -24370i), global3[_wgslsmith_index_u32(~func_3(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 13u)], -29464i, global2.a.e.d.x), global2.a), 13u)], reverseBits(global3[_wgslsmith_index_u32(16345u, 13u)]) ^ firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global2.a.c, ~vec3<u32>(11844u, 0u, global2.a.c.x)), 13u)]), _wgslsmith_mult_vec4_i32(min(vec4<i32>(-84539i, global2.a.e.d.x, global3[_wgslsmith_index_u32(global2.a.a.x, 13u)], global3[_wgslsmith_index_u32(global2.a.c.x, 13u)]), -vec4<i32>(global3[_wgslsmith_index_u32(16331u, 13u)], u_input.a.x, global3[_wgslsmith_index_u32(114434u, 13u)], u_input.c)), ~(-vec4<i32>(-1i, -1i, -29424i, -15626i)))) << (vec4<u32>(1u, 1u, ~12840u, ~(~4294967295u)) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), arg_1.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(-1993f, _wgslsmith_f_op_f32(global2.b.b - 906f), global2.a.e.a.x)), global2.b.b) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(global2.a.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.b, 406f, 1000f, global2.a.d))))) * global2.a.b);
    let var_4 = global2.b.a.x;
    return Struct_4(Struct_1(select(!vec4<bool>(true, arg_2.x, arg_2.x, false), !(!global2.b.a), !select(global2.a.e.a, vec4<bool>(true, true, arg_2.x, global0[_wgslsmith_index_u32(7691u, 20u)]), vec4<bool>(false, true, false, global2.b.a.x))), 1644f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1306f, arg_0, 459f)))), var_3.xyx)), u_input.a), _wgslsmith_add_i32(global2.b.d.x, var_2.x | var_2.x), _wgslsmith_dot_vec2_u32(global1.yy, abs(reverseBits(min(vec2<u32>(global2.a.a.x, 19937u), u_input.b)))), global2.a.e, global2.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = func_2(654f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global2.a.b.xw), vec2<f32>(global2.a.b.x, -601f))), select(vec2<bool>(any(!global2.a.e.a.zw), all(!arg_0)), arg_0.yz, vec2<bool>(true, true)));
    global0 = array<bool, 20>();
    global1 = _wgslsmith_sub_vec4_u32(countOneBits(~(~vec4<u32>(u_input.b.x, u_input.b.x, 84138u, 13138u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(global2.a.c.x, firstTrailingBit(34840u), _wgslsmith_mult_u32(global1.x, 0u), _wgslsmith_mult_u32(0u, 100976u)), vec4<u32>(u_input.b.x, ~1u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u), vec4<bool>(any(vec3<bool>(true, arg_0.x, global2.b.a.x)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.c, 20u)], global2.b.a.x)), global2.a.e.a.x, true)), _wgslsmith_mult_vec4_u32(~vec4<u32>(28689u, u_input.b.x, 1u, 34351u), reverseBits(vec4<u32>(1u, var_0.c, 220u, var_0.c))) & abs(vec4<u32>(42322u, global1.x, global1.x, var_0.c) ^ vec4<u32>(global1.x, 3513u, u_input.b.x, 22417u))));
    global1 = vec4<u32>(select(~var_0.c, 4294967295u, any(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true)))), firstLeadingBit(global2.a.c.x), abs(~4294967295u), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(4294967295u & global2.a.c.x, global2.a.a.x & 102678u), ~reverseBits(abs(global1.x))));
    global1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c, global2.a.a.x) | ~global1.wx, max(~global2.a.a.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, global2.a.c.x), vec2<u32>(var_0.c, global2.a.a.x)))), vec2<u32>(global1.x, var_0.c)), 0u, ~(~90168u), select(~4294967295u, global2.a.a.x, global0[_wgslsmith_index_u32(~(~0u | (0u | global1.x)), 20u)]));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global2.b.c, var_0.e.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1094f, -935f, global2.b.b)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.a.b.zwy)))), !(!global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))), u_input.a.x, var_0.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_mod_i32(2147483647i, 51633i), 40388i, u_input.a.x << (8844u % 32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.d.x, global2.b.d.x, 1i, global2.b.d.x), vec4<i32>(var_0.d.d.x, global2.b.d.x, -22738i, 19157i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<bool>(false | global0[_wgslsmith_index_u32(0u, 20u)], true, false && global2.a.e.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(global2.a.b.x)), -1397f, _wgslsmith_f_op_f32(f32(-1f) * -1326f), _wgslsmith_f_op_f32(-global2.a.e.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-224f, -2255f, -119f, global2.b.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(488f, 384f, 343f, global2.a.b.x) - vec4<f32>(591f, global2.b.c.x, -1795f, global2.b.c.x)))))));
}

