struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: vec2<f32> = vec2<f32>(-1207f, 759f);

var<private> global2: vec2<i32>;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    let var_0 = select(!vec3<bool>(false, true, !(1i > global2.x)), vec3<bool>(true, true, true), false);
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))));
    var var_3 = reverseBits(~(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(19369i, 27275i), vec2<i32>(8973i, global2.x)), global2.x, ~global2.x, -2147483647i)));
    global3 = vec2<u32>(_wgslsmith_mod_u32(var_1, max(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(11028u, 31u)]) << (var_1 % 32u), 4294967295u)), ~(global0[_wgslsmith_index_u32(firstTrailingBit(~global3.x), 31u)] >> (42213u % 32u)));
    return Struct_3(global1.x, ~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, var_3.x, var_3.x), var_3.xxz)), Struct_2(2147483647i));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-280f * global1.x))) * -886f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -920f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(340f, -829f) - vec2<f32>(global1.x, -532f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-266f, global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, global1.x), global1.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = min(33905u, 94323u);
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, -1253f)))))))));
    let var_1 = func_2();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1000f - var_1.a), _wgslsmith_f_op_f32(-2691f - 1702f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, global1.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, var_1.a))), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))))));
    var_0 = u_input.a;
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, global3.x), abs(u_input.a)), _wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.zy) | _wgslsmith_add_u32(1u, arg_1.x), _wgslsmith_mod_u32(42429u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(53583u, global0[_wgslsmith_index_u32(u_input.a, 31u)]), 31u)])), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~35345u, ~global0[_wgslsmith_index_u32(global3.x, 31u)], abs(arg_1.x)), vec4<u32>(global3.x, 45462u, u_input.a, 1917u) >> (~vec4<u32>(4294967295u, 4294967295u, 19134u, global0[_wgslsmith_index_u32(u_input.a, 31u)]) % vec4<u32>(32u))) << (min(~abs(vec4<u32>(arg_1.x, 4294967295u, u_input.a, 0u)), ~vec4<u32>(4294967295u, arg_1.x, 25262u, 62708u)) % vec4<u32>(32u)), ~(vec4<u32>(~global3.x, 77132u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a), u_input.a) & vec4<u32>(14989u, firstTrailingBit(74152u), ~u_input.a, 30092u << (global3.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(_wgslsmith_div_vec4_u32(func_1(global2.x, vec3<u32>(4541u, global3.x, u_input.a)), ~vec4<u32>(global3.x, global0[_wgslsmith_index_u32(69112u, 31u)], 43954u, 1u)) ^ ~(vec4<u32>(4294967295u, u_input.a, global3.x, 438u) & vec4<u32>(global3.x, 67661u, 32026u, 1u))));
    let var_1 = !vec2<bool>(all(vec2<bool>(false, true)), true);
    var var_2 = Struct_1(_wgslsmith_sub_u32(~(global3.x ^ global3.x), 4294967295u) & 1u);
    var var_3 = func_2().c;
    let var_4 = global1.x;
    var var_5 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(_wgslsmith_add_i32(37355i, 18614i) & var_3.a));
}

