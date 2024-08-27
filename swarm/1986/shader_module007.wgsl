struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), Struct_1(52601i, vec4<bool>(true, false, true, false)), vec4<i32>(-15024i, -32212i, -13831i, 15016i), vec4<i32>(-18258i, i32(-2147483648), -55299i, 1418i), 932f);

var<private> global1: array<u32, 15>;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, false, true), Struct_1(67332i, vec4<bool>(false, false, false, false)), vec4<i32>(-15608i, 0i, 24796i, -16555i), vec4<i32>(2147483647i, -32696i, 1i, i32(-2147483648)), 1274f);

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    return true;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<i32> {
    global1 = array<u32, 15>();
    let var_0 = countOneBits(firstTrailingBit(-global0.d.zxx));
    let var_1 = -581f;
    return _wgslsmith_mod_vec3_i32(global2.d.zwx, global0.c.zxz) >> (firstLeadingBit(abs(~abs(u_input.a.zyz))) % vec3<u32>(32u));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(vec3<bool>(global0.b.b.x, true, ~_wgslsmith_add_i32(-28012i, global0.b.a) > -16407i), global0.b, _wgslsmith_clamp_vec4_i32(global2.d, global2.c, _wgslsmith_mod_vec4_i32(~(vec4<i32>(-2147483647i, 31276i, global0.b.a, 1i) | vec4<i32>(global0.b.a, global0.b.a, -29720i, global2.c.x)), vec4<i32>(-1i) * -vec4<i32>(-1i, 5636i, 5494i, -1i))), ~(-global2.d) >> ((countOneBits(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(1u, u_input.c.x, u_input.a.x, 14399u))) & select(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 4520u, 4294967295u, global1[_wgslsmith_index_u32(0u, 15u)]), firstLeadingBit(u_input.a), global2.b.b)) % vec4<u32>(32u)), 473f);
    global3 = global2.a;
    var var_0 = _wgslsmith_dot_vec3_i32(func_3(abs(0u), u_input.a.zw), ~(global2.c.yzz | global0.c.xzy));
    let var_1 = vec3<i32>(-abs(~0i << (~global1[_wgslsmith_index_u32(u_input.b, 15u)] % 32u)), func_3(u_input.c.x, ~max(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 15u)], 14856u))).x, global2.b.a);
    var var_2 = Struct_1(_wgslsmith_add_i32(22086i, ~(-_wgslsmith_sub_i32(global0.c.x, global2.d.x))), !(!select(!global0.b.b, vec4<bool>(true, global2.b.b.x, false, global2.a.x), true)));
    return Struct_2(var_2.b.zxx, Struct_1(var_1.x, !global2.b.b), global2.c, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - 1456f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e * -971f), global2.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(global2.a);
    var var_1 = select(global2.b.b, global0.b.b, vec4<bool>(false, true, global2.b.b.x, func_1()));
    global2 = func_2();
    var var_2 = func_2().b;
    let var_3 = (global0.d.x ^ global2.d.x) & ~global0.c.x;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_mult_i32(~(-1i), 30789i), func_2().b.a)), u_input.c, _wgslsmith_f_op_f32(-global0.e));
}

