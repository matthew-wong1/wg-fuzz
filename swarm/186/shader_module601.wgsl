struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(419f, 183f), -22465i, vec3<f32>(-131f, -607f, 551f), vec3<bool>(false, true, true), 1i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.x))))), _wgslsmith_f_op_f32(floor(1f))), arg_1.e, vec3<f32>(584f, 515f, global1.a.x), select(select(!global1.d, arg_1.d, arg_1.d.x), select(arg_1.d, select(vec3<bool>(true, true, true), vec3<bool>(true, global1.d.x, global1.d.x), all(global1.d)), (arg_1.e != 1i) && all(vec2<bool>(global1.d.x, false))), select(arg_1.d, select(vec3<bool>(true, global1.d.x, arg_1.d.x), select(vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(false, true, global1.d.x), global1.d), !global1.d.x), true)), min(-global1.e, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, 8255i, arg_1.e, -2147483647i), vec4<i32>(arg_1.e, 66835i, global1.e, arg_1.e)) >> (_wgslsmith_div_u32(u_input.b.x, u_input.a) % 32u))));
    let var_1 = vec4<bool>(!(var_0.d.x || (true & all(vec2<bool>(true, true)))), false, any(vec4<bool>(var_0.d.x | var_0.d.x, false, true, all(arg_1.d.xx))) && all(var_0.d), true);
    return select(~_wgslsmith_add_vec3_i32(-abs(vec3<i32>(var_0.e, 15132i, 1i)), abs(-vec3<i32>(-2147483647i, arg_1.b, global1.e))), -(~vec3<i32>(var_0.b, -41623i, arg_1.e) << ((vec3<u32>(1u, u_input.a, 69975u) | vec3<u32>(u_input.a, 0u, 4294967295u)) % vec3<u32>(32u))) & (-(~vec3<i32>(var_0.b, global1.b, -26596i)) | ~(~vec3<i32>(arg_1.b, 6283i, 2147483647i))), all(var_1));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec3<u32> {
    var var_0 = Struct_2(!select(vec4<bool>(all(vec2<bool>(global1.d.x, false)), all(global1.d), true, true), select(vec4<bool>(true, global1.d.x, false, global1.d.x), vec4<bool>(true, true, true, true), global1.d.x), select(!vec4<bool>(global1.d.x, false, global1.d.x, true), vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x), false)), arg_1.x, Struct_1(vec2<f32>(-318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) + 860f)), -global1.b, global1.c, global1.d, -9935i), ((_wgslsmith_mult_i32(-2147483647i, 1i) >> ((arg_0.x >> (u_input.a % 32u)) % 32u)) << (_wgslsmith_mod_u32(~u_input.b.x, 90175u) % 32u)) == 0i, global0[_wgslsmith_index_u32(arg_1.x, 1u)]);
    let var_1 = Struct_2(var_0.a, 0u, global0[_wgslsmith_index_u32(~(~arg_1.x), 1u)], !any(var_0.c.d), global0[_wgslsmith_index_u32(62794u, 1u)]);
    global1 = global0[_wgslsmith_index_u32(arg_1.x, 1u)];
    var var_2 = Struct_2(var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1138f, 3273f)), _wgslsmith_dot_vec3_i32(vec3<i32>(12403i, 2147483647i, 1i), -func_3(var_0.e.c.x, Struct_1(vec2<f32>(-1231f, -134f), arg_3, vec3<f32>(-1213f, global1.a.x, var_0.e.c.x), vec3<bool>(var_0.e.d.x, false, true), -10640i), global1.c.yx)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.c.x, var_0.e.a.x, var_0.e.a.x)), var_1.e.c)), global1.d, 2147483647i), global1.d.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-978f, -1495f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.e.c.zx, vec2<f32>(global1.a.x, var_0.c.a.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(297f, global1.a.x), var_0.c.a))), _wgslsmith_mult_i32(var_0.c.e, -40602i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.c.x, global1.c.x, global1.a.x) * vec3<f32>(-651f, var_1.e.a.x, 1607f))), !(!(!global1.d)), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.e.b, 30098i), _wgslsmith_mult_i32(var_0.e.e, 1i)), 0i)));
    var_2 = var_1;
    return countOneBits(firstLeadingBit(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_2.b, 0u), vec3<u32>(31289u, u_input.b.x, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(7128u, var_1.b, 84347u), vec3<u32>(arg_1.x, u_input.a, 1u))))) << (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(countOneBits(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 73035u)), 1u & max(arg_0.x, var_0.b)), var_2.b, ~u_input.b.x) % vec3<u32>(32u));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global1 = global0[_wgslsmith_index_u32(19912u, 1u)];
    global0 = array<Struct_1, 1>();
    var var_0 = func_2(firstTrailingBit(u_input.b), u_input.b, reverseBits(global1.e) & (firstLeadingBit(global1.b) << (abs(1u) % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(11293i, 2147483647i, global1.b), vec3<i32>(16022i, -26400i, global1.e)), _wgslsmith_sub_vec3_i32(vec3<i32>(-6699i, -7110i, 0i), vec3<i32>(24152i, -13854i, global1.e))), ~vec3<i32>(1i, global1.e, -57409i))) >> (~select(vec3<u32>(57307u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 14204u), ~(~vec3<u32>(u_input.b.x, 1u, u_input.a)), true) % vec3<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(~func_2(~firstTrailingBit(var_0.zz << (vec2<u32>(21668u, var_0.x) % vec2<u32>(32u))), ~(countOneBits(var_0.zy) << (var_0.zx % vec2<u32>(32u))), -2147483647i, func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(80431u, 1u) >> (u_input.a % 32u), 1u)], global1.c.zz).x).x, 1u)];
    var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, ~var_0.x), abs(_wgslsmith_add_vec3_u32(vec3<u32>(10672u, 0u, u_input.b.x), vec3<u32>(var_0.x, u_input.a, 8173u))) & vec3<u32>(~var_0.x, u_input.a, 4294967295u), vec3<u32>(func_2(var_0.zx, _wgslsmith_mod_vec2_u32(var_0.yy, vec2<u32>(var_0.x, var_0.x)), 2147483647i, 1i).x, select(11750u, ~u_input.a, !global1.d.x), var_0.x));
    return StorageBuffer(reverseBits(min(min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.e, var_1.e, 19451i, var_1.e), vec4<i32>(-2147483647i, var_1.b, 23923i, -1i)), ~vec4<i32>(0i, 5698i, 20636i, global1.e)), countOneBits(min(vec4<i32>(-9465i, global1.e, 20916i, -6421i), vec4<i32>(86342i, var_1.e, var_1.e, global1.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = Struct_2(vec4<bool>(true, false, false, true || global1.d.x), firstTrailingBit(u_input.a), global0[_wgslsmith_index_u32(69270u, 1u)], true, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.yz - vec2<f32>(401f, 688f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2369f, -556f))))), 0i, global1.c, global1.d, global1.b));
    global0 = array<Struct_1, 1>();
    var var_1 = global1.d.x;
    let var_2 = ~u_input.a;
    let var_3 = !(select(false, var_0.a.x, !any(var_0.e.d.zz)) & (1u > var_0.b));
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = func_1(true);
}

