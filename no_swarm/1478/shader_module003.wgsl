struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 13844u, 1u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: array<u32, 5>;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), false);

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return Struct_1(-55100i, global1.b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = func_2();
    global4 = array<Struct_1, 21>();
    let var_1 = any(arg_1.xw);
    var var_2 = var_0;
    var var_3 = var_0;
    return global4[_wgslsmith_index_u32(firstLeadingBit(countOneBits(~_wgslsmith_div_u32(61476u & global2[_wgslsmith_index_u32(22017u, 5u)], global0.x))), 21u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = abs((vec2<u32>(0u, 1u) & min(abs(global0.zy), select(global0.yx, vec2<u32>(52881u, 4294967295u), vec2<bool>(global3.b, global1.b)))) ^ vec2<u32>(0u ^ _wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_sub_u32(arg_0, u_input.b)));
    var var_1 = false;
    let var_2 = vec4<u32>(~max(~_wgslsmith_mod_u32(4294967295u, arg_0), 13910u), 4294967295u, 0u, 43941u);
    global3 = Struct_1(global1.a, !(!(!(global1.b || global3.b))));
    let var_3 = vec2<bool>(all(vec4<bool>(global3.b, false, global1.b, false || any(vec3<bool>(global3.b, global3.b, global1.b)))), global1.b);
    return func_3(func_2(), !(!(!select(vec4<bool>(global1.b, false, false, global3.b), vec4<bool>(true, true, var_3.x, false), global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -721f), select(global0.xx, global0.xw, select(!var_3, select(var_3, vec2<bool>(false, false), var_3.x | global3.b), all(select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(false, global3.b, global3.b, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, global1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = false;
    global1 = func_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0, firstLeadingBit(0u | global2[_wgslsmith_index_u32(global0.x, 5u)])), min(1u, var_0) >> (_wgslsmith_dot_vec3_u32(global0.wwx ^ vec3<u32>(1u, 4294967295u, var_0), countOneBits(vec3<u32>(21666u, var_0, 3440u))) % 32u)));
    let var_2 = func_2();
    var var_3 = abs(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, -48019i)), vec3<i32>(var_2.a, global3.a, 1i), vec3<i32>(1i, 27682i, 14456i)), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, var_2.a, var_2.a), _wgslsmith_mod_vec3_i32(vec3<i32>(18337i, -22417i, 24689i), vec3<i32>(-2147483647i, -35072i, 47173i))), -1i, var_2.a | global1.a)));
    global0 = _wgslsmith_mult_vec4_u32(max(min(vec4<u32>(var_0, 4294967295u, 4294967295u, 49351u), vec4<u32>(59629u, global0.x, 4294967295u, 19193u)), countOneBits(vec4<u32>(21606u, var_0, 62755u, 4294967295u))) ^ firstLeadingBit(vec4<u32>(global0.x, 0u, u_input.b, global0.x) ^ vec4<u32>(global0.x, global0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32464u, 5u)], 5u)], u_input.b)), ~(~select(vec4<u32>(74930u, var_0, 47835u, 1u), vec4<u32>(960u, global0.x, 73913u, 32457u), vec4<bool>(var_1, global1.b, var_2.b, true)))) << (vec4<u32>(_wgslsmith_div_u32(~1u, ~u_input.b), global0.x | 39884u, 0u, ~(abs(var_0) | 0u)) % vec4<u32>(32u));
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~select(~global0.wwy, vec3<u32>(var_0, global0.x, u_input.b), select(vec3<bool>(true, false, var_2.b), vec3<bool>(global1.b, false, true), global1.b)), vec3<u32>(global2[_wgslsmith_index_u32(global0.x, 5u)] >> (6843u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 6127u), 5u)], 4294967295u) >> (_wgslsmith_div_vec3_u32(global0.wyz, global0.xxy) % vec3<u32>(32u))), vec3<u32>(global2[_wgslsmith_index_u32(firstLeadingBit(~reverseBits(29230u)), 5u)], ~13572u, firstTrailingBit(0u))), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(496u, u_input.b >> (49776u % 32u), 23508u), vec4<i32>(_wgslsmith_clamp_i32(-u_input.a, select(-41343i, reverseBits(global1.a), func_3(var_2, vec4<bool>(true, true, false, false), -751f, vec2<u32>(var_0, u_input.b)).b), -33392i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a, 381i), vec2<i32>(global3.a, -1i))) >> (select(global2[_wgslsmith_index_u32(42990u, 5u)] ^ global0.x, 27285u, true) % 32u), 0i, -44921i << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, u_input.b), global0.zw), vec2<u32>(global0.x, 4294967295u)) % 32u)), -((vec2<i32>(-1i) * -vec2<i32>(-4888i, var_2.a)) >> (reverseBits(global0.yw) % vec2<u32>(32u))), vec2<i32>(var_2.a, ~var_4.a));
}

