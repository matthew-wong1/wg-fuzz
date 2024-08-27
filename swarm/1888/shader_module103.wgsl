struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = 0i;

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 4294967295u, 0u, 18276u, 16522u, 87011u, 0u, 11633u, 4294967295u, 51929u, 4294967295u, 26742u, 8761u, 1u, 1u, 4294967295u, 34544u, 1u);

var<private> global3: vec4<u32> = vec4<u32>(1u, 4831u, 49396u, 64583u);

var<private> global4: array<i32, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = arg_1;
    let var_1 = var_0.a.x | firstTrailingBit(_wgslsmith_sub_u32(global3.x, select(28499u, abs(var_0.a.x), all(vec2<bool>(true, false)))));
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(4294967295u, u_input.e, var_0.a.x, 4294967295u)), abs(~var_0.a)) >> (u_input.b % vec4<u32>(32u)));
    let var_3 = var_2.a.xxy;
    return reverseBits(u_input.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(var_0.a);
    let var_2 = arg_0;
    var var_3 = 0i;
    var var_4 = Struct_1(var_2.a);
    return !select(vec2<bool>(!all(vec2<bool>(true, true)), !all(vec2<bool>(true, true))), vec2<bool>(true, true), !(-39805i >= global4[_wgslsmith_index_u32(var_1.a.x, 28u)]) & false);
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(global4[_wgslsmith_index_u32(~0u, 28u)]);
    let var_1 = func_4(Struct_1(u_input.b), ~vec4<i32>(firstLeadingBit(select(u_input.d, u_input.d, false)), var_0, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(320f, -1019f), vec2<f32>(-741f, 1000f)), Struct_1(vec4<u32>(u_input.b.x, global0.x, global3.x, u_input.e)), ~0u), u_input.d));
    var var_2 = -_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, global4[_wgslsmith_index_u32(1u, 28u)]), -54818i, u_input.a.x << (4294967295u % 32u), ~2147483647i)), -select(-vec4<i32>(global4[_wgslsmith_index_u32(76990u, 28u)], u_input.d, var_0, 31620i), -vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 28u)], global4[_wgslsmith_index_u32(42659u, 28u)], u_input.d, u_input.a.x), var_1.x));
    var var_3 = _wgslsmith_f_op_f32(min(647f, 1701f));
    let var_4 = vec2<bool>(true, func_4(Struct_1(countOneBits(min(u_input.b, u_input.b))), vec4<i32>(max(i32(-1i) * -6146i, 18716i), (u_input.a.x >> (1u % 32u)) & ~1i, 0i >> ((1u | global2[_wgslsmith_index_u32(1u, 18u)]) % 32u), _wgslsmith_sub_i32(var_2.x, var_0) >> (_wgslsmith_mult_u32(global3.x, global0.x) % 32u))).x);
    return Struct_1(~(~select(vec4<u32>(global2[_wgslsmith_index_u32(1u, 18u)], 1u, 1u, 5596u), firstTrailingBit(vec4<u32>(u_input.c, global3.x, 4294967295u, 48815u)), vec4<bool>(false, var_4.x, var_1.x, true))));
}

fn func_1() -> bool {
    global3 = u_input.b;
    var var_0 = func_2();
    var var_1 = _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(abs(u_input.d), i32(-1i) * -19711i, _wgslsmith_clamp_i32(-5829i, u_input.d, 0i)) >> (u_input.b.xxy % vec3<u32>(32u))), -max(min(vec3<i32>(2147483647i, 2147483647i, global4[_wgslsmith_index_u32(var_0.a.x, 28u)]), -u_input.a), ~_wgslsmith_add_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(u_input.e, 28u)], u_input.a.x, u_input.d), vec3<i32>(60517i, 7987i, u_input.a.x))));
    let var_2 = !(!select(!func_4(Struct_1(vec4<u32>(18476u, 42503u, global3.x, global3.x)), vec4<i32>(var_1.x, u_input.d, -1i, var_1.x)), vec2<bool>(true, true), true));
    let var_3 = func_2();
    return any(select(vec4<bool>(true, true, any(vec2<bool>(true, var_2.x)), !var_2.x), select(!vec4<bool>(false, var_2.x, true, var_2.x), !vec4<bool>(false, var_2.x, true, true), false), !vec4<bool>(var_2.x, var_2.x, false, true))) && var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_1() && false, !func_4(Struct_1(vec4<u32>(u_input.c, global0.x, global0.x, 0u)), vec4<i32>(_wgslsmith_mod_i32(10488i, 1i), 0i, 1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))).x, true, false);
    global1 = global4[_wgslsmith_index_u32(abs(14100u), 28u)];
    global3 = u_input.b;
    let var_1 = !(!var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(firstTrailingBit(u_input.c), abs(0u))), abs(_wgslsmith_clamp_u32(~global3.x, global0.x, _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(40790u, 1u)))), min(~0i, -22725i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(198f, 1279f, -1000f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(977f, 167f, 187f)))))));
}

