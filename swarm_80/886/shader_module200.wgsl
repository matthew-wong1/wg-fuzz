struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(10675u, 23802u, 61489u, 1u, 0u, 1u, 4294967295u, 12021u, 4294967295u);

var<private> global1: vec3<i32> = vec3<i32>(1i, 3491i, 12961i);

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 3> = array<i32, 3>(2409i, 1i, -874i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_2) -> i32 {
    global3 = array<i32, 3>();
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_4(19479u, Struct_3(abs(-1i)));
    var_0 = Struct_4(firstLeadingBit(_wgslsmith_clamp_u32(var_0.a, 1u, 4294967295u)), var_0.b);
    let var_1 = Struct_1(arg_2.x);
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-47743i, _wgslsmith_add_i32(-_wgslsmith_mult_i32(var_0.b.a, global1.x), global3[_wgslsmith_index_u32(~reverseBits(7795u), 3u)]), _wgslsmith_mod_i32(~u_input.d.x, ~global1.x)), (_wgslsmith_div_vec3_i32(-vec3<i32>(-36612i, global1.x, var_0.b.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, u_input.b, 0i), vec3<i32>(-22121i, arg_3, global3[_wgslsmith_index_u32(66542u, 3u)]), vec3<i32>(-7763i, -2147483647i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 3u)]))) ^ vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(65925u, var_0.a), 3u)], u_input.d.x, abs(u_input.d.x))) & _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-50134i, arg_3), func_3(Struct_5(vec3<u32>(var_0.a, 14800u, 4294967295u)), Struct_5(vec3<u32>(43003u, 0u, 4294967295u)), Struct_2(global1.x, vec3<bool>(arg_0, true, true))), -arg_3), min(firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(var_0.a, 3u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 3u)], arg_3)), vec3<i32>(var_0.b.a, global1.x, var_0.b.a) << (u_input.e.zxz % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(-29674i, 32066i, -6813i))));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), var_1.a));
    return select(select(select(vec3<bool>(arg_1.x, arg_0 && false, arg_0), vec3<bool>(true, u_input.c.x < 17286u, true), !select(vec3<bool>(false, false, true), vec3<bool>(arg_0, true, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x))), select(vec3<bool>(any(vec4<bool>(arg_1.x, false, arg_0, arg_0)), -269f < global2.x, !arg_0), !select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, arg_0, arg_1.x), false), vec3<bool>(arg_0 && false, false, all(vec4<bool>(false, false, false, arg_1.x)))), vec3<bool>(true, arg_1.x, true)), vec3<bool>(!(!all(vec3<bool>(arg_0, false, false))), true, arg_1.x), any(!select(!vec3<bool>(true, false, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_1.x, arg_0)), !vec3<bool>(true, arg_0, arg_0))));
}

fn func_1() -> vec3<i32> {
    global1 = _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)] >> (global0[_wgslsmith_index_u32(3433u, 9u)] % 32u), 1u), 3u)], global3[_wgslsmith_index_u32(u_input.c.x, 3u)]), -(~(vec3<i32>(global1.x, 2303i, global1.x) & vec3<i32>(-83480i, global3[_wgslsmith_index_u32(u_input.c.x, 3u)], 7798i)))) | (vec3<i32>(reverseBits(1i) & (u_input.d.x << (u_input.c.x % 32u)), -14796i, 0i) | _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, global1.x, global3[_wgslsmith_index_u32(36437u, 3u)]), firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17852u, 9u)], 3u)], -10153i, -53992i))));
    global3 = array<i32, 3>();
    var var_0 = vec2<bool>(true, !any(!func_2(true, vec2<bool>(false, false), vec3<f32>(805f, 168f, global2.x), global1.x)));
    global1 = reverseBits(vec3<i32>(global1.x, countOneBits(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(97906u, 9u)]), 3u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 9u)], 3u)], global3[_wgslsmith_index_u32(0u, 3u)]), vec3<i32>(1i, -40394i, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, 46927i, -90364i), vec3<i32>(0i, -9936i, 2147483647i), vec3<i32>(u_input.b, global1.x, 4439i))), vec3<i32>(reverseBits(2147483647i), -global1.x, global3[_wgslsmith_index_u32(~4294967295u, 3u)]))));
    global3 = array<i32, 3>();
    return -select(firstTrailingBit((vec3<i32>(global1.x, 1i, global1.x) << (vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23443u, 9u)], 9u)], global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u)) % vec3<u32>(32u))), -(~max(vec3<i32>(global1.x, u_input.d.x, 3635i), vec3<i32>(u_input.d.x, -35504i, global3[_wgslsmith_index_u32(22555u, 3u)]))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<f32>(global2.x, global2.x, _wgslsmith_div_f32(global2.x, 953f));
    var var_0 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(abs(firstLeadingBit(vec3<i32>(72450i, 2147483647i, global3[_wgslsmith_index_u32(0u, 3u)]))), _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global3[_wgslsmith_index_u32(4294967295u, 3u)], u_input.d.x) ^ vec3<i32>(30408i, 0i, u_input.b), func_1())), func_1(), firstTrailingBit(~vec3<i32>(0i, abs(global3[_wgslsmith_index_u32(1u, 3u)]), firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c.x, 3u)]))));
    let var_1 = 30743i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i, 1805i, -1517i) >> (u_input.e % vec4<u32>(32u)))), _wgslsmith_f_op_f32(round(1090f)));
}

