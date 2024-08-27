struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 89680u);

var<private> global1: array<f32, 2> = array<f32, 2>(1537f, 1000f);

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: array<bool, 2> = array<bool, 2>(false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = Struct_1(vec2<u32>(abs(global0.x), 0u));
    var var_1 = 333f;
    var var_2 = _wgslsmith_f_op_f32(-arg_0);
    let var_3 = var_0;
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(425f * _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_4.a.x, 2u)]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global3 = array<bool, 2>();
    global0 = select(~(~(~vec3<u32>(4294967295u, u_input.a.x, 46298u) & ~vec3<u32>(arg_1.a.x, global0.x, global0.x))), _wgslsmith_add_vec3_u32(~(~(~u_input.a.yxw)), ~vec3<u32>(_wgslsmith_mult_u32(1u, 1u), ~1u, ~1u)), any(select(!(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 2u)], false, global3[_wgslsmith_index_u32(4294967295u, 2u)])), !vec3<bool>(global3[_wgslsmith_index_u32(arg_2.x, 2u)], false, global3[_wgslsmith_index_u32(global0.x, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(~arg_1.a.x, 2u)], !global3[_wgslsmith_index_u32(4294967295u, 2u)], all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global0.x, 2u)], true))))));
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, 1208u), reverseBits(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)))), global0.x, arg_1.a.x);
    global1 = array<f32, 2>();
    global0 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(~7024u, arg_2.x) >> (~(u_input.a.x | var_0.x) % 32u)), _wgslsmith_mult_u32(countOneBits(1u), 21313u), var_0.x);
    return 705f;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_u32(global0.x, arg_1);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(29470u, 2u)]), ~u_input.a.x, ~1u)) * 332f), _wgslsmith_div_f32(978f, -746f)), vec2<f32>(_wgslsmith_f_op_f32(func_3(-_wgslsmith_mod_vec4_i32(vec4<i32>(-17719i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -51758i)), Struct_1(~vec2<u32>(6742u, arg_1)), min(u_input.a | u_input.a, u_input.a))), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global0.x, 2u)])))));
    global1 = array<f32, 2>();
    global0 = ~vec3<u32>(41448u, var_0, _wgslsmith_dot_vec2_u32(min(reverseBits(global0.yz), vec2<u32>(4294967295u, 29039u)), vec2<u32>(global0.x, ~58698u)));
    let var_2 = ~vec4<u32>(1u, u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u ^ global0.x, u_input.a.x, 1u ^ u_input.a.x), 60006u), ~(~_wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(u_input.a.x, global0.x, var_0))));
    return vec2<u32>(4294967295u, var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-659f)) + _wgslsmith_f_op_f32(max(1000f, -713f))), global1[_wgslsmith_index_u32(0u, 2u)]) + global2[_wgslsmith_index_u32(~u_input.a.x, 18u)]);
    var var_1 = u_input.b;
    global0 = _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.a.wxx), ~_wgslsmith_mod_vec3_u32(~arg_0.a.wyz << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.x, 0u), vec3<u32>(arg_0.c, global0.x, 29033u), u_input.a.zwz) % vec3<u32>(32u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_2.a.x, arg_2.a.x), u_input.a.yxx), vec3<u32>(14990u, 36201u, 31474u), arg_0.e.zzx)));
    var var_2 = Struct_2(arg_0.a, Struct_1(global0.yz), ~4436u, 81253u, vec4<bool>(false, true, global3[_wgslsmith_index_u32(~global0.x, 2u)], arg_0.e.x));
    let var_3 = max(vec2<u32>(~(~(var_2.a.x ^ global0.x)), 0u), _wgslsmith_mod_vec2_u32(select(select(arg_2.a, countOneBits(arg_0.b.a), vec2<bool>(false, arg_0.e.x)), _wgslsmith_mod_vec2_u32(abs(arg_0.b.a), ~vec2<u32>(var_2.d, arg_0.d)), abs(arg_1) <= reverseBits(-11783i)), vec2<u32>(_wgslsmith_mod_u32(var_2.b.a.x, _wgslsmith_sub_u32(u_input.a.x, 23695u)), 1u)));
    return Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 54335u), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(0u, arg_0.b.a.x)), ~(arg_2.a.x & 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(u_input.a, Struct_1(abs(func_1(vec4<bool>(global3[_wgslsmith_index_u32(40641u, 2u)], global3[_wgslsmith_index_u32(28451u, 2u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), 0u))), _wgslsmith_clamp_u32(reverseBits(countOneBits(72528u)), u_input.a.x & _wgslsmith_sub_u32(0u, u_input.a.x), ~global0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global0.x, global0.x, 0u), u_input.a), ~u_input.a) << (_wgslsmith_add_u32(~global0.x, global0.x) % 32u), vec4<bool>(global3[_wgslsmith_index_u32(~global0.x, 2u)], select(global3[_wgslsmith_index_u32(~u_input.a.x, 2u)], u_input.b <= u_input.b, true), true, true)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(abs(u_input.b), -u_input.b, -2147483647i)), Struct_1((vec2<u32>(4294967295u, 12564u) << (vec2<u32>(21571u, global0.x) % vec2<u32>(32u))) ^ select(vec2<u32>(4294967295u, u_input.a.x), ~u_input.a.zx, select(vec2<bool>(global3[_wgslsmith_index_u32(global0.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(1377u, 2u)]), vec2<bool>(false, false)))));
    global2 = array<vec2<f32>, 18>();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -34033i, 4856i), ~vec3<i32>(u_input.b, u_input.b, 13826i)) << (~global0.x % 32u), reverseBits(u_input.b)) << (~u_input.a.x % 32u);
    var var_2 = vec2<u32>(~(global0.x >> (~(38695u | global0.x) % 32u)), ~(u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global0.x, global0.x)) % 32u)));
    var var_3 = true;
    var_2 = var_0.a;
    var_3 = all(vec4<bool>((global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_0.a.x, 4294967295u, var_2.x), u_input.a), 2u)] > 1572f) | ((true && global3[_wgslsmith_index_u32(22444u, 2u)]) || false), all(select(!vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 2u)], false), select(vec2<bool>(false, false), vec2<bool>(false, global3[_wgslsmith_index_u32(36389u, 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_0.a.x, 2u)], false)))), global3[_wgslsmith_index_u32(~0u, 2u)], global3[_wgslsmith_index_u32(25754u, 2u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(75264u, _wgslsmith_dot_vec4_u32(vec4<u32>(49276u, var_2.x, 16942u, u_input.a.x), vec4<u32>(var_2.x, 11871u, var_0.a.x, 4294967295u)))) ^ 26701u, -max(vec3<i32>(-16324i, ~(-29012i), firstLeadingBit(1i)), vec3<i32>(firstTrailingBit(1i), u_input.b, i32(-1i) * -1i)));
}

