struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(11699u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(63160u), Struct_1(23430u), Struct_1(87790u), Struct_1(4294967295u), Struct_1(0u), Struct_1(39058u), Struct_1(4294967295u), Struct_1(89328u), Struct_1(61792u), Struct_1(1u), Struct_1(34858u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(49849u), Struct_1(85469u), Struct_1(4294967295u));

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, true, true, false, false, false, false, false, false, true, true, true, true, true, true, false, true, true);

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    global2 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.xw, ~(vec2<u32>(u_input.c.x, arg_1.a) | abs(vec2<u32>(u_input.c.x, arg_1.a)))));
    let var_0 = Struct_1(1u);
    global0 = array<Struct_1, 24>();
    global2 = global0[_wgslsmith_index_u32(1u, 24u)];
    global2 = arg_1;
    return all(select(vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, u_input.c.x, global2.a), u_input.c.zzy), 19u)], all(!vec3<bool>(global1[_wgslsmith_index_u32(global2.a, 19u)], false, false)), global1[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(any(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(var_0.a, 19u)], true)), any(select(vec4<bool>(global1[_wgslsmith_index_u32(11352u, 19u)], false, global1[_wgslsmith_index_u32(1u, 19u)], true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.a, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), true)), false), select(vec3<bool>(true, true, true), !select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a, 19u)], true, global1[_wgslsmith_index_u32(var_0.a, 19u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 19u)], false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false, global1[_wgslsmith_index_u32(4294967295u, 19u)])), !all(vec3<bool>(global1[_wgslsmith_index_u32(6307u, 19u)], true, global1[_wgslsmith_index_u32(var_0.a, 19u)])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(78516u << (1u % 32u));
    return global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(9599u, ~_wgslsmith_mult_u32(global2.a, 1u) << (var_0.a % 32u))), 24u)];
}

fn func_1(arg_0: f32) -> u32 {
    global0 = array<Struct_1, 24>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(u_input.a) << (global2.a % 32u), 24u)];
    let var_1 = !any(vec3<bool>(any(!vec2<bool>(false, global1[_wgslsmith_index_u32(global2.a, 19u)])), true & global1[_wgslsmith_index_u32(global2.a, 19u)], !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.a, var_0.a), 19u)]));
    let var_2 = func_3(vec2<bool>(false, var_1), func_2(vec2<i32>(firstLeadingBit(reverseBits(16133i)), u_input.d & 2147483647i), Struct_1(firstLeadingBit(firstTrailingBit(1u)))));
    let var_3 = firstLeadingBit(u_input.c.zy) & vec2<u32>(var_0.a, ~4294967295u);
    return var_3.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 24>();
    let var_1 = ~(~1u);
    var var_2 = select(select(vec2<bool>(false, false), !select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(var_1, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), global1[_wgslsmith_index_u32(u_input.c.x, 19u)]), true), vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~(~u_input.a)), 19u)]), select(vec2<bool>(true, true), vec2<bool>(!global1[_wgslsmith_index_u32(0u, 19u)] | global1[_wgslsmith_index_u32(global2.a, 19u)], global1[_wgslsmith_index_u32(func_1(arg_0), 19u)]), !global1[_wgslsmith_index_u32(u_input.a, 19u)]));
    var var_3 = arg_1;
    return -907f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~1u, 24u)];
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-854f, -2468f)), 1f)), global0[_wgslsmith_index_u32(func_1(-1000f), 24u)], abs(~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.d, 39630i), vec4<i32>(-6777i, u_input.b, u_input.d, -1i)), vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.d)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = false;
    var var_2 = 89090u;
    global2 = func_3(select(select(!(!vec2<bool>(var_1, false)), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global2.a, 19u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], false), !var_1), vec2<bool>(true, true)), vec2<bool>(true, !all(vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 19u)], var_1, true, global1[_wgslsmith_index_u32(u_input.c.x, 19u)]))), true), !select(var_1, !var_1, any(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(93676u, 19u)], var_1, var_1))));
    var var_3 = select(u_input.c.zw, ~(~(~_wgslsmith_mult_vec2_u32(u_input.c.ww, u_input.c.zz))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~15700u | (u_input.c.x >> (u_input.a % 32u))), global2.a), 19u)]);
    let var_4 = abs(_wgslsmith_mod_u32(0u, select(firstTrailingBit(4294967295u), abs(global2.a), true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(~u_input.d, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, u_input.d), 43354i), u_input.d), select(_wgslsmith_add_vec3_i32(~vec3<i32>(-14310i, u_input.d, -2147483647i), vec3<i32>(u_input.b, -35073i, 2147483647i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<bool>(global1[_wgslsmith_index_u32(var_3.x, 19u)], false, true)), true));
}

