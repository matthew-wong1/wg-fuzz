struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(63520u, 4294967295u, 1u)), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 4294967295u, 55456u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 4294967295u, 48363u)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 0u, 0u)), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(54794u, 1u, 19309u)), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(1u, 4294967295u, 24058u)), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(1u, 35489u, 1u)), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(72091u, 15530u, 33783u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(22220u, 10654u, 0u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, 23332u, 1u)), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(69546u, 13146u, 1u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(1u, 0u, 0u)), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(26315u, 0u, 46061u)));

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(-234f, 588f);

var<private> global4: vec2<i32> = vec2<i32>(-31903i, 0i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    return global1[_wgslsmith_index_u32(max(~(~4294967295u), ~global2.b.x) >> (4939u % 32u), 14u)];
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~max(82842u, ~_wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(22597u, 12787u, arg_3.b.x))));
    var var_1 = Struct_1(select(vec4<bool>(true, select(true, global2.a.x, global2.a.x), !all(vec4<bool>(arg_2, global2.a.x, arg_2, true)), all(vec2<bool>(global2.a.x, arg_3.a.x))), select(global2.a, !global2.a, (u_input.a.x << (0u % 32u)) <= ~u_input.a.x), vec4<bool>(true, _wgslsmith_f_op_f32(global3.x + global3.x) <= _wgslsmith_f_op_f32(abs(-120f)), true, !arg_2)), vec3<u32>(4294967295u, ~1u, ~abs(49640u >> (1u % 32u))));
    return global1[_wgslsmith_index_u32(75150u, 14u)];
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(-(~(-2147483647i)), select(~abs(~vec4<u32>(0u, 4294967295u, 28544u, arg_0.b.x)), vec4<u32>(_wgslsmith_mult_u32(arg_0.b.x, 4294967295u), ~global2.b.x >> (25493u % 32u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.b.x, global2.b.x), arg_0.b.x), global2.b.x >> (1u % 32u)), vec4<bool>(true, true, true, true)), arg_0.a.x, Struct_1(select(arg_0.a, func_1(Struct_1(arg_0.a, vec3<u32>(global2.b.x, global2.b.x, 41848u)), u_input.a.x).a, true), abs(vec3<u32>(arg_0.b.x ^ 1u, 0u, arg_0.b.x))));
    var var_1 = !func_1(global1[_wgslsmith_index_u32(1u, 14u)], 32341i).a.xzw;
    let var_2 = vec3<i32>(-_wgslsmith_add_i32(1793i, -26039i), -40712i, u_input.a.x);
    var var_3 = global2.b;
    var_1 = !vec3<bool>(var_1.x, var_1.x, true);
    return func_1(func_1(func_1(arg_0, abs(u_input.a.x)), -2147483647i), 25582i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = -2147483647i;
    let var_1 = global2.a.x;
    return (~(~(vec3<u32>(37016u, arg_0.b.x, 1u) << (arg_2.b % vec3<u32>(32u)))) >> (~vec3<u32>(arg_0.b.x, firstTrailingBit(1u), 74566u ^ arg_1.b.x) % vec3<u32>(32u))) & vec3<u32>(~_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x & arg_1.b.x), 1u, arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(global2.a, !vec4<bool>(global2.a.x | global2.a.x, any(global2.a), any(vec4<bool>(false, true, false, global2.a.x)), !global2.a.x), !select(!global2.a, !global2.a, all(global2.a))), func_4(func_2(func_1(Struct_1(vec4<bool>(global2.a.x, true, false, global2.a.x), vec3<u32>(global2.b.x, global2.b.x, 67142u)), 1i)), func_3(u_input.a.x, select(vec4<u32>(9857u, 68064u, global2.b.x, 85119u), vec4<u32>(global2.b.x, global2.b.x, 0u, global2.b.x), true), false, Struct_1(!global2.a, ~global2.b)), Struct_1(func_1(Struct_1(global2.a, vec3<u32>(12073u, global2.b.x, 61105u)), ~(-2147483647i)).a, _wgslsmith_div_vec3_u32(global2.b, global2.b))));
    global4 = ~u_input.a.yz;
    global4 = -_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(global4.x, global4.x)), vec2<i32>(2147483647i, firstLeadingBit(u_input.a.x))), _wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(-35090i, 1i)));
    global4 = u_input.a.yy | ~u_input.a.yx;
    global3 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(trunc(global3.x)));
    let var_1 = select(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, countOneBits(u_input.a)), vec3<bool>(!var_0.a.x & all(!vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), any(select(!var_0.a, vec4<bool>(var_0.a.x, true, true, true), var_0.a)), all(vec2<bool>(true, any(global2.a)))));
    var var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1701f - 531f) + -447f) + _wgslsmith_f_op_f32(global3.x - -1559f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 869f, -164f) * vec3<f32>(2265f, 1110f, -1373f)) - vec3<f32>(global3.x, 1000f, global3.x)))), vec3<i32>(global0.x, abs(2147483647i), ~var_1.x), ~global2.b.x, select(~(-(vec4<i32>(-1i, 18888i, 24570i, -1i) >> (vec4<u32>(global2.b.x, global2.b.x, 54847u, 0u) % vec4<u32>(32u)))), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global4.x, -1i, -2147483647i), vec4<i32>(2147483647i, 15057i, -26904i, global0.x)), vec4<i32>(global4.x, max(u_input.a.x, var_1.x), global4.x, -27696i), all(vec4<bool>(true, true, global2.a.x, global2.a.x)) && false), global2.a));
}

