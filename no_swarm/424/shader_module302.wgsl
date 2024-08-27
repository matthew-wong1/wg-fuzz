struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: u32 = 4294967295u;

var<private> global2: vec4<f32> = vec4<f32>(178f, -1055f, 2062f, -790f);

var<private> global3: array<u32, 31>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = min(vec2<i32>(u_input.a, u_input.a), firstTrailingBit(vec2<i32>(22114i, u_input.a))) ^ -(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(30154i, -2147483647i), vec2<i32>(u_input.a, -1i)));
    global3 = array<u32, 31>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-407f, global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * global2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, global2.x, global2.x)));
    global1 = ~u_input.b;
    var var_1 = ~min(-vec4<i32>(~var_0.x, u_input.a, u_input.a, max(0i, 2147483647i)), max(-(~vec4<i32>(-44126i, 1i, var_0.x, -20990i)), select(max(vec4<i32>(u_input.a, 0i, 3629i, 5043i), vec4<i32>(var_0.x, -2147483647i, -1i, 2147483647i)), vec4<i32>(u_input.a, 16344i, var_0.x, var_0.x), true)));
    return any(select(select(vec4<bool>(322f < global2.x, true, true, any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), select(false, true, true)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global2.x;
    let var_1 = func_3();
    var var_2 = ~39471u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-440f)))) + global2.x);
    global1 = firstTrailingBit(firstLeadingBit(firstTrailingBit(u_input.b))) ^ arg_0.x;
    return Struct_1(global2.yx, global2.zz, max(arg_0, select(arg_0, vec4<u32>(~0u, 1u, ~u_input.b, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 31u)], arg_0.x)), var_1)), !(!vec2<bool>(all(vec3<bool>(var_1, var_1, false)), var_1)), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(0i, u_input.a) ^ abs(vec2<i32>(u_input.a, 14162i))));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1u, 88868u, 44863u) ^ vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(120024u, 31u)], 31u)], 1u, 4294967295u), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, arg_0, 56282u), vec4<u32>(u_input.b, 21379u, global3[_wgslsmith_index_u32(0u, 31u)], u_input.b)), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], 4294967295u, arg_0, 1u))) >> (~vec4<u32>(~1u, ~global3[_wgslsmith_index_u32(arg_0, 31u)], 50239u, 4294967295u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(140f, var_0.b.x), _wgslsmith_f_op_vec2_f32(select(global2.xy, vec2<f32>(706f, global2.x), true)))))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(var_0.c.x, 4294967295u, u_input.b), select(vec3<u32>(var_0.c.x, var_0.c.x, 0u), var_0.c.wyz, false), !vec3<bool>(false, var_0.d.x, false)), select(var_0.c.xzy, var_0.c.ywy, vec3<bool>(var_0.d.x, false, false)) << (_wgslsmith_add_vec3_u32(var_0.c.wyw, vec3<u32>(global3[_wgslsmith_index_u32(var_0.c.x, 31u)], 47005u, arg_0)) % vec3<u32>(32u))) & var_0.c.wyy, var_0.c.yzw), 22u)];
    global0 = array<Struct_1, 22>();
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x * 556f), _wgslsmith_f_op_f32(-var_1.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), 610f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.b, ~(~_wgslsmith_div_u32(firstLeadingBit(4294967295u), _wgslsmith_add_u32(u_input.b, 12123u))));
    global3 = array<u32, 31>();
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global2.xz)))), _wgslsmith_f_op_vec2_f32(func_1(27149u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(4294967295u)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) + _wgslsmith_f_op_f32(max(global2.x, -1711f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))))), select(vec4<u32>(countOneBits(33616u), ~45460u, var_0.x, _wgslsmith_sub_u32(u_input.b, global3[_wgslsmith_index_u32(var_0.x, 31u)])) | ~min(vec4<u32>(var_0.x, u_input.b, 1u, global3[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<u32>(64977u, 4294967295u, 17524u, 32760u)), vec4<u32>(~(~2715u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(var_0.x, 31u)] | 0u), 31u)], 31u)], u_input.b, reverseBits(abs(var_0.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), u_input.a < 14341i), global2.x != global2.x)), !func_2(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, u_input.b, global3[_wgslsmith_index_u32(var_0.x, 31u)], var_0.x)), vec4<u32>(4294967295u, u_input.b, 4294967295u, 38575u))).d, ~vec2<i32>(~1i, countOneBits(u_input.a) | _wgslsmith_mod_i32(u_input.a, u_input.a)));
    var var_2 = min(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_1.e << (_wgslsmith_sub_vec2_u32(var_1.c.zz, var_0) % vec2<u32>(32u)), (var_1.e << (vec2<u32>(97191u, u_input.b) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(var_1.e, vec2<i32>(u_input.a, var_1.e.x))), func_2(var_1.c).e), ~(-var_1.e));
    var_1 = global0[_wgslsmith_index_u32(u_input.b, 22u)];
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1042f, var_1.b.x, 405f, var_1.a.x), vec4<f32>(-299f, -328f, 1019f, global2.x), var_1.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1069f, var_1.a.x, global2.x, 1042f)))), any(vec2<bool>(true, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, var_1.b.x, var_1.a.x, var_1.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, global2.x, var_1.a.x, global2.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, global2.x, 545f, 277f), vec4<f32>(1310f, -1061f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(930f, global2.x, -1315f, var_1.b.x) * vec4<f32>(global2.x, var_1.b.x, -476f, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) + 1209f), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-451f - global2.x)), !(!var_1.d.x))), _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(abs(320f))));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -(u_input.a << (u_input.b % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-27987i, var_1.e.x, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -55507i, 48666i), vec3<i32>(var_2.x, u_input.a, u_input.a)))), vec3<i32>(countOneBits(-46043i), -var_1.e.x, ~40533i)));
    let var_4 = ~max(4294967295u, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(func_2(var_1.c).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1724f))))), ~var_1.c.x, max(-var_3.x, -5645i), vec3<i32>(-var_2.x, u_input.a, _wgslsmith_sub_i32(~var_1.e.x, u_input.a)), -570f);
}

