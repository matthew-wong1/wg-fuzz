struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<i32, 22> = array<i32, 22>(i32(-2147483648), -19366i, -12626i, 1i, 1i, 59130i, -1i, 0i, 2147483647i, 0i, 0i, -8523i, -19480i, 2929i, i32(-2147483648), 2147483647i, 8133i, 8137i, 2147483647i, 83359i, -68687i, 48247i);

var<private> global3: i32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool) -> bool {
    global2 = array<i32, 22>();
    let var_0 = vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 36032u, 1u) & min(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, u_input.d.x, u_input.b.x) >> (u_input.b.wxx % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(u_input.b.x, u_input.b.x, 81502u)), vec3<u32>(firstLeadingBit(u_input.d.x), 28771u << (u_input.c % 32u), _wgslsmith_clamp_u32(u_input.d.x, u_input.c, u_input.d.x)))));
    let var_1 = Struct_1(global1.a);
    var var_2 = firstTrailingBit(vec4<i32>(2147483647i, abs(u_input.a.x), -57149i, abs(u_input.a.x)));
    let var_3 = ~_wgslsmith_clamp_u32(4294967295u, ~(~(~u_input.c)), 108377u);
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>) -> bool {
    global1 = Struct_1(891f);
    var var_0 = !(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))));
    let var_1 = firstLeadingBit(vec4<i32>(1i, abs(u_input.a.x), -1268i, arg_1.x));
    var_0 = select(select(vec3<bool>(!var_0.x, var_0.x & true, all(vec2<bool>(var_0.x, true))), select(vec3<bool>(any(vec4<bool>(false, var_0.x, false, true)), var_0.x, !var_0.x), vec3<bool>(true, func_3(var_1.x, -188f, var_0.x), false), vec3<bool>(var_0.x, true, !var_0.x)), func_3(22786i, global1.a, true)), select(!vec3<bool>(!var_0.x, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), vec3<bool>(var_0.x, true, func_3(~(-1i), global1.a, var_0.x)), var_0.x), any(!var_0.zz));
    global1 = Struct_1(-1000f);
    return any(!vec3<bool>(var_0.x | var_0.x, true, u_input.a.x != -2147483647i));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    var var_0 = u_input.b;
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(~reverseBits(1u), var_0.x), 1u);
    let var_2 = min(vec3<i32>(0i, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 22u)], -41405i, global2[_wgslsmith_index_u32(21212u, 22u)]), ~vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 22u)], global2[_wgslsmith_index_u32(var_0.x, 22u)], -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(u_input.c, 22u)], -1i), countOneBits(vec3<i32>(-1i, 1i, global2[_wgslsmith_index_u32(17082u, 22u)]))))), vec3<i32>(8324i, ~_wgslsmith_clamp_i32(u_input.a.x, abs(global2[_wgslsmith_index_u32(var_1, 22u)]), 48i), u_input.a.x << (firstTrailingBit(u_input.b.x) % 32u)));
    let var_3 = arg_0.x;
    var var_4 = arg_0;
    return _wgslsmith_sub_i32(firstTrailingBit(firstTrailingBit(firstLeadingBit(global2[_wgslsmith_index_u32(var_0.x, 22u)]))), ~(-firstTrailingBit(-34819i))) ^ ~u_input.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> bool {
    var var_0 = func_4(vec3<bool>(true, select(true, false, !func_2(u_input.b.x, vec3<i32>(arg_1, 1i, u_input.a.x), u_input.d)), true));
    global1 = Struct_1(-1086f);
    var var_1 = Struct_2(Struct_1(global1.a), true, 1155f, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1722f, global1.a))))));
    return !(var_1.b || (-11282i == global2[_wgslsmith_index_u32(~u_input.d.x, 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!vec4<bool>(true, false, true, all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), func_1(vec4<u32>(u_input.c, u_input.d.x, 0u, 116991u), _wgslsmith_div_i32(9309i, -1i))), true), select(vec4<bool>(true, select(true, global1.a >= -249f, true), true, true), select(vec4<bool>(all(vec2<bool>(true, false)), func_1(vec4<u32>(22155u, 4294967295u, u_input.b.x, u_input.c), -2147483647i), true, all(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), func_2(u_input.c, vec3<i32>(-31841i, u_input.a.x, global2[_wgslsmith_index_u32(17272u, 22u)]), vec2<u32>(1u, u_input.c))), true), func_1(select(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b.x, 138u, 1u, 4294967295u), func_3(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global1.a, false)), global2[_wgslsmith_index_u32(countOneBits(u_input.b.x), 22u)])), vec4<bool>(true, ~25578u <= _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.d.x, 40202u), ~19865u), true, all(vec2<bool>(true, true))));
    var var_1 = min(~u_input.a.x, -52315i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(418f)), 725f, 367f, global1.a));
    global2 = array<i32, 22>();
    let var_3 = true;
    var var_4 = -_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.d.x, 22u)] ^ ~(~global2[_wgslsmith_index_u32(4294967295u, 22u)]), -(global2[_wgslsmith_index_u32(0u, 22u)] << (1u % 32u)));
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-350f, 272f, false)) - _wgslsmith_f_op_f32(step(var_2.x, var_2.x))), _wgslsmith_f_op_f32(2517f - _wgslsmith_f_op_f32(global1.a + 1000f))))), any(var_0.zzz), -221f, Struct_1(global1.a));
    var var_6 = Struct_2(var_5.d, (u_input.c >= select(_wgslsmith_add_u32(u_input.b.x, 12499u), u_input.c, true | var_3)) | func_3(func_4(vec3<bool>(false, var_5.b, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(global1.a, var_2.x, var_3)))), !var_5.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(select(-1040f, -655f, var_5.b))))), var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-(abs(vec4<i32>(u_input.a.x, 0i, global2[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a.x)) & (vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) & vec4<i32>(0i, u_input.a.x, 1i, 0i))), vec4<i32>(~u_input.a.x, reverseBits(reverseBits(global2[_wgslsmith_index_u32(u_input.d.x, 22u)])), _wgslsmith_mult_i32(u_input.a.x, -1i) & u_input.a.x, 60606i)), var_6.d.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), global1.a), 0u);
}

