struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<f32>(-1000f, -1000f, 1080f, -127f)), Struct_1(vec4<f32>(-305f, 981f, 2327f, 584f)), Struct_1(vec4<f32>(1536f, 577f, -223f, 317f)), Struct_1(vec4<f32>(213f, -338f, -1245f, -140f)), Struct_1(vec4<f32>(312f, -906f, -894f, 544f)), Struct_1(vec4<f32>(1273f, 1000f, -300f, 925f)), Struct_1(vec4<f32>(-1561f, 1090f, 724f, 554f)), Struct_1(vec4<f32>(-913f, 232f, 2211f, 1077f)), Struct_1(vec4<f32>(2304f, 1109f, 365f, -351f)), Struct_1(vec4<f32>(2243f, -1086f, 1000f, -1000f)), Struct_1(vec4<f32>(1000f, 985f, -270f, -712f)));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(999f, 261f, -1000f, 721f));

var<private> global4: array<vec3<u32>, 12>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<bool> {
    return select(select(vec4<bool>(true, select(false, any(vec2<bool>(true, true)), true), !(global3.a.x > arg_0.a.x), _wgslsmith_f_op_f32(-global3.a.x) != 716f), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true)), vec4<bool>(true, 1u == global0.x, true, true)), !vec4<bool>(true, !(u_input.d.x <= u_input.d.x), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), (select(true, global3.a.x <= -1302f, any(vec3<bool>(false, false, false))) && any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))) || true);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = u_input.b.wwz;
    var var_1 = global2[_wgslsmith_index_u32(arg_2 & ~(~(arg_2 & u_input.d.x)), 11u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)))));
    global3 = global2[_wgslsmith_index_u32(94191u, 11u)];
    let var_3 = vec2<bool>(all(!func_3(Struct_1(vec4<f32>(382f, 761f, arg_0.a.x, var_1.a.x)), reverseBits(arg_3))), true);
    return vec3<bool>(!var_3.x, var_3.x, false);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<f32>) -> bool {
    let var_0 = ~(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(41908i, u_input.c, -2147483647i, 1i)), abs(u_input.b)), _wgslsmith_mult_i32(-u_input.c, -u_input.b.x)));
    var var_1 = 1u;
    let var_2 = vec2<bool>(any(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, global3.a.x, global3.a.x, arg_2.x))), 1542f, ~_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, -1i), u_input.b.wwy) | (vec3<i32>(u_input.b.x, -2147483647i, -33180i) >> (vec3<u32>(51310u, u_input.d.x, global0.x) % vec3<u32>(32u))))), !(!(!arg_0 || true)));
    var var_3 = global1.x;
    var var_4 = global0.x;
    return !(-_wgslsmith_mod_i32(select(var_0, u_input.b.x, arg_0), select(global1.x, 0i, true)) != -1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = ~(-6784i >> (u_input.d.x % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -825f, 694f, global3.a.x), arg_0.a, false))));
    var var_2 = -557f;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)));
    global4 = array<vec3<u32>, 12>();
    return _wgslsmith_dot_vec2_u32(u_input.d.wx, ~abs(abs(u_input.d.yz))) >> (~_wgslsmith_mult_u32(1u, firstTrailingBit(arg_1.x) >> (~arg_1.x % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_sub_u32(u_input.d.x, 0u))), _wgslsmith_div_u32(~u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(0u, 3935u, 55377u, u_input.d.x))))), 11u)], reverseBits(max(~(~u_input.d), min(u_input.d, u_input.d) << (u_input.d % vec4<u32>(32u)))), vec2<bool>(func_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(sign(global3.a.zx)), global3.a.wxw), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, 655f, global3.a.x) + vec4<f32>(global3.a.x, 407f, -1000f, -175f))), ~min(vec3<i32>(-1i, -1i, global1.x), u_input.b.zyz)).x)), 11u)];
    var var_1 = u_input.b;
    var_1 = firstTrailingBit(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-u_input.a.x, abs(1i), min(global1.x, u_input.a.x), _wgslsmith_sub_i32(var_1.x, 0i)), _wgslsmith_sub_vec4_i32(-u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), _wgslsmith_mult_vec4_i32(-u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b) | abs(vec4<i32>(-17802i, u_input.b.x, 0i, -97201i)))));
    let var_2 = Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.a.x, -790f))))), _wgslsmith_f_op_f32(exp2(global3.a.x))));
    var var_3 = u_input.b;
    let var_4 = var_2;
    global2 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-170f, _wgslsmith_add_u32(u_input.d.x, firstTrailingBit(~16742u)), vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f))), var_2.a.x, -1665f), 4294967295u, u_input.d.x);
}

