struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15>;

var<private> global1: array<u32, 23> = array<u32, 23>(4294967295u, 27363u, 46958u, 42204u, 39007u, 0u, 46131u, 1u, 4294967295u, 10871u, 12765u, 0u, 35647u, 0u, 14118u, 28849u, 30232u, 4387u, 4796u, 132588u, 32389u, 1u, 46858u);

var<private> global2: array<u32, 7> = array<u32, 7>(0u, 0u, 297u, 7794u, 1u, 28629u, 0u);

var<private> global3: array<i32, 5> = array<i32, 5>(-1i, -15093i, -13520i, i32(-2147483648), i32(-2147483648));

var<private> global4: vec2<f32> = vec2<f32>(884f, 397f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(~6734i, 1i), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(firstTrailingBit(0u >> (global2[_wgslsmith_index_u32(1u, 7u)] % 32u)), 5u)], _wgslsmith_dot_vec2_i32(vec2<i32>(2993i, 2147483647i), -vec2<i32>(1i, u_input.d.x)), 2147483647i));
    global2 = array<u32, 7>();
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global4.x + -138f)))));
    var_0 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 42045u), countOneBits(select(u_input.c.zy, vec2<u32>(13530u, global2[_wgslsmith_index_u32(0u, 7u)]), true))), vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43573u, 23u)], 23u)], 32149u) & 1u, 23u)], 23u)], _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b, abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17581u, 23u)], 23u)], 7u)], 7u)])), 1802u))), 7u)], 5u)];
    var var_1 = false;
    return max(~abs(61230u), 4294967295u);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(~vec2<u32>(func_3(), reverseBits(~41129u)), global4.x, vec4<bool>(any(vec4<bool>(true, true, false, true)), ((global2[_wgslsmith_index_u32(975u, 7u)] & global1[_wgslsmith_index_u32(4294967295u, 23u)]) & 278u) < global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u << (global2[_wgslsmith_index_u32(u_input.b, 7u)] % 32u), 110968u), 7u)], true, select(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), true, true && any(global0[_wgslsmith_index_u32(2379u, 15u)]))));
    return Struct_2(reverseBits(u_input.d), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1710f) - vec2<f32>(-1073f, global4.x))))), firstTrailingBit(vec3<i32>(-1i, 1i, _wgslsmith_add_i32(0i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38972u, 23u)], 5u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1187f, -346f))))), _wgslsmith_f_op_f32(global4.x * 420f), vec4<bool>(any(var_0.c.wy), false, var_0.c.x, var_0.c.x & var_0.c.x)), -1i, !select(select(var_0.c.zw, select(var_0.c.yz, var_0.c.wx, var_0.c.x), true), vec2<bool>(all(var_0.c.zxx), var_0.c.x), true), 2147483647i);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.x)));
    var var_1 = u_input.d;
    var var_2 = 10690i;
    global1 = array<u32, 23>();
    global1 = array<u32, 23>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1965f * _wgslsmith_f_op_f32(floor(1237f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-959f)) - 822f), -555f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1190f) * 418f), _wgslsmith_div_u32(4294967295u, 1u) > global2[_wgslsmith_index_u32(~abs(0u), 7u)]));
    var var_1 = -select(-abs(2147483647i), u_input.d.x, true);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), -394f), ~(~u_input.d.zzz), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1340f, var_0)))), -701f, _wgslsmith_div_f32(var_0, var_0)), var_0, !select(select(!global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(119277u, 7u)], 15u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(5182u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21256u, 7u)], 23u)]), 15u)], false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~52552u, 38999u, 35257u), 15u)], vec4<bool>(any(global0[_wgslsmith_index_u32(0u, 15u)]), any(vec2<bool>(true, true)), any(vec2<bool>(false, false)), true)));
    var var_3 = !((var_0 == 1701f) == all(vec4<bool>(all(var_2.e.zyz), var_2.e.x, any(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 15u)]), true)));
    let var_4 = func_1(Struct_2(~(~(~u_input.d)), var_2, u_input.d.x, !var_2.e.ww, _wgslsmith_div_i32(u_input.d.x, ~(~global3[_wgslsmith_index_u32(40953u, 5u)]))));
    var var_5 = Struct_2(reverseBits(var_4.a) << (_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47056u, 23u)], 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], 0u, 0u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(16583u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], 7256u, 64878u), vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(29617u, 7u)], u_input.b, 29607u), var_2.e), ~vec4<u32>(1166u, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 23u)], global2[_wgslsmith_index_u32(0u, 7u)])), ~(~vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], 23u)], 7u)], global2[_wgslsmith_index_u32(0u, 7u)], 1u))) % vec4<u32>(32u)), Struct_1(vec2<f32>(-302f, _wgslsmith_div_f32(-1714f, var_4.b.d)), vec3<i32>(34037i, var_4.b.b.x, u_input.d.x), _wgslsmith_div_vec3_f32(var_4.b.c, vec3<f32>(var_0, _wgslsmith_f_op_f32(abs(-566f)), var_2.d)), -1214f, func_1(func_2()).b.e), u_input.a, vec2<bool>(false, var_2.e.x), abs(-abs(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_4).b.b.x, abs(max(4294967295u, 76664u)));
}

