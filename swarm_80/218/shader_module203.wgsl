struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: bool;

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec4<i32>, 19>();
    global0 = ~1499i;
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 19u)] << (vec4<u32>(arg_2.c, ~_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), ~1u, ~(u_input.c.x >> (0u % 32u)) | 1u) % vec4<u32>(32u));
    var var_1 = Struct_2(Struct_1(-1593f, arg_3.x, 0u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-764f * arg_2.a), _wgslsmith_f_op_f32(arg_3.x - -2329f)))), arg_3.x), arg_2, Struct_1(_wgslsmith_f_op_f32(max(525f, arg_2.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f), 303f))), arg_2.c));
    let var_2 = (!(!(-343f > arg_3.x)) != all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)))) || select(-601f >= _wgslsmith_f_op_f32(-695f + var_1.b.x), reverseBits(firstTrailingBit(16386u)) > _wgslsmith_mult_u32(u_input.c.x, firstLeadingBit(1u)), true);
    return ~_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(218u, 1u), ~1367u, 1u, ~14329u), vec4<u32>(25962u, abs(1u), countOneBits(~u_input.b), u_input.c.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    global2 = any(!vec3<bool>(true, _wgslsmith_f_op_f32(abs(arg_2.b)) <= _wgslsmith_f_op_f32(f32(-1f) * -568f), false));
    global3 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, global3.x, 26793i) | u_input.d.x, 1i, firstTrailingBit(2147483647i ^ arg_0), ~(u_input.d.x << (4294967295u % 32u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.c.c, u_input.c.x, 4294967295u, 111505u)), vec4<u32>(arg_1.c.c, 14211u, 1u, 0u) | min(vec4<u32>(arg_1.c.c, 9211u, 18718u, 36274u), vec4<u32>(33727u, arg_2.c, 42164u, 9744u))), 19u)], !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true))), -vec4<i32>(i32(-1i) * -8570i, abs(-28698i), -10950i, ~arg_0) << (~select(vec4<u32>(1u, arg_2.c, u_input.c.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(22175u, u_input.b, 4294967295u, arg_1.d.c), vec4<u32>(19646u, 0u, u_input.c.x, 20072u), vec4<u32>(arg_2.c, u_input.c.x, u_input.b, 0u)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))) % vec4<u32>(32u)));
    var var_0 = arg_1;
    global2 = ~var_0.c.c <= min(0u, var_0.c.c);
    var var_1 = Struct_4(firstLeadingBit(reverseBits(firstLeadingBit(~u_input.c))), !vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true, true, firstLeadingBit(u_input.a.x) > min(arg_0, 2147483647i)));
    return ~(vec4<u32>(~_wgslsmith_sub_u32(0u, var_1.a.x), ~select(arg_1.d.c, 52702u, false), ~(~0u), ~23884u) << (~(~vec4<u32>(71u, 12812u, arg_1.c.c, var_0.d.c)) % vec4<u32>(32u)));
}

fn func_2() -> u32 {
    var var_0 = 27648u;
    var var_1 = func_4(global3.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) + 1365f), func_3(-u_input.a.x, u_input.d, Struct_1(-1141f, -989f, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(576f, 608f, -1566f, -319f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1197f)), Struct_1(_wgslsmith_f_op_f32(1352f - _wgslsmith_f_op_f32(-617f * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-290f)), -433f, true)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(84506u, 1u), _wgslsmith_mult_u32(0u, u_input.b))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f - 618f) * _wgslsmith_f_op_f32(503f + -759f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-652f - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1741f)), _wgslsmith_sub_u32(~18673u, 0u))), Struct_1(-1016f, 394f, 0u >> (u_input.c.x % 32u)));
    global1 = array<vec4<i32>, 19>();
    var var_2 = !select(vec4<bool>(all(vec3<bool>(true, false, true)), true, !any(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false))), !vec4<bool>(true, u_input.a.x > global3.x, any(vec3<bool>(false, true, true)), true), select(vec4<bool>(true, all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, select(true, false, true), true, true)));
    let var_3 = Struct_2(Struct_1(-175f, 1503f, ~countOneBits(_wgslsmith_add_u32(var_1.x, var_1.x))), vec2<f32>(-854f, _wgslsmith_f_op_f32(min(-512f, _wgslsmith_f_op_f32(f32(-1f) * -1192f)))), Struct_1(1f, 1f, ~25184u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2281f, 507f, var_2.x)))), _wgslsmith_f_op_f32(631f * _wgslsmith_f_op_f32(step(-1802f, -1282f))), u_input.b));
    return _wgslsmith_dot_vec2_u32(firstTrailingBit(max(var_1.wy, ~abs(vec2<u32>(63402u, var_3.d.c)))), ~(~select(abs(var_1.yx), _wgslsmith_clamp_vec2_u32(vec2<u32>(5848u, var_3.d.c), vec2<u32>(43169u, 96944u), u_input.c), var_2.wy)));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(global3.x), u_input.a.x, -2147483647i), global3.x | max(global3.x, arg_1), -1i);
    let var_2 = 1u;
    let var_3 = Struct_3(true, Struct_1(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(abs(1034f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1715f - -426f) - -2005f), arg_0.b.a), 1u));
    global0 = 2827i;
    return Struct_4(reverseBits(u_input.c), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_3.a, false, false), arg_0.a), !vec4<bool>(false, var_3.a, false, var_3.a), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(false, Struct_1(-515f, -1449f, ~(~1u))), -26407i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-353f, 291f, 439f))))));
    let var_1 = Struct_4(var_0.a, !var_0.b);
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.d, ~u_input.a.yz);
    let var_3 = vec4<u32>(var_0.a.x, select(u_input.b, _wgslsmith_mod_u32(4294967295u, ~(var_0.a.x ^ 35918u)), var_1.b.x), ~max(~(~var_0.a.x), var_0.a.x), 6116u);
    global2 = false;
    global3 = min(firstLeadingBit(-global1[_wgslsmith_index_u32(0u, 19u)]), reverseBits(global1[_wgslsmith_index_u32(u_input.b, 19u)]) ^ ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(var_3.x, 19u)], vec4<i32>(global3.x, global3.x, global3.x, u_input.d.x)), vec4<i32>(global3.x, global3.x, var_2, 1i) | global1[_wgslsmith_index_u32(u_input.c.x, 19u)]));
    var var_4 = Struct_3(false, Struct_1(445f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1655f, 566f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2000f * -790f), -773f))), var_0.a.x));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.a, 211f, -1239f, -1847f), vec4<f32>(1554f, -2449f, var_4.b.b, var_4.b.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.a, var_4.b.a, 1155f, -1224f) * vec4<f32>(var_4.b.b, -401f, var_4.b.b, -404f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.a, var_4.b.b, -3315f, var_4.b.b)) + vec4<f32>(1407f, var_4.b.b, -411f, var_4.b.b))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1076f), var_4.b.b)), var_4.b.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-668f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_4.b.a, var_4.b.a)), _wgslsmith_f_op_f32(abs(-2378f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 1u, _wgslsmith_mult_u32(4294967295u, countOneBits(1u)));
}

