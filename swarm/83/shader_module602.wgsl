struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 29>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<bool, 18> = array<bool, 18>(false, false, false, true, true, true, false, true, false, true, false, false, true, false, true, true, false, true);

var<private> global4: vec2<f32> = vec2<f32>(509f, 874f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = !(!(!vec2<bool>(1461f >= arg_1.a, !global3[_wgslsmith_index_u32(u_input.c.x, 18u)])));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)))));
    let var_1 = 1785f;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(404f, global4.x, 1476f, arg_1.a) * vec4<f32>(arg_3.a, -589f, arg_3.a, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1724f, global4.x, arg_1.a, -653f) - vec4<f32>(-226f, var_1, 101f, arg_1.a)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, global4.x, var_1, 1017f), vec4<f32>(246f, arg_2.a, var_1, -299f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(522f, arg_2.a, var_1, global0.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1866f, global4.x, var_0.a, global4.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1443f) - _wgslsmith_f_op_f32(-835f * global0.x))), 278f, _wgslsmith_f_op_f32(-var_0.a), global0.x)));
    var var_3 = !(!(!vec2<bool>(global3[_wgslsmith_index_u32(~u_input.c.x, 18u)], any(vec4<bool>(false, false, global2.x, global3[_wgslsmith_index_u32(73765u, 18u)])))));
    return global2.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global2 = select(select(vec2<bool>((global1[_wgslsmith_index_u32(0u, 29u)] || global1[_wgslsmith_index_u32(arg_2.x, 29u)]) && func_3(4294967295u, Struct_1(global4.x), arg_1, Struct_1(arg_1.a)), global1[_wgslsmith_index_u32(arg_2.x, 29u)]), vec2<bool>(any(vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(63563u, 18u)])), all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], false, true))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, _wgslsmith_sub_u32(54638u, u_input.c.x)), 29u)]), select(select(select(vec2<bool>(true, true), !vec2<bool>(global2.x, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(arg_2.x, 18u)]), vec2<bool>(global3[_wgslsmith_index_u32(40634u, 18u)], global3[_wgslsmith_index_u32(32380u, 18u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], false), u_input.a.x <= -2147483647i), vec2<bool>(true, true)), select(vec2<bool>(true, global2.x), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(38125u, 29u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(arg_2.x, 18u)]), false), vec2<bool>(false, global2.x), !vec2<bool>(global1[_wgslsmith_index_u32(59288u, 29u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), !select(vec2<bool>(global2.x, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_2.x, 29u)], false), false)), func_3(arg_2.x, arg_1, arg_1, arg_1)), global1[_wgslsmith_index_u32(33126u, 29u)]);
    let var_0 = u_input.a;
    global3 = array<bool, 18>();
    global2 = select(select(vec2<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(38346u, 29u)], false)), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 29u)], global3[_wgslsmith_index_u32(arg_2.x, 18u)]))), select(!select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_2.x, 29u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec2<bool>(true, true)), !vec2<bool>(global2.x, false), select(vec2<bool>(global2.x, true), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global2.x), vec2<bool>(global1[_wgslsmith_index_u32(arg_2.x, 29u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global2.x))), vec2<bool>(true, true)), vec2<bool>(false, !global1[_wgslsmith_index_u32(~u_input.c.x, 29u)]), !vec2<bool>(global1[_wgslsmith_index_u32(arg_2.x, 29u)], func_3(44073u, Struct_1(-2345f), arg_1, arg_1)));
    var var_1 = abs(_wgslsmith_div_i32(countOneBits(0i ^ var_0.x) & (u_input.a.x >> (40133u % 32u)), -1i));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global4 = vec2<f32>(global4.x, global4.x);
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_1, abs(vec4<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.x), u_input.c), 3035u, abs(0u)))), 18u)];
    var var_1 = arg_0;
    let var_2 = _wgslsmith_mod_u32(~max(~u_input.c.x, 44687u) ^ 1u, ~(~(firstTrailingBit(u_input.c.x) & _wgslsmith_mod_u32(u_input.c.x, 4294967295u))));
    global2 = arg_2.xw;
    return func_2(arg_0.a, arg_0, ~vec2<u32>(77809u, _wgslsmith_div_u32(~0u, arg_1.x ^ 5045u)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(-643f);
    var var_1 = any(vec2<bool>(global1[_wgslsmith_index_u32(35312u, 29u)], true));
    let var_2 = Struct_1(-1154f);
    let var_3 = func_2(arg_0, var_2, u_input.c);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * global4.x), -2133f))));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_1 {
    global1 = array<bool, 29>();
    let var_0 = vec4<i32>(-u_input.a.x, u_input.b, u_input.b, u_input.b | _wgslsmith_mult_i32(~u_input.a.x, ~_wgslsmith_sub_i32(-2147483647i, u_input.b)));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: bool) -> StorageBuffer {
    var var_0 = func_6(func_5(-1036f, func_4(func_2(_wgslsmith_f_op_f32(ceil(global4.x)), Struct_1(-105f), select(vec2<u32>(74846u, 61492u), u_input.c, arg_0.yy)), (vec4<u32>(11607u, 1u, 0u, 4294967295u) & vec4<u32>(50142u, u_input.c.x, u_input.c.x, u_input.c.x)) >> (max(vec4<u32>(3388u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(34178u, 64537u, u_input.c.x, 87111u)) % vec4<u32>(32u)), select(!vec4<bool>(arg_0.x, true, arg_0.x, false), !vec4<bool>(global2.x, false, true, false), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(4332u, 29u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)], true))), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, u_input.b) & -vec3<i32>(-27844i, u_input.b, -84709i))), func_5(_wgslsmith_f_op_f32(step(global4.x, global4.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1150f) - _wgslsmith_f_op_f32(-global0.x))), -(~u_input.a)), max(vec4<u32>(1u, _wgslsmith_sub_u32(u_input.c.x, 18515u), ~60670u, ~43793u) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 0u), vec4<u32>(2522u, 4294967295u, 5504u, 3586u)), ~(~vec4<u32>(u_input.c.x, 27168u, u_input.c.x, u_input.c.x))), select(vec4<bool>(!all(vec4<bool>(true, true, true, global2.x)), !global1[_wgslsmith_index_u32(1u, 29u)], arg_3, _wgslsmith_f_op_f32(min(global0.x, global4.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -444f)), !(!select(vec4<bool>(arg_3, false, false, global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<bool>(global1[_wgslsmith_index_u32(31320u, 29u)], global2.x, global2.x, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], arg_3, arg_0.x, false))), !select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(arg_0.x, arg_0.x, true, false), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], false, global2.x), arg_0.x))));
    let var_1 = func_6(func_2(global4.x, Struct_1(-392f), u_input.c), func_6(func_4(Struct_1(_wgslsmith_f_op_f32(round(-581f))), vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(62232u, 1u), ~u_input.c.x, ~u_input.c.x), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], false)), Struct_1(-939f), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 6253u, u_input.c.x, 26741u) >> (vec4<u32>(1u, 39973u, 0u, 100492u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(57021u, 4294967295u, 116969u, 52256u)), _wgslsmith_sub_vec4_u32(vec4<u32>(32575u, 0u, 21062u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], min(u_input.c.x, 1u) == _wgslsmith_mod_u32(u_input.c.x, 4294967295u), true)), ~vec4<u32>(max(~u_input.c.x, ~u_input.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), firstTrailingBit(vec4<u32>(u_input.c.x, 53480u, 18729u, 4239u))), ~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c)), vec4<bool>(select(global1[_wgslsmith_index_u32(25501u, 29u)], true, 1i > _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.yy)), any(vec4<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(37488u, 29u)], arg_2)), true, false, true || arg_2)), false, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]));
    var var_2 = ~firstLeadingBit(abs(abs(vec4<i32>(arg_1, 56285i, arg_1, u_input.b)))) & vec4<i32>(39270i, arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, u_input.b) & -u_input.a, reverseBits(countOneBits(u_input.a))), 2147483647i);
    let var_3 = arg_2;
    global1 = array<bool, 29>();
    return StorageBuffer(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_1, arg_1, u_input.a.x, var_2.x)), vec4<i32>(-2147483647i, arg_1, var_2.x, u_input.a.x)) & (min(arg_1, var_2.x) & var_2.x)), -244f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!vec3<bool>(u_input.b != -u_input.b, all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global2.x, true, global3[_wgslsmith_index_u32(59188u, 18u)])), true), _wgslsmith_clamp_i32(-20010i, firstTrailingBit(-u_input.b), -countOneBits(-68i | u_input.a.x)), global1[_wgslsmith_index_u32(4294967295u, 29u)], global2.x);
}

