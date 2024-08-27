struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1000f, Struct_1(vec4<i32>(1379i, 26875i, 27991i, 1i)), vec3<u32>(74610u, 61839u, 0u));

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 0u);

var<private> global2: Struct_2;

var<private> global3: array<bool, 18> = array<bool, 18>(false, true, false, false, false, true, true, true, false, true, true, true, true, false, false, true, false, false);

var<private> global4: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(0u, 76284u, 4294967295u, 4294967295u), vec4<u32>(473u, 21541u, 42508u, 23467u), vec4<u32>(86214u, 14746u, 131u, 36559u), vec4<u32>(0u, 72038u, 50723u, 49440u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = global2.a;
    global4 = array<vec4<u32>, 4>();
    global4 = array<vec4<u32>, 4>();
    global1 = ~_wgslsmith_add_vec3_u32(global2.c, vec3<u32>(0u, _wgslsmith_mod_u32(u_input.b, global1.x), global2.c.x) ^ _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c.x, u_input.b, 4294967295u), arg_0.c), select(vec3<u32>(13805u, global0.c.x, 23689u), global0.c, vec3<bool>(false, true, arg_1))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.a)))), Struct_1(vec4<i32>(global2.b.a.x | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -33978i), global0.b.a.zz), _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), 1i), -global2.b.a.x, 2147483647i)), vec3<u32>(~4294967295u, ~arg_0.c.x, 1u));
    return ~u_input.b;
}

fn func_2() -> Struct_2 {
    global1 = ~vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, global0.c.x, global0.c.x), vec4<u32>(global2.c.x, global2.c.x, u_input.c.x, 4294967295u))), firstTrailingBit(~(~55377u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(68533u, global0.c.x), vec2<u32>(u_input.c.x, 44947u) & vec2<u32>(global2.c.x, 4294967295u))));
    let var_0 = select(!vec4<bool>(any(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], false, true, global3[_wgslsmith_index_u32(35836u, 18u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(global1.x, 18u)]), true)), true, _wgslsmith_f_op_f32(1010f * global2.a) > global0.a, true), select(select(vec4<bool>(true, !global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(~global2.c.x, 18u)], all(vec3<bool>(true, false, true))), select(vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(global0.c.x, 18u)]), vec4<bool>(global3[_wgslsmith_index_u32(25607u, 18u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)], false, false), !global3[_wgslsmith_index_u32(global0.c.x, 18u)]), global3[_wgslsmith_index_u32(~global2.c.x << (abs(0u) % 32u), 18u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], any(select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(68923u, 18u)], false), vec2<bool>(true, false))), !global3[_wgslsmith_index_u32(1u | global1.x, 18u)], global3[_wgslsmith_index_u32(global0.c.x, 18u)]), true), vec4<bool>(!any(!vec3<bool>(global3[_wgslsmith_index_u32(global0.c.x, 18u)], true, true)), (~global2.c.x << (~36000u % 32u)) >= global1.x, _wgslsmith_add_i32(u_input.d & -16225i, ~u_input.d) >= -1i, true));
    global4 = array<vec4<u32>, 4>();
    global2 = Struct_2(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1485f, global2.a))))), Struct_1(~_wgslsmith_mult_vec4_i32(-global0.b.a, global0.b.a)), _wgslsmith_mod_vec3_u32(~global2.c, global2.c));
    var var_1 = var_0.xyw;
    return Struct_2(_wgslsmith_f_op_f32(-global2.a), global0.b, vec3<u32>(countOneBits(global0.c.x), firstTrailingBit(func_3(Struct_2(global2.a, Struct_1(vec4<i32>(global2.b.a.x, global2.b.a.x, global2.b.a.x, global0.b.a.x)), global2.c), var_1.x)), u_input.c.x & ~global2.c.x));
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = global0.b;
    global1 = vec3<u32>(~global1.x, ~(~_wgslsmith_sub_u32(4294967295u, global1.x) >> (0u % 32u)), 58582u);
    let var_1 = Struct_1(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-3221i, -1i, u_input.d, u_input.a), vec4<i32>(-2147483647i, -45868i, -8771i, -17493i) >> (vec4<u32>(global1.x, 4294967295u, global2.c.x, 6961u) % vec4<u32>(32u)), vec4<bool>(false, global3[_wgslsmith_index_u32(2295u, 18u)], global3[_wgslsmith_index_u32(global2.c.x, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)])), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(-2147483647i, u_input.d), 1i, abs(global0.b.a.x)), abs(global0.b.a)));
    global2 = func_2();
    var var_2 = vec2<u32>(~min(_wgslsmith_div_u32(119692u, global2.c.x), ~global0.c.x), 0u) << (min(abs(~(~vec2<u32>(global0.c.x, 1u))), ~min(vec2<u32>(global1.x, 4294967295u), global2.c.xx)) % vec2<u32>(32u));
    return StorageBuffer(1326i, global0.b.a.zz ^ select(global2.b.a.wx, var_0.a.wx ^ _wgslsmith_mult_vec2_i32(global0.b.a.ww, vec2<i32>(var_0.a.x, -2147483647i)), any(vec4<bool>(false, global3[_wgslsmith_index_u32(var_2.x, 18u)], global3[_wgslsmith_index_u32(global2.c.x, 18u)], global3[_wgslsmith_index_u32(4926u, 18u)]))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(global2.c.xx), max(vec2<u32>(4294967295u, 0u), global1.yy))), 4294967295u), vec3<u32>(~_wgslsmith_mod_u32(var_2.x, 4294967295u) ^ var_2.x, 13255u, ~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 794f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1356f, -1498f, var_0, 675f), vec4<f32>(var_0, global0.a, -1000f, global2.a))), vec4<f32>(global2.a, 576f, global0.a, var_0))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -650f, global2.a, -1000f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1000f - -204f), global2.a, global0.a, var_0))), !select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], true, true, global3[_wgslsmith_index_u32(global2.c.x, 18u)]), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b, 18u)], true), global3[_wgslsmith_index_u32(global1.x, 18u)]))));
    var var_2 = u_input.b;
    global4 = array<vec4<u32>, 4>();
    var var_3 = 18339u;
    let var_4 = 15019i;
    var var_5 = global2.b;
    var var_6 = 386f;
    var var_7 = Struct_1(vec4<i32>(0i, abs(13167i), _wgslsmith_mod_i32(u_input.d, select(-2147483647i, -24831i, global3[_wgslsmith_index_u32(~0u, 18u)])), abs(countOneBits(i32(-1i) * -1i))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, 628f))))));
}

