struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = array<u32, 14>();
    var var_0 = select(29588u, 29346u, arg_0.a <= _wgslsmith_f_op_f32(max(-1678f, -661f)));
    let var_1 = global1[_wgslsmith_index_u32(31333u, 29u)];
    var var_2 = u_input.a;
    var var_3 = ~(abs(~firstLeadingBit(vec4<u32>(arg_0.c.x, arg_0.c.x, 67470u, global0[_wgslsmith_index_u32(arg_0.c.x, 14u)]))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(12658u, 14u)], abs(var_1.c.x), var_1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.c.zy, vec2<u32>(arg_0.c.x, var_1.c.x)), 14u)]), ~countOneBits(vec4<u32>(16098u, var_1.c.x, var_1.c.x, 0u))) % vec4<u32>(32u)));
    return var_1.a;
}

fn func_3() -> u32 {
    let var_0 = select(-1i > u_input.b.x, true, any(vec2<bool>(true, true))) != !select(all(vec3<bool>(false, false, true)), false, true | select(false, true, true));
    var var_1 = vec2<i32>(-2147483647i, u_input.c.x);
    var_1 = max(_wgslsmith_div_vec2_i32(u_input.c.xx, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.x), -vec2<i32>(var_1.x, var_1.x)), u_input.b)), min(select(vec2<i32>(-2147483647i, u_input.a) & abs(u_input.b), abs(u_input.c.zx), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0))), ~u_input.b));
    var var_2 = vec4<bool>(!(!all(select(vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, false, var_0, var_0)))), all(vec2<bool>(true, var_0)), any(select(vec3<bool>(false, all(vec3<bool>(var_0, true, var_0)), true), select(!vec3<bool>(true, true, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, var_0, false), vec3<bool>(true, var_0, true), false)), _wgslsmith_dot_vec2_u32(vec2<u32>(15287u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29781u, 14u)], 14u)], 14u)], 14u)], 14u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], global0[_wgslsmith_index_u32(0u, 14u)])) > ~4294967295u)), !all(vec4<bool>(any(vec4<bool>(false, var_0, var_0, var_0)), true, !var_0, var_0)));
    var_1 = reverseBits(max(vec2<i32>(var_1.x, abs(_wgslsmith_add_i32(var_1.x, -20859i))), countOneBits(_wgslsmith_div_vec2_i32(u_input.c.xy << (vec2<u32>(global0[_wgslsmith_index_u32(34683u, 14u)], global0[_wgslsmith_index_u32(44671u, 14u)]) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, u_input.c.x))))));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    var var_0 = countOneBits(0i) << (arg_1.x % 32u);
    let var_1 = u_input.b;
    var_0 = u_input.b.x;
    return func_3();
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(func_4(global1[_wgslsmith_index_u32(~func_3(), 29u)], vec4<u32>(_wgslsmith_mult_u32(~4858u, global0[_wgslsmith_index_u32(arg_1, 14u)]), ~(global0[_wgslsmith_index_u32(4294967295u, 14u)] << (arg_1 % 32u)), ~min(25711u, global0[_wgslsmith_index_u32(6511u, 14u)]), arg_0.c.x)) >> (_wgslsmith_mult_u32(0u, 0u) % 32u), 29u)];
    var var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(arg_0.c.x), 1u), arg_0.c.x), abs(select(vec2<u32>(global0[_wgslsmith_index_u32(78081u, 14u)] | var_0.c.x, global0[_wgslsmith_index_u32(arg_1, 14u)] & 0u), vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 14u)]) | _wgslsmith_mod_vec2_u32(vec2<u32>(95346u, var_0.c.x), arg_0.c.yx), !arg_0.b && true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1505f * -1544f), arg_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1158f), -997f))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) - _wgslsmith_f_op_f32(floor(arg_0.a)));
    var_1 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.c.yy, vec2<u32>(arg_0.c.x, 0u) << (vec2<u32>(global0[_wgslsmith_index_u32(46248u, 14u)], 0u) % vec2<u32>(32u)))) >> (~(~(~4294967295u)) % 32u), ~var_0.c.x);
    return global1[_wgslsmith_index_u32(func_4(Struct_1(322f, arg_0.b != true, vec3<u32>(abs(arg_1), global0[_wgslsmith_index_u32(1u, 14u)], 4294967295u) << (vec3<u32>(26767u ^ global0[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_sub_u32(27297u, 13148u), reverseBits(var_0.c.x)) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.c, select(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], arg_1, arg_0.c.x), var_0.c, false)), var_0.c.x, abs(39387u), ~(~88383u))), 29u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_u32(arg_0.c.x, ~arg_0.c.x);
    global0 = array<u32, 14>();
    let var_1 = global1[_wgslsmith_index_u32(0u, 29u)];
    global0 = array<u32, 14>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.a))))))), arg_0.b, ~arg_0.c);
    return StorageBuffer(_wgslsmith_mod_i32(~u_input.b.x, u_input.b.x >> (52313u % 32u)), min(max(arg_1.zzw, ~(vec3<i32>(u_input.a, -2147483647i, u_input.b.x) >> (vec3<u32>(15373u, 0u, var_1.c.x) % vec3<u32>(32u)))), u_input.c.xzy), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * 1186f), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1555f, var_2.a)), arg_0.a) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, var_2.a, _wgslsmith_div_f32(497f, arg_0.a), _wgslsmith_div_f32(var_2.a, var_1.a))))), _wgslsmith_div_u32(func_3(), _wgslsmith_clamp_u32(func_3(), 42255u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(-23490i, -(u_input.a >> (4797u % 32u)), select(2147483647i, abs(arg_1.x), func_2(Struct_1(var_1.a, true, vec3<u32>(13777u, arg_0.c.x, var_0)), var_0).b), abs(u_input.b.x)), _wgslsmith_clamp_vec4_i32(arg_1, vec4<i32>(select(-2147483647i, -2147483647i, var_2.b), -2147483647i, 1i, u_input.a), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 27235i, 7256i, u_input.c.x), vec4<i32>(u_input.c.x, 1263i, u_input.c.x, 11447i), vec4<i32>(2147483647i, 0i, arg_1.x, u_input.c.x)), _wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(arg_1.x, u_input.a, -1i, arg_1.x)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(13011i, -31439i), -arg_1.x, _wgslsmith_sub_i32(u_input.a, -2147483647i), 38732i), vec4<i32>(1i, reverseBits(u_input.b.x), arg_1.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(0u, 29u)])), -741f) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f - 271f) - _wgslsmith_f_op_f32(1242f * 739f)))), all(select(vec3<bool>(u_input.b.x <= u_input.c.x, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))))), ~(~(~(vec3<u32>(0u, 0u, 97035u) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(2553u, 14u)], 4294967295u)))));
    var var_1 = -905f;
    let var_2 = var_0;
    global0 = array<u32, 14>();
    var var_3 = true;
    let x = u_input.a;
    s_output = func_5(func_2(Struct_1(1196f, select(true, var_2.b, !var_2.b), abs(reverseBits(vec3<u32>(0u, 66499u, var_0.c.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(13421u, _wgslsmith_mod_u32(var_2.c.x, 0u), var_0.c.x & 11866u, ~var_2.c.x), ~vec4<u32>(44839u, 3924u, var_0.c.x, 43333u) | abs(vec4<u32>(global0[_wgslsmith_index_u32(var_2.c.x, 14u)], 0u, var_2.c.x, global0[_wgslsmith_index_u32(95905u, 14u)])))), u_input.c);
}

