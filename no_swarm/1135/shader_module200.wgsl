struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: array<u32, 1> = array<u32, 1>(5026u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = 204f;
    global0 = !select(!(!select(vec3<bool>(arg_1.d.x, true, global0.x), vec3<bool>(global0.x, arg_1.d.x, true), true)), vec3<bool>(any(select(vec3<bool>(global0.x, arg_1.d.x, true), vec3<bool>(arg_1.d.x, global0.x, global0.x), vec3<bool>(arg_1.d.x, global0.x, arg_1.b.x))), all(!vec2<bool>(false, global0.x)), true || global0.x), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.b.x, false, true), select(false, any(vec2<bool>(arg_1.d.x, true)), global0.x)));
    let var_1 = reverseBits(_wgslsmith_add_u32(arg_1.c ^ max(0u ^ arg_0.x, firstLeadingBit(arg_1.e)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_1.a.xyy, vec3<u32>(arg_1.a.x, 4294967295u, arg_1.e)) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, global2[_wgslsmith_index_u32(0u, 1u)], arg_0.x), arg_1.a), abs(0u))));
    global1 = array<vec4<bool>, 27>();
    let var_2 = ~(~37906u);
    return vec3<u32>(arg_1.e, ~1u, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(57284u, arg_0.x, var_1), vec3<u32>(arg_1.a.x, 6657u, 4294967295u)))) & arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.a.yz;
    global2 = array<u32, 1>();
    let var_1 = Struct_1(~arg_2.a, arg_2.b, var_0.x, !(!global0.zz), arg_2.a.x);
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(3560u, arg_0.x, 1u, global2[_wgslsmith_index_u32(30107u, 1u)]) & vec4<u32>(~arg_2.e, firstTrailingBit(var_0.x), ~1027u, firstLeadingBit(0u)), abs(vec4<u32>(4294967295u, 1u, arg_2.a.x, 29390u)) << (var_1.a % vec4<u32>(32u))), !vec2<bool>(0u < var_0.x, global0.x), abs(~arg_2.c), vec2<bool>(select(true, !(var_1.d.x && var_1.b.x), true), true | var_1.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(var_0.x, 1u)], arg_0.x, var_0.x) ^ func_3(vec3<u32>(var_1.c, arg_0.x, 37000u), Struct_1(vec4<u32>(var_1.a.x, 0u, 4294967295u, 0u), vec2<bool>(false, false), global2[_wgslsmith_index_u32(var_0.x, 1u)], vec2<bool>(false, true), 4294967295u)), countOneBits(max(vec3<u32>(0u, 77967u, 54116u), arg_2.a.xyz))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f));
    return ~(arg_2.e ^ 41191u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global2 = array<u32, 1>();
    global0 = select(vec3<bool>(!(!all(vec3<bool>(arg_2, arg_1.d.x, true))), true, arg_0.x < select(4294967295u, 25424u, arg_2)), select(!vec3<bool>(!arg_1.b.x, !arg_1.d.x, true), !(!(!vec3<bool>(false, global0.x, global0.x))), select(vec3<bool>(arg_2, select(false, arg_2, arg_1.d.x), select(arg_2, false, true)), select(vec3<bool>(false, true, global0.x), !vec3<bool>(global0.x, true, true), !vec3<bool>(false, arg_2, arg_1.b.x)), vec3<bool>(all(vec3<bool>(false, global0.x, false)), all(vec4<bool>(arg_2, true, global0.x, global0.x)), true | arg_2))), !vec3<bool>(30486u == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 1u)], 1u)], arg_1.d.x, true & all(vec3<bool>(true, false, false))));
    let var_0 = arg_1.a.yxy;
    var var_1 = vec2<i32>(select(firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(9470i, -46990i, 24915i), vec3<i32>(u_input.a, u_input.a, -2147483647i)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), abs(vec2<i32>(u_input.a, -2147483647i))), abs(-1i), ~u_input.a), !all(select(vec3<bool>(arg_1.b.x, true, false), vec3<bool>(global0.x, global0.x, true), global0.x))), u_input.a);
    var_1 = ~(~(~firstLeadingBit(vec2<i32>(u_input.a, -1i) ^ vec2<i32>(var_1.x, -2147483647i))));
    return Struct_1(abs(abs(arg_0)), vec2<bool>(global0.x, true), reverseBits(_wgslsmith_mult_u32(func_2(countOneBits(arg_1.a.yx), ~vec2<i32>(1i, var_1.x), Struct_1(arg_0, global0.yz, 71249u, global0.zz, 4294967295u)), var_0.x)), select(global0.xy, select(vec2<bool>(global0.x, !global0.x), select(vec2<bool>(true, arg_1.d.x), global0.xy, select(vec2<bool>(false, true), arg_1.b, vec2<bool>(arg_2, arg_2))), select(global0.zz, select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), global0.xx), global0.yx)), !global0.x), firstTrailingBit(arg_1.e));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    global2 = array<u32, 1>();
    var var_0 = ~(~_wgslsmith_add_i32(-20093i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, arg_0.x), ~27130i)));
    global1 = array<vec4<bool>, 27>();
    global2 = array<u32, 1>();
    var var_1 = func_4(arg_2.a >> (abs(vec4<u32>(~30505u, ~arg_2.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.a.x, 1u)], 1u)] & arg_2.a.x, ~4294967295u)) % vec4<u32>(32u)), arg_2, any(global1[_wgslsmith_index_u32(~func_2(~arg_2.a.yz, arg_0.wz & vec2<i32>(u_input.a, u_input.a), arg_2), 27u)]));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(51066u, 1u)] << (global2[_wgslsmith_index_u32(658u, 1u)] % 32u), global2[_wgslsmith_index_u32(func_1(vec4<i32>(u_input.a, u_input.a, -2147483647i, 29952i), vec3<bool>(global0.x, true, true), Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67256u, 1u)], 1u)], 1u)], global2[_wgslsmith_index_u32(83093u, 1u)], 0u, 0u), vec2<bool>(false, global0.x), 1u, vec2<bool>(false, false), 31108u)), 1u)]) >> (4294967295u % 32u), ~reverseBits(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(11771u, 1u)], 1u))), 1u)];
    global0 = vec3<bool>(global0.x, global0.x, global0.x);
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(1i & u_input.a, countOneBits(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a), abs(-14377i)) >> ((func_4(vec4<u32>(global2[_wgslsmith_index_u32(22956u, 1u)], 1297u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 1u)], 1u)], var_0), Struct_1(vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(45060u, 1u)], var_0), global0.xx, var_0, global0.xy, var_0), global0.x).a << (vec4<u32>(4294967295u, 0u, 53186u, global2[_wgslsmith_index_u32(0u, 1u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(select(u_input.a, u_input.a, true), -855i, u_input.a | 27445i, u_input.a) >> (vec4<u32>(func_4(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 83509u, 85037u), Struct_1(vec4<u32>(4294967295u, var_0, 1785u, var_0), vec2<bool>(false, true), var_0, global0.xz, 4294967295u), false).a.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(45976u, var_0), 1u)], 1u, 12189u) % vec4<u32>(32u))) << (~(~(~(~vec4<u32>(global2[_wgslsmith_index_u32(73732u, 1u)], var_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], global2[_wgslsmith_index_u32(0u, 1u)])))) % vec4<u32>(32u));
    let var_2 = Struct_1(~(~abs(vec4<u32>(1u, var_0, var_0, var_0)) ^ firstTrailingBit(~vec4<u32>(20551u, 30597u, var_0, var_0))), !vec2<bool>(global0.x, !global0.x), var_0, vec2<bool>(all(select(func_4(vec4<u32>(var_0, var_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u), Struct_1(vec4<u32>(var_0, 18721u, 1u, var_0), vec2<bool>(false, false), 48493u, global0.xx, global2[_wgslsmith_index_u32(var_0, 1u)]), false).b, vec2<bool>(true, true), true)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(min(var_0 >> (var_0 % 32u), ~1u), 0u, 26983u, func_3(~vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(11159u, 1u)]), Struct_1(vec4<u32>(0u, global2[_wgslsmith_index_u32(29480u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], var_0), vec2<bool>(global0.x, true), 0u, global0.zz, 4294967295u)).x), ~abs(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(88523u, 1u)], 3248u, global2[_wgslsmith_index_u32(18702u, 1u)], global2[_wgslsmith_index_u32(var_0, 1u)])))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2195f, 883f, 111f), vec3<f32>(1000f, 631f, -498f), vec3<bool>(true, global0.x, var_2.d.x))) - vec3<f32>(652f, _wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(f32(-1f) * -956f)))));
    global2 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-341f, var_3.x, -220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(round(var_3.x))) - -342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))) + 1000f)), var_1);
}

