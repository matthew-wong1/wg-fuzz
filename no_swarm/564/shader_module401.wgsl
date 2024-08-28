struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, true, false, false, true, false, false, false, false, false, true, false, true, true, true, true, true, false, true, false, false, true, true, false, true, true, true);

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<vec2<f32>, 15>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 28u)], -37914i);
    global0 = array<bool, 28>();
    let var_1 = 1000f;
    global0 = array<bool, 28>();
    var var_2 = vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(select(abs(_wgslsmith_mult_i32(-15257i, u_input.a.x)), 2147483647i, global0[_wgslsmith_index_u32(abs(67672u), 28u)]), 35676i, ~firstTrailingBit(arg_3)), u_input.a.x);
    return ~(~(~max(21999u, abs(15322u))));
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -39956i), vec4<i32>(u_input.a.x, u_input.a.x, -4670i, -7078i)))), u_input.a.x);
    let var_0 = 2147483647i;
    var var_1 = -1000f;
    let var_2 = 0u;
    let var_3 = false;
    return Struct_1(-33425i, select(vec4<bool>(false, global0[_wgslsmith_index_u32(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -18096i, 36332i), u_input.a), Struct_3(480f, vec4<u32>(var_2, var_2, 21445u, var_2), vec3<u32>(u_input.c, var_2, 4294967295u)), vec4<bool>(true, global0[_wgslsmith_index_u32(110924u, 28u)], var_3, true), -var_0), 28u)], global0[_wgslsmith_index_u32(~54171u, 28u)], false), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 28u)], global0[_wgslsmith_index_u32(var_2, 28u)], global0[_wgslsmith_index_u32(var_2, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)]), vec4<bool>(var_3, var_3, global0[_wgslsmith_index_u32(u_input.c, 28u)], var_3), false), !select(vec4<bool>(var_3, false, global0[_wgslsmith_index_u32(u_input.c, 28u)], true), vec4<bool>(true, true, false, false), vec4<bool>(var_3, true, global0[_wgslsmith_index_u32(76404u, 28u)], false)), all(vec2<bool>(var_3, false))), vec4<bool>(all(vec2<bool>(var_3, var_3)), !global0[_wgslsmith_index_u32(~1u, 28u)], all(vec4<bool>(false, false, var_3, global0[_wgslsmith_index_u32(1u, 28u)])), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_2, 28u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1182f, -498f))), select(vec2<bool>(true, true), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(21503u, 28u)]), !vec2<bool>(true, var_3), false), select(!vec2<bool>(true, var_3), vec2<bool>(global0[_wgslsmith_index_u32(var_2, 28u)], var_3), false), false), !select(!vec2<bool>(false, var_3), !vec2<bool>(var_3, false), !var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1618f) + _wgslsmith_div_f32(-1585f, 451f)), _wgslsmith_f_op_f32(sign(-139f)))) - -787f));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = ~(~min(vec3<u32>(_wgslsmith_mod_u32(u_input.b, 17469u), u_input.c & 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 13360u))), ~(~vec3<u32>(4294967295u, 52379u, u_input.c))));
    let var_2 = !(false && !(false == var_0.d.x));
    global1 = 79284u;
    var var_3 = !var_0.b.xww;
    return ~(~(_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, 6870i, 1i), max(u_input.a.x, -4838i)) ^ -50074i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(true | !global0[_wgslsmith_index_u32(u_input.c, 28u)]);
    var var_1 = func_1();
    let var_2 = ~(~(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) | countOneBits(vec4<u32>(u_input.c, 1u, 1u, 1u))) | vec4<u32>(~countOneBits(u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38968u, u_input.c)), ~vec2<u32>(u_input.c, 4294967295u)), countOneBits(u_input.c), firstTrailingBit(33159u)));
    global1 = _wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(min(48425u | _wgslsmith_mod_u32(var_2.x, 1u), 59510u), 4294967295u));
    global0 = array<bool, 28>();
    let var_3 = firstLeadingBit(~vec2<i32>(u_input.a.x, 0i));
    var var_4 = global4[_wgslsmith_index_u32(u_input.b, 15u)];
    let var_5 = Struct_1(25198i, !(!(!(!vec4<bool>(var_0, false, true, var_0)))), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) - func_2().c)), !(!select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 28u)], var_0), vec2<bool>(false, true)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(3896u, 28u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(48468u, 28u)]), vec2<bool>(var_0, false)), vec2<bool>(false, var_0))), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.xw) << (vec2<u32>(0u, var_2.x) % vec2<u32>(32u)), 440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.c), _wgslsmith_f_op_f32(1647f - 187f)))));
}

