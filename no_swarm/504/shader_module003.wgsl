struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: vec2<u32>;

var<private> global4: vec4<i32> = vec4<i32>(-1i, 2147483647i, 1i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_div_u32(var_0, 36494u);
    global1 = array<Struct_1, 10>();
    let var_2 = global0.a.x != !(!global0.a.x);
    var var_3 = true;
    return global3.x;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~firstTrailingBit(~_wgslsmith_add_u32(func_3(), 0u)), 10u)];
    var var_1 = global0.b;
    let var_2 = Struct_1(!(!select(var_0.a, select(global0.a, vec3<bool>(global0.a.x, var_0.a.x, true), global0.a), vec3<bool>(false, false, var_0.a.x))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(countOneBits(u_input.d.x), -1i), ~(-1i)));
    let var_3 = ~(~u_input.e);
    var var_4 = vec4<bool>(!(!(func_3() == (u_input.b.x | 678u))), !var_2.a.x, all(var_2.a), true);
    return _wgslsmith_add_u32(u_input.e, ~49373u);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global0 = Struct_1(!select(!(!global0.a), global0.a, 1u != func_2(global0.a.x, global0.a.zz)), global0.b);
    var var_0 = _wgslsmith_sub_vec2_i32(~select(-vec2<i32>(2147483647i, global4.x), ~vec2<i32>(global0.b, u_input.a), global0.a.x), ~vec2<i32>(2147483647i, 1i)) & u_input.d.ww;
    let var_1 = -2147483647i;
    global2 = array<vec2<bool>, 8>();
    var var_2 = vec3<bool>(select(!(true | (-1940i >= var_0.x)), global0.a.x, true), global0.a.x, global0.a.x);
    return ~vec2<u32>(~abs(71491u) & _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, 4294967295u, u_input.e, 47274u)), ~vec4<u32>(u_input.b.x, u_input.e, 1u, 0u)), ~1u & (~global3.x ^ ~global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x ^ ~63494u, 49790u), ~min(_wgslsmith_mult_vec2_u32(u_input.b.yx, func_1(1988f)), ~(~vec2<u32>(global3.x, u_input.e)))), 10u)];
    global1 = array<Struct_1, 10>();
    global3 = vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 1u, func_3() >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.e, 13747u), ~u_input.e) % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29424u, _wgslsmith_add_u32(u_input.e, global3.x), ~44975u, func_3()), _wgslsmith_sub_vec4_u32(~vec4<u32>(64943u, global3.x, 49030u, 4294967295u), vec4<u32>(u_input.e, 1u, global3.x, global3.x))), ~(~global3.x << (~u_input.b.x % 32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(354f)))))));
    global2 = array<vec2<bool>, 8>();
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(70016u), 10u)];
    global1 = array<Struct_1, 10>();
    var var_3 = select(select(!vec4<bool>(any(var_2.a), false, all(var_0.a), !global0.a.x), vec4<bool>(true, var_2.a.x, any(vec3<bool>(var_2.a.x, true, var_0.a.x)), (13122u >> (global3.x % 32u)) <= u_input.b.x), select(!(!vec4<bool>(global0.a.x, var_2.a.x, var_0.a.x, true)), select(select(vec4<bool>(global0.a.x, var_2.a.x, global0.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_0.a.x, false, false), false), !vec4<bool>(var_2.a.x, var_0.a.x, var_2.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), vec4<bool>(all(global2[_wgslsmith_index_u32(global3.x, 8u)]), false, var_0.a.x, u_input.b.x != u_input.b.x))), select(select(!(!vec4<bool>(global0.a.x, false, global0.a.x, var_2.a.x)), vec4<bool>(any(vec4<bool>(false, global0.a.x, false, true)), any(vec2<bool>(global0.a.x, var_0.a.x)), global0.a.x, any(global2[_wgslsmith_index_u32(4294967295u, 8u)])), select(!vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(false, true, true, false), select(vec4<bool>(global0.a.x, var_2.a.x, global0.a.x, var_2.a.x), vec4<bool>(true, global0.a.x, global0.a.x, false), var_0.a.x))), vec4<bool>(global0.a.x, true, global0.a.x, abs(28732i) <= _wgslsmith_mult_i32(2147483647i, var_0.b)), vec4<bool>(!all(var_0.a), false, !global0.a.x, any(vec2<bool>(var_0.a.x, global0.a.x)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), abs(-20857i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, u_input.e), u_input.b.x | global3.x, u_input.b.x, func_1(-1230f).x), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 62464u, 1u, 34871u) << (vec4<u32>(1u, 1u, 21684u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(31983u, global3.x, global3.x, u_input.b.x))) % 32u));
}

