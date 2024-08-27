struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<bool, 21>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(true, Struct_1(true)), Struct_2(true, Struct_1(true)), Struct_2(false, Struct_1(true)), Struct_2(false, Struct_1(false)), Struct_2(true, Struct_1(true)), Struct_2(true, Struct_1(true)), Struct_2(true, Struct_1(true)), Struct_2(false, Struct_1(true)), Struct_2(true, Struct_1(true)), Struct_2(true, Struct_1(true)), Struct_2(true, Struct_1(false)), Struct_2(false, Struct_1(true)), Struct_2(false, Struct_1(true)), Struct_2(true, Struct_1(false)), Struct_2(false, Struct_1(true)), Struct_2(false, Struct_1(false)), Struct_2(false, Struct_1(true)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    let var_0 = arg_1.b;
    var var_1 = select(~(~u_input.a.zz), _wgslsmith_clamp_vec2_u32(vec2<u32>(~reverseBits(u_input.b), 4294967295u), _wgslsmith_add_vec2_u32(u_input.a.zy ^ (vec2<u32>(1u, 4294967295u) >> (u_input.a.zy % vec2<u32>(32u))), vec2<u32>(u_input.b, arg_3) >> (u_input.a.xy % vec2<u32>(32u))), ~vec2<u32>(~arg_3, _wgslsmith_add_u32(u_input.b, u_input.b))), true);
    let var_2 = select(select(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], var_0.a, true, false), vec4<bool>(true, true, true, arg_2.b.a), true)), vec4<bool>(global0[_wgslsmith_index_u32(18294u, 21u)] >= _wgslsmith_f_op_f32(f32(-1f) * -1192f), false, false, global1[_wgslsmith_index_u32(4002u, 21u)] && false), vec4<bool>(var_0.a & true, _wgslsmith_f_op_f32(round(-1035f)) <= global0[_wgslsmith_index_u32(min(72448u, 1u), 21u)], true, global1[_wgslsmith_index_u32(firstTrailingBit(18u) >> (24552u % 32u), 21u)])), vec4<bool>(true, var_0.a, true, any(!select(vec2<bool>(arg_1.a, arg_2.b.a), vec2<bool>(false, true), vec2<bool>(false, arg_1.b.a)))), arg_1.a);
    var var_3 = abs(-(~vec4<i32>(_wgslsmith_clamp_i32(arg_0, -27487i, arg_0), _wgslsmith_mult_i32(59507i, arg_0), -arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, arg_0), vec3<i32>(1i, arg_0, 41906i)))));
    global2 = var_0;
    return _wgslsmith_add_vec4_u32(firstLeadingBit(abs(vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.x), u_input.a.zz), arg_3, u_input.a.x << (u_input.a.x % 32u)))), min(reverseBits(~(~vec4<u32>(0u, 0u, var_1.x, 1u))), vec4<u32>(~arg_3 << (_wgslsmith_add_u32(var_1.x, var_1.x) % 32u), ~0u, ~(~var_1.x), _wgslsmith_div_u32(1u, 51866u >> (u_input.a.x % 32u)))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 17u)];
    var var_1 = var_0.b;
    global2 = var_0.b;
    let var_2 = vec4<u32>(abs(4294967295u), u_input.a.x, 14900u, u_input.b) >> (max(vec4<u32>(u_input.a.x | abs(4294967295u), 1u, u_input.b, u_input.b), select(_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.a.x, 0u, 4294967295u, 59107u), vec4<u32>(1u, u_input.b, 0u, u_input.a.x)), func_3(-8631i, Struct_2(true, var_0.b), Struct_2(var_1.a, Struct_1(false)), u_input.b)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 0u), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(var_1.a, true, true, global2.a)))) % vec4<u32>(32u));
    global0 = array<f32, 21>();
    return select(!select(select(vec4<bool>(true, global2.a, true, true), vec4<bool>(var_1.a, false, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), all(vec2<bool>(true, false))), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(11842u, 21u)], global1[_wgslsmith_index_u32(var_2.x, 21u)], false), select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global2.a, true, true), var_0.b.a), select(vec4<bool>(true, var_1.a, var_1.a, var_0.b.a), vec4<bool>(false, var_1.a, false, false), true)), !(!vec4<bool>(false, false, true, var_0.a))), !vec4<bool>(false, any(vec4<bool>(false, global2.a, false, global1[_wgslsmith_index_u32(13239u, 21u)])), !(!global1[_wgslsmith_index_u32(33124u, 21u)]), var_2.x < reverseBits(u_input.a.x)), var_0.a);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~min(_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(66486u, u_input.b, u_input.a.x, 26841u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 17884u))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 1u, arg_0, arg_0), reverseBits(vec4<u32>(arg_0, 25290u, 4294967295u, 4294967295u)))), abs(select(vec4<u32>(u_input.b, 14308u, 49523u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, arg_0, 33935u), vec4<bool>(false, true, global2.a, global2.a))) & vec4<u32>(2926u, 4294967295u, u_input.a.x, arg_0));
    let var_1 = func_2(vec3<i32>(-_wgslsmith_clamp_i32(~1639i, 1i, 8967i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -16933i), vec2<i32>(-1i, 1i)), 1i, any(vec2<bool>(global2.a, global2.a))) << (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(0i), 70493i, _wgslsmith_sub_i32(0i, -6631i)), select(vec3<i32>(-52754i, 2147483647i, 6822i), ~vec3<i32>(2147483647i, 6686i, 63401i), !global1[_wgslsmith_index_u32(31951u, 21u)]))));
    var var_2 = -(~vec2<i32>(max(abs(68725i), i32(-1i) * -23469i), ~1i >> (reverseBits(u_input.a.x) % 32u)));
    global3 = array<Struct_2, 17>();
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35343u, ~_wgslsmith_add_u32(var_0.x, 0u), select(4294967295u | arg_0, ~var_0.x, 51943u == var_0.x)), 21u)])));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(~4294967295u == ~abs(u_input.a.x), false, false), false, false, global1[_wgslsmith_index_u32(1u, 21u)]);
    let var_1 = vec2<bool>(var_0.x, true);
    let var_2 = func_1(4294967295u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1930f * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b, 21u)])))))) + _wgslsmith_f_op_f32(sign(-241f)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

