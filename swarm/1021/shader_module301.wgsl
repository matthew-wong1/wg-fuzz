struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: vec4<bool>;

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(u_input.a);
    global2 = _wgslsmith_add_i32(min(var_0.a, -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~1u, 10u)], 0i)), countOneBits(~(-36288i)));
    let var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 4294967295u, 4294967295u))));
    var var_2 = vec4<i32>(-2147483647i, countOneBits(_wgslsmith_div_i32(firstTrailingBit(-1i) >> (var_1.x % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-26492i, var_0.a, -29007i), -vec3<i32>(var_0.a, 28678i, var_0.a)))), 1i, -1i);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i, 1i, global0[_wgslsmith_index_u32(1u, 10u)], var_2.x), vec4<i32>(var_2.x, var_2.x, -2799i, var_0.a), global1.x), vec4<i32>(global0[_wgslsmith_index_u32(19427u, 10u)], global0[_wgslsmith_index_u32(5217u, 10u)], -46799i, 19908i), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_1.x, 10u)], var_2.x, global0[_wgslsmith_index_u32(1u, 10u)])), select(~vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 10u)], -14719i, u_input.a), ~vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 10u)], -1i, 36406i, var_0.a), !vec4<bool>(global1.x, true, global1.x, true))), -(vec4<i32>(15466i, 0i, 1i, 3889i) | _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, var_2.x, -1i, 2147483647i), vec4<i32>(2147483647i, -2147483647i, u_input.a, 74954i)))));
    return select(!vec4<bool>(all(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), global1.x)), any(vec3<bool>(false, false, global1.x)), true, true), !vec4<bool>(all(select(vec3<bool>(false, global1.x, global1.x), global1.yzy, global1.x)), any(select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, false), global1.x)), true, any(select(global1.zw, global1.yz, false))), select(!(!(!vec4<bool>(true, global1.x, global1.x, global1.x))), !vec4<bool>(true, !global1.x, true, global1.x & global1.x), !select(vec4<bool>(false, false, global1.x, false), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), global1.x), vec4<bool>(global1.x, global1.x, global1.x, true))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = select(!vec4<bool>(global1.x, all(global1.yx) || (false | global1.x), true, all(!vec4<bool>(false, true, arg_0.x, true))), select(func_3(), func_3(), select(vec4<bool>(select(false, global1.x, false), true, arg_0.x, arg_0.x & false), !vec4<bool>(global1.x, false, true, false), select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(true, true, true, true), func_3()))), !arg_0.x);
    global1 = func_3();
    var var_1 = select(func_3(), vec4<bool>(!(_wgslsmith_f_op_f32(ceil(646f)) < _wgslsmith_div_f32(-784f, 1000f)), arg_0.x, true, arg_0.x | true), !vec4<bool>(true, !select(true, false, arg_0.x), !arg_0.x, true));
    let var_2 = Struct_1(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(35559u, 10u)], u_input.a) & vec3<i32>(12824i, -80035i, 6606i), reverseBits(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(51583u, 10u)], u_input.a))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(8295u, 10u)]), u_input.a)));
    var_1 = select(!vec4<bool>(_wgslsmith_f_op_f32(387f - -432f) > _wgslsmith_f_op_f32(step(1430f, -187f)), all(vec2<bool>(true, true)), true, true), vec4<bool>(var_0.x, any(!arg_0.xz), all(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xx, any(vec3<bool>(false, true, var_0.x)))), arg_0.x), all(vec2<bool>(any(vec2<bool>(false, true)), select(true, true, !global1.x))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = !vec4<bool>(global1.x, global1.x, true, any(!vec4<bool>(global1.x, global1.x, true, global1.x)));
    global1 = func_3();
    var var_0 = firstTrailingBit(1u);
    var var_1 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_2 = Struct_1(_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(u_input.a, -10372i), _wgslsmith_div_i32(19082i << (var_1.x % 32u), _wgslsmith_mult_i32(-16222i, u_input.a)))));
    return 1i;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global2 = -31574i;
    var var_0 = abs(global0[_wgslsmith_index_u32(1u, 10u)]);
    var var_1 = Struct_1(select(~func_4(Struct_1(5030i), func_2(global1.yxw, -8325i)), _wgslsmith_clamp_i32(-6039i, _wgslsmith_sub_i32(-15516i, -10308i), _wgslsmith_add_i32(-2147483647i, 15773i)), func_3().x));
    var var_2 = select(~countOneBits(_wgslsmith_mult_u32(1u, 54569u) & select(1u, 56984u, global1.x)), 1u, !arg_0);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1145f);
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(-105f)), (-(~vec4<i32>(global0[_wgslsmith_index_u32(20106u, 10u)], 43632i, 0i, global0[_wgslsmith_index_u32(4294967295u, 10u)])) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ firstLeadingBit(-vec4<i32>(3519i, 0i, u_input.a, -32726i)), _wgslsmith_mod_u32(4294967295u, 29368u), ~firstLeadingBit(~(~27726u)), max(reverseBits(~reverseBits(vec3<i32>(5732i, var_1.a, global0[_wgslsmith_index_u32(34315u, 10u)]))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a, u_input.a, 4851i) & vec3<i32>(63979i, 2147483647i, var_1.a), vec3<i32>(0i, u_input.a, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.wzx;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(72224u, select(max(54639u, 124616u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(10464u, 9850u, 42126u))), true)), 10u)];
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~abs(vec2<u32>(1u, 1u))));
    var var_2 = reverseBits(vec2<u32>(24543u, 67430u));
    var_1 = var_2.x;
    global2 = global0[_wgslsmith_index_u32(var_2.x << (24840u % 32u), 10u)];
    let x = u_input.a;
    s_output = func_1(!all(vec2<bool>(true, !global1.x)));
}

