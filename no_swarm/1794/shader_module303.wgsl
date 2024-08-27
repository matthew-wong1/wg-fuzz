struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 4294967295u);

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 7> = array<u32, 7>(1u, 1u, 4294967295u, 29243u, 17655u, 0u, 38981u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(vec2<i32>(abs(32497i), ~_wgslsmith_mult_i32(1i, abs(2147483647i))), Struct_1(all(select(vec4<bool>(true, global1.x, false, false), vec4<bool>(true, false, true, global1.x), false)), ~(-vec2<i32>(-67608i, 47004i) >> (global0.xz % vec2<u32>(32u))), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(u_input.c, 1u, global0.x), vec3<bool>(global1.x, global1.x, false)), vec3<u32>(~31952u, ~0u, ~1u), vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 120446u), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 60088u, global0.x)), 27753u)), ~28876i));
    global0 = ~var_0.b.c | ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.c.x | global0.x, ~19858u, u_input.d), vec3<u32>(u_input.b, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b, 7u)], 6958u), ~var_0.b.c.x));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-962f, -240f, -1564f))))), vec3<f32>(_wgslsmith_f_op_f32(max(1277f, 1227f)), 1000f, 659f)))));
    let var_3 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(select(-9491i, -22761i, false)), -39207i), abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.a.x), var_1.b))), Struct_1(global1.x, ~(firstLeadingBit(vec2<i32>(-2147483647i, var_0.a.x)) ^ -vec2<i32>(var_0.b.d, var_1.b.x)), ~firstLeadingBit(var_1.c ^ vec3<u32>(4294967295u, 4294967295u, 9251u)), 0i));
    return ~vec4<i32>(min(_wgslsmith_clamp_i32(var_0.b.d, var_1.b.x, var_0.b.b.x), var_0.b.d) >> (~33322u % 32u), -2147483647i, firstTrailingBit(var_0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(2147483647i), ~0i), firstTrailingBit(vec2<i32>(1i, var_1.d))));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(vec2<i32>(min(-22654i >> (1u % 32u), abs(2147483647i) ^ select(0i, -55637i, true)), _wgslsmith_dot_vec4_i32(-func_3(), ~vec4<i32>(29863i, 11468i, 48098i, -58616i))), Struct_1(!any(!global1.zwy), _wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, 1i), reverseBits(firstTrailingBit(vec2<i32>(-6191i, -1i)))), ~(vec3<u32>(0u, global0.x, 7408u) & vec3<u32>(global2[_wgslsmith_index_u32(global0.x, 7u)], 6786u, 90753u)) << (max(countOneBits(vec3<u32>(6778u, 19961u, global0.x)), vec3<u32>(global2[_wgslsmith_index_u32(0u, 7u)], 4317u, global2[_wgslsmith_index_u32(0u, 7u)])) % vec3<u32>(32u)), select(_wgslsmith_clamp_i32(-75947i, min(-23883i, -16737i), reverseBits(1i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(11262i, -28467i), abs(0i), -50767i), any(vec3<bool>(false, false, false)))));
    let var_1 = var_0;
    global2 = array<u32, 7>();
    var var_2 = !vec4<bool>(!(min(1i, -17832i) >= _wgslsmith_sub_i32(-25163i, var_1.b.b.x)), true, true, false);
    let var_3 = 997u;
    return min(2147483647i, i32(-1i) * -var_1.a.x);
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = ~vec4<i32>(func_2(), countOneBits(-(i32(-1i) * -54028i)), -(func_2() & _wgslsmith_clamp_i32(-1i, -11906i, 0i)), -_wgslsmith_mult_i32(2147483647i, -1i));
    let var_1 = Struct_2(-(vec2<i32>(var_0.x, 65153i) | (select(var_0.xz, var_0.zy, false) << (firstTrailingBit(vec2<u32>(0u, global2[_wgslsmith_index_u32(70727u, 7u)])) % vec2<u32>(32u)))), Struct_1(!global1.x && false, vec2<i32>(select(-43675i, 2147483647i, global1.x) | (var_0.x << (global2[_wgslsmith_index_u32(global0.x, 7u)] % 32u)), 524i), vec3<u32>(u_input.a, 775u, (u_input.a | u_input.a) >> (4294967295u % 32u)), ~(-var_0.x)));
    global0 = var_1.b.c;
    var var_2 = Struct_1(!(!global1.x), var_1.a, ~(~(~firstTrailingBit(var_1.b.c))), select(_wgslsmith_sub_i32(var_0.x, var_1.b.d), 0i, var_1.b.a));
    let var_3 = var_1;
    return ~var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<i32>(-1i, abs(-2147483647i) & func_1(_wgslsmith_div_f32(840f, -259f), -556f)), Struct_1(1i == select(-2147483647i, -2161i, true), firstTrailingBit(vec2<i32>(1i, 1i)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 18541u)), firstLeadingBit(vec3<u32>(u_input.c, u_input.a, 12363u))) | ~select(vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global0.x, 7u)]), vec3<u32>(u_input.b, 4294967295u, 11540u), false), firstLeadingBit(countOneBits(abs(-1i)))));
    var var_1 = !var_0.b.a;
    var_1 = true;
    global1 = select(select(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(global1.x, true, true, false), vec4<bool>(var_0.b.a, var_0.b.a, true, true), vec4<bool>(true, global1.x, var_0.b.a, global1.x)), any(vec2<bool>(true, false))), !vec4<bool>(all(vec2<bool>(var_0.b.a, global1.x)), true, all(vec2<bool>(true, true)), false), !global1.x), vec4<bool>((_wgslsmith_div_i32(var_0.b.d, 0i) ^ firstLeadingBit(-41600i)) > var_0.b.b.x, ~_wgslsmith_clamp_i32(var_0.b.b.x, 2147483647i, var_0.b.b.x) > (1i | (var_0.b.d & var_0.a.x)), true, any(!select(vec3<bool>(true, true, var_0.b.a), global1.wwy, true))), true);
    var var_2 = global1.ww;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c.x, max(min(~(vec2<u32>(39126u, var_0.b.c.x) << (var_0.b.c.xy % vec2<u32>(32u))), vec2<u32>(~4294967295u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(39647u, 7u)], 3205u))), ~global0.yx), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2531f, -686f)));
}

