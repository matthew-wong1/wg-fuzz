struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_2(false, false, 0u), 203f), 1i, vec2<u32>(4294967295u, 2761u));

var<private> global1: vec4<i32> = vec4<i32>(87703i, -55534i, -10744i, 2147483647i);

var<private> global2: u32;

var<private> global3: i32;

var<private> global4: array<u32, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = 2147483647i;
    global2 = _wgslsmith_sub_u32(~global0.a.a.c, ~33684u);
    var var_1 = true;
    var_1 = false;
    global1 = vec4<i32>(global1.x, global1.x, select(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(var_0, -67704i, var_0), vec3<i32>(u_input.e, global1.x, 1i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(-16847i, var_0, -1i), u_input.c), ~max(u_input.c, vec3<i32>(0i, -28211i, global0.b))), global0.a.a.b), 2886i);
    return vec3<bool>(any(select(!select(vec3<bool>(global0.a.a.a, global0.a.a.a, false), vec3<bool>(global0.a.a.b, global0.a.a.a, global0.a.a.b), vec3<bool>(global0.a.a.a, global0.a.a.a, false)), select(select(vec3<bool>(true, global0.a.a.a, global0.a.a.a), vec3<bool>(global0.a.a.a, false, global0.a.a.a), vec3<bool>(global0.a.a.a, false, global0.a.a.b)), !vec3<bool>(global0.a.a.a, global0.a.a.a, global0.a.a.b), true), vec3<bool>(any(vec3<bool>(global0.a.a.a, global0.a.a.a, true)), true, global0.a.a.b))), false, global0.a.a.b);
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_clamp_u32(u_input.a.x, global0.c.x | _wgslsmith_dot_vec3_u32(abs(u_input.a ^ vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yz, global0.c), global4[_wgslsmith_index_u32(0u, 16u)] >> (global4[_wgslsmith_index_u32(u_input.b.x, 16u)] % 32u), abs(0u))), global4[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 16u)]);
    global3 = ~(~(1i >> (global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 9514u), 16u)]), 16u)] % 32u)));
    let var_0 = Struct_4(global0.a, u_input.d.x | firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.b, 2147483647i), firstLeadingBit(global1.x))), vec2<u32>(global0.c.x, ~global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(32879u, global0.c.x), 16u)]), 16u)]));
    let var_1 = -309f;
    let var_2 = ~reverseBits(countOneBits(~(~vec4<u32>(u_input.a.x, 0u, 26177u, 4294967295u))));
    return Struct_1(select(func_3(), vec3<bool>(any(vec2<bool>(false, false)), (var_1 >= var_0.a.b) || func_3().x, !func_3().x), -27725i < reverseBits(_wgslsmith_dot_vec2_i32(global1.wx, u_input.d))), -2100f, global1.x, global0.c.x & var_2.x, vec3<i32>(i32(-1i) * -_wgslsmith_mod_i32(u_input.e, u_input.d.x), abs(u_input.d.x), firstTrailingBit(var_0.b)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = Struct_5(global0.a, ~min(abs(vec4<u32>(3774u, global0.c.x, 4294967295u, 3048u)), ~(~vec4<u32>(arg_0, global4[_wgslsmith_index_u32(1u, 16u)], global0.c.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20906u, 16u)], 16u)]))), vec2<u32>(4294967295u, 1u));
    let var_2 = var_1.a.a;
    var var_3 = func_3().yy;
    global4 = array<u32, 16>();
    return ~vec2<u32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21763u, 0u), global0.c) | reverseBits(107181u), 16u)], 0u) ^ global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 30850u <= _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1811f);
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(vec2<u32>(firstLeadingBit(global0.c.x), ~1u)), ~(func_1(global0.a.a.c) ^ global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)), 14140u);
}

