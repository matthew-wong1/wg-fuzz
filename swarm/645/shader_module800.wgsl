struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: i32 = -19787i;

var<private> global2: Struct_2;

var<private> global3: array<u32, 21> = array<u32, 21>(0u, 4294967295u, 1u, 1u, 1u, 46874u, 0u, 14010u, 91293u, 4294967295u, 4294967295u, 0u, 75900u, 65955u, 46532u, 0u, 105174u, 68998u, 0u, 4294967295u, 0u);

var<private> global4: f32 = -1390f;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(global2.b.a, vec2<i32>(abs(-23555i), -2147483647i)), global2.a.b);
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(select(select(vec2<i32>(1i, global2.b.a.x), arg_1.a.a, select(arg_2.wy, global0.zx, true)), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), global2.c.a)), global0.xy), global2.c.a >> ((~vec2<u32>(4294967295u, 12851u) & vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56834u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)])) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.b.a, _wgslsmith_sub_vec2_i32(var_0.a, vec2<i32>(arg_1.b.a.x, u_input.a.x)), countOneBits(vec2<i32>(0i, arg_1.b.a.x))), arg_1.b.a)), _wgslsmith_f_op_f32(-var_0.b));
    var_0 = Struct_1(~vec2<i32>(0i, var_0.a.x), _wgslsmith_f_op_f32(ceil(-1058f)));
    global4 = _wgslsmith_f_op_f32(-197f - 843f);
    let var_1 = vec4<f32>(global2.b.b, var_0.b, _wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1033f, arg_1.b.b), -1000f, all(global0.zx))), global2.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1535f + 1543f) + _wgslsmith_f_op_f32(-arg_1.b.b)) * -406f))));
    return min(select(~select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21567u), vec2<u32>(4294967295u, 1u), false), (vec2<u32>(3544u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)]) & vec2<u32>(1u, global3[_wgslsmith_index_u32(101825u, 21u)])) | (vec2<u32>(26757u, 19515u) << (vec2<u32>(12071u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49653u, 21u)], 21u)]) % vec2<u32>(32u))), arg_2.x) ^ _wgslsmith_sub_vec2_u32(select(vec2<u32>(11418u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4379u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]) & vec2<u32>(global3[_wgslsmith_index_u32(46321u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]), _wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], global3[_wgslsmith_index_u32(2420u, 21u)]), vec2<u32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(0u, 21u)])), !global0.x), ~(~vec2<u32>(global3[_wgslsmith_index_u32(9368u, 21u)], 4294967295u))), _wgslsmith_mult_vec2_u32(min(~(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)]) << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(62243u, 21u)]) % vec2<u32>(32u))), countOneBits(vec2<u32>(95781u, global3[_wgslsmith_index_u32(1u, 21u)]) << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 0u) % vec2<u32>(32u)))), reverseBits(~(~vec2<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 34529u)))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_sub_i32(abs(~56429i), -global2.c.a.x);
    global1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(7157i, -14100i, global2.a.a.x), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c.x, global2.b.a.x, global2.b.a.x), -vec3<i32>(2147483647i, 17789i, global2.c.a.x))), -23019i), 17642i);
    let var_1 = _wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(~(i32(-1i) * -2147483647i), 0i));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1833f));
    var var_3 = Struct_3(select(_wgslsmith_mult_u32(30814u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(58869u, 21u)], 147106u), func_3(global2.a.b, Struct_2(global2.a, Struct_1(u_input.b, 1720f), Struct_1(var_1, global2.c.b)), vec4<bool>(true, true, global0.x, true)))), global3[_wgslsmith_index_u32(12543u, 21u)], max(-1i >> (0u % 32u), _wgslsmith_mod_i32(23874i, 12729i)) != var_1.x));
    return Struct_4(true, Struct_3(max(firstLeadingBit(~50130u), _wgslsmith_add_u32(~4294967295u, ~global3[_wgslsmith_index_u32(0u, 21u)]))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = Struct_4(!arg_2.x, Struct_3(global3[_wgslsmith_index_u32(abs(~reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])), 21u)]));
    let var_1 = arg_2.x;
    global1 = global2.a.a.x;
    var var_2 = arg_0;
    var var_3 = func_2();
    return -1i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    let var_0 = global2.a.b;
    let var_1 = _wgslsmith_mult_vec2_u32(~(~max(vec2<u32>(global3[_wgslsmith_index_u32(61173u, 21u)], 24180u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.a, arg_3.a), vec2<u32>(51286u, arg_3.a)))), countOneBits(_wgslsmith_mult_vec2_u32(select(reverseBits(vec2<u32>(arg_3.a, 46334u)), ~vec2<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 49045u), global0.x), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_3.a, global3[_wgslsmith_index_u32(arg_3.a, 21u)]), vec2<u32>(arg_2.b.a, arg_3.a), global0.zy), vec2<u32>(2632u, arg_2.b.a) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.b.a, 21u)], 21u)], global3[_wgslsmith_index_u32(0u, 21u)]), func_3(-781f, Struct_2(global2.c, global2.b, global2.a), vec4<bool>(true, arg_0.x, global0.x, arg_2.a))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    var var_3 = vec2<u32>(4294967295u, ~1u);
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(810f, _wgslsmith_f_op_f32(trunc(-1595f)))))));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(max(vec2<i32>(global2.c.a.x, 0i), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), func_4(select(!(!vec3<bool>(global0.x, true, false)), select(vec3<bool>(true, global0.x, false), select(vec3<bool>(true, global0.x, false), vec3<bool>(true, true, false), global0.x), global0.x), select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false), global0.x), select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(global0.x, false, false), vec3<bool>(false, false, false), vec3<bool>(global0.x, true, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b, 787f, 516f, -1091f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c.b, 648f, global2.a.b, global2.b.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-664f, global2.c.b, -510f, global2.b.b)))))), Struct_4(1i == func_1(global2.c, global0.yx, global0.yx), Struct_3(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])), func_2().b), global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(71761u, _wgslsmith_sub_vec2_u32(vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 63450u << (0u % 32u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12672u, 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)])), firstLeadingBit(firstLeadingBit(select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(66912u, 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)]), vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)]), vec2<bool>(false, global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(var_0.c.b + var_0.a.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1407f)), _wgslsmith_f_op_f32(-global2.b.b)))), vec4<i32>(var_0.a.a.x, ~countOneBits(_wgslsmith_add_i32(-11017i, 0i)), -global2.b.a.x, reverseBits(~11677i)));
}

