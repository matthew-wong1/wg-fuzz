struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 8>;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(0i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = !vec3<bool>(true, 79568u == _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(arg_0.x, 4u)], arg_3.x), vec3<u32>(3983u, arg_0.x, 24712u)), true);
    global4 = Struct_1(global2.a.yy);
    global3 = array<Struct_2, 8>();
    var var_1 = 77647i;
    let var_2 = var_0.yy;
    return Struct_1(global4.a);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<i32> {
    global3 = array<Struct_2, 8>();
    let var_0 = reverseBits(vec3<u32>(~(~arg_2.x), 48366u, abs(max(2974u, 1u))) >> (firstTrailingBit(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 33530u, arg_1.x)) % vec3<u32>(32u)));
    var var_1 = !select(vec4<bool>(false, true, true, select(any(vec3<bool>(true, false, false)), arg_0.x > arg_0.x, true)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), false);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, ~(~4294967295u)), u_input.b.x);
    var var_3 = func_2(~(~min(vec2<u32>(u_input.b.x, 18149u), min(vec2<u32>(1u, arg_1.x), vec2<u32>(1u, 0u)))), global4.a.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), ~abs(u_input.b));
    return vec4<i32>(arg_3.a.x, -_wgslsmith_dot_vec2_i32(global2.a.xx, global4.a >> (min(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 4u)]), u_input.b.zz) % vec2<u32>(32u))), -2147483647i, global4.a.x);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    global1 = all(!(!(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true), false))));
    var var_0 = vec2<i32>(u_input.a, arg_3.a.x);
    var var_1 = vec3<u32>(~u_input.b.x, countOneBits(_wgslsmith_mult_u32(arg_1, 10592u) & global0[_wgslsmith_index_u32(~0u, 4u)]) ^ (abs(1u) ^ _wgslsmith_clamp_u32(max(92406u, 0u), _wgslsmith_clamp_u32(82706u, arg_1, 29150u), ~1u)), _wgslsmith_clamp_u32(0u, 0u, 45623u));
    var_1 = vec3<u32>(var_1.x, max(_wgslsmith_clamp_u32(~arg_1, _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b & vec3<u32>(1u, var_1.x, var_1.x)), max(~u_input.b.x, 74077u)), var_1.x), ~(~(~(~global0[_wgslsmith_index_u32(20979u, 4u)]))));
    var var_2 = u_input.a;
    return vec4<u32>(var_1.x, ~(63895u << (_wgslsmith_dot_vec2_u32(var_1.xy, countOneBits(var_1.zy)) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.yy << (vec2<u32>(global0[_wgslsmith_index_u32(89576u, 4u)], 1u) % vec2<u32>(32u)), var_1.yy ^ vec2<u32>(0u, u_input.b.x)), global0[_wgslsmith_index_u32(64388u, 4u)]), 4u)] >> (44242u % 32u), global0[_wgslsmith_index_u32(~(~u_input.b.x), 4u)]);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_2 {
    global4 = func_2(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), arg_2.zy)), select(_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(-1i, arg_1.a.x, -1i, 856i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(3047i, u_input.a, arg_1.a.x, -77991i)), arg_1.a)), global2.a.x, any(select(!arg_0, !arg_0, !arg_0.x))), _wgslsmith_f_op_f32(arg_3.x * -2071f), _wgslsmith_mult_vec3_u32(select(firstLeadingBit(vec3<u32>(51657u, global0[_wgslsmith_index_u32(13258u, 4u)], 4294967295u)), ~firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, 0u)), vec3<bool>(false, true, arg_0.x)), u_input.b));
    var var_0 = func_4(arg_0.x & (true & arg_0.x), 1u, Struct_2(func_3(arg_1.b.xyy, vec3<u32>(~arg_2.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58856u, 4u)], 4u)], u_input.b.x), 4u)], reverseBits(17614u)), u_input.b, Struct_1(-vec2<i32>(global2.a.x, -35421i))), arg_1.b), Struct_1(vec2<i32>(reverseBits(-arg_1.a.x), -42918i)));
    let var_1 = 1000f;
    let var_2 = Struct_1(abs(arg_1.a.zz) & countOneBits(global4.a >> (u_input.b.zz % vec2<u32>(32u))));
    var var_3 = func_2(~(~u_input.b.xy >> (var_0.zz % vec2<u32>(32u))), ~firstLeadingBit(~func_2(vec2<u32>(4294967295u, var_0.x), 1i, -100f, vec3<u32>(arg_2.x, 1u, u_input.b.x)).a.x), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(260f))))), vec3<u32>(firstTrailingBit(countOneBits(var_0.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_2.x), 1u), 61638u), 22346u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.b.ww)) - global2.b.yz);
    global4 = Struct_1(_wgslsmith_clamp_vec2_i32(-countOneBits(vec2<i32>(global4.a.x, global4.a.x)), global2.a.zy, firstLeadingBit(-_wgslsmith_sub_vec2_i32(global2.a.xw, global4.a))));
    let var_1 = -227f;
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 8u)];
    var var_2 = func_1(!vec3<bool>(true, false, select(true, false, true)), Struct_2(global2.a, vec4<f32>(var_0.x, 182f, -471f, -539f)), vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b.x) ^ 5431u, 63788u), u_input.b.x), vec3<f32>(825f, var_0.x, _wgslsmith_f_op_f32(-global2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(59675u | _wgslsmith_div_u32(max(15151u, ~23198u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), vec3<u32>(24661u, u_input.b.x, u_input.b.x) & vec3<u32>(0u, 10144u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)]))));
}

