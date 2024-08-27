struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 29221i;

var<private> global1: array<i32, 5>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(16229u, 0u), vec3<i32>(809i, 0i, -39469i), 1u, 28270u, vec3<f32>(880f, 757f, 618f));

var<private> global3: array<bool, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.c, (countOneBits(firstTrailingBit(vec4<u32>(global2.c, 1u, global2.c, global2.c))) ^ vec4<u32>(~global2.d, abs(1757u), select(u_input.c.x, 0u, true), global2.c | u_input.c.x)) | (u_input.c & ~countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u))));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 18082u) & _wgslsmith_div_u32(_wgslsmith_add_u32(var_0, var_0), u_input.c.x), _wgslsmith_add_u32(var_0, select(61366u | global2.a.x, 4294967295u, all(vec3<bool>(true, global3[_wgslsmith_index_u32(var_0, 28u)], global3[_wgslsmith_index_u32(var_0, 28u)]))))), global2.b, ~(~_wgslsmith_dot_vec2_u32(abs(u_input.c.ww), ~u_input.c.zx)), ~4294967295u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.e), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global2.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e.x, arg_2.x, -477f) * global2.e), select(vec3<bool>(true, arg_1.x, global3[_wgslsmith_index_u32(global2.d, 28u)]), vec3<bool>(true, arg_1.x, global3[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(arg_1.x, true, arg_1.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global2.e))), !select(global3[_wgslsmith_index_u32(global2.a.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], arg_1.x))), select(vec3<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(var_0, 28u)], true)), arg_1.x, !global3[_wgslsmith_index_u32(global2.a.x, 28u)]), vec3<bool>(!arg_1.x, global3[_wgslsmith_index_u32(~global2.c, 28u)], true), !vec3<bool>(true, arg_1.x, arg_1.x)))));
    global1 = array<i32, 5>();
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.e.x)), global2.e.x) * 275f) * -555f)));
    global3 = array<bool, 28>();
    return ~(~firstTrailingBit(global1[_wgslsmith_index_u32(~var_0, 5u)])) >> (_wgslsmith_mult_u32(u_input.c.x, ~4294967295u) % 32u);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    global1 = array<i32, 5>();
    let var_0 = 1i;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], var_0, 78553i), -vec3<i32>(1i, 31803i, global1[_wgslsmith_index_u32(101737u, 5u)]) & (u_input.a.yyy >> (u_input.c.yyw % vec3<u32>(32u)))), min(-1i, -(~(-16814i)))) <= ~(~select(-33319i, global1[_wgslsmith_index_u32(1u, 5u)] & global2.b.x, arg_0 || arg_0));
    var var_2 = select(func_3(vec4<i32>(global1[_wgslsmith_index_u32(global2.a.x, 5u)] ^ -1i, _wgslsmith_sub_i32(39835i, 2147483647i), u_input.a.x, -var_0), !(!vec3<bool>(global3[_wgslsmith_index_u32(68326u, 28u)], arg_0, true)), _wgslsmith_f_op_vec2_f32(-global2.e.xx)), i32(-1i) * -26693i, var_1) >> (_wgslsmith_add_u32(~(max(0u, global2.a.x) << (~4294967295u % 32u)), ~(~(~64655u))) % 32u);
    global3 = array<bool, 28>();
    return Struct_1((u_input.c.ww << (global2.a % vec2<u32>(32u))) | vec2<u32>(global2.c, ~global2.d << (~37153u % 32u)), global2.b, max(1u, 332u), 7831u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.e, vec3<f32>(-1000f, 158f, global2.e.x)) + vec3<f32>(global2.e.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.e.x))), 3137f, -588f, _wgslsmith_f_op_f32(global2.e.x * -1428f)))));
    var var_1 = func_2(false, _wgslsmith_f_op_f32(global2.e.x * var_0.x));
    var var_2 = select(arg_1.a, -select(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.b.x, 39902i), var_1.b.zx) & vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(567u, 5u)]), -vec2<i32>(1i, 1i), true), !(!select(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], true), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 28u)])), !vec2<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 28u)], true), global3[_wgslsmith_index_u32(var_1.d, 28u)])));
    var var_3 = select(global3[_wgslsmith_index_u32(4294967295u, 28u)], true, any(select(!vec3<bool>(global3[_wgslsmith_index_u32(5540u, 28u)], false, true), select(vec3<bool>(false, true, false), !vec3<bool>(global3[_wgslsmith_index_u32(67270u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(11096u, 28u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(30139u, 28u)], false)), vec3<bool>(!global3[_wgslsmith_index_u32(var_1.a.x, 28u)], select(global3[_wgslsmith_index_u32(arg_0.x, 28u)], global3[_wgslsmith_index_u32(21599u, 28u)], global3[_wgslsmith_index_u32(10757u, 28u)]), 1243f <= var_1.e.x))));
    let var_4 = var_1.e.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, !(global2.d <= 93341u), select(true, global3[_wgslsmith_index_u32(u_input.c.x, 28u)], !global3[_wgslsmith_index_u32(0u, 28u)])), !select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(u_input.c.x, 28u)]), global3[_wgslsmith_index_u32(1u, 28u)]), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], true, global3[_wgslsmith_index_u32(0u, 28u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 28u)]))), vec3<bool>(false, any(!vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 28u)], global3[_wgslsmith_index_u32(u_input.c.x, 28u)])), firstTrailingBit(u_input.c.x) <= global2.d)), vec3<bool>(func_1(u_input.c.zyx, Struct_2(u_input.b.xw)) || global3[_wgslsmith_index_u32(reverseBits(1u), 28u)], global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2.d, u_input.c.x), 28u)] && global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(58577u, ~18128u), 28u)], false), u_input.c.x <= ~_wgslsmith_add_u32(_wgslsmith_add_u32(74329u, 39215u), min(23237u, 4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.e.x, global2.e.x)) - -469f);
    var var_2 = func_2(any(select(var_0.xx, select(select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], false), var_0.zz, var_0.yy), vec2<bool>(var_0.x, var_0.x), global2.e.x <= global2.e.x), any(select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(69931u, 28u)], false, true))))), 288f);
    global1 = array<i32, 5>();
    var_1 = global2.e.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)))))), _wgslsmith_f_op_f32(sign(var_2.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.b >> (_wgslsmith_mult_vec4_u32(u_input.c, ~vec4<u32>(0u, var_2.a.x, 982u, 4294967295u)) % vec4<u32>(32u))));
}

