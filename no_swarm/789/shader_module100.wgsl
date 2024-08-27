struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<u32, 23>;

var<private> global3: Struct_1 = Struct_1(49954i, 22681i, -28503i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    global2 = array<u32, 23>();
    var var_0 = Struct_1(arg_3, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, arg_2.x), arg_2.wz), -u_input.c.x), _wgslsmith_clamp_i32(firstLeadingBit(countOneBits(arg_3)), -_wgslsmith_dot_vec3_i32(u_input.c.wzx, vec3<i32>(-1i, arg_1.a, -21993i)), reverseBits(1i))), arg_3);
    global2 = array<u32, 23>();
    var_0 = global1[_wgslsmith_index_u32(58237u, 12u)];
    var var_1 = select(select(arg_0, select(!select(arg_0, arg_0, arg_0), !vec2<bool>(false, arg_0.x), arg_0), vec2<bool>(true, all(vec4<bool>(true, true, arg_0.x, true)) & arg_0.x)), vec2<bool>(arg_0.x, true), arg_0);
    return reverseBits(arg_1.c);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.c.x;
    let var_1 = arg_2;
    var var_2 = Struct_1(arg_2.a, 42454i, -countOneBits(var_1.c));
    let var_3 = arg_1.yy;
    let var_4 = u_input.b;
    return 23120i & _wgslsmith_add_i32(func_3(vec2<bool>(false, -785f > arg_0), var_1, u_input.c, 1i), i32(-1i) * -26203i);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global3 = Struct_1(~(~(~func_2(-172f, vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], u_input.b), arg_2))), _wgslsmith_dot_vec3_i32(vec3<i32>(-(~(-2147483647i)), u_input.c.x, u_input.c.x), vec3<i32>(-24355i, global3.c, 517i)), ~_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), 2147483647i));
    var var_0 = vec4<bool>(true, !arg_3, true, false);
    var_0 = !vec4<bool>(all(select(vec3<bool>(arg_3, var_0.x, true), !var_0.yzy, select(vec3<bool>(false, var_0.x, true), var_0.yzw, var_0.wwx))), true, arg_3, true);
    var var_1 = u_input.c.zw;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f - -299f)));
    return !vec4<bool>(false, _wgslsmith_f_op_f32(floor(var_2)) >= 228f, !arg_3, false);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(884f + -1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f))));
    global0 = 229f;
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_mult_i32(u_input.c.x, 7718i), ~(-(i32(-1i) * -1033i)), func_2(-1808f, vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2[_wgslsmith_index_u32(arg_0.x, 23u)], u_input.b, 0u), vec3<u32>(43051u, 0u, 1u), true), vec3<u32>(4294967295u, 1u, u_input.b) >> (vec3<u32>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], arg_0.x) % vec3<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_add_u32(30201u, global2[_wgslsmith_index_u32(arg_0.x, 23u)]), ~4294967295u), countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)] << (global2[_wgslsmith_index_u32(51557u, 23u)] % 32u), 23u)])), Struct_1(_wgslsmith_dot_vec4_i32(u_input.c, arg_2) >> (~63693u % 32u), ~(-27578i), arg_3.a)));
    return Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(9024i, 0i) >> (_wgslsmith_mult_vec2_u32(arg_0, vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], 1u)) % vec2<u32>(32u)), vec2<i32>(countOneBits(arg_1.c), -u_input.c.x)), i32(-1i) * -10054i, firstTrailingBit(firstLeadingBit(~(~2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(~(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(23740u, 23u)]), _wgslsmith_div_vec2_u32(vec2<u32>(21371u, u_input.a), vec2<u32>(32574u, global2[_wgslsmith_index_u32(1u, 23u)])))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 4294967295u) & firstTrailingBit(12910u), 12u)], select(select(-min(u_input.c, vec4<i32>(u_input.c.x, -1821i, 30138i, u_input.c.x)), min(-u_input.c, vec4<i32>(u_input.c.x, global3.b, 20408i, 1i)), select(func_1(-2147483647i, Struct_1(global3.a, u_input.c.x, global3.a), Struct_1(global3.c, 16048i, u_input.c.x), false), vec4<bool>(true, true, false, false), true)), select(abs(u_input.c), ~(-u_input.c), !(u_input.a >= u_input.b)), any(vec2<bool>(true, true))), global1[_wgslsmith_index_u32(reverseBits(31844u), 12u)]);
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    global3 = global1[_wgslsmith_index_u32(~(~(~(abs(u_input.b) >> (4294967295u % 32u)))), 12u)];
    var var_0 = false;
    global3 = Struct_1(u_input.c.x, ~abs(u_input.c.x), func_3(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 14361u), 12u)], vec4<i32>(1i, firstTrailingBit(5108i), global3.a, u_input.c.x >> (0u % 32u)) & _wgslsmith_clamp_vec4_i32(-u_input.c, vec4<i32>(u_input.c.x, 0i, -68454i, u_input.c.x), u_input.c), global3.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1511f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(134f * 203f)))))), min(firstLeadingBit(~reverseBits(u_input.c.x)), global3.c), select(u_input.c.yx, u_input.c.wz, !select(true, true, true)));
}

